<!DOCTYPE HTML>
<!--[if gt IE 8]> <html class="ie9" lang="en"> <![endif]-->
<%@page import="com.model.Doctorsmodel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bin.Doctorsbean"%>
<%@page import="com.bin.Registrationbean"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    
<!-- Mirrored from imedica.sharkslab.com/HTML/meet-our-doctors-1.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 23 Feb 2016 20:03:23 GMT -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    

    <title>Find Doctor</title>

    <link href='http://fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic' rel='stylesheet' type='text/css'>
    <link href="css/jquery-ui-1.10.3.custom.css" rel="stylesheet" />
    <link href="css/animate.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/blue.css" id="style-switch" />
    <link href="css/signup2.css" rel="stylesheet" type='text/css'/>

    <!-- REVOLUTION BANNER CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css" media="screen" />

    <!--[if IE 9]>
      <link rel="stylesheet" type="text/css" href="css/ie9.css" />
    <![endif]-->    
  
  <link rel="icon" type="image/png" href="images/fevicon.png">
  <link rel="stylesheet" type="text/css" href="css/inline.min.css" /></head>

<body>

                <header>
            
            <div class="header-bg">
  <%try
 {
 %> 
 
 <%!Registrationbean s; %>
 <%
 
 s=(Registrationbean)session.getAttribute("raj");
 
 %>             	
                    <!--Topbar-->
                    <div class="topbar-info no-pad">                    
                        <div class="container">                     
                          <div class="social-wrap-head col-md-2 no-pad">
                                <ul>
                                <li><a href="#"><i class="icon-facebook head-social-icon" id="face-head" data-original-title="" title=""></i></a></li>
                                <li><a href="#"><i class="icon-social-twitter head-social-icon" id="tweet-head" data-original-title="" title=""></i></a></li>
                                <li><a href="#"><i class="icon-google-plus head-social-icon" id="gplus-head" data-original-title="" title=""></i></a></li>
                                <li><a href="#"><i class="icon-linkedin head-social-icon" id="link-head" data-original-title="" title=""></i></a></li>
                                <li><a href="#"><i class="icon-rss head-social-icon" id="rss-head" data-original-title="" title=""></i></a></li>
                                </ul>
                            </div>                            
                            <div class="top-info-contact pull-right col-md-6">
                              <%
    
    response.setHeader("cache-control", "no-cache");
    response.setHeader("cache-control", "no-store");
    response.setHeader("pragma", "no-cache");
    response.setDateHeader("Expires", 0);
    
    %>
    <%!String fname; %>      
<%
 
 if(session!=null)
 {
     if(session.getAttribute("raj")!=null)
	 {
		 fname = session.getAttribute("raj").toString();
	
 %>                    
                            <a href="profile.jsp">
                   			<label hover: style="color: #2fa8ec" class="btn">
                   				Welcome <%=s.getFname() %> <%=s.getLname() %>&nbsp;&nbsp;
                   			</label>
                       </a>
                            
                       <a href="logout.jsp">
                             <button type="submit" class="btn btn-primary" >Log out</button>
                       </a>
<%
	 }
	 else
	 {
		 response.sendRedirect("login.jsp");
	 }
 }
 else
 {
	 response.sendRedirect("login.jsp");
 }
%>
                            </div>                      
                        </div>
                    </div><!--Topbar-info-close-->
                    
                    
                    
                    
                    
                    <div id="headerstic">
                    
                    <div class=" top-bar container">
                    	<div class="row">
                            <nav class="navbar navbar-default" role="navigation">
                              <div class="container-fluid">
                                <!-- Brand and toggle get grouped for better mobile display -->
                               
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
                            <li><a href="home.jsp" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-home"></i>Home</a>
								
							</li>

                            <li class="dropdown"><a href="Finddoctors.jsp" ><i class="icon-cog"></i>Find Doctors<b class="icon-angle-down"></b></a>
                                
                            </li>
                            <li class="dropdown active"><a href="Alldoctors.jsp" ><i class="icon-cog"></i>All Doctors<b class="icon-angle-down"></b></a>
                                
                            </li>
                            <li class="dropdown"><a href="Area.jsp" ><i class="icon-cog"></i>Area Vise<b class="icon-angle-down"></b></a>
                                
                            </li>
                              <li><a href="bookappoinment.jsp" ><i class="icon-cog"></i>Appoinment<b class="icon-angle-down"></b></a>
                                
                            </li>
                            <li class="dropdown"><a href="Rating.jsp" ><i class="icon-cog"></i>Rating<b class="icon-angle-down"></b></a>
                                
                            </li>
                            <li class="dropdown"><a href="Aboutus.jsp" ><i class="icon-cog"></i>About us<b class="icon-angle-down"></b></a>
                                
                            </li>
                            
                    </div>
                              </div><!-- /.container-fluid -->
                            </nav>
                    	</div>    
                    </div><!--Topbar End-->
                	</div>
                    
                    
                    
                    
                    
                    
                    
              </div>
            </header>

    
    <section class="complete-content content-footer-space">
    
      <!--Mid Content Start-->
      
 
       <div class="about-intro-wrap pull-left">
       
       <div class="bread-crumb-wrap ibc-wrap-5">
      	<div class="container">
      <!--Title / Beadcrumb-->
           	<div class="inner-page-title-wrap col-xs-12 col-md-12 col-sm-12">
              	<div class="bread-heading"><h1>Manage Your Profile</h1></div>
                  <div class="bread-crumb pull-right">
                                    </div>
              </div>
           </div>
       </div>
       
           <div class="container">
           	
              <div class="row">
              <!--About-us top-content-->

    
       
          	<div class="col-md-12 col-xs-12 col-sm-12 pull-left subtitle ibg-transparent"></div>
              
              
              
               <div class="col-xs-12 col-sm-12 col-md-12 pull-left doctors-3col-tabs no-pad">
           
           		
                  <div class="content-tabs tabs col-xs-12 col-sm-12">
              
              	<!-- Nav tabs -->
                     
                      <!-- Tab panes -->
<%--                      <%  --%>
                      
<!--                         	Doctorsmodel s = new Doctorsmodel(); -->
                      	
<!--                         	ArrayList<Doctorsbean> records = s.alldoctors(); -->
<!--                         	for(Doctorsbean d:records) -->
<!--                         	{ -->
<%--                        %>  --%>
                      
                      <div>
                      
                        <div>
                        	<!--map2-->
	 <form action="editprofile.jsp" name="register" id="reg" method="post">
		<div align="center">
		
				<section class="bgcolor-6 content">
						<h2 style="margin-bottom: 100px;">
							<label class="lbl" style="color: white;">YOUR PROFILE</label>
						</h2>
						
				<table>
					<tr>
						<td style="border-width: 10px;">
							<label style="color: white;">First Name :</label>
						</td>
						<td>
							<input style="margin-top:20px;" name="fname" type="text" value="<%=s.getFname()%>" readonly="readonly" placeholder="First name" class="textox">
							<br><br>
						</td>
					</tr>	
					<tr>	
						<td style="border-width: 10px;">
							<label style="color: white;">Last Name :</label>
						</td>
						<td>
							<input style="margin-top:20px;" name="lname" type="text" value="<%=s.getLname()%>" readonly="readonly" placeholder="Last name" class="textox">
							<br><br>
						</td>	
					</tr>
					<tr>	
						<td style="border-width: 10px;">
							<label style="color: white;">Email :</label>
						</td>
						<td>
							<input style="margin-top:20px;" name="email" type="text" value="<%=s.getEmail()%>" readonly="readonly" placeholder="Email" class="textox">
							<br><br>
						</td>	
					</tr>
					<tr>	
						<td style="border-width: 10px;">
							<label style="color: white;">Phone No :</label>
						</td>
						<td>
							<input style="margin-top:20px;" name="phno" type="text" value="<%=s.getPh_no()%>" readonly="readonly" placeholder="Phone No" class="textox">
							<br><br>
						</td>	
					</tr>
					<tr>	
						<td style="border-width: 10px;">
							<label style="color: white;">Password :</label>
						</td>
						<td>
							<input style="margin-top:20px;" name="pwd" value="<%=s.getPass()%>" readonly="readonly" type="text" placeholder="Password" class="textox">
							<br><br>
						</td>	
					</tr>
					<tr>	
						<td style="border-width: 10px;">
							<label style="color: white;">Confirm Password :</label>
						</td>
						<td>
							<input style="margin-top:20px;" name="cpwd" type="text" value="<%=s.getCpass()%>" readonly="readonly" placeholder="Confirm Password" class="textox">
							<br><br>
						</td>	
					</tr>
<!-- 					<tr>	 -->
<!-- 						<td style="border-width: 10px;"> -->
<!-- 							<label style="color: white;">Gender :</label> -->
<!-- 						</td> -->
<!-- 						<td> -->
<!-- 							<select style="margin-top:20px;" name="gen" align="center" class="textox"> -->
<!-- 								<option></option> -->
<!-- 								<option>Male</option> -->
<!-- 								<option>Female</option> -->
<!-- 							</select> -->
<!-- 							<br><br> -->
<!-- 						</td>	 -->
<!-- 					</tr> -->
					<tr>	
						<td style="border-width: 10px;">
							<label style="color: white;">Date Of Birth :</label>
						</td>
						<td>
							<input value="<%=s.getDob()%>" style="margin-top:20px;" name="date" type="date" readonly="readonly" placeholder="Date Of Birth" class="textox">
							<br><br>
						</td>	
					</tr>
				</table>
				<a href="editprofile.jsp"><button type="submit" class="btn btn-primary">EDIT</button></a>
				<br><br>
<!-- 				<a href="login.jsp"><button type="button" class="btn btn-primary" >Already have an account</button></a> -->
<!-- 				</section> -->
         </div><!--container-->  
	</form>	
                        
<%--                           <%} %> --%>
                       
                      
                        </div>
                        
                        
                      </div>
           
             	 </div> <!--Mid Services End-->

               </div>
           
           </div>
           </div>

      <!--Mid Content End-->
      
      </div>
      
      <!--Footer Start-->
    
    </section>
  
            
            <div class="complete-footer">
           <!--  <footer id="footer">
            
            	<div class="container">
                	<div class="row">
                    	Foot widget
                    	
                        <div class="col-xs-12 col-sm-6 col-md-3 recent-post-foot foot-widget">
                        <br>
                        <address class="foot-address">
                        	<div class="col-xs-12 no-pad"><i class="icon-globe address-icons"></i>Doctor Finder <br />Devloped by <br />Rajesh and Piyush</div>
                            <div class="col-xs-12 no-pad"><i class="icon-phone2 address-icons"></i>+919428433793<br/>+919879519203</div>
                            
                            <div class="col-xs-12 no-pad"><i class="icon-mail address-icons"></i>rajbha811991@gmail.com<br/>pyhruparel95@gmail.com</div>
                        </address>
                        </div>
                       
                        Foot widget
                        <div class="col-xs-12 col-sm-6 col-md-3 recent-post-foot foot-widget">
                        	<div class="foot-widget-title">Recent Posts</div>
                        	<ul>
                            	<li><a href="#">Dr. Shubramaniam Shukla Dentist specialist joined with us.<br /><span class="event-date">1 days ago</span></a></li>
                                <li><a href="#">Dr. Piyush Ruparel Nurologiest specialist joined with us.<br /><span class="event-date">3 days ago</span></a></li>
                                <li><a href="#">Dr. Rajesh Nalkanthiya ENT specialist joined with us.<br /><span class="event-date">3 days ago</span></a></li>
                            </ul>
                        </div>
                        
                         Foot widget
                        <div class="col-xs-12 col-sm-6 col-md-3 recent-tweet-foot foot-widget">
                        	<div class="foot-widget-title">Recent News</div>
                        	<ul>
                            	<li>Our specialized Doctors saved 8 people life in <b>Swine flu case</b><br /><span class="event-date">7 days ago</span></li>
                                <li>Effective medicins provide by our doctors for <b>Feaver</b><br /><span class="event-date">always</span></li>
                            </ul>
                        </div>
                        
                        Foot widget
                        
                        
                    </div>
               	 </div>       
                 </div>
            </footer>
     -->
    <%@ include file="footer.jsp" %>
    
    <!--JS Inclution-->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.10.3.custom.min.js"></script>  
    <script type="text/javascript" src="bootstrap-new/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="rs-plugin/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="js/jquery.scrollUp.min.js"></script>
    <script type="text/javascript" src="js/jquery.sticky.min.js"></script>
    <script type="text/javascript" src="js/wow.min.js"></script>
    <script type="text/javascript" src="js/jquery.flexisel.min.js"></script>
    <script type="text/javascript" src="js/jquery.imedica.min.js"></script>
    <script type="text/javascript" src="js/custom-imedicajs.min.js"></script>
<!--     <script type="text/javascript" src="js/Signup_validate2.js"></script> -->
  <%
 }
 catch(Exception e)
 {
	 e.printStackTrace();
 }
 %>  
</body>

<!-- Mirrored from imedica.sharkslab.com/HTML/meet-our-doctors-1.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 23 Feb 2016 20:03:25 GMT -->
</html>
