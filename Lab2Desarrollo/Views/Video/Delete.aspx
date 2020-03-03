<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Delete</title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
    <meta charset="UTF-8">
  <meta name="description" content="ASP.NET MVC 2 CRUD Video">
  <meta name="keywords" content="ASP.NET, MVC, Facpya">
  <meta name="author" content="ElCantiner0">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div>
    <h1> Eliminar video
        </h1>

        <form action="/Video/Delete" method="post">
        <fieldset>
        <legend>Inserte el ID del video a eliminar </legend>
            <label for = "idVideo">idVideo</label>
            <input type="text" name="idVideo"/>

            

            <input type="submit" value="Agregar" />
       
        </fieldset>   
        
        
        </form>

    </div>
</body>
</html>
