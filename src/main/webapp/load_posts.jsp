<%-- <%@page import="com.dao.LikeDao"%> --%>
<%@page import="com.helper.Helper"%>
<%@page import="com.entities.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.ConnectionProvider"%>
<%@page import="com.dao.PostDao"%>

<div class="row">

	<%
	Thread.sleep(500);
	PostDao d = new PostDao(ConnectionProvider.getConnection());

	int cid = Integer.parseInt(request.getParameter("cid"));
	List<Post> posts = null;
	if (cid == 0) {
		posts = d.getAllPosts();
	} else {
		posts = d.getPostByCatId(cid);
	}

	if (posts.size() == 0) {
		out.println("<h3 class='display-3 text-center'>No Posts in this category..</h3>");
		return;
	}

	for (Post p : posts) {
	%>
	<div class="col-md-6 mt-3">
		<div class="card">
			<div class="card-body">

				<img class="card-img-top" src="blog_pics/<%=p.getpPic()%>"
					alt="Card image cap"> <b><%=p.getpTitle()%></b>
				<p>
					<%=Helper.get10Words(p.getpContent())%>

				</p>

			</div>
			<div class="card-footer primary-background text-center">


				<a href="#!" class="btn btn-outline-dark btn-sm"> <i
					class="fa fa-thumbs-o-up"></i> <span class="like-counter"></span>
				</a> <a href="show_blog_page.jsp?post_id=<%=p.getPid()%>"
					class="btn btn-outline-dark btn-sm">Read More...</a> <a href="#!"
					class="btn btn-outline-dark btn-sm"> <i
					class="fa fa-commenting-o"></i> <span>20</span>
				</a>
			</div>


		</div>

	</div>


	<%
	}
	%>
</div>