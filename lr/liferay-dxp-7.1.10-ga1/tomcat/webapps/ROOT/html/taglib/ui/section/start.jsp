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
Map<String, Object> data = (Map<String, Object>)request.getAttribute("liferay-ui:section:data");
String name = (String)request.getAttribute("liferay-ui:section:name");
String param = (String)request.getAttribute("liferay-ui:section:param");
boolean selected = (Boolean)request.getAttribute("liferay-ui:section:selected");
%>

<div class="<%= selected ? StringPool.BLANK : "hide" %>" <%= AUIUtil.buildData(data) %> id="<%= namespace %><%= param %><%= StringUtil.toCharCode(name) %>TabsSection">