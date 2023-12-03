<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>search_age_limit</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">      
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 25px;
	color: #33FF99;
}
.style2 {font-size: 25px}
.style4 {font-weight: bold}
.style8 {
	color: #FF0000;
	font-weight: bold;
}
.style9 {color: #FFFFFF}
.style10 {font-size: 16px}
.style11 {color: #FFFF00}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1 style2">Blockchain Based Electronic Health Records Management A Comprehensive Review and Future Research Direction <br />
</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="Hospital_login.jsp"><span>Hospital</span></a></li>
          <li class="active"><a href="user_login.jsp"><span>Client</span></a></li>
          <li><a href="cs_login.jsp"><span>Server</span></a></li>
          <li><a href="au_login.jsp"><span></span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center" class="style8">Secure similarity queries resultsby Age Skyline Limit !!! </h2>
          <p align="center">&nbsp;</p>
          <%@page import="java.io.BufferedInputStream"%>
<%@page import="java.security.DigestInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.math.BigInteger"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>

<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>



<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>


<html>
<style type="text/css">
<!--
.style2 {color: #FFFFFF}
-->
</style>
<body>

          <p>
		  
		  <table width="313" border="1" align="center" cellspacing="0" cellpadding="5">
  <tr>
    <td width="78" bgcolor="#FF0000"><div align="center" class="style6 style9 style10"><strong>Id</strong></div></td>
  
	<td width="88" bgcolor="#FF0000"><div align="center" class="style6 style9 style10"><strong>Age</strong></div></td>
	
	<td width="109" bgcolor="#FF0000"><div align="center" class="style6 style9 style10"><strong>Trest BPS </strong></div></td>
  </tr>

	<%
		String s1 = "", s20 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11, s12, s13,s14,s15,s16,s17,s18,s19;
		int i = 0, j = 0, k = 0;
		
        String a1=request.getParameter("a1");
		String a2=request.getParameter("a2");
		
		String user=(String)application.getAttribute("us");
		try {
        
		            
			
			String query = "select * from patient_details  ";
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(query);
			while (rs.next()) {
				i = rs.getInt(1);
				
				s7 = rs.getString(7);// Age
			
				s20 = rs.getString(20);//bp
		
	
				
				                                String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
						  
						  String decrys7 = new String(Base64.decode(s7.getBytes())); //age
						   

                          int age=Integer.parseInt(decrys7);
						  int age1=Integer.parseInt(a1);
						  int age2=Integer.parseInt(a2);
						  
						  
						  if((age>=age1) & (age<=age2))
						  {


	%>

	<tr>
		<td height="40" bgcolor="#FF0000">
	  <div align="center" class="style8 style11"><%=i%></div>		</td>
	
		<td height="40">
	  <div align="center" class="style8"><%=decrys7%></div>		</td>
		
		<td>
		  <div align="center" class="style8"><%=s20%></div>		</td>
	</tr>

	<%
	  }
		}

			connection.close();
		}

		catch (Exception e) {
		//	out.println(e.getMessage());
		}
	%>
</table>
          <p><a href="u_main.jsp">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Client</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style4">
            <li><a href="u_main.jsp">Home</a></li>
            
            <li><a href="user_login.jsp">Log Out</a></li>
		  </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
