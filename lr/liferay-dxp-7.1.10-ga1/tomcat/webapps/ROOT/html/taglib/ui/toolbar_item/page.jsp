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

<%@ include file="/html/taglib/ui/toolbar_item/init.jsp" %>

<%
ToolbarItem toolbarItem = (ToolbarItem)request.getAttribute("liferay-ui:toolbar-item:toolbarItem");
%>

<c:choose>
	<c:when test="<%= toolbarItem instanceof JavaScriptToolbarItem %>">

		<%
		JavaScriptToolbarItem javaScriptToolbarItem = (JavaScriptToolbarItem)toolbarItem;
		%>

		<aui:a cssClass="btn btn-default" href="javascript:;" onClick="<%= javaScriptToolbarItem.getOnClick() %>">
			<c:if test="<%= Validator.isNotNull(javaScriptToolbarItem.getIcon()) %>">
				<aui:icon image="<%= javaScriptToolbarItem.getIcon() %>" markupView="lexicon" />
			</c:if>

			<%= javaScriptToolbarItem.getLabel() %>
		</aui:a>

		<c:if test="<%= Validator.isNotNull(javaScriptToolbarItem.getJavaScript()) %>">
			<script>
				<%= javaScriptToolbarItem.getJavaScript() %>
			</script>
		</c:if>
	</c:when>
	<c:when test="<%= toolbarItem instanceof URLToolbarItem %>">

		<%
		URLToolbarItem urlToolbarItem = (URLToolbarItem)toolbarItem;
		%>

		<aui:a cssClass="btn btn-default" href="<%= urlToolbarItem.getURL() %>" target="<%= urlToolbarItem.getTarget() %>">
			<c:if test="<%= Validator.isNotNull(urlToolbarItem.getIcon()) %>">
				<aui:icon image="<%= urlToolbarItem.getIcon() %>" markupView="lexicon" />
			</c:if>

			<%= urlToolbarItem.getLabel() %>
		</aui:a>
	</c:when>
</c:choose>