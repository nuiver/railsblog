// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets

$(document).on('turbolinks:load', function() {
  fadingMenu();
  toggleMiniMenu();
});

function fadingMenu() {

  var fadeStart=10 // 100px scroll or less will equiv to 1 opacity
  ,fadeUntil=450 // 200px scroll or more will equiv to 0 opacity
  ,menu = $('.nav')
  ;

  $(window).bind('scroll', function(){
  var offset = $(document).scrollTop()
      ,opacity=1
  ;
  if( offset<=fadeStart ){
      opacity=0;
  }else if( offset<=fadeUntil ){
      opacity=0+offset/fadeUntil;
  }
  menu.css('background-color', 'rgba(26, 85, 119,' + opacity + ')');
  });

};

function toggleMiniMenu() {

  $('#minimenu_icon').click(function(e) {
    e.preventDefault();
    $('#menumenu_div').toggleClass('activemenu')
    $('#dropdown').toggleClass('hidden');
  });

  $('.dropdownmenu').mouseleave(function(e) {
      e.preventDefault();
      $('#dropdown').addClass('hidden');
      $('#menumenu_div').toggleClass('activemenu')
    });



};
