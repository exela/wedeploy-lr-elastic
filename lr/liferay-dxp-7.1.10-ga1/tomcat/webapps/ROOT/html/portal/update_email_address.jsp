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

<%@ include file="/html/portal/init.jsp" %>

<%
String currentURL = PortalUtil.getCurrentURL(request);

String referer = ParamUtil.getString(request, WebKeys.REFERER, currentURL);

if (referer.equals(themeDisplay.getPathMain() + "/portal/update_email_address")) {
	referer = themeDisplay.getPathMain() + "?doAsUserId=" + themeDisplay.getDoAsUserId();
}

String emailAddress1 = ParamUtil.getString(request, "emailAddress1");
String emailAddress2 = ParamUtil.getString(request, "emailAddress2");
%>

<div class="sheet sheet-lg">
	<div class="sheet-header">
		<div class="autofit-padded-no-gutters-x autofit-row">
			<div class="autofit-col autofit-col-expand">
				<h2 class="sheet-title">
					<liferay-ui:message key="change-email-address" />
				</h2>
			</div>

			<div class="autofit-col">
				<%@ include file="/html/portal/select_language.jspf" %>
			</div>
		</div>
	</div>

	<div class="sheet-text">
		<aui:form action='<%= themeDisplay.getPathMain() + "/portal/update_email_address" %>' method="post" name="fm">
			<aui:input name="p_auth" type="hidden" value="<%= AuthTokenUtil.getToken(request) %>" />
			<aui:input name="doAsUserId" type="hidden" value="<%= themeDisplay.getDoAsUserId() %>" />
			<aui:input name="<%= Constants.CMD %>" type="hidden" value="<%= Constants.UPDATE %>" />
			<aui:input name="<%= WebKeys.REFERER %>" type="hidden" value="<%= referer %>" />

			<c:if test="<%= !SessionErrors.isEmpty(request) %>">
				<div class="alert alert-danger">
					<c:choose>
						<c:when test="<%= SessionErrors.contains(request, UserEmailAddressException.MustBeEqual.class.getName()) %>">
							<liferay-ui:message key="the-email-addresses-you-entered-do-not-match" />
						</c:when>
						<c:when test="<%= SessionErrors.contains(request, UserEmailAddressException.MustNotBeDuplicate.class.getName()) %>">
							<liferay-ui:message key="the-email-address-you-requested-is-already-taken" />
						</c:when>
						<c:when test="<%= SessionErrors.contains(request, UserEmailAddressException.MustNotBeNull.class.getName()) %>">
							<liferay-ui:message key="please-enter-an-email-address" />
						</c:when>
						<c:when test="<%= SessionErrors.contains(request, UserEmailAddressException.MustNotBePOP3User.class.getName()) || SessionErrors.contains(request, UserEmailAddressException.MustNotBeReserved.class.getName()) %>">
							<liferay-ui:message key="the-email-address-you-requested-is-reserved" />
						</c:when>
						<c:when test="<%= SessionErrors.contains(request, UserEmailAddressException.MustNotUseCompanyMx.class.getName()) %>">
							<liferay-ui:message key="the-email-address-you-requested-is-not-valid-because-its-domain-is-reserved" />
						</c:when>
						<c:otherwise>
							<liferay-ui:message key="please-enter-a-valid-email-address" />
						</c:otherwise>
					</c:choose>
				</div>
			</c:if>

			<aui:fieldset label="email-address">
				<aui:input autoFocus="<%= true %>" class="lfr-input-text-container" label="email-address" name="emailAddress1" type="text" value="<%= emailAddress1 %>" />

				<aui:input class="lfr-input-text-container" label="enter-again" name="emailAddress2" type="text" value="<%= emailAddress2 %>" />
			</aui:fieldset>

			<aui:button-row>
				<aui:button type="submit" />
			</aui:button-row>
		</aui:form>
	</div>
</div>