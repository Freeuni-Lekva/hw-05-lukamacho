<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Controller.Session, java.util.*,Model.Product,Model.Catalog,Model.Connector" %>
<html>
<head>
    <title>Shopping Cart</title>
</head>
<body>
        <h1>Shoping Cart </h1>
        <ul> <%
            Session cur= (Session)request.getSession().getAttribute("session");
            Map<Product,Integer> all = cur.getTable();
            out.println(all.size());
            for(Product product : all.keySet()){
                 int num = all.get(product);
                 String productid = product.getid();
                 %>
                <li>
                <input type="text" name="<%=productid%>" value=<%=num%> >
                <%=product.getName()%>, <%="re"%>
                </li>
         <%   }
        %>
        </ul>
        <form action="/product" method="POST">
              <input type="submit" value="UpdateCart">
        </form>
        <a href="storeHomepage.jsp"> Continue Shopping</a>
</body>
</html>