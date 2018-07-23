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

@generated
--%>

<%@ include file="/html/taglib/taglib-init.jsp" %>

<%
boolean animated = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:alert:animated")));
boolean closeable = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:alert:closeable")), true);
java.lang.String cssClass = GetterUtil.getString((java.lang.String)request.getAttribute("aui:alert:cssClass"));
boolean destroyOnHide = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:alert:destroyOnHide")));
java.lang.Number duration = GetterUtil.getNumber(String.valueOf(request.getAttribute("aui:alert:duration")), 0.15);
java.lang.String id = GetterUtil.getString((java.lang.String)request.getAttribute("aui:alert:id"));
java.lang.String type = GetterUtil.getString((java.lang.String)request.getAttribute("aui:alert:type"), "info");
Map<String, Object> dynamicAttributes = (Map<String, Object>)request.getAttribute("aui:alert:dynamicAttributes");
%>

<%@ include file="/html/taglib/aui/alert/init-ext.jspf" %>