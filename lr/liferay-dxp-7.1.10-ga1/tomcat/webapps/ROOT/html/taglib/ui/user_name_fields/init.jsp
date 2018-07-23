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

<%@ page import="com.liferay.portal.kernel.exception.ContactNameException" %><%@
page import="com.liferay.portal.kernel.security.auth.FullNameDefinition" %><%@
page import="com.liferay.portal.kernel.security.auth.FullNameDefinitionFactory" %><%@
page import="com.liferay.portal.kernel.security.auth.FullNameField" %><%@
page import="com.liferay.portal.kernel.util.CamelCaseUtil" %>

<%
Object bean = request.getAttribute("liferay-ui:user-name-fields:bean");
Contact selContact = (Contact)request.getAttribute("liferay-ui:user-name-fields:contact");
User selUser = (User)request.getAttribute("liferay-ui:user-name-fields:user");

String languageId = request.getParameter("languageId");

if (Validator.isNull(languageId)) {
	if (selUser != null) {
		languageId = selUser.getLanguageId();
	}
	else {
		languageId = themeDisplay.getLanguageId();
	}
}

Locale userLocale = LocaleUtil.fromLanguageId(languageId);
%>