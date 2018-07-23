<%--
/**
 * Copyright (c) 2000-2012 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ include file="/html/portal/init.jsp" %>

<%@ page import="com.liferay.portal.kernel.license.messaging.LCSPortletState" %>

<%
int lcsPortletState = GetterUtil.getInteger(request.getAttribute("LCS_PORTLET_STATE"));
%>

<c:choose>
	<c:when test="<%= lcsPortletState == LCSPortletState.PLUGIN_ABSENT.intValue() %>">
		<div class="portlet-msg-error">
			This instance is not registered. To register, please use one of the options listed below.
		</div>

		<p>
			For non-production, backup, and production servers not registered through Liferay Connected Services, please navigate to the <a href="/c/portal/license">License Manager</a> and deploy your existing activation key to register your server.

			<br /><br />

			For local developer workstations, install the provided activation key or request one through a support ticket. For DXP trials, please deploy the provided trial activation key or request one from your Sales Representative at <a href="mailto:sales@liferay.com">sales@liferay.com</a>.

			<br /><br />

			You may also contact Liferay Support for further assistance.
		</p>

		<p class="portlet-msg-info">
			The Liferay Connected Services Client has not been deployed on this server. For more information on how to use LCS to manage your servers, please navigate to <a href="https://customer.liferay.com/documentation">https://customer.liferay.com/documentation</a>
		</p>
	</c:when>
	<c:when test="<%= lcsPortletState == LCSPortletState.GOOD.intValue() %>">
		<div class="portlet-msg-success">
			This server is registered. Go to <a href="https://lcs.liferay.com">https://lcs.liferay.com</a> to manage your activation keys.
		</div>
	</c:when>
	<c:when test="<%= lcsPortletState == LCSPortletState.NO_AVAILABLE_SERVERS.intValue() %>">
		<div class="portlet-msg-error">
			Your account no longer has any available activation keys to activate this server. Please go to <a href="https://lcs.liferay.com">https://lcs.liferay.com</a> to manage your subscription and activation keys.
		</div>
	</c:when>
	<c:when test="<%= lcsPortletState == LCSPortletState.NO_CONNECTION.intValue() %>">
		<div class="portlet-msg-error">
			Unable to connect to http://lcs.liferay.com. Please check your connection settings and restart.
		</div>

		<p>
			If you are located behind an HTTP Proxy Server, please follow the instructions at <a href="https://customer.liferay.com/documentation">https://customer.liferay.com/documentation</a> on configuring LCS with proxy servers.
		</p>

		<br />

		<p>
			You may also contact Liferay Support for further assistance.
		</p>
	</c:when>
	<c:when test="<%= lcsPortletState == LCSPortletState.NO_SUBSCRIPTION.intValue() %>">
		<div class="portlet-msg-error">
			This server has connected successfully to LCS. However, LCS was not able to locate a valid subscription for your account.
		</div>

		<p>
			Please go to <a href="https://lcs.liferay.com">https://lcs.liferay.com</a> to manage your subscription.
		</p>

		<br />

		<p>
			You may also contact Liferay Support for further assistance.
		</p>
	</c:when>
	<c:when test="<%= lcsPortletState == LCSPortletState.NOT_REGISTERED.intValue() %>">
		<p class="portlet-msg-error">
			This server has not been activated with Liferay Connected Services.
		</p>

		<p>
			For local developer workstations, install the provided activation key or request one through a support ticket. For DXP trials, please deploy the provided trial activation key or request one from your Sales Representative at <a href="mailto:sales@liferay.com">sales@liferay.com</a>.
		</p>

		<p>
			For non-production, backup, and production servers, please deploy the LCS Client and follow the appropriate documentation at <a href="https://customer.liferay.com/documentation">https://customer.liferay.com/documentation</a> to register and activate your server.
		</p>

		<br />

		<p>
			You may also contact Liferay Support for further assistance.
		</p>
	</c:when>
</c:choose>

<%
int lcsLicenseState = GetterUtil.getInteger(request.getAttribute("LCS_LICENSE_STATE"));
%>

<c:choose>
	<c:when test="<%= lcsLicenseState == 6 %>">

		<%
		String portalLicenseType = StringPool.BLANK;

		List<Map<String, String>> licenseProperties = LicenseManagerUtil.getLicenseProperties();

		if ((licenseProperties != null) && (licenseProperties.size() > 0)) {
			Map<String, String> portalLicenseProperties = licenseProperties.get(0);

			String productId = GetterUtil.getString(portalLicenseProperties.get("productId"));

			if (productId.equals("Portal")) {
				portalLicenseType = portalLicenseProperties.get("type");
			}
		}
		%>

		<c:if test='<%= !portalLicenseType.equals("limited") && !portalLicenseType.equals("production") %>'>
			<div class="portlet-msg-error">
				You have exceeded the developer mode connection limit.
			</div>

			To register your production server, please go to <a href="https://lcs.liferay.com">https://lcs.liferay.com</a>.
		</c:if>
	</c:when>
</c:choose>