$(function () {

    $( document ).on('submit','#forms',function(e) {
        e.preventDefault();
        var formData = new FormData($(this)[0]);
        let _export_url = window.route('admin.ebook.export_csv');
        $.ajax({
            url: _export_url,
            type: "POST",
            data: formData,
            dataType: "json",
            cache:false,
            contentType: false,
            processData: false,
            success:function(data) {
              $('#forms').trigger("reset");
              $(".show-csv-data").removeClass("d-none");
              $(".select-matching-csv-data").css('border-radius', '10px');
              var select_row = "";
            
              var column = ["title", "description", "short_description","categories","authors","key_word","target_reader","publisher","publication_year","password","isbn","book_edition","price","country_origin","book_language","number_of_pages","buy_url","file_type","book_cover","book_file","is_featured","is_private","is_active","file_url","embed_code","audio_book_files"];


                $.each(data[0], function (key, value) {
                  
                  select_row +="<td><select name='fields' class='select-matching-csv-data custom-select w-auto'>";
                  
                        $.each(column, function (index,element) {
                                if(value == element){
                                  select_row+= "<option value='"+element+"' selected>" + element.charAt(0).toUpperCase() + element.slice(1).replace('_', ' ',element)+ "</option>"; 
                                }else{
                                  select_row+= "<option value='"+element+"'>" + element.charAt(0).toUpperCase() + element.slice(1).replace('_', ' ',element)+ "</option>"; 
                                }
                        });


                  select_row +="</select></td>";

                });

                $("thead > tr").append(select_row);

              var tr="";
              $.each(data, function (index, element) {
                  tr +='<tr>';
                      $.each(element, function (key, value) {
                          tr +="<td>"+value+"</td>";
                      });
                  tr +='</tr>';
              });

              $("tbody").append(tr);

                $(document).on('click','#import-csv',function(e){
                   e.preventDefault();
                   let _import_url = window.route('admin.importer.store');

                    $.ajax({
                        url: _import_url,
                        type: "POST",
                        data:formData,
                        dataType: "json",
                        cache:false,
                        contentType: false,
                        processData: false,
                        success:function(data) {
                            $(".show-csv-data").hide();
                            $("#loader-spin").show();
                            setTimeout(function(){location.reload();},1000);
                        }
                    });
                });
            }
        });
    });
});