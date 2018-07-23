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
java.lang.String markupView = GetterUtil.getString((java.lang.String)request.getAttribute("aui:fieldset-group:markupView"));
Map<String, Object> dynamicAttributes = (Map<String, Object>)request.getAttribute("aui:fieldset-group:dynamicAttributes");
%>

<%@ include file="/html/taglib/aui/fieldset_group/init-ext.jspf" %>