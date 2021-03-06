<!doctype html>
<!--[if IE 6 ]><html class="no-js ie6 oldie gumby-no-touch" lang="$ContentLocale" id="ie6"><![endif]-->
<!--[if IE 7 ]><html class="no-js ie7 oldie gumby-no-touch" lang="$ContentLocale" id="ie7"><![endif]-->
<!--[if IE 8 ]><html class="no-js ie8 oldie gumby-no-touch" lang="$ContentLocale" id="ie8"><![endif]-->
<!--[if IE 9]><html class="no-js ie9 gumby-no-touch" id="ie9" lang="en"><![endif]-->
<!--[if gt IE 9]><!--><html class="no-js gumby-no-touch" lang="$ContentLocale"><!--<![endif]-->
<head>
	<% base_tag %>
	<title>
		$Title <% if FilterDescription %>- $FilterDescription<% end_if %> | $SiteConfig.Title
	</title>

	<meta property="og:type" content="article" />
	<meta property="og:title" content="<% if $Event %>$Event.Title<% else %>$Title | $SiteConfig.Title<% end_if %>" />

	$MetaTags(false)
	<meta name="viewport" id="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=10.0,initial-scale=1.0" />

	<% include MetaImage Context=$Top %>

	<% if $Intro %>
	<meta property="og:description" content="$Intro.LimitCharacters(100)" />
	<% end_if %>

	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements. It must be included _before_ the body element -->
	<!--[if lt IE 9]>
		<script src="$ThemeDir/js/libs/html5shiv-printshiv.js"></script>
	<![endif]-->
	<!--[if lte IE 7]><script src="lte-ie7.js"></script><![endif]-->

	<link rel="stylesheet" type="text/css" href="$ThemeDir/css/style.css?4344">
	<% include Styles %>
</head>

<body data-spy="scroll" class="$ClassName.LowerCase() menu-control">
	<% include FBScript %>
	$BetterNavigator
	<% include SkipLinks %>
	<% include Navbar %>

	<div class="row-fluid row">

		<% include Menu %>

		<div class="columns twelve">
			<% include SplashOverlay %>


			<div class="layout" id="layout">
				$Layout
			</div>

		</div>
	</div>


	<script type="text/javascript" src="{$ThemeDir}/js/script.min.js"></script>

	<% if SiteConfig.GACode %>
		<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

			ga('create', '$SiteConfig.GACode', '$BaseHref');
			ga('require', 'displayfeatures');
			ga('send', 'pageview');
		</script>
	<% end_if %>

	<% if SiteConfig.AddThisProfileID %>
		<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=$SiteConfig.AddThisProfileID"></script>
	<% end_if %>


</body>
</html>
