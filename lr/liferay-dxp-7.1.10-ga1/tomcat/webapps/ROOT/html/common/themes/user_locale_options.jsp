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

<%
String currentURL = PortalUtil.getCurrentURL(request);
%>

<c:if test="<%= !locale.equals(user.getLocale()) %>">

	<%
	Locale userLocale = user.getLocale();

	String userLocaleLanguageDir = LanguageUtil.get(userLocale, "lang.dir");
	%>

	<div dir="<%= userLocaleLanguageDir %>">
		<div class="d-block">
			<button class="close" id="ignoreUserLocaleOptions" type="button">&times;</button>

			<%= LanguageUtil.format(userLocale, "this-page-is-displayed-in-x", locale.getDisplayName(userLocale)) %>
		</div>

		<c:if test="<%= LanguageUtil.isAvailableLocale(userLocale) %>">

			<%
			String displayPreferredLanguageURLString = themeDisplay.getPathMain() + "/portal/update_language?p_l_id=" + themeDisplay.getPlid() + "&redirect=" + URLCodec.encodeURL(currentURL) + "&languageId=" + user.getLanguageId() + "&persistState=false&showUserLocaleOptionsMessage=false";
			%>

			<aui:a cssClass="d-block" href="<%= displayPreferredLanguageURLString %>">
				<%= LanguageUtil.format(userLocale, "display-the-page-in-x", userLocale.getDisplayName(userLocale)) %>
			</aui:a>
		</c:if>
	</div>

	<%
	String requestLanguageDir = LanguageUtil.get(request, "lang.dir");
	%>

	<div dir="<%= requestLanguageDir %>">

		<%
		String changePreferredLanguageURLString = themeDisplay.getPathMain() + "/portal/update_language?p_l_id=" + themeDisplay.getPlid() + "&redirect=" + URLCodec.encodeURL(currentURL) + "&languageId=" + themeDisplay.getLanguageId() + "&showUserLocaleOptionsMessage=false";
		%>

		<aui:a cssClass="d-block" href="<%= changePreferredLanguageURLString %>">
			<%= LanguageUtil.format(locale, "set-x-as-your-preferred-language", locale.getDisplayName(locale)) %>
		</aui:a>
	</div>

	<aui:script use="aui-base,liferay-store">
		var ignoreUserLocaleOptionsNode = A.one('#ignoreUserLocaleOptions');

		ignoreUserLocaleOptionsNode.on(
			'click',
			function() {
				Liferay.Store(
					{
						ignoreUserLocaleOptions: true,
						useHttpSession: true
					}
				);
			}
		);
	</aui:script>
</c:if>