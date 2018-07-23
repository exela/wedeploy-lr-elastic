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

<%@ include file="/html/taglib/init.jsp" %>

<%
boolean autoFocus = GetterUtil.getBoolean(request.getAttribute("liferay-ui:input-search:autoFocus"));
String buttonLabel = GetterUtil.getString((String)request.getAttribute("liferay-ui:input-search:buttonLabel"));
String cssClass = GetterUtil.getString((String)request.getAttribute("liferay-ui:input-search:cssClass"));
String id = GetterUtil.getString((String)request.getAttribute("liferay-ui:input-search:id"));
String name = GetterUtil.getString((String)request.getAttribute("liferay-ui:input-search:name"));
String placeholder = GetterUtil.getString((String)request.getAttribute("liferay-ui:input-search:placeholder"));
boolean showButton = GetterUtil.getBoolean(request.getAttribute("liferay-ui:input-search:showButton"));
String title = GetterUtil.getString((String)request.getAttribute("liferay-ui:input-search:title"));
boolean useNamespace = GetterUtil.getBoolean(request.getAttribute("liferay-ui:input-search:useNamespace"), true);

if (!useNamespace) {
	namespace = StringPool.BLANK;
}

String value = ParamUtil.getString(request, name);
%>

<div class="<%= cssClass %> input-group taglib-input-search">
	<label class="hide-accessible" for="<%= namespace + id %>"><%= title %></label>

	<input class="form-control search-query" id="<%= namespace + id %>" name="<%= namespace + name %>" placeholder="<%= placeholder %>" title="<%= title %>" type="text" value="<%= HtmlUtil.escapeAttribute(value) %>" />

	<c:if test="<%= showButton %>">
		<span class="input-group-btn">
			<button class="btn btn-default" type="submit">
				<%= buttonLabel %>
			</button>
		</span>
	</c:if>
</div>

<c:if test="<%= autoFocus %>">
	<aui:script>
		Liferay.Util.focusFormField('#<%= namespace %><%= id %>');
	</aui:script>
</c:if>