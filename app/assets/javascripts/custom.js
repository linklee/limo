var ready, maps_init;
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

//initialize google maps

//we need google maps only if google.js is presented. So

if(typeof google == 'undefined') { return; }

var myCenter=new google.maps.LatLng(34.1571367,-118.294432,17);
function initialize()
{
	var mapProp = {
		center:myCenter,
		zoom:15,
		mapTypeId:google.maps.MapTypeId.ROADMAP,
		scrollwheel: false

	};

	var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);


	var marker=new google.maps.Marker({
		position:myCenter,
	});

	marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);

};//end ready function

//on documentload and on turbolinks load call ready function (it is calling just once)
$(document).ready(ready);
$(document).on('page:load', ready);
