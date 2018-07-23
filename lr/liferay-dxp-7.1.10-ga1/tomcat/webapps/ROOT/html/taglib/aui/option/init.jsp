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
java.lang.String cssClass = GetterUtil.getString((java.lang.String)request.getAttribute("aui:option:cssClass"));
java.util.Map<java.lang.String, java.lang.Object> data = (java.util.Map<java.lang.String, java.lang.Object>)request.getAttribute("aui:option:data");
boolean disabled = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:option:disabled")));
java.lang.Object label = (java.lang.Object)request.getAttribute("aui:option:label");
boolean localizeLabel = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:option:localizeLabel")), true);
boolean selected = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:option:selected")));
java.lang.String style = GetterUtil.getString((java.lang.String)request.getAttribute("aui:option:style"));
java.lang.Object value = (java.lang.Object)request.getAttribute("aui:option:value");
Map<String, Object> dynamicAttributes = (Map<String, Object>)request.getAttribute("aui:option:dynamicAttributes");
%>

<%@ include file="/html/taglib/aui/option/init-ext.jspf" %>