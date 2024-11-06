<?php

namespace Modules\Import\Imports;
use Cartalyst\Sentinel\Checkpoints\ThrottlingException;
use Maatwebsite\Excel\Row;
use Illuminate\Support\Collection;
use Modules\Ebook\Entities\Ebook;
use Illuminate\Database\QueryException;
use Maatwebsite\Excel\Concerns\OnEachRow;
use Illuminate\Validation\ValidationException;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithChunkReading;
use Storage;
use URL;
use Modules\Files\Entities\Files;
use Modules\Category\Entities\Category;
use Modules\Author\Entities\Author;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Modules\Import\Http\Requests\StoreImporterRequest;
use Response;
use File;
class EbookImport implements OnEachRow, WithChunkReading, WithHeadingRow
{

    public function chunkSize(): int
    {
        return 200;
    }
    public function onRow(Row $row)
    {
        $data = $this->normalize($row->toArray());
        request()->merge($data);
        
        try {
        $ebook=Ebook::create($data);
       
        $this->saveEbookAuthores($ebook, $row->toArray());
        $this->saveEbookCategories($ebook, $row->toArray());
        $this->saveEbookFiles($ebook, $row->toArray());

       }catch(\Exception $e){
            dd($e);
        }
    }

   private function saveEbookAuthores($ebook,array $csv){
        $csv_authors = $csv['authors'];
        if (trim($csv_authors) == '') {
            return false;
        }
        $authores=explode('|',$csv_authors);
        $authorsId=[];
        foreach($authores as $author){
            
            $checker = Author::whereHas('translations', 
                function ($query) use ($author) {
                    $query->where('name', $author);
                })->exists();

            if($checker){
                $author = Author::whereHas('translations', 
                    function ($query) use ($author) {
                        $query->where('name', $author);
                    })->first();
                
            }else{
                $data = [
                    'user_id' =>auth()->user()->id,
                    'name' =>$author,
                    'is_active'=>1,
                    'is_verified'=>1
                 ];
                $author = Author::create($data);
               
            }
            $authorsId[]=$author->id;
        }
        $ebook->authors()->sync($authorsId);
           
    }

    private function saveEbookCategories($ebook,array $csv){

        $csv_category = $csv['categories'];

        if (trim($csv_category) == '') {
            return false;
        }

        $categories = array_map('trim', explode('|', $csv_category));
        
        $categoryId=[];
        foreach($categories as $category){
            
            $parent_id=0;
            $ParentID=[];
            
            $cats = array_map('trim', explode('>', $category));
            
            foreach ($cats as $cat) {
                
                $query = Category::whereHas('translations', 
                function ($q) use ($cat) {
                    $q->where('name', $cat);
                });

                if(!$query){
                    $check = $query->whereNull('parent_id')->exists();
                }else{
                    $check = $query->where('parent_id',$parent_id)->exists();
                }
                

                if($check){
                    $querys = Category::whereHas('translations', 
                      function ($qs) use ($cat) {
                      $qs->where('name', $cat);
                    });
                    if(!$querys){
                        $categoryData = $querys->whereNull('parent_id')->first();
                    }else{
                        $categoryData = $querys->where('parent_id',$parent_id)->first();
                    }
                }else{
                    $data = [
                        'name' =>$cat,
                        'parent_id' =>$parent_id,
                        'is_active'=>1,
                        'is_searchable'=>1
                    ];
                    $categoryData = Category::create($data);

                }
                $ParentID[]= $categoryData->id;
                
                if( $parent_id==0){
                    $parent_id= $categoryData->id;
                }
                
            }
         }


        $ebook->categories()->sync($ParentID);
    }

    private function saveEbookFiles($ebook,array $csv){

        $book_cover_url = $csv['book_cover'];
        $file_types = $csv['file_type'];
        $file_urls = $csv['file_url'];

        $book_file = $csv['book_file'];
        $audio_file = $csv['audio_book_files'];

        $siteurl = URL::to(env('APP_URL')); 
        if ( trim($book_cover_url) == '' && $siteurl && trim($book_file) == '' && trim($audio_file) == '') {
            return false;
        }
       
        if($book_cover_url){
            $contents = file_get_contents($book_cover_url);
            $name = substr($book_cover_url, strrpos($book_cover_url, '/') + 1);
            // $path = Storage::putFile('media',$name);
            $path = Storage::put('media/'.$name, $contents);

            $info     = pathinfo($name);
            $basename = $info['basename'];
            $extension      = $info['extension'];
            $book_url_size = public_path('storage/media/'.$name);
            $size = File::size($book_url_size);
            $mime = 'images/'.$extension;
            $data = [
                'user_id' => auth()->user()->id,
                'disk' => config('filesystems.default'),
                'filename' => $name,
                'path' =>  'media/'.$name,
                'extension' => $extension,
                'mime' => $mime,
                'size' =>$size,
            ];
          
             $files =Files::create($data);
        
            //  $bookCover = $files->id;
            
            //  $ebook->files()->sync($bookCover);
            
            $entity_files =  DB::table('entity_files')->insert([
                'files_id' => $files->id,
                'entity_type'=>'Modules\Ebook\Entities\Ebook',
                'entity_id'=>$ebook->id,
                'zone'=>'book_cover',
                'created_at'=>$files->created_at,
                'updated_at'=>$files->updated_at,
            ]);
        }
        
        if($file_types =='external_link'){
                $link_pdf_contents = file_get_contents($file_urls);
                $link_pdf_name = substr($file_urls, strrpos($file_urls, '/') + 1);
                $link_pdf_path = Storage::put('media/'.$link_pdf_name, $link_pdf_contents);

                $link_info     = pathinfo($link_pdf_name);
                $link_extension  = $link_info['extension'];
                $link_pdf_get_size = public_path().'/storage/media/'.$link_pdf_name;
                $link_pdf_size = File::size($link_pdf_get_size);
               
                $link_pdf_data = [
                    'user_id' => auth()->user()->id,
                    'disk' => config('filesystems.default'),
                    'filename' => $link_pdf_name,
                    'path' =>  'media/'.$link_pdf_name,
                    'extension' => $link_extension,
                    'mime' => 'application/'. $link_extension,
                    'size' =>$link_pdf_size,
                ];
                    
                 $link_pdf_files =Files::create($link_pdf_data);

                 $entity_file =  DB::table('entity_files')->insert([
                    'files_id' => $link_pdf_files->id,
                    'entity_type'=>'Modules\Ebook\Entities\Ebook',
                    'entity_id'=>$ebook->id,
                    'zone'=>'book_cover',
                    'created_at'=>$link_pdf_files->created_at,
                    'updated_at'=>$link_pdf_files->updated_at,
                ]);
           
        }else{
            $file_urls = '';
        }
        
        if($file_types=='upload'){
            if($book_file){
              

            $book_file_contents = file_get_contents($book_file);
            $book_pdf_name = substr($book_file, strrpos($book_file, '/') + 1);
            $book_pdf_path = Storage::put('media/'.$book_pdf_name, $book_file_contents);
       
            $book_info     = pathinfo($book_pdf_name);
            $book_pdf_extension  = $book_info['extension'];
            $book_pdf_get_size = public_path('storage/media/'.$book_pdf_name);
            $book_pdf_mime ='application/pdf';
        
                $book_pdf_size = File::size($book_pdf_get_size);
                $book_pdf_data = [
                    'user_id' => auth()->user()->id,
                    'disk' => config('filesystems.default'),
                    'filename' => $book_pdf_name,
                    'path' => 'media/'.$book_pdf_name,
                    'extension' => $book_pdf_extension,
                    'mime' => $book_pdf_mime,
                    'size' =>$book_pdf_size,
                ];
                    
                 $book_files =Files::create($book_pdf_data);

                 $entity_file =  DB::table('entity_files')->insert([
                    'files_id' => $book_files->id,
                    'entity_type'=>'Modules\Ebook\Entities\Ebook',
                    'entity_id'=>$ebook->id,
                    'zone'=>'book_file',
                    'created_at'=>$book_files->created_at,
                    'updated_at'=>$book_files->updated_at,
                ]);
           
            }    
        }

        if($file_types=='audio'){
            if($audio_file){

                $multiple_audio_url=explode('|',$audio_file);
                
                foreach ($multiple_audio_url as  $audio_urls) {

                   $audio_file_contents = file_get_contents($audio_urls);
                   $audio_name = substr($audio_urls, strrpos($audio_urls, '/') + 1);
                   $audio_path = Storage::put('media/'.$audio_name, $audio_file_contents);
                   $audio_info = pathinfo($audio_name);
                   $audio_extension  = $audio_info['extension'];
                   $audio_pdf_get_size = public_path('storage/media/'.$audio_name);
                   $audio_size = File::size($audio_pdf_get_size);
                   $audio_mime = 'audio/'. $audio_extension;
                  
                   $audio_data = [
                       'user_id' => auth()->user()->id,
                       'disk' => config('filesystems.default'),
                       'filename' => $audio_name,
                       'path' => 'media/'.$audio_name,
                       'extension' => $audio_extension,
                       'mime' => $audio_mime,
                       'size' =>$audio_size,
                   ];
                       
                    $audio_files = Files::create($audio_data);
                
                    $entity_file =  DB::table('entity_files')->insert([
                       'files_id' => $audio_files->id,
                       'entity_type'=>'Modules\Ebook\Entities\Ebook',
                       'entity_id'=>$ebook->id,
                       'zone'=>'audio_book_files',
                       'created_at'=>$audio_files->created_at,
                       'updated_at'=>$audio_files->updated_at,
                   ]);
                }
            }
        }

    }


    private function normalize(array $data)
    {
        return array_filter([
             'title' => $data['title'],
             'user_id' => auth()->id(),
             'description' => $data['description'],
             'short_description' => $data['short_description'],
             'key_word' => $data['key_word'],
             'is_active' => 1,
             'is_featured' => 1,
             'is_private' => 0,
             'target_reader' => $data['target_reader'],
             'publication_year' => $data['publication_year'],
             'price' => $data['price'],
             'publisher' => $data['publisher'],
             'buy_url' => $data['buy_url'],
             'isbn' => $data['isbn'],
             'book_edition' => $data['book_edition'],
             'book_language' => $data['book_language'],
             'country_origin' => $data['country_origin'],
             'file_type' => $data['file_type'],
              'file_url' => $data['file_url'],
              'embed_code' => $data['embed_code'],
             'password' => $data['password'],
             'viewed' => 0,
        
            ], function ($value) {

            return $value || is_numeric($value);
        });
    }

    
  
  
}
