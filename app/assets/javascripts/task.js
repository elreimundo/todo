Todos = {
	initialize: function(){
		this.addListenersToExistingTasks()
		this.makeAddAppendNewTasks()
	},

	addListenersToExistingTasks: function(){
		$("input[type='checkbox']").on('click',function(e){ 
			//test to see if checkbox is responding to click
			alert("I clicked a check box!")
		});
	},

	complete: function(i){
		$.ajax({
			url: '/task/complete',
			type: 'post',
			data: {id: i}
		}).success($('#'+i).prop('checked',true)).fail(alert("Something Went Wrong"))
		//checkboxes not currently responding to click
	},

	makeAddAppendNewTasks: function(){
		//this will require messing with the remote:true form side of things
		//WIP: come back to this
	}
};

$(document).ready(Todos.initialize())
