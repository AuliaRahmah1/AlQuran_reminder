$(document).ready(function(){
	
	$("select#reminder_surat_id").on('change', function(e){
		$.get('/surats/' + e.target.value + '/ayats');
	});
	$.get('/reminders/check', function(data){
		if(data) {
			$.get('/reminders.js');
	
	
		}
	});
});






 