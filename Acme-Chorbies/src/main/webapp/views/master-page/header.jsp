<%--
 * header.jsp
 *
 * Copyright (C) 2017 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<div>
	<img src="images/logo.png" alt="Acme-Chorbies Co., Inc." />
</div>

<div>
	<ul id="jMenu">
		<!-- Do not forget the "fNiv" class for the first level links !! -->
		<security:authorize access="hasRole('ADMIN')">
			<li><a class="fNiv"><spring:message	code="master.page.administrator.banner" /></a>
				<ul>
					<li class="arrow"></li>
					<li><a href="banner/list.do"><spring:message code="master.page.banner.list" /></a></li>
					<li><a href="banner/create.do"><spring:message code="master.page.banner.create" /></a></li>
				</ul>
			</li>
			<li><a class="fNiv" href="admin/cacheTime/edit.do"><spring:message code="master.page.cacheTime" /></a></li>
			<li><a class="fNiv"><spring:message	code="master.page.administrator.genre" /></a>
				<ul>
					<li class="arrow"></li>
					<li><a href="genre/list.do"><spring:message code="master.page.genre.list" /></a></li>
					<li><a href="genre/create.do"><spring:message code="master.page.genre.create" /></a></li>
				</ul>
			</li>
		</security:authorize>
		
		<security:authorize access="hasRole('CUSTOMER')">
			<li><a class="fNiv"><spring:message	code="master.page.customer" /></a>
				<ul>
					<li class="arrow"></li>
					<li><a href="customer/action-1.do"><spring:message code="master.page.customer.action.1" /></a></li>
					<li><a href="customer/action-2.do"><spring:message code="master.page.customer.action.2" /></a></li>					
				</ul>
			</li>
		</security:authorize>
		
		<security:authorize access="isAnonymous()">
			<li><a class="fNiv" href="security/login.do"><spring:message code="master.page.login" /></a></li>
		</security:authorize>
		
		<security:authorize access="isAuthenticated()">
			<li>
				<a class="fNiv"> 
					<spring:message code="master.page.profile" /> 
			        (<security:authentication property="principal.username" />)
				</a>
				<ul>
					<li class="arrow"></li>
					<li><a href="profile/action-1.do"><spring:message code="master.page.profile.action.1" /></a></li>
					<li><a href="profile/action-2.do"><spring:message code="master.page.profile.action.2" /></a></li>
					<li><a href="profile/action-3.do"><spring:message code="master.page.profile.action.3" /></a></li>					
					<li><a href="j_spring_security_logout"><spring:message code="master.page.logout" /> </a></li>
				</ul>
			</li>
		</security:authorize>
	</ul>
</div>

<div>
	<a href="?language=en">en</a> | <a href="?language=es">es</a>
</div>

