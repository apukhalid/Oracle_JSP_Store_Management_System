<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=0" />
	<title>Store Management System </title>
	<link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" />
	<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,500,700' rel='stylesheet' type='text/css' />
	
	<script src="js/jquery-1.8.0.min.js" type="text/javascript"></script>
	<!--[if lt IE 9]>
		<script src="js/modernizr.custom.js"></script>
	<![endif]-->
	<script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
	<script src="js/functions.js" type="text/javascript"></script>
</head>
<body>
	<div id="wrapper">
		
		<!-- top-nav -->
		<nav class="top-nav">
			<div class="shell">
				<a href="#" class="nav-btn">HOMEPAGE<span></span></a>
				<span class="top-nav-shadow"></span>
				<ul>
					<li class="active"><span><a href="#">home</a></span></li>
					<li><span><a href="view.jsp">View Store</a></span></li>
					<li><span><a href="about.jsp">About Store</a></span></li>
					<li><span><a href="admin.jsp"">Admin</a></span></li>
					<li><span><a href="faq.jsp">FAQ</a></span></li>
					<li><span><a href="contact.jsp">contacts</a></span></li>
				</ul>
			</div>
		</nav>
		<!-- end of top-nav -->
			<!-- header -->
			<header  id="header">
				<!-- shell -->
				<div class="shell">
					<div class="header-inner">
						<!-- header-cnt -->
						<div class="header-cnt">
							<h1 id="logo"><a href="#">Simple</a></h1>		
							<p>
								
								<span class="desktop"> Store Management System is Designed to keep entry of the product of the store  and publicly viewed by the interested viewers</span>
							</p>
							<a href="#" class="blue-btn">GET STARTED NOW</a>
						</div>
						<!-- end of header-cnt -->
						<!-- slider -->
						<div class="slider-holder">
							<div class="flexslider">
								<ul class="slides">
									<li><img src="css/images/slide-img.png" alt="" /></li>
								
									<li><img src="css/images/slide-img.png" alt="" /></li>

									<li><img src="css/images/slide-img.png" alt="" /></li>

									<li><img src="css/images/slide-img.png" alt="" /></li>

									<li><img src="css/images/slide-img.png" alt="" /></li>
								</ul>
							</div>
						</div>
						<!-- end of slider -->
						<div class="cl">&nbsp;</div>
					</div>
					<div class="cl">&nbsp;</div>
				</div>
				<!-- end of shell -->	
			</header>
			<!-- end of header -->
			<!-- main -->
			<div class="main">
				<span class="shadow-top"></span>
				<!-- shell -->
				<div class="shell">
					<div class="container">
						<!-- testimonial -->
						<section class="testimonial">
							<h2>Store Management System</h2>
							<p><strong></strong>Store Management System Developed with <span class="mobile">Oracle Database and Java Server Page (JSP )</span></p>
						</section>
						<!-- testimonial -->

						<section class="blog">
							<!-- content -->
							<div class="content">
						
						
						
						
								 <!DOCTYPE html>
<%@ page import="java.sql.*" %>			
<title>Login Page</title>

<%

%>
<div id="welcome">
<h2><span>Store Detail <strong><font color='#333333'></font></strong></span></h2>
</div>	
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>
 

       <% 
           Connection connection = DriverManager.getConnection("jdbc:odbc:orcl","system","khalid1");
           Statement statement = connection.createStatement() ;
          ResultSet resultset = statement.executeQuery("select qstore,qok,qnotok,qrun,name from store") ; 
       %>
	   
	   
	   
	   <center>
      <TABLE style="border:4px solid #000000;ellspacing:1;cellpadding:1; bordercolorlight:#00CC99;bordercolordark:#008080;">
          <tr style="background-color:grey">
<td align=center colspan="10"><font color="#FFFFFF"><font size="5"><i></i></font>
</td>             
          <TR ><TD style="border:2px solid black;align:center;font-weight: bold;font-family: sans-serif;"><font color="#000000">Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></TD>
		 <TD style="border:2px solid black;align:center;" ><font color="#000000">Stock( Total )&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
		 <TD style="border:2px solid black;align:center;" ><font color="#000000">Stock( OK )&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		  <TD style="border:2px solid black;align:center;" ><font color="#000000">Stock( NOT OK )&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		  <TD style="border:2px solid black;align:center;" ><font color="#000000">Running Stock &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		  <TD style="border:2px solid black;align:center;" ><font color="#000000">Edit &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<TD style="border:2px solid black;align:center;" ><font color="#000000">Delete &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>	  
          </TR>
		 
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
     <% while(resultset.next()){ String nx=resultset.getString(5); %>
	 
    <TR>
	<TD style="border:2px solid black;align:center;background-color: #E0F8F7;" ><font color="#000000"> <%= nx %> </TD>
	<TD style="border:2px solid black;align:center;" ><font color="#000000"> <%= resultset.getInt(1) %> </TD>
	<TD style="border:2px solid black;align:center;background-color: #81F781;" ><font color="#000000"> <%= resultset.getInt(2) %> </TD>
	<TD style="border:2px solid black;align:center;background-color: #F78181;" ><font color="#000000"> <%= resultset.getInt(3) %> </TD>
	<TD style="border:2px solid black;align:center;" ><font color="#000000"> <%= resultset.getInt(4) %> </TD>
        <TD style="border:2px solid black;align:center;background-color: #E0F8F7;" ><font color="#000000"> <a href="editpro.jsp?edit=<%= nx %>&ii=0">Edit</a> </TD>
        <TD style="border:2px solid black;align:center;background-color: #E0F8F7;" ><font color="#000000"> <a href="deletepro.jsp?del=<%= nx %>&ii=0">Delete</a> </TD>
	</TR>
          
   
        
      <% } %>		
			 </TABLE>
     </center>	
						
						
						
						
						
				
				
				
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
							</div>
							<!-- end of content -->

							<!-- sidebar -->
							<aside class="sidebar">
								<!-- widget -->
								<div class="widget">
									
								<!-- end of widget -->
							</aside>
							<!-- end of sidebar -->
							<div class="cl">&nbsp;</div>
						</section>	
						
						<!-- cols -->
						
						<!-- end of cols -->
					</div>
				<!-- end of shell -->
				</div>
				<!-- end of container -->
			</div>
			<!-- end of main -->
		</div>	
		<!-- footer-push -->
		<div id="footer-push"></div>
		<!-- end of footer-push -->
	
	<!-- end of wrapper -->
	<!-- footer -->
	<div  id="footer">
		<span class="shadow-bottom"></span>
		<!-- footer-cols -->
		<div class="footer-cols">
			<!-- shell -->
			<div class="shell">
				<div class="col">
					<h3><a href="#">Solutions</a></h3>
					<div class="col-cnt">
						<ul>
						li><a href="#">Store Management </a></li>
						</ul>
					</div>
				</div>
				<div class="col">
					<h3><a href="#">Services</a></h3>
					<div class="col-cnt">
						<ul>
							li><a href="#">Store Management </a></li>
						</ul>
					</div>
				</div>
				<div class="col">
					<h3><a href="#">Portfolio</a></h3>
					<div class="col-cnt">
						<ul>
							<li><a href="#">Store Management </a></li>
							
						</ul>
					</div>
				</div>
				<div class="col">
					<h3><a href="#">Contact Us</a></h3>
					<div class="col-cnt">
						<p><strong>Email:</strong> <a href="#">store@cuet.ac.bd</a></p>
						<p><strong>Phone:</strong> 01674307930 </p>
						<p><strong>Adress:</strong> Chittagong Univetsity of Engineering And Tecnology , Chittagong-4349</p>	
					</div>
				</div>
				<div class="cl">&nbsp;</div>
			</div>
			<!-- end of shell -->
		</div>
		<!-- end of footer-cols -->
		<div class="footer-bottom">
			<div class="shell">
				<nav class="footer-nav">
					<ul>
						<li><a href="#">Home</a></li>
						<li><a href="#">About</a></li>
						<li><a href="#">Services</a></li>
						<li><a href="#">Projects</a></li>
						<li><a href="#">Solutions</a></li>
						<li><a href="#">Jobs</a></li>
						<li><a href="#">Blog</a></li>
						<li><a href="#">Contacts</a></li>
					</ul>
					<div class="cl">&nbsp;</div>
				</nav>
				<p class="copy">&copy; Copyright 2013<span>|</span>Sitename. Design by <a href="#" target"_blank">Adlul Hasan</a></p>
			</div>
		</div>
	</div>
	<!-- end of footer -->
</body>
</html>