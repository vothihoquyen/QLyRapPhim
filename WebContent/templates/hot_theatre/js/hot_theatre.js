jQuery(document).ready(function(){

	// put map shadow

	jQuery("<div class='mapshadow'></div>").insertBefore(".maprow iframe");

	// zigzag on images

	jQuery("<div class='image_zigzag'></div>").insertAfter(".sparky_inner .items-row .item-image a");
	jQuery("<div class='image_zigzag_full'></div>").insertAfter(".sparky_inner .item-page .item-image");

	// width of zigzag

	var zigZagWidth = jQuery(".item-image").width();
	jQuery("div.image_zigzag, div.image_zigzag_full").css("width", zigZagWidth + "px");

	// intro image color on hover

	jQuery("p.readmore").hover(function() {
		jQuery(this).siblings().addClass( "colored" );
			}, function() {
		jQuery(this).siblings().removeClass( "colored" );
	});

	// move content up if carouselrow exists & fix Firefox negative margin bug

	var isFirefox = typeof InstallTrigger !== 'undefined';   // Firefox 1.0+

	if ( jQuery(".carouselrow").length ) {
		if ( jQuery(".maprow").length ) {
			jQuery(".contentrow .row").css("margin-top","-100px");
			if ( isFirefox ) {
				jQuery(".logorow .container").css("margin-top","100px");
				jQuery(".content_sparky, .mp_left, .mp_right").css("margin-top","-100px");
			}
		}
		jQuery(".logorow").css("position","absolute");
		jQuery(".logorow .container").css("width","1300px");

	} else {
		jQuery(".logorow .container").css("background","#f1eee9");
	}

	// center the carousel arrows

	if ( jQuery(".mp_header1").length ) {

		var arrowsLeftMargin = (jQuery(".mp_header1").width() - 845) / 2;
		jQuery(".hero-carousel-nav").css("margin-left",arrowsLeftMargin);
		
	}


});


