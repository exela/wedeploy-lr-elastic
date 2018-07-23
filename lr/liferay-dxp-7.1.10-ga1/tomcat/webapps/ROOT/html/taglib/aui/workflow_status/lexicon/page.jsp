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

<%@ include file="/html/taglib/aui/workflow_status/init.jsp" %>

<span class="taglib-workflow-status">
	<c:if test="<%= Validator.isNotNull(id) %>">
		<span class="workflow-id">
			<span class="workflow-label"><liferay-ui:message key="id" />:</span>

			<span class="workflow-value"><%= HtmlUtil.escape(id) %></span>
		</span>
	</c:if>

	<c:if test="<%= Validator.isNotNull(version) %>">
		<span class="workflow-version">
			<span class="workflow-label"><liferay-ui:message key="version" />:</span>

			<span class="workflow-value"><%= version %></span>
		</span>
	</c:if>

	<span class="workflow-status">
		<c:if test="<%= showLabel %>">
			<span class="workflow-label"><liferay-ui:message key="status" />:</span>
		</c:if>

		<span class="status workflow-status-<%= WorkflowConstants.getStatusLabel(status) %> <%= WorkflowConstants.getStatusCssClass(status) %> workflow-value">
			<liferay-ui:message key="<%= statusMessage %>" /><%= additionalText %>
		</span>
	</span>

	<c:if test="<%= showHelpMessage && Validator.isNotNull(helpMessage) %>">
		<liferay-ui:icon-help message="<%= helpMessage %>" />
	</c:if>
</span>