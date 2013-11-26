// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .
//= require jquery.ui.all
//= require jquery.autosize
//= require pickadate/picker
//= require pickadate/picker.date
//= require pickadate/picker.time

$(function() {
  $( "#datepicker" ).pickadate({
	  format: 'on mmmm d, yyyy',
	  max: 0,
	  min: true,
	  clear: false
  });
 });
 
$(document).ready(function() {
  /* Activating Best In Place */
  
  $('textarea').autosize(); 
  
  $( ".nav .add" ).click(function() {
	  $(".thing_description textarea").focus();
	  $( ".ghost" ).toggle("fade");
	  $( ".footer" ).toggle("fade");
	});
	
	$( ".cancel" ).click(function() {
	  $( ".ghost" ).toggle("fade");
	  $( ".footer" ).toggle("fade");
	});
	
});
