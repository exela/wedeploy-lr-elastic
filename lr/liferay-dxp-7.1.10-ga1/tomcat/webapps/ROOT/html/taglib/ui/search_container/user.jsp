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
String cssClass = GetterUtil.getString(request.getAttribute("liferay-ui:search-container-column-user:cssClass"));
Date date = GetterUtil.getDate(request.getAttribute("liferay-ui:search-container-column-user:date"), DateFormatFactoryUtil.getDate(locale), null);
boolean showDetails = GetterUtil.getBoolean(request.getAttribute("liferay-ui:search-container-column-user:showDetails"));
long userId = GetterUtil.getLong(request.getAttribute("liferay-ui:search-container-column-user:userId"));

User user2 = UserLocalServiceUtil.fetchUser(userId);
%>

<div class="user-info">
	<liferay-ui:user-portrait
		cssClass="<%= cssClass %>"
		user="<%= user2 %>"
	/>

	<c:if test="<%= showDetails %>">
		<div class="user-details">
			<div class="row <%= (date == null) ? "line" : StringPool.BLANK %>">
				<span class="col-md-12 user-name"><%= HtmlUtil.escape((user2 != null) ? user2.getFullName() : LanguageUtil.get(resourceBundle, "anonymous")) %></span>
			</div>

			<c:if test="<%= date != null %>">
				<div class="row">
					<span class="col-md-12 date-info">
						<liferay-ui:message arguments="<%= LanguageUtil.getTimeDescription(request, System.currentTimeMillis() - date.getTime(), true) %>" key="x-ago" translateArguments="<%= false %>" />
					</span>
				</div>
			</c:if>
		</div>
	</c:if>
</div>