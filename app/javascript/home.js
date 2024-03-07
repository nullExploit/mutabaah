$(window).on('load',function() {
    setTimeout(() => {
        $(".loadercontainer").fadeOut("slow")
    }, 5000);
});
let textWrapper = document.querySelector('.ml9 .letters');
textWrapper.innerHTML = textWrapper.textContent.replace(/\S/g, "<span class='letter'>$&</span>");

setTimeout(() => {
anime.timeline({loop: false})
  .add({
    targets: '.ml9 .letter',
    scale: [0, 1],
    duration: 1500,
    elasticity: 600,
    delay: (el, i) => 45 * (i+1)
  })
anime.timeline({loop: false})
  .add({
    targets: '.getstarted',
    scale: [0, 1],
    opacity: [0, 1],
    easing: 'easeInOutExpo',
    duration: 1500,
    elasticity: 600
  })
}, 5000);
//   .add({
//     targets: '.ml9',
//     opacity: 0,
//     duration: 1000,
//     easing: "easeOutExpo",
//     delay: 1000
//   });