$(document).ready(function() {

  $('.up_button').on('click', function(e){
    e.preventDefault();
    var voteContainer = $(this)
    $.ajax({
      type: "GET",
      url: $(this).attr("href")
    }).done(function(response){
      debugger;
      $('').html(response);
    })
  });
});
