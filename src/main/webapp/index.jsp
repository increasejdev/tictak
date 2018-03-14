<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

  <head>
	<base href="">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Система управления заявками</title>	
      
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vendor/bootstrap/css/bootstrap.min.css" >       
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/scrolling-nav.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">
	<link type="image/x-icon" rel="shortcut icon" href="<%=request.getContextPath()%>/resources/images/favicon.ico" >
  </head>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Система управления заявками</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">        
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="login?name=adm"><button type="button" class="btn btn-warning">Войти в Консоль управления</button></a>
            </li>            
          </ul>          
        </div>
      </div>      
    </nav>

    <header class="bg-primary text-white">
        <div class="container text-center">
        <h1>Добро пожаловать в систему управления заявками</h1>
        <p class="lead">Любое человеческое знание начинается с интуиции, переходит к понятиям и завершается идеями.</p>
      </div>		
	</header>
	
    
		
	  
      
   <%-- ${sessionScope.welcome}  ${pageContext.request.contextPath}/login?name=${step.key--%>   
<div class="container">                   
           <div class="row">
      		<div class="col-lg-12 mx-auto">
<c:forEach var="welcome" items="${sessionScope.welcome}">
          <div class="box effect1">
          			<div >
						<h4 >${welcome.issue}</h4>
						<p class="lead">${welcome.status_id}</p>
						<hr />
					</div>	
							<ul class="group">
								<li>${welcome.data}</li>
								<li>${welcome.codifier_id}</li>
								<li>${welcome.rfc_id}</li>
							</ul>					
						<div class="list-group">
								<ul class="nav nav-tabs" id="myTab" role="tablist">		
									<li class="nav-item"><a class="nav-link" id="messages-tab"
										data-toggle="tab" href="#messages" role="tab"
										aria-controls="messages" aria-selected="false">Описание проблемы</a></li>
									<li class="nav-item"><a class="nav-link" id="settings-tab"
										data-toggle="tab" href="#settings" role="tab"
										aria-controls="settings" aria-selected="false">Решение</a></li>
								</ul>

								<div class="tab-content">
									<div class="tab-pane active" id="home" role="tabpanel"
										aria-labelledby="home-tab">${welcome.description}</div>
									<div class="tab-pane" id="profile" role="tabpanel"
										aria-labelledby="profile-tab">${welcome.solution_id}</div>
									
								</div>
							</div>
					</div>
	</c:forEach>
										
        </div>
      </div>
      </div>
    

    <!-- Footer -->
    <footer class="py-5 bg-dark ">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018 </p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->    
    <script src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="<%=request.getContextPath()%>/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom JavaScript for this theme -->
    <script src="<%=request.getContextPath()%>/resources/js/scrolling-nav.js"></script>


  </body>

</html>
