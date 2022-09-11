<%-- 
    Document   : profile
    Created on : Jul 6, 2022, 6:29:38 PM
    Author     : Admin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.entities.Category"%>
<%@page import="com.dao.PostDao"%>
<%@page import="com.helper.ConnectionProvider"%>
<%@page import="com.entities.Message"%>
<%@page import="com.entities.User"%>
<%@page errorPage="error.jsp"%>
<%
User user = (User) session.getAttribute("currentUser");

if (user == null) {
	response.sendRedirect("login.jsp");
}
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profile - <%=user.getName()%></title>



<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css" />

<style>
.bgc {
	background: "#F9BEB2";
}

body {
	background: url("img/back.jpg");
	background-size: cover;
	background-attachment: fixed;
}
</style>



</head>
<body>

	<!--navbar-->



	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<img src="img/newwww.png" width="50" height="50" alt="alt" /> <a
			class="navbar-brand" href="index.jsp">&nbsp; EsiTalk </a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp"><span class="fa fa-home"></span> Home <span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item active"><a class="nav-link" href="aboutus.jsp">About
						us</a></li>
				<li class="active nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Categories </a>
					<div class="active dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Python </a> <a
							class="dropdown-item" href="#">Java</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Others</a>
					</div></li>
				<li class="nav-item active"><a class="nav-link " href="#">Contact</a>
				</li>

				<li class="nav-item active"><a class="nav-link " href="#"
					data-toggle="modal" data-target="#add-post-modal">New Post</a></li>


			</ul>

			<ul class="navbar-nav mr-right">

				<li class="nav-item active"><a class="nav-link " href="#"
					data-toggle="modal" data-target="#exampleModal"><span
						class="fa fa-user-circle-o fa-spin"></span> <%=user.getName()%></a></li>
				<!-- comment -->


				<li class="nav-item active"><a class="nav-link "
					href="LogoutServlet"><span class="fa fa-sign-out"></span>
						logout</a></li>
				<!-- comment -->


			</ul>

		</div>
	</nav>




	<!--navbar end-->



	<%
	Message m = (Message) session.getAttribute("msg");
	if (m != null) {
	%>
	<div class="alert <%=m.getCssClass()%>" role="alert">
		<%=m.getContent()%>
	</div>


	<%
	session.removeAttribute("msg");
	}
	%>



	<!--main body-->
	<main>
		<div class="container">
			<div class="row mt-4">
				<div class="col-md-4">
					<!--categories-->

					<div class="list-group">
						<a href="#" onclick="getPosts(0,this)"
							class="c-link  list-group-item bg-dark  list-group-item-action active">
							All Posts </a>
						<%
						PostDao d = new PostDao(ConnectionProvider.getConnection());
						ArrayList<Category> l = d.getAllCategories();
						for (Category cc : l) {
						%>

						<a href="#" onclick="getPosts(<%=cc.getCid()%>,this)"
							class="c-link  list-group-item list-group-item-action"><%=cc.getName()%></a>


						<%
						}
						%>
					</div>
				</div>

				<div class="col-md-8">
					<!--posts-->

					<div id="loader" class="container text-center">
						<i class="fa fa-refresh fa-3x fa-spin"> </i>
						<h3 class="mt-2">Loading...</h3>
					</div>
					<div class="container-fluid" id="post-container"></div>

				</div>
			</div>

		</div>
	</main>
	<!--end of main body-->




	<!--model-->

	<!-- Button trigger modal -->

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header bg-dark text-white">
					<h5 class="modal-title" id="exampleModalLabel">EsiTalK</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body text-center">

					<div class="container ">
						<img src="pics/<%=user.getProfile()%>" alt="alt" height="100"
							width="100" style="border-radius: 50%;" />
						<h5 class="modal-title" id="exampleModalLabel">
							<%=user.getName()%>
						</h5>

						<div id="profile-details">

							<table class="table">

								<tbody>
									<tr>
										<th scope="row">Name</th>
										<td><%=user.getName()%></td>

									</tr>
									<tr>
										<th scope="row">Email</th>
										<td><%=user.getEmail()%></td>

									</tr>
									<tr>
										<th scope="row">Gender</th>
										<td><%=user.getGender()%></td>

									</tr>

									<tr>
										<th scope="row">About</th>
										<td><%=user.getAbout()%></td>

									</tr>



								</tbody>
							</table>

						</div>
						<div id="profile-edit" style="display: none;">
							<h2>edit</h2>
							<form action="EditServlet" method="post"
								enctype="multipart/form-data">
								<table class="table">
									<tr>
										<td>ID :</td>
										<td><%=user.getId()%></td>
									</tr>
									<tr>
										<td>Email :</td>
										<td><input type="email" class="form-control"
											name="user_email" value="<%=user.getEmail()%>"></td>
									</tr>
									<tr>
										<td>Name :</td>
										<td><input type="text" class="form-control"
											name="user_name" value="<%=user.getName()%>"></td>
									</tr>
									<tr>
										<td>Password :</td>
										<td><input type="password" class="form-control"
											name="user_password" value="<%=user.getPassword()%>">
										</td>
									</tr>
									<tr>
										<td>Gender :</td>
										<td><%=user.getGender().toUpperCase()%></td>
									</tr>
									<tr>
										<td>About :</td>
										<td><textarea rows="3" class="form-control"
												name="user_about"><%=user.getAbout()%>
                                                </textarea></td>
									</tr>
									<tr>
										<td>New Profile:</td>
										<td><input type="file" name="image" class="form-control">
										</td>
									</tr>

								</table>

								<div class="container">
									<button type="submit" class="btn btn-outline-primary">Save</button>
								</div>

							</form>

						</div>



					</div>


				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" id="edit-profile-btn" class="btn btn-primary">EDIT</button>
				</div>
			</div>
		</div>
	</div>

	<!--end modal-->



	<!--add post modal-->

	<!-- Button trigger modal -->

	<!--<rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr>-->









	<!-- add post modal -->


	<!-- Button trigger modal -->


	<!-- Modal -->
	<div class="modal fade" id="add-post-modal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Post Details...</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">




					<form action="AddPostServlet" method="post" id="add-post-form"
						enctype="multipart/form-data">


						<div class="form-group">

							<select class="form-control" name="cid">

								<option selected disabled>...select category...</option>


								<%
								PostDao post = new PostDao(ConnectionProvider.getConnection());
								ArrayList<Category> list = post.getAllCategories();

								for (Category c : list) {
								%>

								<option value="<%=c.getCid()%>"><%=c.getName()%></option>


								<%
								}
								%>
							</select>

						</div>

						<br>





						<div class="form-group">
							<input type="text" name="pTitle" placeholder="enter post title"
								class="form-control">

						</div>

						<div class="from-group">
							<textarea class="form-control" name="pContent"
								placeholder="enter content.." style="height: 200px;"></textarea>

						</div>
						<br>
						<div class="from-group">
							<textarea class="form-control" name="pCode"
								placeholder="enter program (if any).." style="height: 200px;"></textarea>

						</div>

						<div class="form-group">
							<label>select your pic :</label> <br> <input type="file"
								name="pic">

						</div>


						<div class="container text-center">

							<button type="submit" class="btn btn-outline-primary">
								post</button>

						</div>

					</form>


				</div>

			</div>
		</div>
	</div>





	<!-- end of add post model -->


	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>





	<script>
            $(document).ready(function () {
                let editStatus = false;
                $('#edit-profile-btn').click(function ()
                {
                    if (editStatus == false)
                    {
                        $("#profile-details").hide()
                        $("#profile-edit").show();
                        editStatus = true;
                        $(this).text("Back")
                    } else
                    {
                        $("#profile-details").show()
                        $("#profile-edit").hide();
                        editStatus = false;
                        $(this).text("Edit")
                    }
                })
            });
        </script>





	<!--now add post js-->
	<script>
            $(document).ready(function (e) {
                //
                $("#add-post-form").on("submit", function (event) {
                    //this code gets called when form is submitted....
                    event.preventDefault();
                    console.log("you have clicked on submit..")
                    let form = new FormData(this);
                    //now requesting to server
                    $.ajax({
                        url: "AddPostServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            //success ..
                            console.log(data);
                            if (data.trim() == 'done')
                            {
                                swal("Good job!", "saved successfully", "success");
                            } else
                            {
                                swal("Error!!", "Something went wrong try again...", "error");
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            //error..
                            swal("Error!!", "Something went wrong try again...", "error");
                        },
                        processData: false,
                        contentType: false
                    })
                })
            })
        </script>




	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<!-- comment -->



	<!--loading post using ajax-->
	<script>
            function getPosts(catId,temp) {
                $("#loader").show();
                $("#post-container").hide()
                $(".c-link").removeClass('active')
                $(".c-link").removeClass('bg-dark')

                $.ajax({
                    url: "load_posts.jsp",
                    data: {cid: catId},
                    success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        $("#loader").hide();
                        $("#post-container").show();
                        $('#post-container').html(data)
                        $(temp).addClass('active')
                        $(temp).addClass('bg-dark')
                    }
                })
            }
            $(document).ready(function (e) {
                let allPostRef = $('.c-link')[0]
                getPosts(0,allPostRef)
            })
        </script>

</body>
</html>
