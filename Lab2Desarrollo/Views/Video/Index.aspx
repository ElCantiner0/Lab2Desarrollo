﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    
    <title>Videos</title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
    <meta charset="UTF-8">
  <meta name="description" content="ASP.NET MVC 2 CRUD Video">
  <meta name="keywords" content="ASP.NET, MVC, Facpya">
  <meta name="author" content="ElCantiner0">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div>
        <h1>Lista de videos
        </h1>
        Hay  <%: ((System.Data.DataTable)ViewData["video"]).Rows.Count %>   videos
    <br />
    <%
        foreach (System.Data.DataRow ren in ((System.Data.DataTable)ViewData["video"]).Rows)
        { %>

        <p>    <%: ren ["titulo"].ToString() %>     </p>
        <iframe width="560" height="315" src="<%: ren["url"].ToString() %>" 
        frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; 
        picture-in-picture" allowfullscreen></iframe>

     <%   }
     %>

    </div>
</body>
</html>
