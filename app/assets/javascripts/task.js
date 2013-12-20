Todos = {
	initialize: function(){
		this.addListenersToExistingTasks()
		this.makeAddAppendNewTasks()
	},

	addListenersToExistingTasks: function(){
		$("input[type='checkbox']").on('click',function(e){ 
			alert("I clicked a check box!")
		});
	},

	complete: function(i){
		$.ajax({
			url: '/task/complete',
			type: 'post',
			data: {id: i}
		}).success($('#'+i).prop('checked',true)).fail(alert("Something Went Wrong"))
	},

	makeAddAppendNewTasks: function(){
	}
};

$(document).ready(Todos.initialize())
