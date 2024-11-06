<?php

namespace Modules\Import\Http\Controllers\Admin;

use Maatwebsite\Excel\Excel;
use Modules\Import\Imports\EbookImport;
use Maatwebsite\Excel\Facades\Excel as ExcelFacade;
use Modules\Import\Http\Requests\StoreImporterRequest;
use Modules\Ebook\Entities\EbookDownload;
use Modules\Ebook\Entities\Ebook;
use Modules\Ebook\Entities\CsvData;
use Illuminate\Http\Request;
use DB;
use Maatwebsite\Excel\HeadingRowImport;

class ImporterController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

       return view('import::admin.importer.index');
    }
   
    public function CsvData(Request $request)
    {
        $path = $request->file('csv_file');
        $data = array_map('str_getcsv', file($path));
        $csv_data = array_slice($data, 0,5, 25);
        
        return response()->json($csv_data);

    }

   
    public function exportEbook(Request $request)

    {
      
       $fileName = 'ebook.csv';
       $ebook =Ebook::with(['user','categories','authors','files'])->get();



        $headers = array(
            "Content-type"        => "text/csv",
            "Content-Disposition" => "attachment; filename=$fileName",
            "Pragma"              => "no-cache",
            "Cache-Control"       => "must-revalidate, post-check=0, pre-check=0",
            "Expires"             => "0"
        );

        $columns = array(
           
            "title",
            "description",
            "short_description",
            "categories",
            "authors",
            "key_word",
            "target_reader",
            "publisher",
            "publication_year",
            "password",
            "isbn",
            "book_edition",
            "price",
            "country_origin",
            "book_language",
            "number_of_pages",
            "buy_url",
            "file_type",
            "book_cover",
            "book_file",
            "is_featured",
            "is_private",
            "is_active",
            "file_url",
            "embed_code",
            "audio_book_files",
        );

        $callback = function() use($ebook, $columns) {
            $file = fopen('php://output', 'w');
            fputcsv($file, $columns);
            foreach ($ebook as $book) {
               
                $row['title']  = $book->title;
                $row['description']    = $book->description;
                $row['short_description']    = $book->short_description;
                $row['categories']    = $book->categories->pluck('name')->implode('| ');
                $row['authors']    = $book->authors->pluck('name')->implode('| ');
                $row['key_word']    = $book->key_word;
                $row['target_reader']    = $book->target_reader;
                $row['publisher']    = $book->publisher;
                $row['publication_year']    = $book->publication_year;
                $row['password']    = $book->password;
                $row['isbn']    = $book->isbn;
                $row['book_edition']    = $book->book_edition;
                $row['price']    = $book->price;
                $row['country_origin']    = $book->country_origin;
                $row['book_language']    = $book->book_language;
                $row['number_of_pages']    = $book->number_of_pages;
                $row['buy_url']    = $book->buy_url;
                $row['file_type']    = $book->file_type;
                $row['book_cover']  = $book->book_cover->path;
                $row['book_file']  = $book->book_file->path;
                $row['is_featured']    = $book->is_featured;
                $row['is_private']    = $book->is_private;
                $row['is_active']    = $book->is_active;
                $row['file_url']    = $book->file_url;
                $row['embed_code']    = $book->embed_code;
                $row['audio_book_files']  = $book->audio_book_files;
                

               

                fputcsv($file, array(
                    
                    $row['title'],
                    $row['description'],
                    $row['short_description'],
                    $row['categories'],
                    $row['authors'],
                    $row['key_word'],
                    $row['target_reader'],
                    $row['publisher'], 
                    $row['publication_year'], 
                    $row['password'],   
                    $row['isbn'],
                    $row['book_edition'],
                    $row['price'],
                    $row['country_origin'],
                    $row['book_language'],
                    $row['number_of_pages'],
                    $row['buy_url'],
                    $row['file_type'],
                    $row['book_cover'],
                    $row['book_file'], 
                    $row['is_featured'],   
                    $row['is_private'],   
                    $row['is_active'],   
                    $row['file_url'],
                    $row['embed_code'],
                    $row['audio_book_files'], 
                   ));
            }

            fclose($file);
        };

        return response()->stream($callback, 200, $headers);
      
        
        
    }

 
    /**
     * Store a newly created resource in storage.
     *
     * @param \Modules\Import\Http\Requests\StoreImporterRequest $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $path = $request->file('csv_file');
        
        // if ($request->has('header')) {
        //     $headings = (new HeadingRowImport)->toArray($path);
        // }

          

        if($path ){
            @set_time_limit(0);
            $importers = EbookImport::class;
            ExcelFacade::import(new $importers, $path, null, Excel::CSV);

        if (session()->has('importer_errors')) {
            return back()->with('error', trans('import::messages.there_was_an_error_on_rows', [
                'rows' => implode(', ', session()->pull('importer_errors', [])),
            ]));
        }
      
        return response(["success" => true, 'message'=> trans('import::messages.the_importer_has_been_run_successfully')]);
    }
}


    
}
