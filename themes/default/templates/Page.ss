<!doctype html>
<!--[if IE 6 ]><html class="no-js ie6 oldie gumby-no-touch" lang="$ContentLocale" id="ie6"><![endif]-->
<!--[if IE 7 ]><html class="no-js ie7 oldie gumby-no-touch" lang="$ContentLocale" id="ie7"><![endif]-->
<!--[if IE 8 ]><html class="no-js ie8 oldie gumby-no-touch" lang="$ContentLocale" id="ie8"><![endif]-->
<!--[if IE 9]><html class="no-js ie9 gumby-no-touch" id="ie9" lang="en"><![endif]-->
<!--[if gt IE 9]><!--><html class="no-js gumby-no-touch" lang="$ContentLocale"><!--<![endif]-->
<head>
	<% base_tag %>
	<%-- $FilterDescription adds additional information from the news and events areas --%>
	<title>$Title <% if FilterDescription %>- $FilterDescription<% end_if %> | $SiteConfig.Title</title>

	$MetaTags(false)
	<meta name="viewport" id="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=10.0,initial-scale=1.0" />

	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements. It must be included _before_ the body element -->
	<!--[if lt IE 9]>
		<script src="$ThemeDir/js/libs/html5shiv-printshiv.js"></script>
	<![endif]-->

	<link href="{$BaseHref}$ThemeDir/css/style.css" rel='stylesheet' type='text/css'>

	<% include MetaIcons %>
</head>

<body data-spy="scroll" class="$ClassName">
	<% include SkipLinks %>
	<div class="container">
		<% include Header %>
		<% include Menu %>
	</div>

	<div class="layout container">
			$Layout
	</div>

	<% include Footer %>

	<% if SiteConfig.GACode %>
		<script type="text/javascript">
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', '$SiteConfig.GACode']);
			_gaq.push(['_trackPageview']);

			(function() {
				var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			})();
		</script>
	<% end_if %>
	<% if SiteConfig.AddThisProfileID %>
		<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=$SiteConfig.AddThisProfileID"></script>
	<% end_if %>

	<!-- <script type="text/javascript" src="{$BaseHref}{$ThemeDir}/js/libs/modernizr.min.js"></script> -->
</body>
</html>