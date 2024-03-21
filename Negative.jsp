<%@ include file="connect.jsp" %>
            <%@ page import="java.io.*"%>
            <%@ page import="java.util.*" %>
            <%@ page import="java.util.Date" %>
            <%@ page import="com.oreilly.servlet.*"%>
            <%@ page import ="java.text.SimpleDateFormat" %>
            <%@ page import ="javax.crypto.Cipher" %>
            <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
            <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
            <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
            <style type="text/css">
<!--
.style2 {color: #FFFF00}
-->
            </style>
            

  <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr bgcolor="#993366">
					  <td  width="120" height="31" align="center" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style4"><strong>Friend ID</strong></div></td>
  						
					  <td  width="100" height="31" align="center" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style4"><strong>Friend Name</strong></div></td>
					  	  <td  width="100" height="31" align="center" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style4"><strong>Polled Opinion</strong></div></td>
						  	  <td  width="100" height="31" align="center" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style4"><strong>Rating</strong></div></td>
							  	  <td  width="100" height="31" align="center" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style4"><strong>Polled User</strong></div></td>
								  	  <td  width="100" height="31" align="center" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style4"><strong>Polled Date and Time</strong></div></td>
					</tr>

<%
		   			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="", pos="Negative",s22="" ;
	int i=0,poscnt=0,negcnt=0,strcnt=0;
	int count1=0,pid;
	String ftype="Negative";
	
	try
	{
			

				  String query="select * from user_opinion "; 
				   Statement st=connection.createStatement();
				   ResultSet rs2=st.executeQuery(query);
				while ( rs2.next() )
			   {
					            i=rs2.getInt(2);
								s1=rs2.getString(3);
								s2=rs2.getString(4).toLowerCase();
								s3=rs2.getString(5);
								s4=rs2.getString(6);
								s5=rs2.getString(7);
					
					

			   
			       String sql1="select * from filter where fcat='"+pos+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2).toLowerCase();  // Filter
			   			 	
							  if ((s2.contains(t2)))
									{ 
	
			              
									 %>
							<tr bgcolor="#FFFFFF">
						<td  width="120" height="40" align="center" valign="middle" bgcolor="#000000" style="color:#FFFF00;"><span class="style7 style5">&nbsp;&nbsp;
				        <%out.println(i);%>
					  </span></td>
					  <td  width="120" height="40" align="center" valign="middle" bgcolor="#000000" style="color:#FFFF00;"><span class="style7 style5">&nbsp;&nbsp;
				        <%out.println(s1);%>
					  </span></td>
					  <td  width="120" height="40" align="center" valign="middle" bgcolor="#000000" style="color:#FFFF00;"><span class="style7 style5">&nbsp;&nbsp;
				        <%out.println(s2);%>
					  </span></td>
					  <td  width="120" height="40" align="center" valign="middle" bgcolor="#000000" style="color:#FFFF00;"><span class="style7 style5">&nbsp;&nbsp;
				        <%out.println(s3);%>
					  </span></td>
					  <td  width="120" height="40" align="center" valign="middle" bgcolor="#000000" style="color:#FFFF00;"><span class="style7 style5">&nbsp;&nbsp;
				        <%out.println(s4);%>
					  </span></td>
					  <td  width="120" height="40" align="center" valign="middle" bgcolor="#000000" style="color:#FFFF00;"><span class="style7 style5">&nbsp;&nbsp;
				        <%out.println(s5);%>
					  </span></td>
		  </tr>
							  				
	    <%   					}

					      }
			      }
			        
			
				
			
				
   			
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table>
        