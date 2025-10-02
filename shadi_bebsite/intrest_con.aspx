<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="intrest_con.aspx.cs" Inherits="shadi_bebsite.intrest_con" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <%
        string path;

        path = "Data Source=LAPTOP-P2EGJFP1\\SQLEXPRESS;Initial Catlog=MatrimonialDB;Trusted_Connection=true;";

        SqlConnection con = new SqlConnection;

        con.Open();




    %>
</body>
</html>
