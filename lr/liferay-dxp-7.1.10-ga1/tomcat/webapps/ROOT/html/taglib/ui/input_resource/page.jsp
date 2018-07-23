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
String cssClass = GetterUtil.getString((String)request.getAttribute("liferay-ui:input-resource:cssClass"));
String id = GetterUtil.getString((String)request.getAttribute("liferay-ui:input-resource:id"));
String title = (String)request.getAttribute("liferay-ui:input-resource:title");
String url = (String)request.getAttribute("liferay-ui:input-resource:url");
%>

<input class="form-control form-text lfr-input-resource <%= cssClass %>" <%= Validator.isNotNull(id) ? "id=\"" + namespace + id + "\"" : StringPool.BLANK %> onClick="this.select();" readonly="true" <%= Validator.isNotNull(title) ? "title=\"" + LanguageUtil.get(resourceBundle, title) + "\"" : StringPool.BLANK %> type="text" value="<%= HtmlUtil.escapeAttribute(url) %>" />

<aui:script>
	var inputField = document.getElementById('<portlet:namespace /><%= id %>');

	inputField.addEventListener(
		'click',
		function() {
			this.setSelectionRange(0, 9999);
		}
	);
</aui:script>