<%@ Import Namespace="System.Data.SqlClient" %>


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profilesql_con.aspx.cs" Inherits="shadi_bebsite.profilesql_con" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <%

        string path;

        path = "Data Source=LAPTOP-P2EGJFP1\\SQLEXPRESS;Initial Catalog=MatrimonialDB;Trusted_Connection=True;";


        SqlConnection con = new SqlConnection(path);

        con.Open();

        SqlCommand cmd = new SqlCommand("insert into UserProfiles values('"+Request.Params["fullName"]+"','"+Request.Params["email"]+"','"+Request.Params["password"]+"','"+Request.Params["Dob"]+"','"+Request.Params["age"]+"','"+Request.Params["height"]+"','"+Request.Params["weight"]+"','"+Request.Params["religin"]+"','"+Request.Params["location"]+"','"+Request.Params["interests"]+"')", con);

        int x = cmd.ExecuteNonQuery();

        Response.Write("login success full!....");
        %>
</body>
</html>
