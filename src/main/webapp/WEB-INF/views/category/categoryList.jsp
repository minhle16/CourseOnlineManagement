<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Category</li>
			</ol>
		</div><!--/.row-->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Category List</div>
					<div class="panel-body">
						<div class="col-md-12">
                            <a href="${pageContext.request.contextPath}/admin/category/create">+Create New Category</a>
                            <br><br>
                            <table id="listTable">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Image</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
									<c:forEach var="category" items="${allCategory}">
										<tr>
											<td>${category.id}</td>
											<td>${category.name}</td>
											<td>${category.images}</td>
											<td>
												 <span>
													 <a href="${pageContext.request.contextPath}/admin/category/edit/${category.id}">Edit</a>
													 <a href="${pageContext.request.contextPath}/admin/category/delete/${category.id}">Delete</a> 
												 </span>
											</td>
										</tr>
									</c:forEach>
								</tbody>
                            </table>
						</div>
					</div>
				</div><!-- /.panel-->
		</div><!-- /.row -->
	</div><!--/.main-->
    </div>
