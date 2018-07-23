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

<%@ include file="/html/taglib/ui/user_display/init.jsp" %>

<div class="display-style-<%= displayStyle %> taglib-user-display">

	<%
	if (Validator.isNull(url) && (userDisplay != null)) {
		url = userDisplay.getDisplayURL(themeDisplay);
	}
	%>

	<aui:a href="<%= url %>">
		<liferay-ui:user-portrait
			imageCssClass="<%= imageCssClass %>"
			user="<%= userDisplay %>"
			userName="<%= (userDisplay != null) ? userDisplay.getFullName() : userName %>"
		/>

		<c:if test="<%= showUserName %>">
			<span class="user-name">
				<%= (userDisplay != null) ? HtmlUtil.escape(userDisplay.getFullName()) : HtmlUtil.escape(userName) %>
			</span>
		</c:if>
	</aui:a>

	<c:if test="<%= showUserDetails %>">
		<div class="user-details">
	</c:if>