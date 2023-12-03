<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>au_all_Blockchain_Code</title>
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
.style4 {
	font-size: 20px;
	color: #FF0000;
	font-weight: bold;
}
.style5 {font-size: 15px}
.style7 {font-size: 14px}
.style8 {color: #FFFFFF}
.style9 {
	color: #FF0000;
	font-weight: bold;
}
.style10 {color: #FF0000}
.style12 {font-weight: bold}
.style14 {font-weight: bold}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1 style2">Blockchain Based Electronic Health Records Management A Comprehensive Review and Future Research Direction</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="Hospital_login.jsp"><span>Hospital</span></a></li>
          <li><a href="user_login.jsp"><span>Client</span></a></li>
          <li><a href="cs_login.jsp"><span>Server</span></a></li>
          <li class="active"><a href="au_login.jsp"><span></span></a></li>
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
          <h2 align="center" class="style9"> View All Blockchain Codes </h2>
          <p align="center">&nbsp;</p>
          <table width="737" border="1" align="center"  cellpadding="0" cellspacing="0">
          <tr>
            <td  width="89" height="66"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8 style7 style15 style21"><strong>ID</strong></div></td>
			<td  width="310" height="66" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8 style7 style15 style21"><strong>Disease Name</strong></div></td>
            <td  width="330" height="66" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8 style7 style15 style21"><strong>Blockchain Code(Hashcode) </strong></div></td>
          </tr>
          <%@ include file="connect.jsp" %>
          <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from blockchaincode"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								
								
								
								
								
							
						
					%>
          <tr>
            <td  valign="baseline" height="0"><p class="style10 style5 style22">&nbsp;</p>
                <div align="center" class="style22 style5 style10 style12">
                  <%out.println(i);%>
                  <p>&nbsp; </p>
                </div></td>
          
            <td  valign="baseline" height="0"><p class="style10 style5 style22">&nbsp;</p>
                <div align="center" class="style22 style5 style10 style14">
                  <%out.println(s2);%>
                  <p>&nbsp; </p>
                </div></td>
            <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <%out.println(s3);%>
                  <p>&nbsp; </p>
                </div></td>
            <%
						}
						%>
          </tr>
          <%
					
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
        </table>
		  
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
          <p>&nbsp;</p>
		  <p align="center"><a href="s_main.jsp" class="style14">Back</a></p>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span></span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="au_main.jsp"><span>  Main</span></a></li>
            <li><a href="au_login.jsp"><span>Log Out</span></a></li>
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
