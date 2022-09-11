<%-- 
    Document   : index
    Created on : Jul 5, 2022, 11:52:49 PM
    Author     : Admin
--%>


<!--

////////     ////     ///   ///  /////////      ///      ////////   ///    ///
///         /// //    ///   ///  ///   ///     /// //    ///   ///  ///    ///
////////   ///   //   ///   ///  ///////      ///   //   ////////   ////////// 
     ///  //////////  ///   ///  ///  ///    //////////  ///   ///  ///    ///
//////// ///       //  ///////   ///   //// ///       // ////////   ///    ///   



///  ///     /////     ///           ////      ////////   ///  ///     ////      ////////
/// ///    ///   ///   ///          /// //     ///   ///  /// ///     /// //     ///   ///
/////     ///     ///  ///         ///   //    ////////   /////      ///   //    ///////
/// ///   ///    ///   ///        //////////   ///        /// ///   //////////   /// ///
///  ///    /////      ///////// ///       //  ///        ///  /// ///       //  ///  ////

-->





<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.helper.*" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> EsiTalK</title>

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


        <!--navbar-->

        <%@include file="narbar.jsp" %>

        <!--navbare end-->


        <div class="container-fluid p-0 m-0 ">

            <div class="jumbotron bgc">
                <div class="container ">
                    <h3 class="display-3">Welcome to EsiTalk</h3>
                    <p>A programming language is any set of rules that converts strings, or graphical program elements in the case of visual programming languages, to various kinds of machine code output.[citation needed] Programming languages are one kind of computer language, and are used in computer programming to implement algorithms.
                        Most programming languages consist of instructions for computers. There are programmable machines that use a set of specific instructions, rather than general programming languages. Since the early 1800s, programs have been used to direct the behavior of machines such as Jacquard looms, music boxes and player pianos.[1]
                        Thousands of different programming languages have been created, and more are being created every year. Many programming languages are written in an imperative form (i.e., as a sequence of operations to perform) while other languages use the declarative form (i.e. the desired result is specified, not how to achieve it).
                    </p> 

                    <a href="register.jsp" class="btn btn-outline-dark">
                        <span class="fa fa-user-plus"></span>
                        start ! its free
                    </a>
                    <a href="login.jsp" class="btn btn-outline-dark">
                        <span class="fa fa-user-circle-o fa-spin"></span>
                        login
                    </a>

                </div>
            </div>

            <br><!-- comment -->



        </div>







        <!--cards  -->

        <div class="container">

            <div class="row">

                <div class="col-md-4">

                    <div class="card" style="width: 18rem;">

                        <div class="card-body">
                            <h5 class="card-title">Java Programming Language</h5>
                            <p class="card-text">All about java programming from core java
                                ,object oriented programming in java</p>
                            <a href="#" class="btn btn-primary bg-dark text-white">read
                                more</a>
                        </div>
                    </div>

                </div>

                <div class="col-md-4">

                    <div class="card" style="width: 18rem;">

                        <div class="card-body">
                            <h5 class="card-title">Python Programming Language</h5>
                            <p class="card-text">All about Python programming from core python
                                ,object oriented programming in java</p>
                            <a href="#" class="btn btn-primary bg-dark text-white">read
                                more</a>
                        </div>
                    </div>

                </div>

                <div class="col-md-4">

                    <div class="card" style="width: 18rem;">

                        <div class="card-body">
                            <h5 class="card-title">Java Programming Language</h5>
                            <p class="card-text">All about java programming from core java
                                ,object oriented programming in java</p>
                            <a href="#" class="btn btn-primary bg-dark text-white">read
                                more</a>
                        </div>
                    </div>

                </div>



            </div>


            <br>



            <div class="row mb-2">

                <div class="col-md-4">

                    <div class="card" style="width: 18rem;">

                        <div class="card-body">
                            <h5 class="card-title">Java Programming Language</h5>
                            <p class="card-text">All about java programming from core java
                                ,object oriented programming in java</p>
                            <a href="#" class="btn btn-primary bg-dark text-white">read
                                more</a>
                        </div>
                    </div>

                </div>

                <div class="col-md-4">

                    <div class="card" style="width: 18rem;">

                        <div class="card-body">
                            <h5 class="card-title">Java Programming Language</h5>
                            <p class="card-text">All about java programming from core java
                                ,object oriented programming in java</p>
                            <a href="#" class="btn btn-primary bg-dark text-white">read
                                more</a>
                        </div>
                    </div>

                </div>

                <div class="col-md-4">

                    <div class="card" style="width: 18rem;">

                        <div class="card-body">
                            <h5 class="card-title">Java Programming Language</h5>
                            <p class="card-text">All about java programming from core java
                                ,object oriented programming in java</p>
                            <a href="#" class="btn btn-primary bg-dark text-white">read
                                more</a>
                        </div>
                    </div>

                </div>



            </div>
        </div>







        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>
</html>
