// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var FORUM = (function() {
  'use strict';

  var page = 0;

  var configs = {
    topic: {
      url: '/topics',
      paginator : '#p'
    }
  }

  function init(custom_configs) {
    try {
      $.extend(true, configs, custom_configs);
      register();
    } catch(e) {}
  }

  function register(){
    $(configs.topic.paginator).on({change: paginate})
  }

  function paginate(e) {
    e.preventDefault();
    page = $(this).val();
    goToPage();
  }

  function goToPage() {
    var redirect = configs.topic.url + '?page=' + page;
    console.log(redirect);
    location.href = redirect;
  }

  return {
    init: init
  };

}());

$(document).ready(function() {
  FORUM.init();
});
