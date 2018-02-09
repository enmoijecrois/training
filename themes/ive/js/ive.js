(function($, Drupal, drupalSettings){
	$(function(){
		console.log('hello world!');

		// external links open in a new window
		$("a[href^='http']").addClass("external-link").attr("target", "_blank");

		// click title to show/hide content
		$("h1").css("cursor", "pointer").click(function(){
			$(".node--type-article").slideToggle(200);
			return false;
		});
		$("h2").css("cursor", "pointer").click(function(){
			$(this).nextAll(".content").slideToggle(200);
			//$(this).next(".content").css("background", "red");
			//$(this).css("background", "red");
			return false;
		});

		// plugin test
		$(".field--name-body p").succinct({
			size: 135,
			omission: "…"
		});

		$("#tabs").tabs();
		$('.jcarousel').jcarousel();

	});
})(jQuery, Drupal, drupalSettings);