$(document).ready(function(){
  $(".iframe").colorbox({iframe:true, width:"90%", height:"90%",
  fixed: true,
    onOpen: function() {
      var ycoord = $(window).scrollTop();
      $('#colorbox').data('ycoord',ycoord);
      ycoord = ycoord * -1;
      $('body').css('position','fixed').css('left','0px').css('right','0px').css('top',ycoord + 'px');
    },
    onClosed: function() {
      $('body').css('position','').css('left','auto').css('right','auto').css('top','auto');
      $(window).scrollTop($('#colorbox').data('ycoord'));
    }
  });  $("#click").click(function(){
  $('#click').css({"background-color":"#f00", "color":"#fff", "cursor":"inherit"}).text("Open this window again and this message will still be here.");
  return false;
  });
  });
