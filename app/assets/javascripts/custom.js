var ready;
ready = function() {

$(".select-book-type").change(function(){
	var term = $(this).val();
	//hide all inputs
	$('.drop-off-wrap').addClass('hidden');
	$('.pick-up-wrap').addClass('hidden');
	$('.airport-wrap').addClass('hidden');
	//show inputs we need
	if (term === 'Pickup from Airport') {
		$('.airport-wrap').removeClass('hidden');
		$('.drop-off-wrap').removeClass('hidden');
	}
	if (term === 'Drop off to Airport') {
		$('.airport-wrap').removeClass('hidden');
		$('.pick-up-wrap').removeClass('hidden');
	}
	if (term === 'Airport Round Trip') {
		$('.drop-off-wrap').removeClass('hidden');
		$('.airport-wrap').removeClass('hidden');
		$('.pick-up-wrap').removeClass('hidden');
	}
	if (term === 'Book by the Hour') {
	
	}
	if (term === 'Address to Address One Way') {
		$('.drop-off-wrap').removeClass('hidden');
		$('.pick-up-wrap').removeClass('hidden');
	}
	if (term === 'Address to Address Round Trip') {
		$('.drop-off-wrap').removeClass('hidden');
		$('.pick-up-wrap').removeClass('hidden');
	}
});


};

$(document).ready(ready);
$(document).on('page:load', ready);
