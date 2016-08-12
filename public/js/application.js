$(document).ready(function() {

  // ajax for up vote
  $('.up_button').on('click', function(e){
    e.preventDefault();
    var voteContainer = $(this);

    $.ajax({
      type: "GET",
      url: $(this).attr("href")
    }).done(function(response){
      var up_vote = voteContainer.parent().find(".vote_number");
      $(up_vote).html("<span class='vote_number'>"+ response + "</span>");
    });
  });

  // ajax for down vote
  $('.down_button').on('click', function(e) {
    e.preventDefault();
    var voteContainer = $(this);
    $.ajax({
      type: "GET",
      url: $(this).attr("href")
    }).done(function(response) {
      var down_vote = voteContainer.parent().find(".vote_number");
      $(down_vote).html("<span class='vote_number'>"+ response +"</span>");
    });
  });

  // ajax for add comment hyperlink click
  $('#add_comment').on('click', function(e){
    e.preventDefault();
    $(this).hide();
    var addComment = $(this);
    $.ajax({
      type: "GET",
      url: $(this).attr("href")
    }).done(function(response){
      $(addComment).parent().append(response);
    });
  });

  // ajax for submit comment form
    $('.id_form').on('submit', function(e){
      e.preventDefault();
      var newComment = $(this).find('#id_form');
     $.ajax({
       type: "POST",
       url: $(newComment).attr("action"),
       data: $(newComment).serialize()
      }).done(function(response) {
       //  $('.comment_place').append("<div class='id_form'><blockquote><a id='add_comment' href='/questions/<%=@question.id%>/comments/new'>Add a comment</a></blockquote>
       // </div>");
          $('.comment_place').append("<div id='comment_box' class='well well-sm' id='question_comment'>"+ response.comment.body + "- </em>" + response.comment.author + "</em>");
            $('.form_snippet').hide();
           $('#add_comment').show();
      })
    });

});
