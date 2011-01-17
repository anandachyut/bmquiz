<!DOCTYPE div PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<style type="text/css" media="screen">
        #nav {
            margin-top:20px;
            margin-left:30px;
            width:500px;
            float:left;

        }
        .homePagePanel * {
            margin:0px;
        }
        .homePagePanel .panelBody ul {
            list-style-type:none;
            margin-bottom:10px;
        }
        .homePagePanel .panelBody h1 {
            text-transform:uppercase;
            font-size:1.1em;
            margin-bottom:10px;
        }
        .homePagePanel .panelBody {
            background: url(images/leftnav_midstretch.png) repeat top;
            margin:0px;
            padding:15px;
        }
        .homePagePanel .panelBtm {
            background: url(images/leftnav_btm.png) repeat-x top;
            height:20px;
            margin:0px;
        }

        .homePagePanel .panelTop {
            background: url(images/leftnav_top.png) repeat-x top;
            height:11px;
            margin:0px;
        }
        h2 {
            margin-top:15px;
            margin-bottom:15px;
            font-size:1.2em;
        }
        </style>
	</head>
	<body>
		<div id="nav">
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
	</body>
</html>

