<!DOCTYPE html>
<html>
<head>
<title><g:layoutTitle default="Quiz" /></title>
<link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
<link rel="stylesheet" href="${resource(dir:'css',file:'menu.css')}" />
<link rel="stylesheet"
	href="${resource(dir:'css/theme/claro',file:'claro.css')}" />
<link rel="stylesheet"
	href="${resource(dir:'css/theme',file:'dijit.css')}" />
<link rel="stylesheet"
	href="${resource(dir:'css/theme',file:'dijit_rtl.css')}" />
<link rel="shortcut icon"
	href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
<g:javascript library="application" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/dojo/1.5/dojo/dojo.xd.js"
	djConfig="parseOnLoad: true"></script>
<style type="text/css">

.body-div {
	width: 1680px;
	height: 1050px;
	background-image: url("images/22181.jpg");
	background-repeat: no-repeat;
	
	align: center;
}
</style>
<g:layoutHead />
</head>
<body class="claro" >
<div class="body-div" align="center">
<div id="navigation">
<div class="homePagePanel">
<div class="panelTop"></div>
<div class="panelBody">
<h1>Application Menu</h1>
<ul>
	<g:each var="controller"
		in="${grailsApplication.controllerClasses.sort { it.fullName } }">
		<li><g:link controller="${controller.logicalPropertyName}">
			${controller.logicalPropertyName}
		</g:link></li>
	</g:each>
</ul>
<h2>Application Menu</h2>
</div>
<div class="panelBtm"></div>
</div>

<div id="pageBody"><g:layoutBody /></div>
</div>
</body>
</html>