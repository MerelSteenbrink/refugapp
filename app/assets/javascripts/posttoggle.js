$(document).ready(function(){
    $(function(){
      $(".butti").on("click", function(event){
    // remove the active class on both butti's
    $(".butti").removeClass("active");
    // add the class to the button wich is clicked on
    $(this).addClass('active');
    //hide all the content
    $(".post-content").addClass("hidden");
    //Show the content that should be shown
    targetword = $(this).data("target");
    $(targetword).removeClass("hidden");
});
  });

    //add onclick mapload to every function
    //put all markers in an array
    //load the map with the array

    $('#kind_refugee').on('click', function(event){
        event.preventDefault();
        $(".btn-border-black").removeClass('active-black');
        $("#kind_refugee").addClass('active-black');
        $('.col-xs-12').addClass('type-hidden');
        Newcomers();
    });


    $('#kind_dutchie').on('click', function(event){
       event.preventDefault();
       $(".btn-border-black").removeClass('active-black');
       $("#kind_dutchie").addClass('active-black');
       $('.col-xs-12').addClass('type-hidden');        
       Locals();
    });

    $('#kind_all').on('click', function(event){
        event.preventDefault();
        All_kind();
    });

    $('#category_skills').on('click', function(event){
        event.preventDefault();
        $(".btn-border-orange-select").removeClass('active-orange');
        $("#category_skills").addClass('active-orange');
        $('.col-xs-12').addClass('category-hidden');
        Skills();
    });

    $('#category_social').on('click', function(event){
        event.preventDefault();
        $(".btn-border-orange-select").removeClass('active-orange');
        $("#category_social").addClass('active-orange');
        $('.col-xs-12').addClass('category-hidden');
        Social();
    });

    $('#category_languages').on('click', function(event){
        event.preventDefault();
        $(".btn-border-orange-select").removeClass('active-orange');
        $("#category_languages").addClass('active-orange');
        $('.col-xs-12').addClass('category-hidden');
        Languages();
    });

    $('#category_all').on('click', function(event){
        event.preventDefault();
        All_category();
    });



    function Newcomers(){
        $('.refugee').each(function(counter, item){
            $($(this).parent().parent()[0]).removeClass('type-hidden');
        }); 
    };


    function Locals(){
        $('.dutchie').each(function(counter, item){
            $($(this).parent().parent()[0]).removeClass('type-hidden');
        });    
    };

    function All_kind(){
        $(".btn-border-black").removeClass('active-black');
        $("#kind_all").addClass('active-black');
        $('.col-xs-12').removeClass('type-hidden'); 
    };

    function Skills(){
        $('.skills').each(function(counter, item){
            $($(this).parent().parent()[0]).removeClass('category-hidden');
        }); 
    };

    function Social(){
        $('.social').each(function(counter, item){
            $($(this).parent().parent()[0]).removeClass('category-hidden');
        }); 
    };

    function Languages(){
        $('.language').each(function(counter, item){
            $($(this).parent().parent()[0]).removeClass('category-hidden');
        });
    };

    function All_category(){
        $(".btn-border-orange-select").removeClass('active-orange');
        $("#category_all").addClass('active-orange');
        $('.col-xs-12').removeClass('category-hidden');
    };





});