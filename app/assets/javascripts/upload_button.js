// add js class to html tag
document.querySelector("html").classList.add('js');

// initialize variables
var fileInput  = document.querySelector( ".input-file" );  
var button     = document.querySelector( ".input-file-trigger" );

// action when the spacebar or enter are pressed
button.addEventListener( "keydown", function( event ) {
  if ( event.keyCode == 13 || event.keyCode == 32 ) {
    fileInput.click();
  }
});

// action when the label is clicked
button.addEventListener( "click", function( event ) {
 fileInput.click();
 return false;
});