<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Marvel Comics</title>
  <!-- Bootstrap core CSS-->
  <link href="<%=request.getContextPath()%>/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="<%=request.getContextPath()%>/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="<%=request.getContextPath()%>/resources/css/sb-admin.css" rel="stylesheet">
  <link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/images/favicon.ico" type="image/x-icon">
</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Login</div>
      <div class="card-body">      
        <form action="<%=request.getContextPath()%>/login?name=enter" method="post">
          <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input class="form-control" id="exampleInputEmail1" value="<%=request.getAttribute("email") %>" name="email" type="email" aria-describedby="emailHelp" placeholder="Enter email">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input class="form-control" id="exampleInputPassword1" value="<%=request.getAttribute("password") %>" name="password" type="password" placeholder="Password">
          </div>
          <input type="hidden" name="action" value="dologin">
          
          <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">                
            </div>
          </div>
          <input type="submit" class="btn btn-primary btn-block" value="Login">
          
        </form>
        
        <div class="text-center"> 
        <p class="text-danger"><%= request.getAttribute("vmessage") %></p>       	
          <a class="d-block small mt-3" href="login?name=register">Register an Account</a>          
        </div>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="<%=request.getContextPath()%>/resources//vendor/jquery/jquery.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources//vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="<%=request.getContextPath()%>/resources//vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>
