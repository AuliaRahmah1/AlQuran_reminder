function myFunction() {
	setInterval(function(){
		window.reminders.forEach(function(x)){
			if(x.show === false){
				if(x.remind_every < new Date()){
					x.show = true;
				}
			}
		}

	});
},1000);


$(myFunction);




