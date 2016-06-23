
$(".open-menu").on("click", function(){
  $(".fa-bars").addClass("hidden");
  $(".fa-times").removeClass("hidden");
  // $(".overlay-content").removeClass("hidden");
  $("#menu-slider").slideDown("slow")
  // , function(){
  //     // slide ready
  //     console.log("ready")
  // });
});

$(".hide-menu").on("click", function(){
  $(".fa-times").addClass("hidden");
  $(".fa-bars").removeClass("hidden");
  $("#menu-slider").slideUp("slow")
  // $(".overlay-content").addClass("hidden");

});
