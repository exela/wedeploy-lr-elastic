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

<%@ include file="/html/taglib/ui/breadcrumb/init.jsp" %>

<div id="<portlet:namespace />breadcrumbs-defaultScreen">
	<c:if test="<%= !breadcrumbEntries.isEmpty() %>">

		<%
		String renderedDDMTemplate = StringPool.BLANK;

		DDMTemplate portletDisplayDDMTemplate = PortletDisplayTemplateManagerUtil.getDDMTemplate(displayStyleGroupId, PortalUtil.getClassNameId(BreadcrumbEntry.class), displayStyle, true);

		if (portletDisplayDDMTemplate != null) {
			renderedDDMTemplate = PortletDisplayTemplateManagerUtil.renderDDMTemplate(request, response, portletDisplayDDMTemplate.getTemplateId(), breadcrumbEntries, new HashMap<String, Object>());
		}
		%>

		<%= renderedDDMTemplate %>
	</c:if>
</div>