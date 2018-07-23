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

<%@ include file="/html/taglib/aui/form/init.jsp" %>

<%
String fullName = namespace.concat(HtmlUtil.escapeAttribute(name));
%>

<form action="<%= HtmlUtil.escapeAttribute(action) %>" class="form <%= cssClass %> <%= inlineLabels ? "field-labels-inline" : StringPool.BLANK %>" data-fm-namespace="<%= namespace %>" id="<%= fullName %>" method="<%= method %>" name="<%= fullName %>" <%= InlineUtil.buildDynamicAttributes(dynamicAttributes) %>>
	<c:if test="<%= Validator.isNotNull(onSubmit) %>">
		<fieldset class="input-container" disabled="disabled">
	</c:if>

	<aui:input name="formDate" type="hidden" value="<%= System.currentTimeMillis() %>" />