<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
        <div class="row">
            <div class="col-12">
                <div class="breadcrumbs">
                    <ul class="flex flex-wrap align-items-center p-0 m-0">
                        <li><a href="#"><i class="fa fa-home"></i> Home</a></li>
                        <li>Courses</li>
                    </ul>
                </div><!-- .breadcrumbs -->
            </div><!-- .col -->
        </div><!-- .row -->

        <div class="row">
            <div class="col-12 col-lg-8">
                <div class="featured-courses courses-wrap">
                    <div class="row mx-m-25">
                    	<c:forEach var="product" items="${allProduct}">
                        	<div class="col-12 col-md-6 px-25">
                           	 <div class="course-content">
                                <figure class="course-thumbnail">
                                    <a href="${pageContext.request.contextPath}/singlePage"><img src="${product.images }" alt=""></a>
                                </figure><!-- .course-thumbnail -->

                                <div class="course-content-wrap">
                                    <header class="entry-header">
                                        <h2 class="entry-title"><a href="${pageContext.request.contextPath}/singlePage">${product.name}</a></h2>

                                        <div class="entry-meta flex flex-wrap align-items-center">
                                            <div class="course-author"><a href="#">${product.teacher}</a></div>

                                            <div class="course-date">${product.date}</div>
                                        </div><!-- .course-date -->
                                    </header><!-- .entry-header -->

                                    <footer class="entry-footer flex flex-wrap justify-content-between align-items-center">
                                    	
                                        <div class="course-cost">
                                        	<c:choose>
												<c:when test="${product.price_new == 'Free'}">
                                            		<span class="free-cost">${product.price_new}</span>
                                            	</c:when>
                                            	<c:otherwise>
                                            		${product.price_new} <span class="price-drop">${product.price_old}</span>
                                            	</c:otherwise>
                                            </c:choose>
                                        </div><!-- .course-cost -->

                                        <div class="course-ratings flex justify-content-end align-items-center">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star-o"></span>

                                            <span class="course-ratings-count">(4 votes)</span>
                                        </div><!-- .course-ratings -->
                                    </footer><!-- .entry-footer -->
                                </div><!-- .course-content-wrap -->
                            </div><!-- .course-content -->
                        </div><!-- .col -->
                      </c:forEach>
                    </div><!-- .row -->
              </div><!-- .featured-courses -->

                <div class="pagination flex flex-wrap justify-content-between align-items-center">
                    <div class="col-12 col-lg-4 order-2 order-lg-1 mt-3 mt-lg-0">
                        <ul class="flex flex-wrap align-items-center order-2 order-lg-1 p-0 m-0">
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                        </ul>
                    </div>

                    <div class="col-12 flex justify-content-start justify-content-lg-end col-lg-8 order-1 order-lg-2">
                        <div class="pagination-results flex flex-wrap align-items-center">
                            <p class="m-0">Showing 1–3 of 12 results</p>

                            <form>
                                <select>
                                    <option>Show: 06</option>
                                    <option>Show: 12</option>
                                    <option>Show: 18</option>
                                    <option>Show: 24</option>
                                </select>
                            </form>
                        </div><!-- .pagination-results -->
                    </div>
                </div><!-- .pagination -->
            </div><!-- .col -->

            <div class="col-12 col-lg-4">
                <div class="sidebar">
                    <div class="search-widget">
                        <form class="flex flex-wrap align-items-center">
                            <input type="search" placeholder="Search...">
                            <button type="submit" class="flex justify-content-center align-items-center"><i class="fa fa-search"></i></button>
                        </form><!-- .flex -->
                    </div><!-- .search-widget -->

                    <div class="cat-links">
                        <h2>Categories</h2>

                        <ul class="p-0 m-0">
                            <li><a href="#">Business</a></li>
                            <li><a href="#">Design</a></li>
                            <li><a href="#">Marketing</a></li>
                            <li><a href="#">MBA Courses</a></li>
                            <li><a href="#">Technology</a></li>
                            <li><a href="#">Web Development</a></li>
                        </ul>
                    </div><!-- .cat-links -->

                    <div class="latest-courses">
                        <h2>Latest Courses</h2>

                        <ul class="p-0 m-0">
                            <li class="flex flex-wrap justify-content-between align-items-center">
                                <img src="images/t-1.jpg" alt="">

                                <div class="content-wrap">
                                    <h3><a href="#">The Complete Financial Analyst Training</a></h3>

                                    <div class="course-cost free-cost">Free</div>
                                </div><!-- .content-wrap -->
                            </li>

                            <li class="flex flex-wrap justify-content-between align-items-center">
                                <img src="images/t-2.jpg" alt="">

                                <div class="content-wrap">
                                    <h3><a href="#">Complete Java
                                        Masterclass</a></h3>

                                    <div class="course-cost free-cost">Free</div>
                                </div><!-- .content-wrap -->
                            </li>

                            <li class="flex flex-wrap justify-content-between align-items-center">
                                <img src="images/t-3.jpg" alt="">

                                <div class="content-wrap">
                                    <h3><a href="#">The Complete Digital Marketing Course</a></h3>

                                    <div class="course-cost">$24</div>
                                </div><!-- .content-wrap -->
                            </li>

                            <li class="flex flex-wrap justify-content-between align-items-center">
                                <img src="images/t-4.jpg" alt="">

                                <div class="content-wrap">
                                    <h3><a href="#">Photoshop CC 2018
                                        MasterClass</a></h3>

                                    <div class="course-cost">$18</div>
                                </div><!-- .content-wrap -->
                            </li>
                        </ul>
                    </div><!-- .latest-courses -->

                    <div class="ads">
                        <img src="images/ads.jpg" alt="">
                    </div><!-- .ads -->

                    <div class="popular-tags">
                        <h2>Popular Tags</h2>

                        <ul class="flex flex-wrap align-items-center p-0 m-0">
                            <li><a href="#">Creative</a></li>
                            <li><a href="#">Unique</a></li>
                            <li><a href="#">Photography</a></li>
                            <li><a href="#">ideas</a></li>
                            <li><a href="#">Wordpress Template</a></li>
                            <li><a href="#">startup</a></li>
                        </ul>
                    </div><!-- .popular-tags -->
                </div><!-- .sidebar -->
            </div><!-- .col -->
        </div><!-- .row -->
    </div><!-- .container -->