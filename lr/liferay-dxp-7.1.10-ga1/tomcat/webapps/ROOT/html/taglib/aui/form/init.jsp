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
java.lang.String action = GetterUtil.getString((java.lang.String)request.getAttribute("aui:form:action"));
java.lang.String cssClass = GetterUtil.getString((java.lang.String)request.getAttribute("aui:form:cssClass"));
boolean inlineLabels = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:form:inlineLabels")));
java.lang.String method = GetterUtil.getString((java.lang.String)request.getAttribute("aui:form:method"), "post");
java.lang.String name = GetterUtil.getString((java.lang.String)request.getAttribute("aui:form:name"), "fm");
java.lang.String onSubmit = GetterUtil.getString((java.lang.String)request.getAttribute("aui:form:onSubmit"));
java.lang.String portletNamespace = GetterUtil.getString((java.lang.String)request.getAttribute("aui:form:portletNamespace"));
boolean useNamespace = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:form:useNamespace")), true);
boolean validateOnBlur = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:form:validateOnBlur")), true);
Map<String, Object> dynamicAttributes = (Map<String, Object>)request.getAttribute("aui:form:dynamicAttributes");
%>

<%@ include file="/html/taglib/aui/form/init-ext.jspf" %>