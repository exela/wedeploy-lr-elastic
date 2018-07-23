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

if (referer.equals(themeDisplay.getPathMain() + "/portal/update_terms_of_use")) {
	referer = themeDisplay.getPathMain() + "?doAsUserId=" + themeDisplay.getDoAsUserId();
}

TermsOfUseContentProvider termsOfUseContentProvider = TermsOfUseContentProviderRegistryUtil.getTermsOfUseContentProvider();
%>

<div class="sheet sheet-lg">
	<div class="sheet-header">
		<div class="autofit-padded-no-gutters-x autofit-row">
			<div class="autofit-col autofit-col-expand">
				<h2 class="sheet-title">
					<liferay-ui:message key="terms-of-use" />
				</h2>
			</div>

			<div class="autofit-col">
				<%@ include file="/html/portal/select_language.jspf" %>
			</div>
		</div>
	</div>

	<aui:form action='<%= themeDisplay.getPathMain() + "/portal/update_terms_of_use" %>' name="fm">
		<aui:input name="doAsUserId" type="hidden" value="<%= themeDisplay.getDoAsUserId() %>" />
		<aui:input name="<%= WebKeys.REFERER %>" type="hidden" value="<%= referer %>" />

		<div class="sheet-text">
			<c:choose>
				<c:when test="<%= termsOfUseContentProvider != null %>">

					<%
					termsOfUseContentProvider.includeView(request, PipingServletResponse.createPipingServletResponse(pageContext));
					%>

				</c:when>
				<c:otherwise>
					<liferay-util:include page="/html/portal/terms_of_use_default.jsp" />
				</c:otherwise>
			</c:choose>
		</div>

		<div class="sheet-footer">
			<c:if test="<%= !user.isAgreedToTermsOfUse() %>">
				<aui:button-row>
					<aui:button type="submit" value="i-agree" />

					<%
					String taglibOnClick = "alert('" + UnicodeLanguageUtil.get(request, "you-must-agree-with-the-terms-of-use-to-continue") + "');";
					%>

					<aui:button onClick="<%= taglibOnClick %>" type="cancel" value="i-disagree" />
				</aui:button-row>
			</c:if>
		</div>
	</aui:form>
</div>