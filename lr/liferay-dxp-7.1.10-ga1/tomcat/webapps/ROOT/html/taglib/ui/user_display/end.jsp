<%--
/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * The contents of this file are subject to the terms of the Liferay Enterprise
 * Subscription License ("License"). You may not use this file except in
 * compliance with the License. You can obtain a copy of the License by
 * contacting Liferay, Inc. See the License for the specific language governing
 * permissions and limitations under the License, including but not limited to
 * distribution rights of the Software.
 *
 *
 *
 */
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import="com.liferay.portal.kernel.util.GetterUtil" %>

<%
boolean showUserDetails = GetterUtil.getBoolean((String)request.getAttribute("liferay-ui:user-display:showUserDetails"));
%>

	<c:if test="<%= showUserDetails %>">
		</div>
	</c:if>
</div>