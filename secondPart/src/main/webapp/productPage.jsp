
<%@ page import="Model.Catalog, java.sql.* ,java.util.*,Model.Product"%>
<html>
<head>
    <%
        Catalog catalog = (Catalog)request.getServletContext().getAttribute("catalog");
        Product p = catalog.findProduct((String)request.getParameter("id"));
    %>
    <title> <%=p.getName()%></title>
</head>
<body>
      <h1> <%=p.getImageUrl()%> </h1>
      <img src = <%= p.getImageUrl() %> alt = "not found" >
      <form action="product" method="Post">
            <%=p.getPrice()%> <input type="submit" value="Add to Cart">
            <input name="product" type="hidden" value="HC"/>
       </form>
</body>
</html>