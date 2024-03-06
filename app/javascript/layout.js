//    $(window).on("load",function(){
//         $(".loadercontainer").fadeOut("slow");
//     });

// $(window).on('beforeunload', function(){
//       $(window).scrollTop(0);
// });

    $(window).ready(function() {
        $(".loadercontainer").fadeOut("slow")
    })

    $(function () {
        const locomotiveScroll = new LocomotiveScroll();
    })();