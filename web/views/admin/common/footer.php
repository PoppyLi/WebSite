	<script src="/static/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="/static/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="/static/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      

	<script src="/static/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="/static/js/excanvas.min.js"></script>

	<script src="/static/js/respond.min.js"></script>  

	<![endif]-->   

	<script src="/static/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="/static/js/jquery.blockui.min.js" type="text/javascript"></script>  

	<script src="/static/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="/static/js/jquery.uniform.min.js" type="text/javascript" ></script>

	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL PLUGINS -->

	<script src="/static/js/jquery.vmap.js" type="text/javascript"></script>   

	<script src="/static/js/jquery.vmap.russia.js" type="text/javascript"></script>

	<script src="/static/js/jquery.vmap.world.js" type="text/javascript"></script>

	<script src="/static/js/jquery.vmap.europe.js" type="text/javascript"></script>

	<script src="/static/js/jquery.vmap.germany.js" type="text/javascript"></script>

	<script src="/static/js/jquery.vmap.usa.js" type="text/javascript"></script>

	<script src="/static/js/jquery.vmap.sampledata.js" type="text/javascript"></script>  

	<script src="/static/js/jquery.flot.js" type="text/javascript"></script>

	<script src="/static/js/jquery.flot.resize.js" type="text/javascript"></script>

	<script src="/static/js/jquery.pulsate.min.js" type="text/javascript"></script>

	<script src="/static/js/date.js" type="text/javascript"></script>

	<script src="/static/js/daterangepicker.js" type="text/javascript"></script>     

	<script src="/static/js/jquery.gritter.js" type="text/javascript"></script>

	<script src="/static/js/fullcalendar.min.js" type="text/javascript"></script>

	<script src="/static/js/jquery.easy-pie-chart.js" type="text/javascript"></script>

	<script src="/static/js/jquery.sparkline.min.js" type="text/javascript"></script>  

	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->

	<script src="/static/js/app.js" type="text/javascript"></script>

	<script src="/static/js/index.js" type="text/javascript"></script>        

	<!-- END PAGE LEVEL SCRIPTS -->  

	<script>

		jQuery(document).ready(function() {    

		   App.init(); // initlayout and core plugins

		   Index.init();

		   Index.initJQVMAP(); // init index page's custom scripts

		   Index.initCalendar(); // init index page's custom scripts

		   Index.initCharts(); // init index page's custom scripts

		   Index.initChat();

		   Index.initMiniCharts();

		   Index.initDashboardDaterange();

		   Index.initIntro();

		});

	</script>

	<!-- END JAVASCRIPTS -->