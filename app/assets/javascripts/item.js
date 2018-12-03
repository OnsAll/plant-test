$(document).ready(function(){
    $("#new_items_form").hide();
    $("#addNewItem").click(function(){
        $("#plantSet").append($("#new_items_form").html());
    });
});