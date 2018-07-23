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
java.util.Locale[] availableLocales = (java.util.Locale[])request.getAttribute("aui:translation-manager:availableLocales");
boolean changeableDefaultLanguage = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:translation-manager:changeableDefaultLanguage")), true);
java.lang.String defaultLanguageId = GetterUtil.getString((java.lang.String)request.getAttribute("aui:translation-manager:defaultLanguageId"));
java.lang.String editingLanguageId = GetterUtil.getString((java.lang.String)request.getAttribute("aui:translation-manager:editingLanguageId"));
java.lang.String id = GetterUtil.getString((java.lang.String)request.getAttribute("aui:translation-manager:id"));
boolean initialize = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:translation-manager:initialize")), true);
boolean readOnly = GetterUtil.getBoolean(String.valueOf(request.getAttribute("aui:translation-manager:readOnly")));
Map<String, Object> dynamicAttributes = (Map<String, Object>)request.getAttribute("aui:translation-manager:dynamicAttributes");
%>

<%@ include file="/html/taglib/aui/translation_manager/init-ext.jspf" %>