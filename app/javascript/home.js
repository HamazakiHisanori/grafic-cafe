$(function () {
  $(window).scroll(function () {
    const wHeight = $(window).height();
    const scrollAmount = $(window).scrollTop();
    $('.scroll-anime').each(function () {
      const targetPosition = $(this).offset().top;
      if(scrollAmount > targetPosition - wHeight +0) {
        $(this).addClass("fade-in");
      }
    });
  });
});
