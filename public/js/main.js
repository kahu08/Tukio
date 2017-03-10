$(document).ready(function(){

  
    $("#buttons1").hide();
    $("#login").show();
  $("#login").submit(function(event) {
    event.preventDefault();
    var pass = $("#pass").val();
    if (pass == "tukio1") {
        $("#buttons1").show();
        $("#login").hide();
    }
    else {
      alert("Login denied")
    }

  });
});
