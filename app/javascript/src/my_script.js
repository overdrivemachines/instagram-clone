$(function() {
  $(".post-actions").on("click", "svg.post-like", function () {
    var post_id = $(this).data("id");

    $.ajax({
      url: "/post/like/" + post_id,
      method: "GET"
    })
    .done(function(response){
      console.log(response);
    });
  });
});
