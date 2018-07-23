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
String formName = (String)request.getAttribute("liferay-ui:tabs:formName");
String[] names = (String[])request.getAttribute("liferay-ui:tabs:names");
String namesJS = (String)request.getAttribute("liferay-ui:tabs:namesJS");
String param = (String)request.getAttribute("liferay-ui:tabs:param");
String[] urls = (String[])request.getAttribute("liferay-ui:tabs:urls");
String value = (String)request.getAttribute("liferay-ui:tabs:value");
String[] values = (String[])request.getAttribute("liferay-ui:tabs:values");
%>