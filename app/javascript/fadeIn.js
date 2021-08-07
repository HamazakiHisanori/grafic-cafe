$(function() {
  $('.title-background').hide().fadeIn(3000);
});

$(function() {
  $(window).scroll(function() {
    const wHeight = $(window).height();
    const scrollHeight = $(window).scrollTop();
    $('.scroll-anime').each(function() {
      const target = $(this).offset().top;
      if(scrollHeight > target - wHeight + 60) {
        $(this).addClass("fadeInDown");
      }
    });
  });
});
