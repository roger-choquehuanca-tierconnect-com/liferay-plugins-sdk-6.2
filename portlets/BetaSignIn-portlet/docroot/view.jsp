<%
/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
%>

<section class="section">
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui"%>

<portlet:defineObjects />

<div id="player"></div>
<div id="bg_container"></div>

<div class="wrapper">
    <div class="login-container">
<h1>Sign in for beta</h1>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
<portlet:actionURL var="signInAction">
	<portlet:param name="mvcPath" value="/view.jsp" />
</portlet:actionURL>

<aui:form action="<%=signInAction%>" method="post" cssClass="form-signin">
<div class="form-group">
	<aui:input label="" type="text" name="firstName" placeHolder="First name" cssClass="form-control">
		<aui:validator name="required" errorMessage="Field is required"  />
	</aui:input>
</div>
<div class="form-group">
	<aui:input cssClass="form-control" label="" type="text" name="lastName" placeHolder="Last name" >
		<aui:validator name="required" errorMessage="Field is required" />
	</aui:input>
</div>
<div class="form-group">
	<aui:input label="" type="text" name="email" placeHolder="Email" cssClass="form-control" >
		<aui:validator name="required" errorMessage="Field is required" />
	</aui:input>
</div>
	<div class="form-group text-center">
	<aui:button type="submit" cssClass="btn-lg" value="Request for Beta" />
	</div>
</aui:form>
</div>
</div>

</section>