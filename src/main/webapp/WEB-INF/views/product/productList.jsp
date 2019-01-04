<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Product</li>
			</ol>
		</div><!--/.row-->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Product List</div>
					<div class="panel-body">
						<div class="col-md-12">
                            <a href="${pageContext.request.contextPath}/admin/product/create">+Create New Product</a>
                            <br><br>
                            <table id="listTable">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Price_New</th>
                                        <th>Date</th>
                                        <th>Teacher</th>
                                 		<th>Image</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
									<c:forEach var="product" items="${allProduct}">
										<tr>
											<td>${product.id}</td>
											<td>${product.name}</td>
											<td>${product.price_new}</td>
											<td>${product.date}</td>
											<td>${product.teacher}</td>
											<td>${product.images}</td>
											<td>
												 <span>
													 <a href="${pageContext.request.contextPath}/admin/product/edit/${product.id}">Edit</a>
													 <a href="${pageContext.request.contextPath}/admin/product/delete/${product.id}">Delete</a> 
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
