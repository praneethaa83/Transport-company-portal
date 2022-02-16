<%@page import="com.logincode.ConnectionProvider" %>
<%@page import="java.sql.*" %>
	



  <a href="index.jsp">Back</a>
  <hr class="new1">
<style>
table{
  width:100%;
  table-layout: fixed;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}

</style>
  <!--for demo wrap-->
  
<style>
html {
  font-family:arial;
  font-size: 25px;
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color:black;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background: #625D5D;
  color:white;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #D1D0CE;
}

</style>
<head>
  <hr class="new1">
</head>
<body>
  <table>
    <thead>
      <tr>
        <td colspan="1">FIRST NAME</td>
        <td rowspan="2">LAST NAME</td>
        <td rowspan="5">E-MAIL</td>
        <td rowspan="2">PHONE NUMBER</td>
        <td rowspan="2">PICK UP LOCATION </td>
        <td rowspan="2"> DROP LOCATION </td>
        <td rowspan="2"> ADDRESS </td>
        <td rowspan="2"> PICKUP DATE </td>
        <td rowspan="2"> DROP DATE </td>
        <td rowspan="2"> WEIGHT </td>
        
        
      </tr>
      
    </thead>
<%
try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookings", "root", "83Lm30@#$");
	Statement st=conn.createStatement();
	ResultSet rs=st.executeQuery("select *from book");
	 while (rs.next()) {
%>


    <tbody>
    
      <tr>
        <td><%=rs.getString(1) %></td>
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
        <td><%=rs.getString(4) %></td>
        <td><%=rs.getString(5) %></td>
        <td><%=rs.getString(6) %></td>
        <td><%=rs.getString(7) %></td>
        <td><%=rs.getString(8) %></td>
        <td><%=rs.getString(9) %></td>
        <td><%=rs.getString(10) %></td>
        
       
        
      </tr>
      <%
    
      }
  
	  
  }
  catch(Exception e)
	  
  {}
%>
      </tbody>
      </table>
    
</body>



