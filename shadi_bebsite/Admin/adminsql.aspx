<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminsql.aspx.cs" Inherits="shadi_bebsite.adminsql" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <%
        string x, y;

        x = Request.Params["t1"];
        y = Request.Params["t2"];


        String path;



        path = "Data Source=LAPTOP-P2EGJFP1\\SQLEXPRESS;Initial Catalog=MatrimonialDB;Trusted_Connection=True;";

        SqlConnection con = new SqlConnection(path);

        con.Open();

        SqlCommand cmd = new SqlCommand("select * from ad_admin where user_name ='" + x + "' and ad_password ='" + y + "'", con);


        SqlDataReader br = cmd.ExecuteReader();

        if(br.Read())
            

        {
            Response.Redirect("../Admin/AdminPanal.aspx");
        }
        else
        {
            Response.Redirect("Admin.aspx");
        }

        %>
</body>
</html>
