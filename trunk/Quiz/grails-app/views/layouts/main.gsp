<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Quiz" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'menu.css')}" />
        <link rel="stylesheet" href="${resource(dir:'css/theme/claro',file:'claro.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
        <g:javascript src="" />
        <g:javascript>
        	
        </g:javascript>
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