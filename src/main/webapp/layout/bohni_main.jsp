<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" >
<head>
    <title>Bohni - Advertising is about to Change</title>

	<!-- initiate head with meta tags, css and script -->
	<!-- @include('include.head') -->
<jsp:include page='bohni_header.jsp'/>

</head>


<body class="sidebar-mini" id="app" >
	<!--  -->
    <div class="wrapper">
    	<!-- initiate header-->
    	<jsp:include page='bohni_header.jsp'/>

    	<div class="page-wrap">
	    	<!-- initiate sidebar-->
	    	@include('include.sidebar')

	    	<div class="main-content">
	    		<!-- yeild contents here -->
	    		@yield('content')
	    	</div>

	    	<!-- initiate chat section-->
	    	@include('include.chat')


	    	<!-- initiate footer section-->
	    	@include('include.footer')

    	</div>
    </div>
    
	<!-- initiate modal menu section-->
	@include('include.modalmenu')

	<!-- initiate scripts-->
	@include('include.script')	
</body>
</html>