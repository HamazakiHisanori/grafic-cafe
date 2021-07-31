//devise

// user-name
$(function() {
  $('#user-name').bind("blur", function() {
    const user_name = $(this).val();
    check_name(user_name)
  });
});

function check_name(str) {
  $("#user-name-error").empty();
  const result = true;
  const user_name = $.trim(str);

  if(user_name == ""){
    $('#user-name-error').html('お名前を入力してください');
		result = false;
  } else if(user_name.length > 10) {
    $('#user-name-error').html('お名前は10字以内でお願いします')
    result =false;
  }
  return result;
}

// user-mail
$(function() {
  $('#user-mail').bind("blur", function() {
    const user_mail = $(this).val();
    check_mail(user_mail)
  });
});

function check_mail(str) {
  $("#user-mail-error").empty();
  const result = true;
  const user_mail = $.trim(str);

  if(user_mail == ""){
    $('#user-mail-error').html('メールアドレスを入力してください');
		result = false;
  } else if(!user_mail.match(/[^@\s]+@[^@\s]+/)) {
    $('#user-mail-error').html('メールアドレスが正しくありません')
    result =false;
  }
  return result;
}

// password
$(function() {
  $('#password').bind("blur", function() {
    const password = $(this).val();
    check_password(password)
  });
});

function check_password(str) {
  $("#password-error").empty();
  const result = true;
  const password = $.trim(str);

  if(password == ""){
    $('#password-error').html('パスワードを入力してください');
		result = false;
  } else if(!password.match(/secretcode/)) {
    $('#password-error').html('パスワードが違います')
    result =false;
  }
  return result;
}

// password_confirmation
$(function() {
  $('#password-confirmation').bind("blur", function() {
    const password_confirmation = $(this).val();
    check_password_confirmation(password_confirmation)
  });
});

function check_password_confirmation(str) {
  $("#password-confirmation-error").empty();
  const result = true;
  const password_confirmation = $.trim(str);

  if(password_confirmation == ""){
    $('#password-confirmation-error').html('パスワードの確認をお願い致します');
		result = false;
  } else if(!password_confirmation.match(/secretcode/)) {
    $('#password-confirmation-error').html('パスワードが一致しません')
    result =false;
  }
  return result;
}

// contact

// contact-name
$(function() {
  $('#contact-name').bind("blur", function() {
    const contact_name = $(this).val();
    check_contact_name(contact_name)
  });
});

function check_contact_name(str) {
  $("#contact-name-error").empty();
  const result = true;
  const contact_name = $.trim(str);

  if(contact_name == ""){
    $('#contact-name-error').html('お名前を入力してください');
		result = false;
  }
  return result;
}

// contact-mail
$(function() {
  $('#contact-mail').bind("blur", function() {
    const contact_mail = $(this).val();
    check_contact_mail(contact_mail)
  });
});

function check_contact_mail(str) {
  $("#contact-mail-error").empty();
  const result = true;
  const contact_mail = $.trim(str);

  if( contact_mail == ""){
		result = true;
  } else if (!contact_mail.match(/[^@\s]+@[^@\s]+/)) {
    $('#contact-mail-error').html('メールアドレスが正しくありません');
    result = false;
  }
  return result;
}

// contact-phone-number
$(function() {
  $('#contact-phone-number').bind("blur", function() {
    const contact_phone_number = $(this).val();
    check_contact_phone_number(contact_phone_number)
  });
});

function check_contact_phone_number(str) {
  $("#contact-phone-number-error").empty();
  const result = true;
  const contact_phone_number = $.trim(str);

  if( contact_phone_number == ""){
		result = true;
  } else if (!contact_phone_number.match(/\d{10,11}/)) {
    $('#contact-phone-number-error').html('電話番号が正しくありません');
    result = false;
  }
  return result;
}

// contact-category
$(function() {
  $('#contact-category').bind(" change blur ", function() {
    const contact_category = $(this).val();
    check_contact_category(contact_category)
  });
});

function check_contact_category(id) {
  $("#contact-category-error").empty();
  const result = true;
  const contact_category = id;

  if( contact_category == 1){
    $('#contact-category-error').html('ご質問の種類を選択してください');
		result = false;
  }
  return result;
}

// contact-content
$(function() {
  $('#contact-content').bind("blur", function() {
    const contact_content = $(this).val();
    check_contact_content(contact_content)
  });
});

function check_contact_content(str) {
  $("#contact-content-error").empty();
  const result = true;
  const contact_content = $.trim(str);

  if( contact_content == ""){
    $('#contact-content-error').html('内容を入力してください');
		result = false;
  }
  return result;
}

// contact-reply
$(function() {
  $('#contact-reply').bind(" change blur ", function() {
    const contact_reply = $(this).val();
    check_contact_reply(contact_reply)
  });
});

function check_contact_reply(id) {
  $("#contact-reply-error").empty();
  const result = true;
  const contact_reply = id;

  if( contact_reply == 1){
    $('#contact-reply-error').html('返信の有無を選択してください');
		result = false;
  }
  return result;
}

// menu

// menu-type
$(function() {
  $('#menu-type').bind(" change blur ", function() {
    const menu_type = $(this).val();
    check_menu_type(menu_type)
  });
});

function check_menu_type(id) {
  $("#menu-type-error").empty();
  const result = true;
  const menu_type = id;

  if( menu_type == 1){
    $('#menu-type-error').html('種類を選択してください');
		result = false;
  }
  return result;
}

// menu-name
$(function() {
  $('#menu-name').bind("blur", function() {
    const menu_name = $(this).val();
    check_menu_name(menu_name)
  });
});

function check_menu_name(str) {
  $("#menu-name-error").empty();
  const result = true;
  const menu_name = $.trim(str);

  if( menu_name == ""){
    $('#menu-name-error').html('名前を入力してください');
		result = false;
  } else if (menu_name.length > 15){
    $('#menu-name-error').html('16字以内でお願い致します');
  }
  return result;
}

// menu-price
$(function() {
  $('#menu-price').bind("blur", function() {
    const menu_price = $(this).val();
    check_menu_price(menu_price)
  });
});

function check_menu_price(int) {
  $("#menu-price-error").empty();
  const result = true;
  const menu_price = int;

  if( menu_price == ""){
    $('#menu-price-error').html('値段を入力してください');
		result = false;
  } else if (menu_price.match(/[^0-9]/)){
    $('#menu-price-error').html('半角数字で入力してください');
    result = false;
  } else if (menu_price.match(/^[0]/)){
    $('#menu-price-error').html('1以上で入力してください');
    result = false;
  } else if (menu_price > 9999){
    $('#menu-price-error').html('9999以下で入力してください');
    result = false;
  }
  return result;
}

// menu-description
$(function() {
  $('#menu-description').bind("blur", function() {
    const menu_description = $(this).val();
    check_menu_description(menu_description)
  });
});

function check_menu_description(str) {
  $("#menu-description-error").empty();
  const result = true;
  const menu_description = $.trim(str);

  if( menu_description == ""){
    $('#menu-description-error').html('説明文を入力してください');
		result = false;
  } else if ( menu_description.length > 100){
    $('#menu-description-error').html('100字以内で入力してください');
  }
  return result;
}

// news

// news-title
$(function() {
  $('#news-title').bind("blur", function() {
    const news_title = $(this).val();
    check_news_title(news_title)
  });
});

function check_news_title(str) {
  $("#news-title-error").empty();
  const result = true;
  const news_title = $.trim(str);

  if( news_title == ""){
    $('#news-title-error').html('タイトルを入力してください');
		result = false;
  } else if ( news_title.length > 40){
    $('#news-title-error').html('40字以内で入力してください');
  }
  return result;
}

// news-contents
$(function() {
  $('#news-contents').bind("blur", function() {
    const news_contents = $(this).val();
    check_news_contents(news_contents)
  });
});

function check_news_contents(str) {
  $("#news-contents-error").empty();
  const result = true;
  const news_contents = $.trim(str);

  if( news_contents == ""){
    $('#news-contents-error').html('内容を入力してください');
		result = false;
  } else if ( news_contents.length > 300){
    $('#news-contents-error').html('300字以内で入力してください');
  }
  return result;
}




