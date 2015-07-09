 var favorite_function = function() {
      $.ajax("/favorites", {
          method: "POST",
          data: {
            name: $(this).parent().parent().children(".name").text()
            rating: $(this).parent().parent().children(".rating").text()
            review_count: $(this).parent().parent().children(".review_count").text()
            address: $(this).parent().parent().children(".address").text()
            url: $(this).parent().parent().children(".url").text()
          },
          success: function(data) {
            votes.text(data.total_votes)
            if (typeof data.error_message != 'undefined') {
              alert(data.error_message)
            } 
          }
       })
  }
$(document).on("ready", function(){
  $(".btn-small").on("click", favorite_function)
})