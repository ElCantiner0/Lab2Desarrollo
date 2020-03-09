<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Edit</title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
    <meta charset="UTF-8">
  <meta name="description" content="ASP.NET MVC 2 CRUD Video">
  <meta name="keywords" content="ASP.NET, MVC, Facpya">
  <meta name="author" content="ElCantiner0">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div>
    <h1> Editar un video
        </h1>

        <form action="/Video/Edit" method="post">
        <fieldset>
        <legend>Indique el ID del video a modificar </legend>
            <label for = "idVideo">idVideo</label>
            <input type="text" name="idVideo"/>

            <label for="titulo">Titulo</label>
            <input type="text" name="titulo"/>

            <label for="repro">Reproducciones</label>
            <input type="text" name="repro"/>

            <label for="url">Url</label>
            <input type="text" name="url"/>

            <input type="submit" value="Actualizar" />
       
        </fieldset>   
        
        
        </form>
    </div>
</body>
</html>
