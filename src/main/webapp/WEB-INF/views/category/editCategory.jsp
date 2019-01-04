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
				<li class="active">Category</li>
			</ol>
		</div><!--/.row-->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Category</div>
					<div class="panel-body">
						<div class="col-md-12">
                            <p>Edit Category</p>
                            <br>
                            <form:form modelAttribute="categoryVo" action="${pageContext.request.contextPath}/admin/category/edit/${categoryVo.id}" method="POST" enctype="multipart/form-data">
								<div class="form-group">
									Name:  
									<form:input type="text" path="name" value="${categoryVo.name }"/>
									<form:errors path="name" cssClass="error"/>
								</div>
								
								<div class="form-group">
									Image <form:input type="file" path="images" />${categoryVo.images}
									<form:errors path="images" cssClass="error"/>
								</div>
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
