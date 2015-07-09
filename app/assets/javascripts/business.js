 var favorite_function = function() {
    $.ajax("/favorites", {
        method: "POST",
        data: {
          name: $(this).parent().parent().children(".name").text(),
          rating: $(this).parent().parent().children(".rating").text(),
          review_count: $(this).parent().parent().children(".review_count").text(),
          address: $(this).parent().parent().children(".address").text(),
          url: $(this).parent().parent().children(".url").text()
        }
     })
  }
  var delete_favorite = function() {
    var favorite_id = $(this).parent().parent().data().favoriteId
    var row_to_delete = $(this).parent().parent()
    $.ajax("/favorites/"+favorite_id+"", {
        method: "DELETE",
        data: {
          id: favorite_id
        },
        success: function() {
          row_to_delete.hide()
        }
     })
  }
$(document).on("ready", function(){
  $(".btn-small").on("click", favorite_function)
  $(".delete").on("click", delete_favorite)
})