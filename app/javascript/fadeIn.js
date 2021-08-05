$(function() {
  $('.title-background').hide().fadeIn(3000);
});

$(function() {
  $(window).scroll(function() {
    const wHeight = $(window).height();
    const scrollHeight = $(window).scrollTop();
    $('.scrollanime').each(function() {
      const target = $(this).offset().top;
      if(scrollHeight > target - wHeight + 100) {
        $(this).addClass("fadeInDown");
      }
    });
  });
});
