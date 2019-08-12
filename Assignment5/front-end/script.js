$(document).ready(function(){
//Method names listed at https://www.w3schools.com/tags/ref_httpmethods.asp
	$("#R").click(function(event){
		event.preventDefault();
		$.ajax({
				type: "GET",
				url: "../web-service/api.php",
				data: $('#retrieve').serialize(),
				dataType: "text",
			success: function(result){
				$("#Rprint").html(result);
			},
			error: function(result){
				$("#Rprint").html(result);
			}
		});
	});

	$("#C").click(function(event){
		event.preventDefault();
		$.ajax({
				type: "POST",
				url: "../web-service/api.php",
				data: $('#create').serialize(),
				dataType: "text",
			success: function(result){
				$("#Cprint").html(result);
				console.log($('#create').serialize());

			},
			error: function(result){
				$("#Cprint").html(result);
				console.log($('#create').serialize());

			}
		});
	});

	$("#U").click(function(event){
		event.preventDefault();
		$.ajax({
				type: "PUT",
				url: "../web-service/api.php",
				data: $('#update').serialize(),
				dataType: "text",
			success: function(result){
				$("#Uprint").html(result);
				console.log($('#update').serialize());
			},
			error: function(result){
				$("#Uprint").html(result);
				console.log($('#update').serialize());
			}
		});
	});

	$("#D").click(function(event){
		event.preventDefault();
		$.ajax({
				type: "DELETE",
				url: "../web-service/api.php",
				data: $('#delete').serialize(),
				dataType: "text",
			success: function(result){
				$("#Dprint").html(result);
				console.log($('#delete').serialize());
			},
			error: function(result){
				$("#Dprint").html(result);
				console.log($('#delete').serialize());
			}
		});
	});
});