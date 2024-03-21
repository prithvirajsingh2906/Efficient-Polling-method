<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin</title>
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
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
}
.style4 {
	color: #FF0000;
	font-weight: bold;
	font-size: 14px;
}
.style9 {font-size: 18px; color: #FFFFFF; }
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
          <p align="center" class="style3">Add Filter !!! </p>
          <p class="style3">&nbsp;</p>
          <form id="form1" name="form1" method="post" action="A_Add_Filter1.jsp">
            <div align="center" class="style4">
              <p>&nbsp;</p>
              <table width="483" height="135" border="2">
                <tr>
                  <td width="159">Select Filter Category </td>
                  <td width="256"><select name="fcat">
				  <option>--- Select---</option>
                    <option>Positive</option>
                    <option>Negative</option>
                    
                  </select>                  </td>
                </tr>
                <tr>
                  <td>Enter Filter Name</td>
                  <td><input type="text" name="fname" /></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><input type="submit" name="Submit" value="Add Filter" /></td>
                </tr>
              </table>
              <p>&nbsp;</p>
            </div>
          </form>
          <p class="style3">&nbsp;</p>
          <p align="center"><span class="style3"> View All Filters</span></p>
		  
		  
		  <%@ include file="connect.jsp" %>
         <table width="649" height="120" border="1"  cellpadding="0" cellspacing="0"  >
        <tr bgcolor="#99CCCC">
          <td  width="28" height="62" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style9">
            <p>Filter <br />             Category </p>
            </div></td>
          <td  width="79" height="62" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style9">Filter Name </div></td>
        </tr>
         
		 
		   
            <%
					 
				
					  String s0="",s1="",s2="",s3="",s4="",s5="",s6="";
					  int i=1,j=0,count=0,rank=0,k=0;
					
						try 
						{
							
						   	String query="select * from filter "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								s0=rs.getString(1);
								s1=rs.getString(2);
								
								
								
								
					%>
           <tr>
              <td height="45"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style4" >
                    <div align="center">
                    <%out.println(s0);%>
                </div>
              </div></td>
			  
			  <td height="45"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style4" >
                    <div align="center">
                    <%out.println(s1);%> 
                </div>
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
					
					
					
					%>
        </table>


		  
		  
		  
         <p>&nbsp;</p>
         <p><a href="A_Main.jsp">Back</a></p>
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

  