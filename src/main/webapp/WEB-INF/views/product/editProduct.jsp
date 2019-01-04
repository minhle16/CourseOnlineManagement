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
					<div class="panel-heading">Product</div>
					<div class="panel-body">
						<div class="col-md-12">
                            <p>Update Product</p>
                            <br>
                            <form:form modelAttribute="productVo" action="${pageContext.request.contextPath}/admin/product/edit/${productVo.id}" method="POST" enctype="multipart/form-data">
								<div class="form-group">
									Name:  
									<form:input type="text" path="name" value="${productVo.name}"/>
								</div>
								
								<div class="form-group">
									New Price 
									<form:input type="text" path="price_new" value="${productVo.price_new}"/>
									<form:errors path="price_new" cssClass="error"/>
								</div>
								
								<div class="form-group">
									Old Price 
									<form:input type="text" path="price_old" value="${productVo.price_old}"/>
									<form:errors path="price_old" cssClass="error"/>
								</div>
								
								<div class="form-group">
									Date 
									<form:input type="text" path="date" value="${productVo.date}"/>
									<form:errors path="date" cssClass="error"/>
								</div>
								
								<div class="form-group">
									Teacher 
									<form:input type="text" path="teacher" value="${productVo.teacher}"/>
									<form:errors path="teacher" cssClass="error"/>
								</div>
								
								<div class="form-group">
									Image <form:input type="file" path="images"/>${productVo.images}
									<form:errors path="images" cssClass="error"/>
								</div>
								
								<c:choose>
									<c:when test="${not empty categoryList}">
										<div class="form-group">
											Category
											<select name="category">
												<option value="${productVo.category.id}">${productVo.category.name}</option>
												<c:forEach var="category" items="${categoryList}">
													<option value="${category.id}">${category.name}</option>
												</c:forEach>
											</select>
										</div>
									</c:when>
								</c:choose>
								
								<div class="form-group">
									<input type="submit" value="Update">
								</div>
								
							</form:form>
						</div>
					</div>
				</div><!-- /.panel-->
		</div><!-- /.row -->
	</div><!--/.main-->
    </div>
