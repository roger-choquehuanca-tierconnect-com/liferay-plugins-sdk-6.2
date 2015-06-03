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

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin título</title>
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css"/>
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/login.css"/>
</head>

<body>

<section>


<div class="wrapper">
    <div class="login-container">

        <form class="form-signin">
        <div class="form-group">
            <input type="username" id="username" class="form-control" placeholder="Username" required="" autofocus="">
            </div>
            <div class="form-group">
            <input type="password" id="password" class="form-control" placeholder="Password" required="" autofocus="">
            </div>
            <div class="form-group">
            <label class="pull-left">
                <input type="checkbox">
                Remember me
            </label>           
            <div class="form-group">
            <div class="login-help">
                <a href="#">Forgot your password?.</a>
            </div>
             </div>
              </div>
              <div class="form-group text-center">
            <button type="submit"  class="btn btn-primary">Login</button>
             </div>
        </form>

    </div>
</div>

</section>

</body>
</html>
