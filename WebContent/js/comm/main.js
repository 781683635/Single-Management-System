/*jquery*/
$(document).ready(function(){
      /*导航菜单弹出层*/
      $(".emba-nav5").mouseenter(function(){
        $(this).find(".emba-nav5h").show();
        $(this).find("i").removeClass("icon-angle-up");
        $(this).find("i").addClass("icon-angle-down");
      });
      $(".emba-nav5").mouseleave(function(){
        $(this).find(".emba-nav5h").hide();
        $(this).find("i").removeClass("icon-angle-down");
        $(this).find("i").addClass("icon-angle-up");
      });
      /*按钮动画效果*/
      $(".btn-ban-tit").mouseenter(function(){
        $(this).find("i:first").show();
        $(this).find("i:last").removeClass("col-h-blue");
        $(this).find("i:last").addClass("col-white");
        $(this).find("i:first").animate({
          left:'200px',
        });
        $(this).find("i:last").animate({
          right:'30px',
        });
      });
      $(".btn-ban-tit").mouseleave(function(){
        $(this).find("i:last").removeClass("col-white");
        $(this).find("i:last").addClass("col-h-blue");
         $(this).find("i:first").animate({
          left:'100px',
        });
         $(this).find("i:last").animate({
          right:'0px',
        });
         $(this).find("i:first").hide();
      });
    });
/*jqueryend*/
/*Swiper声明*/
var swiper = new Swiper('.swiper-containerv1', {
        pagination: '.swiper-paginationv1',
        paginationClickable: true,
        autoplay : 10000,
        speed:600,
        loop : true,
});
