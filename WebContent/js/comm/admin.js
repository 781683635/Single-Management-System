
/*Swiper声明*/
  /*EMBA学员swiper*/
$(document).ready(function(){
  var Swiperv2 = new Swiper('.swiper-containerv2', {
        pagination: '.swiper-paginationv2',
        paginationClickable: true,
        autoplay : 4000,
        speed:600,
        loop : true,
        effect : 'flip',
  })
  var Swiperv3 = new Swiper('.swiper-containerv3', {
          loop : true,
          effect : 'fade',
  })
  Swiperv2.params.control = Swiperv3;
  Swiperv3.params.control = Swiperv2;
});



