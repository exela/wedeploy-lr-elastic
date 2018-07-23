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
java.lang.Object bean = (java.lang.Object)request.getAttribute("aui:workflow-status:bean");
java.lang.String helpMessage = GetterUtil.getString((java.lang.String)request.getAttribute("aui:workflow-status:helpMessage"));
java.lang.String id = GetterUtil.getString((java.lang.String)request.getAttribute("aui:workflow-status:id"));
java.lang.String markupView = GetterUtil.getString((java.lang.String)request.getAttribute("aui:workflow-status:markupView"));
java.lang.Class<?> model = (java.lang.Class<?>)request.getAttribute("aui:workflow-status:model");
boolean showHelpMessage = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:workflow-status:showHelpMessage")), true);
boolean showIcon = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:workflow-status:showIcon")), true);
boolean showLabel = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:workflow-status:showLabel")), true);
java.lang.Integer status = GetterUtil.getInteger(String.valueOf(request.getAttribute("aui:workflow-status:status")));
java.lang.String statusMessage = GetterUtil.getString((java.lang.String)request.getAttribute("aui:workflow-status:statusMessage"));
java.lang.String version = GetterUtil.getString((java.lang.String)request.getAttribute("aui:workflow-status:version"));
Map<String, Object> dynamicAttributes = (Map<String, Object>)request.getAttribute("aui:workflow-status:dynamicAttributes");
%>

<%@ include file="/html/taglib/aui/workflow_status/init-ext.jspf" %>