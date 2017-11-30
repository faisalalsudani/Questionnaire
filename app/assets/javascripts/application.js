// application.js

//= require jquery
//= require cocoon
//= require bootstrap-sprockets
//= require jquery_ujs
//= require fuelux
//= require_tree .

$(document).ready(function() {

  // Timer
  var counter = 1;
  var currentStepp = $('#questionFrom').wizard('selectedItem').step; // return step = 1
  $('.btn-submit').show();

  function countdown(){
    setTimeout(countdown, 1000);
    $('#counter').text(counter)
    counter++

    if (counter == 4) {
      $('#questionFrom').wizard('next');
      counter=1
    }

    var currentStep = $('#questionFrom').on('changed.fu.wizard', function(evt, item){
      if (item.step >= 3) {
        $('#counter').remove();
        $('.btn-prev').show();
        countdown().stop();
      } else  {
        $('.btn-prev').hide();
      }

    });

  }



  countdown();




  $('.btn-prev').hide();


  // Add new question logic & animation
  $('.answers').hide();
  $('.answers-2').hide();
  $('.question-sort').hide();
  $('.answers-input').hide();
  $('.answers-ja').hide();

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

  $("#question_sort__number").click(function(){
    if ($('#question_sort__number').is(':checked')){
      $('.answers-input').show(1000);
      $('.answers').hide(1000);
      $('.answers-ja').hide(1000);
    }
  });

  $("#question_sort__yes_no").click(function(){
    if ($('#question_sort__yes_no').is(':checked')){
      $('.answers-ja').show(1000);
      $('.answers').hide(1000);
      $('.answers-input').hide(1000);
    }
  });

  $("#question_sort__open_question").click(function(){
    if ($('#question_sort__open_question').is(':checked')){
      $('.answers-ja').hide(1000);
      $('.answers-input').hide(1000);
      $('.answers').show(1000);
    }
  });




 });
