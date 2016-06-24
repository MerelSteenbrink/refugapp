/*$('.chat').scrollTop(
  $('.chat')[0].scrollHeight
  );*/


/*$(document).ready(function(){
    $('container').scrollTop($('ul li').last().position().top);
});*/

$(document).ready(function(){

var myDiv = $(".chat");
myDiv.animate({ scrollTop: myDiv.prop("scrollHeight") - myDiv.height() }, 500);
});
