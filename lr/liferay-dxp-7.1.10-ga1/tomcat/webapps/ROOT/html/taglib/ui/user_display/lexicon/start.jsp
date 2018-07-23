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

<liferay-util:buffer
	var="html"
>
	<liferay-ui:user-portrait
		imageCssClass="<%= imageCssClass %>"
		user="<%= userDisplay %>"
		userName="<%= (userDisplay != null) ? userDisplay.getFullName() : userName %>"
	/>
</liferay-util:buffer>

<c:choose>
	<c:when test="<%= showUserDetails || showUserName %>">
		<div class="profile-header">
			<div class="nameplate">
				<div class="nameplate-field">
					<%= html %>
				</div>

				<c:if test="<%= showUserName %>">
					<div class="nameplate-content">
						<div class="heading4">

							<%
							if (Validator.isNull(url) && (userDisplay != null)) {
								url = userDisplay.getDisplayURL(themeDisplay);
							}
							%>

							<aui:a href="<%= showLink ? url : null %>">
								<%= (userDisplay != null) ? HtmlUtil.escape(userDisplay.getFullName()) : HtmlUtil.escape(userName) %>
							</aui:a>
						</div>
					</div>
				</c:if>

				<c:if test="<%= showUserDetails %>">
					<div class="nameplate-content">
				</c:if>
	</c:when>
	<c:otherwise>
		<%= html %>
	</c:otherwise>
</c:choose>