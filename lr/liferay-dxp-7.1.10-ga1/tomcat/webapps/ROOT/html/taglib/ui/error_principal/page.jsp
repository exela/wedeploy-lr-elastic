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

<%@ include file="/html/taglib/ui/error_principal/init.jsp" %>

<liferay-ui:error exception="<%= PrincipalException.class %>" message="you-do-not-have-the-required-permissions" />
<liferay-ui:error exception="<%= PrincipalException.MustBeAuthenticated.class %>" message="please-sign-in-to-access-this-application" />
<liferay-ui:error exception="<%= PrincipalException.MustBeCompanyAdmin.class %>" message="you-do-not-have-the-required-permissions" />

<liferay-ui:error exception="<%= PrincipalException.MustBeEnabled.class %>">

	<%
	PrincipalException.MustBeEnabled pe = (PrincipalException.MustBeEnabled)errorException;
	%>

	<liferay-ui:message arguments="<%= pe.resourceName %>" key="x-is-not-enabled" translateArguments="<%= false %>" />
</liferay-ui:error>

<liferay-ui:error exception="<%= PrincipalException.MustBeInvokedUsingPost.class %>" message="an-unexpected-error-occurred-while-connecting-to-the-specified-url" />
<liferay-ui:error exception="<%= PrincipalException.MustBeOmniadmin.class %>" message="you-do-not-have-the-required-permissions" />
<liferay-ui:error exception="<%= PrincipalException.MustBePortletStrutsPath.class %>" message="the-portlet-is-not-configured-correctly" />
<liferay-ui:error exception="<%= PrincipalException.MustHavePermission.class %>" message="you-do-not-have-the-required-permissions" />