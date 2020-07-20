$(function() {
	$('ul.tab li').click(function() {
	var activeTab = $(this).attr('data-tab');
	$('ul.tab li').removeClass('current');
	$('.tabcontent').removeClass('current');
	$(this).addClass('current');
	$('#' + activeTab).addClass('current');
	})
});

$(function() {
	$("#date1").datepicker({
		onSelect : function(dateText, inst) {
			console.log(dateText);
			console.log(inst);
		}
});

	$("#date2").datepicker({
		onSelect : function(dateText, inst) {
			console.log(dateText);
			console.log(inst);
		}
	});

	$("#date3").datepicker({
		onSelect : function(dateText, inst) {
			console.log(dateText);
			console.log(inst);
		}
	});

	$("#date4").datepicker({
		onSelect : function(dateText, inst) {
			console.log(dateText);
			console.log(inst);
		}
	});

	$("#date5").datepicker({
		onSelect : function(dateText, inst) {
			console.log(dateText);
			console.log(inst);
		}
	});
});