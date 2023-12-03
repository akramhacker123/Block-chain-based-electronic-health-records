
 <%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>


 <%
					  
						// Creation Of Blockchain 
						
						String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11, s12, s13,s14,s15,s16,s17,s18,hsign;
						int i = 0, j = 0, k = 0;
        							
					
												
						int count1=1;
						
						try 
						{
						String str1 = " select distinct(hcode) from blockchaincode ";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						hsign = rs1.getString(1);
//						count1=count1+1;
						   	String query="select * from patient_details where hcode = '"+hsign+"' ";
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							s1=rs.getString(9);
							
							 String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												 String ddecval= new String(Base64.decode(s1.getBytes()));
							
							%>
         <style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
         </style>
		  <table width="961" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
           <tr>
    <td width="47" bgcolor="#FFFF00"><div align="center" class="style6 style2"><strong>Id</strong></div></td>
    <td width="72" bgcolor="#FFFF00"><div align="center" class="style6 style2"><strong>Patient Name </strong></div></td>
	<td width="87" bgcolor="#FFFF00"><div align="center" class="style6 style2"><strong>Hospital(Uploader) </strong></div></td>
    <td width="78" bgcolor="#FFFF00"><div align="center" class="style6 style2"><strong>Address</strong></div></td>
    <td width="62" bgcolor="#FFFF00"><div align="center" class="style6 style2"><strong>Date of Birth</strong></div></td>
    <td width="51" bgcolor="#FFFF00"><div align="center" class="style6 style2"><strong>Email</strong></div></td>
	<td width="59" bgcolor="#FFFF00"><div align="center" class="style6 style2"><strong>Mobile</strong></div></td>
	<td width="42" bgcolor="#FFFF00"><div align="center" class="style6 style2"><strong>Age</strong></div></td>
	<td width="66" bgcolor="#FFFF00"><div align="center" class="style6 style2"><strong>Hospital</strong></div></td>
	<td width="63" bgcolor="#FFFF00"><div align="center" class="style6 style2"><strong>Disease</strong></div></td>
	<td width="57" bgcolor="#FFFF00"><div align="center" class="style6 style2"><strong>Blood Group</strong></div></td>
	<td width="79" bgcolor="#FFFF00"><div align="center" class="style6 style2"><strong>Symptoms</strong></div></td>
	<td width="32" bgcolor="#FFFF00"><div align="center" class="style6 style2"><strong> Rank</strong></div></td>
	<td width="98" bgcolor="#FFFF00"><div align="center" class="style6 style2"><strong> Patient Report </strong></div></td>
  </tr>
		 
		 
         <h3 align="center">
<p align="center" class="style4"><span class="style1">Donor Block Chain ::</span><span class="style5"> <%=ddecval%></span><br>
			    <span class="style1">Donor Hash Code    ::</span><%=hsign%></p>
	     </h3>
			<div align="center">
			  <%
							
							}
			 					
			 					i = rs.getInt(1);
				s2 = rs.getString(2);
				s3 = rs.getString(3);
				s4 = rs.getString(4);
				s5 = rs.getString(5);
				s6 = rs.getString(6);
				s7 = rs.getString(7);
				s8 = rs.getString(8);
				s9 = rs.getString(9);
				s10 = rs.getString(10);
				s11 = rs.getString(11);
				s12 = rs.getString(12);
				s13 = rs.getString(13);
				s14 = rs.getString(14);//img
				s15 = rs.getString(15);
				s16 = rs.getString(16);//on
				s17 = rs.getString(17);
				s18 = rs.getString(18);//down_rank
				
				                               
									// Can add all decryption data if u want			
						   String decrys3 = new String(Base64.decode(s3.getBytes()));
						   String decrys4 = new String(Base64.decode(s4.getBytes()));
						   String decrys5 = new String(Base64.decode(s5.getBytes()));
						   String decrys6 = new String(Base64.decode(s6.getBytes()));
						   String decrys7 = new String(Base64.decode(s7.getBytes()));
						   String decrys8 = new String(Base64.decode(s8.getBytes()));
						   String decrys9 = new String(Base64.decode(s9.getBytes()));
						   String decrys10 = new String(Base64.decode(s10.getBytes()));
						   String decrys11 = new String(Base64.decode(s11.getBytes()));
						   String decrys12= new String(Base64.decode(s12.getBytes()));
						   String decrys13 = new String(Base64.decode(s13.getBytes()));

					%>
	      </div>
		  
 <tr>
		<td height="29">
		<div align="center" class="style8"><%=i%></div>		</td>
		<td height="29">
		<div align="center" class="style8"><%=s2%></div>		</td>
		<td height="29">
		<div align="center" class="style8"><%=s16%></div>		</td>
		<td>
		<div align="center" class="style8"><%=s3%></div>		</td>
		<td>
		<div align="center" class="style8"><%=s4%></div>		</td>
		<td>
		<div align="center" class="style8"><%=s5%></div>		</td>
		<td height="29">
		<div align="center" class="style8"><%=s6%></div>		</td>
		<td height="29">
		<div align="center" class="style8"><%=s7%></div>		</td>
		<td>
		<div align="center" class="style8"><%=s8%></div>		</td>
		<td>
		<div align="center" class="style8"><%=s9%></div>		</td>
		<td>
		<div align="center" class="style8"><%=s10%></div>		</td>
		<td>
		<div align="center" class="style8"><%=s11%></div>		</td>
		
		<td>
		<div align="center" class="style8"><%=s18%></div>		</td>
		<td>
		<div align="center" class="style8"><a href="cs_view_file1.jsp?fname=<%=s12%>&pname=<%=s2%>"><%=decrys12%></a></div>		</td>
	</tr>
            <p align="center">
         <%
								j=j+1; }
			   }
			 
			 
%>
</table>
<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>  
		   		 		  
	
</table>