<%-- 
    Document   : login
    Created on : Jul 6, 2022, 11:40:31 AM
    Author     : Admin
--%>

<%@page import="com.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Login Page </title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css"/>

        <style>
            .bgc{
                background: "#F9BEB2";
            }
        </style>





    </head>
    <body>

        <%@include file="narbar.jsp" %>


        <main class = "d-flex align-items-center bg-light banner-background" style=" height : 80vh">


            <div class = "container">

                <div class = "col-md-4 offset-md-4">


                    <div class = "card">

                        <div class ="card-header text-center bg-dark text-white">
                            <h4><span class = "fa fa-user-circle-o fa-spin"></span> <br>Login here</h4>

                        </div>



                        <%
                            Message m = (Message) session.getAttribute("msg");
                            if (m != null) {
                        %>
                        <div class="alert <%= m.getCssClass()%>" role="alert">
                            <%= m.getContent()%>
                        </div> 


                        <%
                                session.removeAttribute("msg");
                            }
                        %>



                        <div class = "card-body text-black">




                            <form action="LoginServlet" method="post">



                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" name="name" required class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>


                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" name="password" required class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>



                                <div class="container text-center">
                                    <button type="submit" class="btn bg-dark " style="color: white">Submit</button>



                                </div>
                            </form>


                        </div>





                    </div>

                </div>





        </main>




        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


    </body>
</html>
