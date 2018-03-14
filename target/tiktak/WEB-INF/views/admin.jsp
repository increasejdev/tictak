<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- HEADER -->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>App</title>
  <!-- Bootstrap core CSS-->
  <link href="<%=request.getContextPath()%>/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="<%=request.getContextPath()%>/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="<%=request.getContextPath()%>/resources/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="<%=request.getContextPath()%>/resources/css/sb-admin.css" rel="stylesheet">
  <link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/images/favicon.ico" type="image/x-icon">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- NAVIGATION-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="index.html">Super Duper Control Panel 
    </a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">		
       <c:forEach var="step" items="${sessionScope.table}">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
        
          <a class="nav-link" href="${pageContext.request.contextPath}/login?name=${step.key}">
            <i class="${step.value}"></i>
            <span class="nav-link-text">${step.key}</span>
          </a>
        </li>  
       </c:forEach>
      </ul>
        
      <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-envelope"></i>
            <span class="d-lg-none">Messages
              <span class="badge badge-pill badge-primary">12 New</span>
            </span>
            <span class="indicator text-primary d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="messagesDropdown">
            <h6 class="dropdown-header">New Messages:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>David Miller</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">Hey there! This new version of SB Admin is pretty awesome! These messages clip off when they reach the end of the box so they don't overflow over to the sides!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>Jane Smith</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I was wondering if you could meet for an appointment at 3:00 instead of 4:00. Thanks!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>John Doe</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I've sent the final files over to you for review. When you're able to sign off of them let me know and we can discuss distribution.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all messages</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-bell"></i>
            <span class="d-lg-none">Alerts
              <span class="badge badge-pill badge-warning">6 New</span>
            </span>
            <span class="indicator text-warning d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="alertsDropdown">
            <h6 class="dropdown-header">New Alerts:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-danger">
                <strong>
                  <i class="fa fa-long-arrow-down fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all alerts</a>
          </div>
        </li>
        <li class="nav-item">
          <form class="form-inline my-2 my-lg-0 mr-lg-2">
            <div class="input-group">
              <input class="form-control" type="text" placeholder="Search for...">
              <span class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fa fa-search"></i>
                </button>
              </span>
            </div>
          </form>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>${sessionScope.email}</a>
        </li>
      </ul>
    </div>
  </nav>
  
  <!-- Tables -->
  <div class="content-wrapper"> 
    <div class="container-fluid">
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Data Table </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered " id="dataTable" width="100%" cellspacing="0">   
            <c:choose> 
            
               <c:when test = "${param.name == 'Users'}">
               <thead>
                	<tr>             	
              		<th >ID</th>
              		<th >email</th>
              		<th >password</th>
              		<th >actions</th>
              		</tr>
              </thead>
              <tfoot>
                   <tr>             	
              		<th >ID</th>
              		<th >email</th>
              		<th >password</th>
              		<th >actions</th>
              		</tr>              		
              </tfoot>
              
              
              
              <tbody>
              <c:forEach var="column" items="${sessionScope.Accounts}">
                <tr>                
              		 <td >${column.id}</td>
              		 <td >${column.email}</td>
              		 <td >${column.password}</td>   
              	 <td class="col-md-2">
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-primary">Primary</button></a>
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-success">Success</button></a>
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-warning">Warning</button></a>              	
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-danger">Danger</button></a>
              	</td>
              	             	            	
              	</tr>
              	
              	</c:forEach>
              	
              	
              	</tbody>
              	
              	
               </c:when>	
               
               <c:when test = "${param.name == 'Rfc'}">
               <thead>
                	<tr>             	
              		<th>ID</th>
              		<th>rfc</th>
              		<th>issue_id</th>
              		<th>actions</th>
              		</tr>
              </thead>
              <tfoot>
                   <tr>             	
              		<th>ID</th>
              		<th>rfc</th>
              		<th>issue_id</th>
              		<th>actions</th>
              		</tr>              		
              </tfoot>
              
              <tbody>
              <c:forEach var="column" items="${sessionScope.Rfc}">
                <tr>                
              		 <td>${column.id}</td>
              		 <td>${column.rfc}</td>
              		 <td>${column.issue_id}</td> 
              	<td class="col-md-2">
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-primary">Primary</button></a>
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-success">Success</button></a>
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-warning">Warning</button></a>              	
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-danger">Danger</button></a>
              	</td> 
              	            	
              	</tr>
              	</c:forEach>
              	</tbody>              	
               </c:when>    
                              
               <c:when test = "${param.name == 'Codifier'}">
               <thead>
                	<tr>             	
              		<th>ID</th>
              		<th>codifier</th>
              		<th>issue_id</th>
              		<th>actions</th>
              		</tr>
              </thead>
              <tfoot>
                   <tr>             	
              		<th>ID</th>
              		<th>codifier</th>
              		<th>issue_id</th>
              		<th>actions</th>
              		</tr>              		
              </tfoot>
              
              <tbody>
              <c:forEach var="column" items="${sessionScope.Codifier}">
                <tr>                
              		 <td>${column.id}</td>
              		 <td>${column.codifier}</td>
              		 <td>${column.issue_id}</td>
              	<td class="col-md-2">
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-primary">Primary</button></a>
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-success">Success</button></a>
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-warning">Warning</button></a>              	
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-danger">Danger</button></a>
              	</td>    
              	          	
              	</tr>
              	</c:forEach>
              	</tbody>              	
               </c:when>             
               
               <c:when test = "${param.name == 'Priority'}">
               <thead>
                	<tr>             	
              		<th>ID</th>
              		<th>priority</th>
              		<th>issue_id</th>
              		<th>actions</th>
              		</tr>
              </thead>
              <tfoot>
                   <tr>             	
              		<th>ID</th>
              		<th>priority</th>
              		<th>issue_id</th>
              		<th>actions</th>
              		</tr>              		
              </tfoot>
              
              <tbody>
              <c:forEach var="column" items="${sessionScope.Priority}">
                <tr>                
              		 <td>${column.id}</td>
              		 <td>${column.priority}</td>
              		 <td>${column.issue_id}</td> 
              	<td class="col-md-2">
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-primary">Primary</button></a>
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-success">Success</button></a>
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-warning">Warning</button></a>              	
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-danger">Danger</button></a>
              	</td>  
              	           	
              	</tr>
              	</c:forEach>
              	</tbody>              	
               </c:when>  
               
            <c:when test = "${param.name == 'Status'}">
               <thead>
                	<tr>             	
              		<th>ID</th>
              		<th>status</th>
              		<th>issue_id</th>
              		<th>actions</th>
              		</tr>
              </thead>
              <tfoot>
                   <tr>             	
              		<th>ID</th>
              		<th>status</th>
              		<th>issue_id</th>
              		<th>actions</th>
              		</tr>              		
              </tfoot>
              
              <tbody>
              <c:forEach var="column" items="${sessionScope.Status}">
                <tr>                
              		 <td>${column.id}</td>
              		 <td>${column.status}</td>
              		 <td>${column.issue_id}</td> 
              	<td class="col-md-2">
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-primary">Primary</button></a>
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-success">Success</button></a>
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-warning">Warning</button></a>              	
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-danger">Danger</button></a>
              	</td>  
              	           	
              	</tr>
              	</c:forEach>
              	</tbody>              	
               </c:when>  
               
            <c:when test = "${param.name == 'Solution'}">
               <thead>
                	<tr>             	
              		<th>ID</th>
              		<th>solution</th>
              		<th>issue_id</th>
              		<th>actions</th>
              		</tr>
              </thead>
              <tfoot>
                   <tr>             	
              		<th>ID</th>
              		<th>solution</th>
              		<th>issue_id</th>
              		<th>actions</th>
              		</tr>              		
              </tfoot>
              
              <tbody>
              <c:forEach var="column" items="${sessionScope.Solution}">
                <tr>                
              		 <td>${column.id}</td>
              		 <td>${column.solution}</td>
              		 <td>${column.issue_id}</td> 
              	<td class="col-md-2">
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-primary">Primary</button></a>
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-success">Success</button></a>
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-warning">Warning</button></a>              	
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-danger">Danger</button></a>
              	</td>   
              	          	
              	</tr>
              	</c:forEach>
              	</tbody>              	
               </c:when> 
               
          <c:when test = "${param.name == 'Issue'}">
               <thead>
                	<tr>             	
              		<th>ID</th>
              		<th>issue</th>
              		<th>status_id</th>
              		<th>codifier_id</th>
              		<th>description</th>
              		<th>priority_id</th>
              		<th>solution_id</th>
              		<th>data</th>
              		<th>rfc_id</th>   
              		<th>actions</th>           		
              		</tr>
              </thead>
              <tfoot>
                   <tr>             	
              		<th>ID</th>
              		<th>issue</th>
              		<th>status_id</th>
              		<th>codifier_id</th>
              		<th>description</th>
              		<th>priority_id</th>
              		<th>solution_id</th>
              		<th>data</th>
              		<th>rfc_id</th>
              		<th>actions</th>
              		</tr>              		
              </tfoot>
              
              <tbody>
              <c:forEach var="column" items="${sessionScope.Issue}">
                <tr>                
              		 <td>${column.id}</td>
              		 <td>${column.issue}</td>
              		 <td>${column.status_id}</td>
              		 <td>${column.codifier_id}</td>
              		 <td>${column.description}</td>
              		 <td>${column.priority_id}</td>
              		 <td>${column.solution_id}</td>
              		 <td>${column.data}</td>
              		 <td>${column.rfc_id}</td> 
              	<td class="col-md-2">
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-primary">Primary</button></a>
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-success">Success</button></a>
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-warning">Warning</button></a>              	
              	 <a href="<%=request.getContextPath()%>/Tables?"><button type="button" class="btn btn-danger">Danger</button></a>
              	</td>  
              	            		 
              	</tr>
              	</c:forEach>
              	</tbody>              	
               </c:when>
               
               <c:when test = "${param.name == 'Book'}">
               <thead>
                	<tr>             	
              		<th>ID</th>
              		<th>title</th>
              		<th>author</th>
              		<th>price</th>
              		<th>actions</th>
              		</tr>
              </thead>
              <tfoot>
                   <tr>             	
              		<th>ID</th>
              		<th>title</th>
              		<th>author</th>
              		<th>price</th>
              		<th>actions</th>
              		</tr>              		
              </tfoot>
              
              
              
              <tbody>
              <c:forEach var="column" items="${sessionScope.Book}">
                <tr>                
              		 <td>${column.id}</td>
              		 <td>${column.title}</td>
              		 <td>${column.author}</td>  
              		 <td>${column.price}</td> 
              	 <td class="col-md-2">
              	 <a href="<%=request.getContextPath()%>/tables?action=new"><button type="button" class="btn btn-primary">Add</button></a>
              	 <a href="<%=request.getContextPath()%>/tables?action=edit&id=<c:out value='${column.id}' />"><button type="button" class="btn btn-warning">Edit</button></a>              	
              	 <a href="<%=request.getContextPath()%>/tables?action=delete&id=<c:out value='${column.id}' />"><button type="button" class="btn btn-danger">Delete</button></a>
              	</td>              	             	            	
              	</tr>              	
              	</c:forEach> 
              	</tbody>  
               </c:when>               
              	<c:otherwise>               	             	
              		<iframe src="https://calendar.google.com/calendar/embed?src=itargo.nci%40gmail.com&ctz=Europe%2FMoscow" style="border: 0" width="800" height="600" frameborder="0" scrolling="no"></iframe>
              	</c:otherwise>
              </c:choose>                
              </tbody>
            </table>
          </div>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
      </div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
  </div>  
  
    <!-- FOOTER -->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © Your Website 2018</small>
        </div>
      </div>
    </footer>
    
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login?name=logout">Logout</a>
          </div>
        </div>
      </div>
    </div>
    <!-- SCRIPTS-->
    <script src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="<%=request.getContextPath()%>/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->    
    <script src="<%=request.getContextPath()%>/resources/vendor/datatables/jquery.dataTables.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="<%=request.getContextPath()%>/resources/js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="<%=request.getContextPath()%>/resources/js/sb-admin-datatables.min.js"></script>
    
  
</body>

</html>
