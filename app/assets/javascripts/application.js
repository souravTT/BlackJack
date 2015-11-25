// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require jquery
//= require bootstrap-sprockets

function game_over(result){
	if (result){
		$('#stand_button,#hit_button').attr("href", "javascript:void(0);");
		setTimeout(function(){
			$('#winner_text').text(result);
			$('#myModal').modal();
			//$('button.hide').trigger('click');
		}, 500);
	}
}

function game_stand(){
	setTimeout(function(){
        $("#stand_button").trigger('click');
	}, 800);
}