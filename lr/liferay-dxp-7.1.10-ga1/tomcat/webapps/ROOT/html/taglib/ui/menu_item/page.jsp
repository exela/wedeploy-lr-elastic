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

<%@ include file="/html/taglib/ui/menu_item/init.jsp" %>

<%
MenuItem menuItem = (MenuItem)request.getAttribute("liferay-ui:menu_item:menuItem");
%>

<c:choose>
	<c:when test="<%= menuItem instanceof DeleteMenuItem %>">

		<%
		DeleteMenuItem deleteMenuItem = (DeleteMenuItem)menuItem;
		%>

		<liferay-ui:icon-delete
			message="<%= HtmlUtil.escape(deleteMenuItem.getLabel()) %>"
			trash="<%= deleteMenuItem.isTrash() %>"
			url="<%= deleteMenuItem.getURL() %>"
		/>
	</c:when>
	<c:when test="<%= menuItem instanceof JavaScriptMenuItem %>">

		<%
		JavaScriptMenuItem javaScriptMenuItem = (JavaScriptMenuItem)menuItem;
		%>

		<liferay-ui:icon
			data="<%= javaScriptMenuItem.getData() %>"
			iconCssClass="<%= javaScriptMenuItem.getIcon() %>"
			message="<%= HtmlUtil.escape(javaScriptMenuItem.getLabel()) %>"
			onClick="<%= javaScriptMenuItem.getOnClick() %>"
			url="javascript:;"
		/>

		<c:if test="<%= Validator.isNotNull(javaScriptMenuItem.getJavaScript()) %>">
			<aui:script>
				<%= javaScriptMenuItem.getJavaScript() %>
			</aui:script>
		</c:if>
	</c:when>
	<c:when test="<%= menuItem instanceof URLMenuItem %>">

		<%
		URLMenuItem urlMenuItem = (URLMenuItem)menuItem;
		%>

		<liferay-ui:icon
			data="<%= urlMenuItem.getData() %>"
			iconCssClass="<%= urlMenuItem.getIcon() %>"
			message="<%= HtmlUtil.escape(urlMenuItem.getLabel()) %>"
			method="<%= urlMenuItem.getMethod() %>"
			target="<%= urlMenuItem.getTarget() %>"
			url="<%= urlMenuItem.getURL() %>"
			useDialog="<%= urlMenuItem.isUseDialog() %>"
		/>
	</c:when>
</c:choose>