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
java.lang.String cssClass = GetterUtil.getString((java.lang.String)request.getAttribute("aui:button:cssClass"));
java.util.Map data = (java.util.Map)request.getAttribute("aui:button:data");
boolean disabled = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:button:disabled")));
java.lang.String href = GetterUtil.getString((java.lang.String)request.getAttribute("aui:button:href"));
java.lang.String icon = GetterUtil.getString((java.lang.String)request.getAttribute("aui:button:icon"));
java.lang.String iconAlign = GetterUtil.getString((java.lang.String)request.getAttribute("aui:button:iconAlign"), "left");
java.lang.String id = GetterUtil.getString((java.lang.String)request.getAttribute("aui:button:id"));
java.lang.String name = GetterUtil.getString((java.lang.String)request.getAttribute("aui:button:name"));
java.lang.String onClick = GetterUtil.getString((java.lang.String)request.getAttribute("aui:button:onClick"));
java.lang.Object primary = (java.lang.Object)request.getAttribute("aui:button:primary");
java.lang.String type = GetterUtil.getString((java.lang.String)request.getAttribute("aui:button:type"), "button");
boolean useDialog = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:button:useDialog")));
boolean useNamespace = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:button:useNamespace")), true);
java.lang.String value = GetterUtil.getString((java.lang.String)request.getAttribute("aui:button:value"));
Map<String, Object> dynamicAttributes = (Map<String, Object>)request.getAttribute("aui:button:dynamicAttributes");
%>

<%@ include file="/html/taglib/aui/button/init-ext.jspf" %>