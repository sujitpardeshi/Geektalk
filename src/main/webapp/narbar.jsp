<!--navbar-->

<%@page import="com.entities.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.PostDao"%>
<%@page import="com.helper.ConnectionProvider"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <img src="img/newwww.png" width="50" height="50" alt="alt"/>
    <a class="navbar-brand" href="index.jsp">&nbsp; EsiTalk </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp"><span class="fa fa-home"></span> Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="aboutus.jsp">About us</a>
            </li>
            <li class="active nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Categories
                </a>
                <div class="active dropdown-menu" aria-labelledby="navbarDropdown">
                
                <%
                PostDao pd = new PostDao(ConnectionProvider.getConnection());
                List<Category> cl = pd.getAllCategories();
                for(Category c : cl)
                {
                %>
                                    <a class="dropdown-item" href=""><%= c.getName() %>  </a>
                
                <%
                }
                %>
                

                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Others</a>
                </div>
            </li>
            <li class="nav-item active">
                <a class="nav-link " href="#">Contact</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link " href="register.jsp">SignUp</a>
            </li><!-- comment -->

            <li class="nav-item active">
                <a class="nav-link " href="login.jsp">SignIn</a>
            </li>
        </ul>

    </div>
</nav>
