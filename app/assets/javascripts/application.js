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
//= require jquery-ui
//= require twitter/bootstrap/transition
//= require twitter/bootstrap/alert
//= require twitter/bootstrap/modal
//= require twitter/bootstrap/button
//= require twitter/bootstrap/collapse
//= require turbolinks
//= require_tree .

$(document).on("page:load ready", function(){
   $(".datepicker").datepicker({
    dateFormat: "yy-mm-dd",
    startDate: "-1D",
    todayBtn: true,
    language: "es",
    autoclose: true,
    todayHighlight: true
});
});