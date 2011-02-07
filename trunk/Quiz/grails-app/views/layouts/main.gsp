<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Quiz" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'menu.css')}" />
        <link rel="stylesheet" href="${resource(dir:'css/theme/claro',file:'claro.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:javascript library="application" />
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/dojo/1.5/dojo/dojo.xd.js" djConfig="parseOnLoad: true"></script>
        <script type="text/javascript" src="https://www.google.com/jsapi?autoload=%7B%22modules%22%3A%5B%7B%22name%22%3A%22language%22%2C%22version%22%3A%221%22%7D%5D%7D"></script>
        <g:layoutHead />
    </head>
    <body class="claro">
    	<div id="navigation">
		<div class="homePagePanel">
			<div class="panelTop"></div>
			<div class="panelBody">
			<h1>Application Menu</h1>
			<ul>
				<g:each var="controller" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
					<li><g:link controller="${controller.logicalPropertyName}">${controller.logicalPropertyName}</g:link></li>
				</g:each>
			</ul>
			<h2>Application Menu</h2>
		</div>
		<div class="panelBtm"></div>
		</div>
		
    	<div id="pageBody">
    		<g:layoutBody />
    	</div>
    </body>
</html>