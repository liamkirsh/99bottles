// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require jquery-ui
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation();
	// Splash page
	revealLogin()
	revealRegister()
	founderCardFade()
	stepsCardFade()

	// Auctions index page
	hideBackCards()
})

function revealLogin(){
	$(".login-btn a").click(function(event) {
		event.preventDefault()
		$('#loginModal').foundation('reveal', 'open')
	})
}

function revealRegister(){
	$(".register-btn a").click(function(event) {
		event.preventDefault()
		$('#registerModal').foundation('reveal', 'open')
	})
}

function founderCardFade(){
	$(".founder-card").hide()
	$(window).bind("scroll", function() {
	    if ($(this).scrollTop() > 650) {
	        $(".founder-card").fadeIn(700)
	    } else {
	        $(".founder-card").fadeOut(700)
	    }
	})
}
function stepsCardFade(){
	$(".hiw-card").hide()
	$(window).bind("scroll", function() {
	    if ($(this).scrollTop() > 300) {
	        $(".hiw-card").fadeIn(700)
	    } else {
	        $(".hiw-card").fadeOut(700)
	    }
	})
}

function hideBackCards(){
	array = $(".card").flip()
}
