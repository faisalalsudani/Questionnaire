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
      $('#timer2').remove();
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
      $('#pbar_innerdiv').css("width", timer);
      $('#pbar_innerdiv').css("max-width",timer);
      $('#pbar_innertext').text(sec + "%");

      if (sec == -1) {
        clearInterval(timer);
        $('#questionFrom').wizard('next');
        $(function() {
          myTimer(9);
        });
      }
    }, 1000);
  }

  $(function() {
    myTimer(9);
  });


  $('.answers').hide();
  $('.answers-2').hide();
  $('.question-sort').hide();

  $("#time-yes").click(function(){
    if ($('#time-yes').is(':checked')){
      $('.question-sort').hide(1000);
      $('.answers').hide(1000);
      $('.answers-2').show(1000);
    }
  });
  $("#time-no").click(function(){
    if ($('#time-no').is(':checked')){
      $('.question-sort').show(1000);
      $('.answers').show(1000);
      $('.answers-2').hide(1000);
    }
  });




 });
