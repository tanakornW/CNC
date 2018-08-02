<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReporterPage.aspx.cs" Inherits="ApproveOneNote.ReporterPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="style_css.css" type="text/css"> 
    <link rel="stylesheet" href="../Css/theme.css" type="text/css">
     <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
    
</head>

<body class="bg-light">
    <form id="Form1" runat="server">
  <nav class="navbar navbar-expand-md bg-dark navbar-dark">
    <div class="container">
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar3SupportedContent">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar3SupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href=HomePage.aspx>Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href=ReporterPage.aspx>Report</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href=ProvePage.aspx>Approve</a>
          </li>    
        </ul>
          <asp:Button class="ml-3 btn navbar-btn btn-primary" ID="BtnLogout_Report" runat="server" OnClick="Logout_click_Report" Text="Logout" />
      </div>
    </div>
  </nav>
   <div class="py-5" style="height:500px;">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2 class="text-center text-dark">Link to notebook page on onenote</h2>
          <p class="text-center"> <asp:Label ID="link_reportpage" class="text-center display-3 text-primary" runat=server ><a class="text-center" href="https://1drv.ms/f/s!AuNVm_M1dypZaBhSKlJUVKchH_U" target=_blank >www.cnc.approve.onenote</a> </asp:Label></p>
         
          <p class="text-center">Please click on the link to access the onenote.</p>
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
            <a href=HomePage.aspx class="text-white">Home</a>
            <br>
            <a href=ReporterPage.aspx class="text-white">Report</a>
            <br>
            <a href=ProvePage.aspx class="text-white">Approve</a>
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
 </form>
</body>
</html>
