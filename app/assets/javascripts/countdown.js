$(function() {
  $countdown = $("#countdown")
  countdown(new Date($countdown.data("target")), function(c) {
    $("#days").text(c.days);
    $("#months").text(c.months);
    $("#hours").text(c.hours);
    $("#minutes").text(c.minutes);
    $("#seconds").text(c.seconds);
  });
});
