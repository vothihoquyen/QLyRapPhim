<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-gb" lang="en-gb">

<!-- Mirrored from demo.hotjoomlatemplates.com/theatre/index.php?style=3 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 09 May 2018 06:28:10 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->
<head>
<base />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="generator"
	content="Joomla! - Open Source Content Management" />
<title>Hot Theatre</title>
<link href="modules/mod_hot_responsive_lightbox/tmpl/style.css"
	rel="stylesheet" type="text/css" />
<link href="modules/mod_hot_maps/tmpl/hot_maps.css" rel="stylesheet"
	type="text/css" />
<link href="modules/mod_hot_full_carousel/tmpl/style_responsive.css"
	rel="stylesheet" type="text/css" />
</style>
<script
	src="media/jui/js/jquery.mind090.js?4a12dba80db37cacd4f7e156d7b8c202"
	type="text/javascript"></script>
<script
	src="media/jui/js/jquery-noconflictd090.js?4a12dba80db37cacd4f7e156d7b8c202"
	type="text/javascript"></script>
<script
	src="media/jui/js/jquery-migrate.mind090.js?4a12dba80db37cacd4f7e156d7b8c202"
	type="text/javascript"></script>
<script
	src="media/system/js/captiond090.js?4a12dba80db37cacd4f7e156d7b8c202"
	type="text/javascript"></script>
<script
	src="modules/mod_hot_responsive_lightbox/js/imagelightbox.min.js"
	type="text/javascript"></script>
<script
	src="modules/mod_hot_responsive_lightbox/js/hot_responsive_lightbox.js"
	type="text/javascript"></script>
<script src="modules/mod_hot_full_carousel/js/jquery.easing-1.3.js"
	type="text/javascript"></script>
<script
	src="modules/mod_hot_full_carousel/js/jquery.heroCarousel-1.3.js"
	type="text/javascript"></script>
<script type="text/javascript">
	jQuery(window).on('load', function() {
		new JCaption('img.caption');
	});
</script>


<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" href="templates/hot_theatre/css/joomla.css"
	type="text/css" />
<link rel="stylesheet"
	href="templates/hot_theatre/css/font-awesome.min.css">
<link rel="stylesheet"
	href="indexeee2.css?style=3&amp;css_request=1&amp;diff=501434075"
	type="text/css" />
<link rel="stylesheet" href="templates/hot_theatre/css/template_css.css"
	type="text/css" />
<!--[if lt IE 9]>
	<script src="/theatre/templates/hot_theatre/js/html5shiv.min.js"></script>
	<script src="/theatre/templates/hot_theatre/js/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" href="templates/hot_theatre/styles/style3.css"
	type="text/css" />
<script type="text/javascript">
	function isAppleDevice() {
		return ((navigator.userAgent.toLowerCase().indexOf("ipad") > -1)
				|| (navigator.userAgent.toLowerCase().indexOf("iphone") > -1) || (navigator.userAgent
				.toLowerCase().indexOf("ipod") > -1));
	}

	(function(jQuery) {
		jQuery.fn.dropDownMenu_topmenu = function(options) {

			var defaults = {
				speed : 300,
				effect : 'fadeToggle'
			};
			var options = jQuery.extend(defaults, options);

			return this
					.each(function() {

						var screenWidth = jQuery("body").width();

						jQuery('.mnu_topmenu ul').hide();
						jQuery('.mnu_topmenu li ul li').filter(':last-child')
								.css('border-bottom', 'none');

						if (screenWidth > 992) {

							jQuery('.mnu_topmenu li')
									.hover(
											function() {
												jQuery(this).children('ul')
														.stop()[options.effect]
														(options.speed);
											},
											function() {
												jQuery(this).css('position',
														'relative').children(
														'ul').stop()[options.effect]
														(options.speed);
											});

						} else {

							jQuery('.mnu_topmenu li a[href="#"]').toggle(
									function() {
										jQuery(this).parent().find(
												'ul:first:not(:visible)').stop(
												true, true)[options.effect]
												(options.speed);
									},
									function() {
										jQuery(this).parent().css('position',
												'relative').find(
												'ul:first:visible').stop(true,
												true)[options.effect]
												(options.speed);
									});

							jQuery("nav ul.navv").find("li > ul").prev()
									.addClass("firstClick");

						}
						jQuery(document).on("click", ".mnu_topmenu a",
								function() {
									if (!jQuery(this).hasClass("firstClick"))
										jQuery(this).addClass("firstClick");

									return true;
								});

						jQuery(document)
								.on(
										"click",
										".mnu_topmenu .firstClick",
										function(e) {
											if ((jQuery("html.no-touchevents").length == 1 && screenWidth > 992)
													|| (isAppleDevice() && screenWidth > 992)) {
												return true;
											}
											e.preventDefault();

											var href = jQuery(this)
													.attr("href");
											var target = jQuery(this).attr(
													"target");
											var link = jQuery(this);
											jQuery(this).attr("href", "#");
											jQuery(this).attr("target", "");

											jQuery(this).removeClass(
													"firstClick");

											setTimeout(function() {
												link.attr("href", href);
												link.attr("target", target);
											}, 200);
											if (screenWidth > 992) {
												jQuery(this).children('ul')
														.stop()[options.effect]
														(options.speed);
											} else
												jQuery(this)
														.parent()
														.find(
																'ul:first:not(:visible)')
														.stop(true, true)[options.effect]
														(options.speed);
										});

						jQuery(window).resize(
								function() {
									var screenWidth = jQuery("body").width();
									if (screenWidth > 992)
										jQuery("nav ul.navv").find("li > ul")
												.prev().removeClass(
														"firstClick");
									else
										jQuery("nav ul.navv").find("li > ul")
												.prev().addClass("firstClick");
								});

					});
		};
	})(jQuery);

	jQuery(document).ready(
			function() {
				jQuery('.mnu_topmenu').dropDownMenu_topmenu({
					speed : 300,
					effect : 'fadeToggle'
				});

				//hover menu fix	
				setTimeout(function() {
					jQuery('#blocker').remove();
					jQuery("nav ul.navv").find("li > ul").prev().addClass(
							"firstClick");
				}, 1000)

				//first click for touchecren wide devices

			});
</script>
<script type="text/javascript"
	src="templates/hot_theatre/js/responsive-nav.min.js"></script>
<script type="text/javascript"
	src="templates/hot_theatre/js/modernizr-custom.js"></script>
	<link rel="stylesheet" href="css/indexCustom.css"
	type="text/css" />
</head>
<body class="sparky_home">
	<div id="blocker"></div>
	<div class="sparky_wrapper">
		<div class="sparky_full logorow">
			<jsp:include page="menu.jsp"></jsp:include>
			<div class="clr"></div>
		</div>
		<div class="sparky_full full carouselrow">
			<div class="container">
				<div class="row">
					<div class="cell mp_header1 span12">
						<div class="cell_pad">
							<div class="moduletable">

								<!-- Internet Explorer HTML5 fix -->
								<!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->


								<div class="hero">
									<div class="hero-carousel">
										<article class="carousel-article bgimage-1">
											<a href="index.php/repertoire/134-romeo-juliet.html" title="">
												<div class="contents">
													<div>
														<h2>Romeo & Juliet Premiere /Classic/</h2>
														<p>Directed by: John Doe</p>
														<p>April 25 / 8 p.m. / Main Stage</p>
													</div>
												</div>
											</a>
										</article>
										<article class="carousel-article bgimage-2">
											<a href="index.php/repertoire/128-magnificent-comedy.html"
												title="">
												<div class="contents">
													<div>
														<h2>Magnificent Comedy /Comedy/</h2>
														<p>Directed by: John Doe</p>
														<p>April 26 / 8 p.m. / Main Stage</p>
													</div>
												</div>
											</a>
										</article>
										<article class="carousel-article bgimage-3">
											<a href="index.php/repertoire/129-wolverine.html" title="">
												<div class="contents">
													<div>
														<h2>Wolverine /Horror/</h2>
														<p>Directed by: John Doe</p>
														<p>April 27 / 8 p.m. / Main Stage</p>
													</div>
												</div>
											</a>
										</article>
									</div>
								</div>


								<script type="text/javascript">
									jQuery(document)
											.ready(
													function() {

														/* calculates width of the carousel */
														var bodyWidth = jQuery(
																'body')
																.innerWidth();
														jQuery(
																'.hero-carousel article.carousel-article')
																.css('width',
																		bodyWidth);

														jQuery('.hero-carousel')
																.heroCarousel(
																		{
																			navigation : true,
																			easing : 'easeOutExpo',
																			css3pieFix : true,
																			prevText : '<i class="fa fa-long-arrow-left"></i>',
																			nextText : '<i class="fa fa-long-arrow-right"></i>',
																			animationSpeed : 1000,
																			timeout : 5000,
																			pause : true,
																			pauseOnNavHover : true
																		});

													});
								</script>
							</div>

						</div>
					</div>
					<div class="clr"></div>
				</div>
				<div class="clr"></div>
			</div>
			<div class="clr"></div>
		</div>
		<div class="sparky_full calendarrow">
			<div class="container">
				<div class="row">
					<div class="cell mp_header2 span3">
						<div class="cell_pad">
							<div class="moduletable">
								<h3>Today</h3>


								<div class="custom">
									<p>
										<img src="images/today.jpg" alt="today" />
									</p>
									<h4>Magnificent Comedy</h4>
									<p>Directed by: John Doe</p>
								</div>
							</div>

						</div>
					</div>
					<div class="cell mp_header3 span9">
						<div class="cell_pad">
							<div class="moduletable">
								<h3>Repertoire of the Theatre</h3>
								<ul class="latestnews">
									<li itemscope itemtype="https://schema.org/Article"><a
										href="index.php/repertoire/123-duis-autem-vel-eum-iriure.html"
										itemprop="url"> <span itemprop="name"> Duis autem
												vel eum iriure </span>
									</a></li>
									<li itemscope itemtype="https://schema.org/Article"><a
										href="index.php/repertoire/124-nam-liber-tempor-cum.html"
										itemprop="url"> <span itemprop="name"> Nam liber
												tempor cum </span>
									</a></li>
									<li itemscope itemtype="https://schema.org/Article"><a
										href="index.php/repertoire/125-lorem-ipsum-dolor-sit.html"
										itemprop="url"> <span itemprop="name"> Lorem ipsum
												dolor sit </span>
									</a></li>
									<li itemscope itemtype="https://schema.org/Article"><a
										href="index.php/repertoire/126-nullam-neque-nulla.html"
										itemprop="url"> <span itemprop="name"> Nullam neque
												nulla </span>
									</a></li>
									<li itemscope itemtype="https://schema.org/Article"><a
										href="index.php/repertoire/128-magnificent-comedy.html"
										itemprop="url"> <span itemprop="name"> Magnificent
												Comedy </span>
									</a></li>
									<li itemscope itemtype="https://schema.org/Article"><a
										href="index.php/repertoire/129-wolverine.html" itemprop="url">
											<span itemprop="name"> Wolverine </span>
									</a></li>
									<li itemscope itemtype="https://schema.org/Article"><a
										href="index.php/repertoire/134-romeo-juliet.html"
										itemprop="url"> <span itemprop="name"> Romeo &
												Juliet </span>
									</a></li>
									<li itemscope itemtype="https://schema.org/Article"><a
										href="index.php/repertoire/127-maecenas-pellentesque.html"
										itemprop="url"> <span itemprop="name"> Maecenas
												pellentesque </span>
									</a></li>
									<li itemscope itemtype="https://schema.org/Article"><a
										href="index.php/repertoire/135-justo-luctus.html"
										itemprop="url"> <span itemprop="name"> Justo luctus
										</span>
									</a></li>
									<li itemscope itemtype="https://schema.org/Article"><a
										href="index.php/repertoire/130-pellentesque-dolor.html"
										itemprop="url"> <span itemprop="name"> Pellentesque
												dolor </span>
									</a></li>
									<li itemscope itemtype="https://schema.org/Article"><a
										href="index.php/repertoire/133-integer-semper-faucibus.html"
										itemprop="url"> <span itemprop="name"> Integer
												semper faucibus </span>
									</a></li>
									<li itemscope itemtype="https://schema.org/Article"><a
										href="index.php/repertoire/136-eget-diam-gravida.html"
										itemprop="url"> <span itemprop="name"> Eget diam
												gravida </span>
									</a></li>
									<li itemscope itemtype="https://schema.org/Article"><a
										href="index.php/repertoire/131-rutrum-ac-volutpat-in.html"
										itemprop="url"> <span itemprop="name"> Rutrum ac
												volutpat in </span>
									</a></li>
									<li itemscope itemtype="https://schema.org/Article"><a
										href="index.php/repertoire/132-pellentesque-sollicitudin.html"
										itemprop="url"> <span itemprop="name"> Pellentesque
												sollicitudin </span>
									</a></li>
								</ul>
							</div>

						</div>
					</div>
					<div class="clr"></div>
				</div>
				<div class="clr"></div>
			</div>
			<div class="clr"></div>
		</div>
		<div class="sparky_full maprow">
			<div class="container">
				<div class="row">
					<div class="cell mp_user1 span12">
						<div class="cell_pad">
							<div class="moduletable">

								<iframe height="370" style="border: none; width: 100%"
									src="http://maps.google.com/maps?q=West+End+Theatre+London&amp;ie=UTF8&amp;view=map&amp;f=q&amp;saddr=West,+End,+Theatre,+London&amp;output=embed"></iframe>
							</div>

						</div>
					</div>
					<div class="clr"></div>
				</div>
				<div class="clr"></div>
			</div>
			<div class="clr"></div>
		</div>
		<div class="sparky_full contentrow">
			<div class="container">
				<div class="row">
					<div class="content_sparky span8">
						<div class="cell_pad">
							<div id="system-message-container"></div>

							<div class="blog-featured" itemscope
								itemtype="https://schema.org/Blog">
								<div class="page-header">
									<h1>Welcome to Hot Theatre</h1>
								</div>



								<div class="items-row cols-2 row-0 row-fluid">
									<div class="item column-1 span6" itemprop="blogPost" itemscope
										itemtype="https://schema.org/BlogPosting">


										<div class="pull-none item-image">
											<a
												href="index.php/blog/85-sed-ut-perspiciatis-unde-omnis.html"><img
												src="images/blog/theatre1_thumb.jpg" alt="Demo Post" /></a>
											<div class="image_zigzag"></div>
										</div>

										<h2 class="item-title" itemprop="name">Sed Ut
											Perspiciatis Unde Omnis</h2>





										<p>Sed ut perspiciatis unde omnis iste natus error sit
											voluptatem accusantium doloremque laudantium, totam rem
											aperiam, eaque ipsa quae ab illo.</p>




										<p class="readmore">
											<a class="btn"
												href="index.php/blog/85-sed-ut-perspiciatis-unde-omnis.html"
												itemprop="url"
												aria-label="Read more:  Sed Ut Perspiciatis Unde Omnis">
												<span class="icon-chevron-right" aria-hidden="true"></span>
												Read more ...
											</a>
										</p>



									</div>



									<div class="item column-2 span6" itemprop="blogPost" itemscope
										itemtype="https://schema.org/BlogPosting">


										<div class="pull-none item-image">
											<a href="index.php/blog/84-nemo-enim-ipsam-voluptatem.html"><img
												src="images/blog/theatre2_thumb.jpg" alt="Demo Post" /></a>
											<div class="image_zigzag"></div>
										</div>

										<h2 class="item-title" itemprop="name">Nemo Enim Ipsam
											Voluptatem</h2>





										<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur
											aut odit aut fugit, sed quia consequuntur magni dolores eos
											qui ratione voluptatem.</p>




										<p class="readmore">
											<a class="btn"
												href="index.php/blog/84-nemo-enim-ipsam-voluptatem.html"
												itemprop="url"
												aria-label="Read more:  Nemo Enim Ipsam Voluptatem"> <span
												class="icon-chevron-right" aria-hidden="true"></span> Read
												more ...
											</a>
										</p>



									</div>


								</div>



								<div class="items-row cols-2 row-1 row-fluid">
									<div class="item column-1 span6" itemprop="blogPost" itemscope
										itemtype="https://schema.org/BlogPosting">


										<div class="pull-none item-image">
											<a href="index.php/blog/137-natus-error-sit-voluptatem.html"><img
												src="images/blog/theatre3_thumb.jpg" alt="Demo Post" /></a>
											<div class="image_zigzag"></div>
										</div>

										<h2 class="item-title" itemprop="name">Natus error sit
											voluptatem</h2>





										<p>Sed ut perspiciatis unde omnis iste natus error sit
											voluptatem accusantium doloremque laudantium, totam rem
											aperiam, eaque ipsa quae ab illo.</p>




										<p class="readmore">
											<a class="btn"
												href="index.php/blog/137-natus-error-sit-voluptatem.html"
												itemprop="url"
												aria-label="Read more:  Natus error sit voluptatem"> <span
												class="icon-chevron-right" aria-hidden="true"></span> Read
												more ...
											</a>
										</p>



									</div>



									<div class="item column-2 span6" itemprop="blogPost" itemscope
										itemtype="https://schema.org/BlogPosting">


										<div class="pull-none item-image">
											<a href="index.php/blog/2-ut-enim-ad-minima-veniam.html"><img
												src="images/blog/theatre4_thumb.jpg" alt="Demo Post" /></a>
											<div class="image_zigzag"></div>
										</div>

										<h2 class="item-title" itemprop="name">Ut Enim Ad Minima
											Veniam</h2>





										<p>Ut enim ad minima veniam, quis nostrum exercitationem
											ullam corporis suscipit laboriosam, nisi ut aliquid ex ea
											commodi consequatur.</p>




										<p class="readmore">
											<a class="btn"
												href="index.php/blog/2-ut-enim-ad-minima-veniam.html"
												itemprop="url"
												aria-label="Read more:  Ut Enim Ad Minima Veniam"> <span
												class="icon-chevron-right" aria-hidden="true"></span> Read
												more ...
											</a>
										</p>



									</div>


								</div>




							</div>

						</div>
					</div>
					<div class="cell mp_right span4">
						<div class="cell_pad">
							<div class="moduletable_featured">
								<h3>Extensions Included</h3>

								<nav class="container_sidemenu">
									<ul class="menu standard mnu_sidemenu">
										<li class="item-442"><a
											href="index.php/extensions/hot-full-carousel.html">Hot
												Full Carousel</a></li>
										<li class="item-444"><a
											href="index.php/extensions/hot-responsive-lightbox.html">Hot
												Responsive Lightbox</a></li>
										<li class="item-445"><a
											href="index.php/extensions/hot-slicebox.html">Hot
												Slicebox</a></li>
										<li class="item-446"><a
											href="index.php/extensions/hot-maps.html">Hot Maps</a></li>
									</ul>
								</nav>
							</div>
							<div class="moduletable">
								<h3>Magnificent Comedy Critique</h3>


								<div class="custom">
									<div class="testimonial_container">
										<p class="testimonial">
											<img src="images/testimonial1.jpg" alt="testimonial" />
										</p>
										<p class="testimonial">William SMITH</p>
									</div>
									<p>&quot;Duis autem vel eum iriure dolor in hendrerit in
										vulputate velit esse molestie consequat, vel illum dolore eu
										feugiat nulla facilisis at vero eros et accumsan et
										iusto.&quot;</p>
									<div class="clr"></div>
								</div>
							</div>
							<div class="moduletable">
								<h3>Dark Knight Critique</h3>


								<div class="custom">
									<div class="testimonial_container">
										<p class="testimonial">
											<img src="images/testimonial2.jpg" alt="testimonial" />
										</p>
										<p class="testimonial">Martha Miller</p>
									</div>
									<p>&quot;Vel illum dolore eu feugiat nulla facilisis at
										vero eros et accumsan et iusto odio dignissim qui blandit
										praesent luptatum zzril delenit augue duis dolore te
										feugait.&quot;</p>
									<div class="clr"></div>
								</div>
							</div>

						</div>
					</div>
					<div class="clr"></div>
				</div>
				<div class="clr"></div>
			</div>
			<div class="clr"></div>
		</div>
		<div class="sparky_full bottomrow">
			<div class="container">
				<div class="row">
					<div class="cell mp_bottom1 span2">
						<div class="cell_pad">
							<div class="moduletable">
								<h3>Connect with Us</h3>


								<div class="custom">
									<a href="http://www.facebook.com/hotthemes"><i
										class="fa fa-facebook"></i></a><a
										href="http://twitter.com/hot_themes"><i
										class="fa fa-twitter"></i></a><a
										href="https://plus.google.com/b/101865138405372995937/"><i
										class="fa fa-google-plus"></i></a><a
										href="http://www.linkedin.com/company/hotthemes"><i
										class="fa fa-linkedin"></i></a><a
										href="http://pinterest.com/hotthemes"><i
										class="fa fa-pinterest"></i></a>
								</div>
							</div>

						</div>
					</div>
					<div class="cell mp_bottommenu1 span2">
						<div class="sparky_menu">
							<h3>Bottom Menu 1</h3>
							<nav class="container_bottommenu1">
								<ul class="menu standard mnu_bottommenu1">
									<li class="item-448 active"><a href="index.html">Home</a></li>
									<li class="item-449"><a
										href="index.php/features/about-hot-theatre.html">About
											Theatre</a></li>
									<li class="item-465"><a href="index.php/blog.html">Blog</a></li>
									<li class="item-450"><a
										href="index.php/features/installation-and-usage.html">Installation</a></li>
									<li class="item-466"><a
										href="index.php/features/module-positions.html">Module
											Positions</a></li>
								</ul>
							</nav>
						</div>
					</div>
					<div class="cell mp_bottommenu2 span2">
						<div class="sparky_menu">
							<h3>Bottom Menu 2</h3>
							<nav class="container_bottommenu2">
								<ul class="menu standard mnu_bottommenu2">
									<li class="item-456"><a
										href="index.php/extensions/hot-full-carousel.html">Hot
											Full Carousel</a></li>
									<li class="item-457"><a
										href="index.php/extensions/hot-responsive-lightbox.html">Hot
											Responsive Lightbox</a></li>
									<li class="item-458"><a
										href="index.php/extensions/hot-maps.html">Hot Maps</a></li>
									<li class="item-459"><a
										href="index.php/extensions/hot-slicebox.html">Hot
											Slicebox</a></li>
								</ul>
							</nav>
						</div>
					</div>
					<div class="cell mp_bottommenu3 span2">
						<div class="sparky_menu">
							<h3>Bottom Menu 3</h3>
							<nav class="container_bottommenu3">
								<ul class="menu standard mnu_bottommenu3">
									<li class="item-452"><a
										href="index.php/features/infinite-color-schemes.html">Color
											Schemes</a></li>
									<li class="item-453"><a
										href="index.php/features/drop-down-menu">Drop-down Menu</a></li>
									<li class="item-454"><a
										href="index.php/features/seo-friendly.html">SEO Friendly</a></li>
									<li class="item-455"><a
										href="index.php/features/typography.html">Typography</a></li>
									<li class="item-467"><a href="index.php/contact-us.html">Contact
											Us</a></li>
								</ul>
							</nav>
						</div>
					</div>
					<div class="cell mp_bottom2 span4">
						<div class="cell_pad">
							<div class="moduletable">
								<script>
									jQuery(document)
											.ready(
													function() {
														//	WITH "CLOSE" BUTTON & ACTIVITY INDICATION
														var instanceC = jQuery(
																'a[data-imagelightbox="c"]')
																.imageLightbox(
																		{
																			quitOnDocClick : false,
																			onStart : function() {
																				hotResponsiveLightbox
																						.closeButtonOn(instanceC);
																			},
																			onEnd : function() {
																				hotResponsiveLightbox
																						.closeButtonOff();
																				hotResponsiveLightbox
																						.activityIndicatorOff();
																			},
																			onLoadStart : function() {
																				hotResponsiveLightbox
																						.activityIndicatorOn();
																			},
																			onLoadEnd : function() {
																				hotResponsiveLightbox
																						.activityIndicatorOff();
																			}
																		});

													});
								</script>
								<div id="responsivelightbox">
									<ul>
										<li><a href="images/lightbox/image1.jpg"
											data-imagelightbox="c"><img
												src="images/lightbox/thumbs/thumb_image1.jpg" alt="" /></a></li>
										<li><a href="images/lightbox/image10.jpg"
											data-imagelightbox="c"><img
												src="images/lightbox/thumbs/thumb_image10.jpg" alt="" /></a></li>
										<li><a href="images/lightbox/image2.jpg"
											data-imagelightbox="c"><img
												src="images/lightbox/thumbs/thumb_image2.jpg" alt="" /></a></li>
										<li><a href="images/lightbox/image3.jpg"
											data-imagelightbox="c"><img
												src="images/lightbox/thumbs/thumb_image3.jpg" alt="" /></a></li>
										<li><a href="images/lightbox/image4.jpg"
											data-imagelightbox="c"><img
												src="images/lightbox/thumbs/thumb_image4.jpg" alt="" /></a></li>
										<li><a href="images/lightbox/image5.jpg"
											data-imagelightbox="c"><img
												src="images/lightbox/thumbs/thumb_image5.jpg" alt="" /></a></li>
										<li><a href="images/lightbox/image6.jpg"
											data-imagelightbox="c"><img
												src="images/lightbox/thumbs/thumb_image6.jpg" alt="" /></a></li>
										<li><a href="images/lightbox/image7.jpg"
											data-imagelightbox="c"><img
												src="images/lightbox/thumbs/thumb_image7.jpg" alt="" /></a></li>
										<li><a href="images/lightbox/image8.jpg"
											data-imagelightbox="c"><img
												src="images/lightbox/thumbs/thumb_image8.jpg" alt="" /></a></li>
										<li><a href="images/lightbox/image9.jpg"
											data-imagelightbox="c"><img
												src="images/lightbox/thumbs/thumb_image9.jpg" alt="" /></a></li>
									</ul>
								</div>
							</div>

						</div>
					</div>
					<div class="clr"></div>
				</div>
				<div class="clr"></div>
			</div>
			<div class="clr"></div>
		</div>
		<div class="sparky_full copyrightrow">
			<div class="container">
				<div class="row">
					<div class="cell mp_copyright span12">
						<div class="cell_pad">
							<p class="copyright">
								Copyright &copy; 2018 Your Company. <a
									href="https://www.hotjoomlatemplates.com/">Joomla templates</a>
								powered by Sparky.
							</p>
						</div>
					</div>
					<div class="clr"></div>
				</div>
				<div class="clr"></div>
			</div>
			<div class="clr"></div>
		</div>
	</div>
	<script src="templates/hot_theatre/js/hot_theatre.js"></script>
	<script type="text/javascript">
		if (jQuery(".container_topmenu").length) {
			var navigation = responsiveNav(".container_topmenu");
		}
	</script>
</body>

</html>
