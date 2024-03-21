<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Friend Requests</title>
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
.style3 {color: #FF00FF}
.style4 {color: #FFFFFF}
.style5 {color: #FF0000}
.style6 {font-weight: bold}
.style7 {font-weight: bold}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1">What Do Your Friends Think Efficient Polling Methods for Networks Using Friendship Paradox.</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="U_Login.jsp"><span>User</span></a></li>
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
         <h2><span class="style3">View All Friend Requests </span></h2>
             
          <table width="500" border="1.5" align="center"  cellpadding="0" cellspacing="0" bgcolor="#FFFFFF"  >
        <%@ include file="connect.jsp" %>
        <%
						
					String user=(String)application.getAttribute("uname");
						
						String s1,s2,s3,s4,s5,s6;
						int i=0,count=0;
						try 
						{
							String query="select * from req_res where (requestto='"+user+"')"; 	   					
							Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next())
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
									
									String query1="select * from user where username='"+s1+"' "; 
									Statement st1=connection.createStatement();
									ResultSet rs1=st1.executeQuery(query1);
									while ( rs1.next() )
									{
										int j=rs1.getInt(1);
									
									count++;
								
					%>
        <tr>
          <td width="203" rowspan="3"><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
              <input  name="image" type="image" src="images.jsp?id=<%=j%>&value=<%="user"%>&name=<%=s1%>" style="width:150px; height:150px;" />
          </a></div></td>
        </tr>
        <tr>
          <td  width="176" height="125" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style4 style6 style7 style14" style="margin-left:20px;"><strong> Name</strong></div></td>
          <td  width="160" height="125" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="left" class="style5 style10" style="margin-left:20px;"><strong>
              <%out.println(s1);%>
          </strong></div></td>
        </tr>
        
        <tr>
         <td height="38" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style4 style6 style7 style14" style="margin-left:20px;"><strong>Status</strong></div></td>
			  <%
			  if(s3.equalsIgnoreCase("waiting"))
			  {%>
			  	 <td height="38" align="left" valign="middle" bgcolor="#FFFF00"><div align="left" class="style5 style11" style="margin-left:20px;"><strong>
                      <a href="U_UpdateReq.jsp?id=<%=i%>">waiting</a>
                     </strong></div></td>
					  <%
					  }else
					  {
					  %><td  width="182" height="37" align="left" valign="middle" bgcolor="#FFFF00"><div align="left" class="style5 style11" style="margin-left:20px;"><strong>
				      <%out.println(s3);}%>
					  </strong></div></td>
        </tr>
        
        <%				}     }		
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					if(count==0){out.print("No Friend Request Found");}
					
					%>
      </table>
            
            <p align="right">&nbsp;</p>
			<p align="right"><a href="U_Main.jsp" class="style2">Back</a></p>
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
            <li><a href="U_Main.jsp">User Home</a></li>
            <li><a href="U_Login.jsp">LogOut</a></li>
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
