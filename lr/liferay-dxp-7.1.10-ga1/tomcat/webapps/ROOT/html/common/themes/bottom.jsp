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

<%@ include file="/html/common/themes/init.jsp" %>

<c:if test="<%= permissionChecker.isOmniadmin() %>">

	<%
	String lcsNotificationMessage = GetterUtil.getString(request.getAttribute("LCS_NOTIFICATION_MESSAGE"));
	%>

	<c:if test="<%= Validator.isNotNull(lcsNotificationMessage) %>">
		<liferay-ui:alert
			icon="exclamation-full"
			message="<%= HtmlUtil.escape(lcsNotificationMessage) %>"
			targetNode="#controlMenuAlertsContainer"
			timeout="<%= 0 %>"
			type="danger"
		/>
	</c:if>

	<%
	List<Map<String, String>> licenseProperties = com.liferay.portal.license.LicenseManager.getLicenseProperties();

	if ((licenseProperties != null) && !licenseProperties.isEmpty()) {
		Map<String, String> portalLicenseProperties = licenseProperties.get(0);

		String productId = GetterUtil.getString(portalLicenseProperties.get("productId"));

		long now = System.currentTimeMillis();

		String accountEntryName = GetterUtil.getString(portalLicenseProperties.get("accountEntryName"));
		long startDate = GetterUtil.getLong(portalLicenseProperties.get("startDate"));
		long expirationDate = GetterUtil.getLong(portalLicenseProperties.get("expirationDate"));
		long lifetimeDays = (expirationDate - startDate) / Time.DAY;
		long expirationDays = (expirationDate - now) / Time.DAY;
	%>

		<c:if test='<%= productId.equals("Portal") && (((lifetimeDays == 30) && (expirationDays < 7)) || ((lifetimeDays > 30) && (expirationDays < 30))) %>'>
			<liferay-util:buffer var="alertMessage">
				<c:choose>
					<c:when test="<%= expirationDays <= 0 %>">
						<a href="<%= themeDisplay.getPathMain() %>/portal/license">Your activation key expired <%= expirationDays * -1 %> days ago.</a>
					</c:when>
					<c:otherwise>
						<a href="<%= themeDisplay.getPathMain() %>/portal/license">Update your activation key because it will expire in <%= expirationDays %> days.</a>

						<c:if test='<%= accountEntryName.equals("Liferay Trial") %>'>
							Visit <a href="http://www.liferay.com/c/portal/license">your profile page at Liferay.com</a> to upgrade your trial license.
						</c:if>
					</c:otherwise>
				</c:choose>
			</liferay-util:buffer>

			<liferay-ui:alert
				icon="exclamation-full"
				message="<%= alertMessage %>"
				targetNode="#controlMenuAlertsContainer"
				timeout="<%= 0 %>"
				type="danger"
			/>
		</c:if>

	<%
	}
	%>

</c:if>

<liferay-util:dynamic-include key="/html/common/themes/bottom.jsp#pre" />

<%
List<Portlet> portlets = (List<Portlet>)request.getAttribute(WebKeys.LAYOUT_PORTLETS);
%>

<%-- Portlet CSS References --%>

<%@ include file="/html/common/themes/bottom_portlet_resources_css.jspf" %>

<%-- Portlet JavaScript References --%>

<%@ include file="/html/common/themes/bottom_portlet_resources_js.jspf" %>

<c:if test="<%= PropsValues.JAVASCRIPT_LOG_ENABLED %>">
	<%@ include file="/html/common/themes/bottom_js_logging.jspf" %>
</c:if>

<%@ include file="/html/common/themes/bottom_js.jspf" %>

<%@ include file="/html/common/themes/password_expiring_soon.jspf" %>

<%@ include file="/html/common/themes/session_timeout.jspf" %>

<%
ScriptTag.flushScriptData(pageContext);
%>

<%-- Raw Text --%>

<%
com.liferay.petra.string.StringBundler pageBottomSB = OutputTag.getDataSB(request, WebKeys.PAGE_BOTTOM);
%>

<c:if test="<%= pageBottomSB != null %>">

	<%
	pageBottomSB.writeTo(out);
	%>

</c:if>

<%-- Theme JavaScript --%>

<script src="<%= HtmlUtil.escape(PortalUtil.getStaticResourceURL(request, themeDisplay.getPathThemeJavaScript() + "/main.js")) %>" type="text/javascript"></script>

<liferay-util:include page="/html/common/themes/bottom-ext.jsp" />
<liferay-util:include page="/html/common/themes/bottom-test.jsp" />

<liferay-util:dynamic-include key="/html/common/themes/bottom.jsp#post" />