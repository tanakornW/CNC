<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ApproveOneNote.LoginPage" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head  runat="server">
    <title>Meeting Customer</title>
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://v40.pingendo.com/assets/4.0.0/default/theme.css" type="text/css"> 
    <link rel="stylesheet" href="../Css/theme.css" type="text/css">

</head>    
<body>
  <nav class="navbar navbar-expand-md bg-dark navbar-dark">
    <div class="container">
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar3SupportedContent">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar3SupportedContent">
    
        <a class="ml-3 btn navbar-btn btn-primary" href="#">Login</a>
      </div>
    </div>
  </nav>
  <div class="py-5" style="background-image: url('https://pingendo.github.io/templates/sections/assets/cover_event.jpg');">
    <div class="container">
      <div class="row">
        <div class="col-md-3"> </div>
        <div class="col-md-6">
          <div class="card text-white p-5 bg-primary">
            <div class="card-body">
              <h1 class="mb-4">Login</h1>
              <form id="Form1"  runat="server">
                <div class="form-group">
                  <label>User Name</label>
                  <input id="usernameLogin" type="text" class="form-control" placeholder="User Name" runat="server" autocomplete="off"> </div>
                <div class="form-group">
                  <label>Password</label>
                  <input id="passwordLogin" type="text" class="form-control" placeholder="Password" value="" runat="server" autocomplete="off"> </div>
                
                  <asp:Button class="btn btn-secondary" ID="LoginBtn" runat="server" Text="Login" OnClick="ButtonLogin_Click_Login" />
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="bg-dark text-white">
    <div class="container">
      <div class="row">
       <div class="p-4 col-md-3">
          <h4 class="mb-4 text-secondary">www.Choknamchai.com</h4>     
            <p class="text-center text-white">© Copyright 2018 . </p>
        </div>
        <div class="p-4 col-md-3">
          <h4 class="mb-4 text-secondary">Mapsite</h4>
          <ul class="list-unstyled">
           
            <a href=LoginPage.aspx class="text-white">Login</a>
            
          </ul>
        </div>
       <div class="p-4 col-md-3">
          <h4 class="mb-4">Contact</h4>
         <p>
            <a href="tel:+66 35 514 222" class="text-white">
              <i class="fa d-inline mr-3 text-secondary fa-phone"></i>+66 35 514 222</a>
         
            <a href="mailto:erp@choknamchai.com" class="text-white">
              <i class="fa d-inline mr-3 text-secondary fa-envelope-o"></i>erp@choknamchai.com</a>
        
            <a href="https://www.google.co.th/maps/search/map/@14.356828,100.1851002,16.5z?hl=th" class="text-white" target="_blank">
              <i class="fa d-inline mr-3 fa-map-marker text-secondary"></i>52/2 Moo 2 Thaka Bangplama Suphanburi 72150 Thailand </a>
          </p>
        </div>
      
      </div>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
</body>

</html>
