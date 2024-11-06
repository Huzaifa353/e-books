

let mix = require('laravel-mix');


mix.js('Modules/Import/Resources/assets/admin/js/app.js', 'Modules/Import/Assets/admin/js/import.js')
   .sass('Modules/Import/Resources/assets/admin/sass/app.scss', 'Modules/Import/Assets/admin/css/import.css');

 
    
   