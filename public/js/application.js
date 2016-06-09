$(document).ready(function() {
  $('.timer_student-stop').on('click', function(event) {
    athlete_id = $(this).closest('div').attr('id');
    $(this).closest('div').find('.elapsed_time').text(tenths);
  })

  var h1 = document.getElementsByTagName('h1')[0],
      start = document.getElementById('start'),
      stop = document.getElementById('stop'),
      clear = document.getElementById('clear'),
      tenths = 0, seconds = 0, minutes = 0,
      t;

  function add() {
    tenths++;
    if (tenths % 10 === 0) {
      seconds++;
      if (seconds >= 60) {
        seconds = 0;
        minutes++;
      }
    }
    formatTime();
    timer();
  }

  function formatTime() {
    h1.textContent = (minutes ? (minutes > 9 ? minutes : "0" + minutes) : "00") + ":" + (seconds > 9 ? seconds : "0" + seconds) + "." + (tenths % 10)
  }

  function timer() {
    t = setTimeout(add, 100);
  }

  /* Start button */
  start.onclick = timer;

  /* Stop button */
  stop.onclick = function() {
    clearTimeout(t);
  }

  /* Clear button */
  clear.onclick = function() {
    h1.textContent = "00:00.0";
    tenths = 0, seconds = 0, minutes = 0;
  }
});
