// application.js

//= require jquery
//= require cocoon
//= require bootstrap-sprockets
//= require jquery_ujs
//= require fuelux
//= require_tree .

$(document).ready(function() {

  $('.btn-submit').hide();
  var totalQuestion = $('.step-pane').length;
  var currentStep = $('#myWizard').on('changed.fu.wizard', function(evt, item) {
    console.log(item.step);
    if (item.step == totalQuestion) {
      $('.btn-submit').show();
      $('.btn-next').hide();
    }
  });




 });
