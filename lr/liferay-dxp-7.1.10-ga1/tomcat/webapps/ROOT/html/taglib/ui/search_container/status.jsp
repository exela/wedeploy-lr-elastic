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

<%@ include file="/html/taglib/ui/search_container/init.jsp" %>

<%
int status = GetterUtil.getInteger(request.getAttribute("liferay-ui:search-container-column-status:status"));
long statusByUserId = GetterUtil.getLong(request.getAttribute("liferay-ui:search-container-column-status:statusByUserId"));
Date statusDate = GetterUtil.getDate(request.getAttribute("liferay-ui:search-container-column-status:statusDate"), DateFormatFactoryUtil.getDate(locale), null);

User statusByUser = UserLocalServiceUtil.fetchUser(statusByUserId);
%>

<c:if test="<%= statusByUser != null %>">
	<liferay-util:buffer
		var="buffer"
	>
		<div class="user-status-tooltip">
			<span class="user-status-avatar">
				<liferay-ui:user-portrait
					user="<%= statusByUser %>"
				/>
			</span>
			<span class="user-status-info">
				<div class="user-status-name">
					<aui:a href="<%= statusByUser.isActive() ? statusByUser.getDisplayURL(themeDisplay) : null %>"><%= HtmlUtil.escape(StringUtil.shorten(statusByUser.getFullName(), 20)) %></aui:a>
				</div>

				<div class="user-status-date">
					<liferay-ui:message arguments="<%= LanguageUtil.getTimeDescription(request, System.currentTimeMillis() - statusDate.getTime(), true) %>" key="x-ago" translateArguments="<%= false %>" />
				</div>
			</span>
		</div>
	</liferay-util:buffer>

	<span onmouseover="Liferay.Portal.ToolTip.show(this, '<%= HtmlUtil.escapeJS(HtmlUtil.extractText(buffer)) %>')">
</c:if>

<aui:workflow-status showIcon="<%= false %>" showLabel="<%= false %>" status="<%= status %>" />

<c:if test="<%= statusByUser != null %>">
	</span>
</c:if>