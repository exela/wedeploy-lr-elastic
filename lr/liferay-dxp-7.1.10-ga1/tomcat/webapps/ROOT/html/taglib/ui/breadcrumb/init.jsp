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

<%@ page import="com.liferay.dynamic.data.mapping.kernel.DDMTemplate" %><%@
page import="com.liferay.portal.kernel.servlet.taglib.ui.BreadcrumbEntry" %>

<%
List<BreadcrumbEntry> breadcrumbEntries = (List<BreadcrumbEntry>)request.getAttribute("liferay-ui:breadcrumb:breadcrumbEntries");
String displayStyle = GetterUtil.getString((String)request.getAttribute("liferay-ui:breadcrumb:displayStyle"));
long displayStyleGroupId = GetterUtil.getLong(request.getAttribute("liferay-ui:breadcrumb:displayStyleGroupId"), scopeGroupId);
%>