<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>A_View_Total_Pollings</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style5 {color: #FF00FF; font-weight: bold; }
.style7 {color: #FFFF00}
.style8 {color: #FF0000}
.style10 {color: #00FF00}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1">What Do Your Friends Think Efficient Polling Methods for Networks Using Friendship Paradox</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li><a href="U_Login.jsp"><span>User</span></a></li>
          <li></li>
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
           <h2><span class="style5">View_Total_Pollings...</span></h2>
           <table width="913" align="center"  cellpadding="0" cellspacing="0">
            <tr>
              <td width="51" height="37" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style7"><strong>ID</strong></div></td>
              <td width="157" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style7"><strong>User Image</strong></div></td>
              <td width="121" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style7"><strong>User Name</strong></div></td>
              <td width="142" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style7"><strong>Email</strong></div></td>
              <td width="135" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style7"><strong>Mobile</strong></div></td>
              <td width="121" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style7"><strong>Total Pollings</strong></div></td>
		     
              
            </tr>
            <%@ include file="connect.jsp" %>
            <%
			
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from user"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(13);
								
					%>
            <tr bgcolor="#CCCCCC">
              <td height="122" align="center"  valign="middle"><div align="center" class="style8 style71 style70 style37 style54 style55 style86 style57"><strong>
                <%out.println(i);%>
              </strong></div></td>
              <td  rowspan="1" align="center" valign="middle" ><div class="style8 style71 style70 style37 style54 style55 style86 style57" style="margin:10px 13px 10px 13px;" ><strong>
                <input  name="image" type="image" src="images.jsp?value=<%="user"%>&amp;id=<%=i%>" style="width:120px; height:100px;" />
              </strong></div></td>
              <td  align="center"  valign="middle"><div align="center" class="style8 style71 style70 style20 style37 style54 style55 style86 style57"><strong>
                <%out.println(s1);%>
              </strong></div></td>
              <td  align="center"  valign="middle"><div align="center" class="style8 style71 style70 style20 style37 style54 style55 style86 style57"><strong>
                <%out.println(s2);%>
              </strong></div></td>
              <td align="center"  valign="middle"><div align="center" class="style8 style71 style70 style20 style37 style54 style55 style86 style57"><strong>
                <%out.println(s3);%>
              </strong></div></td>
              <td  align="center"  valign="middle" bgcolor="#000000"><div align="center" class="style71 style70 style20 style37 style54 style55 style86 style57 style10"><strong>
                <%out.println(s4);%>
              </strong></div></td>
			 
         </tr>
            <%
						}
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
      </table>
	  <p align="right"><a href="A_Main.jsp">Back</a></p>

    </div>
      <div class="clr"></div>
  </div>
</div>
<div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"><a href='http://all-free-download.com/free-website-templates/'></a></div>
    </div>
  </div>
</div>
</body>
</html>
