<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>U_FriendPolling</title>
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
.style7 {color: #FF00FF}
.style10 {color: #FFFF00; font-weight: bold; }
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
          <h2><span class="style7">Friend Opinion Polling...</span></h2>
<p>
  <%              String user=(String )application.getAttribute("uname");
						
						String id=request.getParameter("id");
						String uname=request.getParameter("uname");
						
					%>
		  </p> <form  method="post" action="U_FriendPolling1.jsp">
					<table width="422" border="0" align="center">
                      <tr>
                        <td height="40" bgcolor="#FF0000"><span class="style10">Friend ID </span></td>
                        <td><input type="text" name="fid" value="<%=id%>" readonly=""/></td>
                      </tr>
                      <tr>
                        <td height="38" bgcolor="#FF0000"><span class="style10">Friend Name </span></td>
                        <td><input type="text" name="fname" value="<%=uname%>" readonly=""/></td>
                      </tr>
                      <tr>
                        <td height="47" bgcolor="#FF0000"><span class="style10">Feed Your Opinion </span></td>
                        <td><textarea name="opinion" cols="20" rows="8"></textarea></td>
                      </tr>
                      <tr>
                        <td height="34" bgcolor="#FF0000"><span class="style10">Rating</span></td>
                        <td><select name="rate">
                          <option>--- Select Rating ---</option>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>                        </td>
                      </tr>
                      <tr>
                        <td height="66" colspan="2" bgcolor="#FF0000"><div align="center">
                          <input type="submit" name="Submit" value="Submit Opinion" />
                          <input type="reset" name="Submit2" value="Reset" />
                        </div></td>
                      </tr>
                    </table>
					 </form>
					<p>&nbsp;</p>
					<p align="center"><a href="U_Main.jsp"><strong>Back</strong></a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
         
          
         
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
