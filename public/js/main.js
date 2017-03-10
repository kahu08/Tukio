$(document).ready(function(){

  $("#category1").hide();
    $("#event1").hide();
    $("#event2").hide();
    $("#login").show();
  $("#login").submit(function(event) {
    event.preventDefault();
    var pass = $("#pass").val();
    if (pass == "tukio1") {
      $("#category1").show();
        $("#event1").show();
        $("#event2").show();
        $("#login").hide();
    }
    else {
      alert("Login denied")
    }

  });
});
