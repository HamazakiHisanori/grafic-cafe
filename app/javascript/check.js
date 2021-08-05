$(function() {
  $('#contact-form').submit(function() {
    if(window.confirm("この内容で送信してよろしいでしょうか？")) {
      return true;
    } else {
      return false;
    }
  });
});
