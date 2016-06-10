$(document).ready(function() {
  $('.timer_student-stop').on('click', function(event) {
    athlete_id = $(this).closest('div').attr('id');
    $(this).closest('div').find('.elapsed_time').text(tenths);
  })

  var $readout = $('#timer_readout');
  var timer = new Timer($readout);

  $('#start').on('click', function() { timer.start() });
  $('#stop' ).on('click', function() { timer.stop()  });
  $('#clear').on('click', function() { timer.clear() });

});


function Timer(display) {
  this.display    = display;
  this.tenths     = 0;
  this.seconds    = 0;
  this.minutes    = 0;
  this.inervalId  = 0;
}

Timer.prototype.incrementTimer = function() {
  this.tenths++;
  // console.log(this.tenths);
  console.log(this.seconds);

  if (this.tenths % 10 === 0) {
    this.seconds++;
  }

  if (this.seconds >= 60) {
    this.seconds = 0;
    this.minutes++;
  }

  this.updateDisplay();
}

Timer.prototype.updateDisplay = function() {
  console.log(this.display);
  this.display.text((this.minutes ? (this.minutes > 9 ? this.minutes : "0" + this.minutes) : "00") + ":" + (this.seconds > 9 ? this.seconds : "0" + this.seconds) + "." + (this.tenths % 10));
}

Timer.prototype.start = function() {
  this.inervalId = setInterval(this.incrementTimer.bind(this), 100);
}

Timer.prototype.stop = function() {
  clearInterval(this.inervalId);
}

Timer.prototype.clear = function() {
  this.display.text("00:00.0");
  this.tenths = 0, this.seconds = 0, this.minutes = 0;
}
