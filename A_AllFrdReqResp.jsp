<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin All User Friends Request And Responces</title>
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
.style2 {
	font-weight: bold;
	font-style: italic;
	color: #000000;
}
.style3 {
	color: #FF00FF;
	font-weight: bold;
	font-style: italic;
}
.style5 {
	color: #FFFFFF;
	font-weight: bold;
}
.style8 {color: #FFFF00; font-weight: bold; }
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
      <div class="mainbar">
        <div class="article">
           <h2><span class="style3">All Request and Response Details...</span></h2>
             
            <table width="600" height="88" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr bgcolor="#99FF99">
					  <td  width="142" height="38" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5">Username</div></td>
					  <td  width="141" height="38" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5">Request Sent To </div></td>
  					
					  <td   width="115" height="38" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5">Status</div></td>
					  <td  width="188" height="38" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5">Date &amp; Time </div></td>
					</tr>
					<%@ include file="connect.jsp" %>
					<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0,count=0;
try 
{
	String query="select * from req_res"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		
			count++;
		
					%>
							<tr bgcolor="#FFFFFF">
								<td  width="142" height="0" valign="baseline" bgcolor="#FF0000" "><div align="center" class="style8">&nbsp;&nbsp;<br />
				                  <%out.println(s1);%>
						        </div></td>	
								<td  width="141" height="0" valign="baseline" bgcolor="#FF0000"><div align="center" class="style8">&nbsp;<br />
							    &nbsp;
							    <%out.println(s2);%>
						        </div></td>
								<td  width="115" height="0" valign="baseline" bgcolor="#FF0000"><div align="center" class="style8">&nbsp;&nbsp; <br />    
						            <%out.println(s3);%>
								  </div></td><td  width="188" height="0" valign="baseline" bgcolor="#FF0000"><div align="center" class="style8">&nbsp;&nbsp;<br />
			                        <%out.println(s4);%>
							          </div></td>
			  </tr>
					<%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					if(count==0){out.print("No Requests And Responses Found");}
					
					%>
		</table>
<p align="right"><a href="A_Main.jsp" class="style2">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <ul class="sb_menu style2">
            <li><a href="A_Main.jsp">Admin Home</a></li>
            <li><a href="A_Login.jsp">LogOut</a></li>
          </ul>
        </div>
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
