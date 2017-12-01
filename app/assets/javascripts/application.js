// application.js

//= require jquery
//= require cocoon
//= require bootstrap-sprockets
//= require jquery_ujs
//= require fuelux
//= require_tree .

$(document).ready(function() {

  $("questionFrom").bind('submit', submitSubmission);

  $(window).keydown(function(event){
    if(event.keyCode == 13) {
      event.preventDefault();
      return false;
    }
  });

  function submitSubmission(event) {
    event.preventDefault();
  }

  $('.btn-prev').hide();
  $('.btn-submit').hide();

  // Timer
  var counter = 1;
  var currentStepp = $('#questionFrom').wizard('selectedItem').step; // return step = 1

  var showSubmit = $('#questionFrom').on('changed.fu.wizard', function(evt, item){
    var totalQuestion = $('.step-pane').length;

    if (item.step == totalQuestion) {
      $('.btn-submit').show(1000);
      $('.btn-next').hide(1000);
    }
    console.log(item.step, totalQuestion);
  });

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


  // Showing the result of the exam
  $('.congratulations').hide();
  $('.try_again').hide();

  var tryAgain = $('.try_again p').text();
  var cong = $('.congratulations p').text();

  if (cong === "Congratulations!") {
    $('.result').html("<p class='gefe bg-success text-white'>Gefeliciteerd!</p>");
  }
  if (tryAgain === "Try again") {
    $('.result').html("<p class='again bg-danger text-white'>Jammer, probeer het nog een keer!</p>");
  }


 });
