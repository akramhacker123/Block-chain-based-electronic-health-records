<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Clients</title>
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
.style4 {font-size: 18px}
.style5 {color: #FFFFFF}
.style6 {font-size: 14px}
.style7 {font-weight: bold}
.style8 {color: #FF0000}
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
          <h2 align="center"><strong> View All Clients and Authorise</strong>!!!</h2>
          <p align="center">&nbsp;</p>
          <table width="732" border="1" align="center"  cellpadding="0" cellspacing="0" >
          <tr>
            <td  width="25" height="66"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7 style21 style15 style5 style6"><strong>ID</strong></div></td>
			<td  width="122" height="66" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7 style21 style15 style5 style6"><strong>Client Image</strong></div></td>
            <td  width="108" height="66" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7 style21 style15 style5 style6"><strong>Client Name </strong></div></td>
            <td  width="128" height="66" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7 style21 style15 style5 style6"><strong> Department </strong></div></td>
            <td  width="159" height="66" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7 style21 style15 style5 style6"><strong>Profession</strong></div></td>
            
            <td  width="111" height="66"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7 style21 style15 style5 style6"><strong>Status</strong></div></td>
          </tr>
          <%@ include file="connect.jsp" %>
          <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from user "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s2=rs.getString(2);
								s4=rs.getString(4);
								s5=rs.getString(5);
								s6=rs.getString(6);//img
								s7=rs.getString(7);
							
								
								
								
								
							
						
					%>
          <tr>
            <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <%out.println(i);%>
                  <p>&nbsp; </p>
                </div></td>
            <td width="122" rowspan="1" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                <input  name="image" type="image" src="u_Pic.jsp?id=<%=i%>" style="width:90px; height:90px;">
            </a> </div></td>
            <td  valign="baseline" height="0"><p class="style22 style4 style8">&nbsp;</p>
                <div align="center" class="style22 style4 style8">
                  <a href="au_profiles1.jsp?user=<%=s2%>"><%out.println(s2);%></a>
                  <p>&nbsp; </p>
                </div></td>
            <td  valign="baseline" height="0"><p class="style22 style4 style8">&nbsp;</p>
                <div align="center" class="style22 style4 style8">
                  <%out.println(s4);%>
                  <p>&nbsp; </p>
                </div></td>
            <td  valign="baseline" height="0"><p class="style22 style4 style8">&nbsp;</p>
                <div align="center" class="style22 style4 style8">
                  <%out.println(s5);%>
                  <p>&nbsp; </p>
                </div></td>
            <%
						if(s7.equalsIgnoreCase("waiting"))
						{
						
						%>
            <td  width="111" valign="baseline" height="0" style="color:#000000;"align="center"><div align="center" class="style22 style4 style8">
                <p>&nbsp;</p>
            <a href="u_Status.jsp?id=<%=i%>">waiting</a> </div></td>
            <%
						}
						else
						{
						%>
            <td width="63" height="0"  valign="baseline"><p class="style22 style4 style8">&nbsp;</p>
                <div align="center" class="style22 style4 style8">
                  <%out.println(s7);%>
            </div></td>
            <%
						}
						%>
          </tr>
          <%
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          <tr>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
          </tr>
        </table>
		  
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
