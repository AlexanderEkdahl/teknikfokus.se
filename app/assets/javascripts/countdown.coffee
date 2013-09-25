$ ->
  countdown new Date(2014, 2, 12), (c) ->
    $("#days").text(c.days)
    $("#months").text(c.months)
    $("#hours").text(c.hours)
    $("#minutes").text(c.minutes)
    $("#seconds").text(c.seconds)
