$(function(){
  $(".butti").on("click", function(event){
    // remove the active class on both butti's
    $(".butti").removeClass("active");
    // add the class to the button wich is clicked on
    $(this).toggleClass('active');
    //hide all the content
    $(".post-content").addClass("hidden");
    //Show the content that should be shown
    targetword = $(this).data("target");
    $(targetword).removeClass("hidden");
  });
});
