// application.js

//= require jquery
//= require cocoon
//= require bootstrap-sprockets
//= require jquery_ujs
//= require fuelux
//= require_tree .

$(document).ready(function() {

  $('.btn-submit').hide();
  $('.btn-prev').hide();
  var totalQuestion = $('.step-pane').length;
  var currentStep = $('#questionFrom').on('changed.fu.wizard', function(evt, item) {
    console.log(item.step);

    if (item.step >= 3) {
      $('#timer').remove();
      $('.btn-prev').show();
    } else {
      $('.btn-prev').hide();
    }

  });




  var timer;
  function myTimer(sec) {
    if (timer) clearInterval(timer);
    timer = setInterval(function() {
      $('#timer').text(sec--);
      if (sec == -1) {
        clearInterval(timer);
        $('#questionFrom').wizard('next');
        $(function() {
          myTimer(3);
        });
      }
    }, 1000);
  }

  $(function() {
    myTimer(3);
  });




 });
