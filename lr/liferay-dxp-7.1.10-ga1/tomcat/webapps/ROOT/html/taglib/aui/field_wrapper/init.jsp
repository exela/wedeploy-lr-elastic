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
java.lang.String cssClass = GetterUtil.getString((java.lang.String)request.getAttribute("aui:field-wrapper:cssClass"));
java.util.Map data = (java.util.Map)request.getAttribute("aui:field-wrapper:data");
boolean first = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:field-wrapper:first")));
java.lang.String helpMessage = GetterUtil.getString((java.lang.String)request.getAttribute("aui:field-wrapper:helpMessage"));
boolean inlineField = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:field-wrapper:inlineField")));
java.lang.String inlineLabel = GetterUtil.getString((java.lang.String)request.getAttribute("aui:field-wrapper:inlineLabel"));
java.lang.String label = GetterUtil.getString((java.lang.String)request.getAttribute("aui:field-wrapper:label"));
boolean last = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:field-wrapper:last")));
boolean localizeLabel = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:field-wrapper:localizeLabel")), true);
java.lang.String name = GetterUtil.getString((java.lang.String)request.getAttribute("aui:field-wrapper:name"));
boolean required = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:field-wrapper:required")));
Map<String, Object> dynamicAttributes = (Map<String, Object>)request.getAttribute("aui:field-wrapper:dynamicAttributes");
%>

<%@ include file="/html/taglib/aui/field_wrapper/init-ext.jspf" %>