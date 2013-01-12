jQuery(function() { 
$("#choose_tag").change(function(){
	$("#" + $(this).val()).css('display', '');
});
});


