$(function() {
  const top = $('#top').offset().top;
  const news = $('#news').offset().top - 70;
  const menu = $('#menu').offset().top - 70;
  const contact = $('#contact').offset().top - 70;
  const access = $('#access').offset().top - 70;

  const speed = 800;

  $('#top-link').click(function() {
    $("html,body").animate({scrollTop:top},speed);
  });

  $('#news-link').click(function() {
    $("html,body").animate({scrollTop:news},speed);
  });

  $('#menu-link').click(function() {
    $("html,body").animate({scrollTop:menu},speed);
  });

  $('#contact-link').click(function() {
    $("html,body").animate({scrollTop:contact},speed);
  });

  $('#access-link').click(function() {
    $("html,body").animate({scrollTop:access},speed);
  });

});



