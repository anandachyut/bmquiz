<div id="messageBox" class="message">
	<script type="text/javascript">
		dojo.require("dojo.fx.easing");
		dojo.style("messageBox", "opacity", "0")
		var fadeArgs = {
			node: "messageBox",
			duration: 15000,
		};
	    dojo.fadeIn(fadeArgs).play();
	</script>
	${flash.message}
</div>