<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="course.mon.web.vo.ProductVO" %>

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
                            <p>Create New Product</p>
                            <br>
                            <form:form modelAttribute="productVo" action="${pageContext.request.contextPath}/admin/product/create" method="POST" enctype="multipart/form-data">
								<div class="form-group">
									Name:  
									<form:input type="text" path="name" placeholder="Insert name"/>
									<form:errors path="name" cssClass="error"/>
								</div>
								
								<div class="form-group">
									New Price 
									<form:input type="text" path="price_new" placeholder="Insert New Price"/>
									<form:errors path="price_new" cssClass="error"/>
								</div>
								
								<div class="form-group">
									Date
									<form:input type="text" path="date" placeholder="Insert Date"/>
									<form:errors path="date" cssClass="error"/>
								</div>
								
								<div class="form-group">
									Teacher 
									<form:input type="text" path="teacher" placeholder="Insert Teacher"/>
									<form:errors path="teacher" cssClass="error"/>
								</div>
								<div class="form-group">
									Image <form:input type="file" path="images"/>
									<form:errors path="images" cssClass="error"/>
								</div>
								
								<c:choose>
									<c:when test="${not empty categoryList}">
										<div class="form-group">
											Category
											<select name="category">
												<option value="0">Please choose category..</option>
												<c:forEach var="category" items="${categoryList}">
													<option value="${category.id}">${category.name}</option>
												</c:forEach>
											</select>
										</div>
									</c:when>
								</c:choose>
								
								<div class="form-group">
									<input type="submit" value="Create">
								</div>
								
							</form:form>
						</div>
					</div>
				</div><!-- /.panel-->
		</div><!-- /.row -->
	</div><!--/.main-->
    </div>
