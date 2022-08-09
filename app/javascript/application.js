// Entry point for the build script in your package.json

//= require jquery
//= require rails_ujs
//= require turbolinks
//= require_tree .

import "./add_jquery"
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
Turbo.session.drive = false

$(function () {

    $('.add_child').click(function() {
        console.log("add child ran");
 
       var association = $(this).attr('data-association');
       console.log(association);
       var target = $(this).attr('target');
       console.log(target);

       var regexp = new RegExp('new_' + association, 'g');
       var new_id = new Date().getTime();
       var Dest = (target == '') ? $(this).parent() : $(target);
       Dest.append(window[association+'_fields'].replace(regexp, new_id));
       return false;
     });

     $(document).delegate('.remove_child','click', function() {
       $(this).parent()
       $(this).parent().children('.removable')[0].value = 1;
       $(this).parent().hide();
       return false;
     });
});