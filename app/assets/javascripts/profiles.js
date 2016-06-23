// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
  var preview = $(".upload-preview img");

  $(".file").change(function(event){
   var input = $(event.currentTarget);
   var file = input[0].files[0];
   var reader = new FileReader();
   reader.onload = function(e){
     image_base64 = e.target.result;
     preview.attr("src", image_base64);
      $(".facebook-preview").addClass("hidden");
      $(".photo-preview").removeClass("hidden");
   };
   reader.readAsDataURL(file);
 });
});