$(document).ready(function () {
	$('#file').focusout(function () {
        $('#profile-img').attr('src', $('#file').val());
    })
})
