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

<%@ include file="/html/taglib/ui/header/init.jsp" %>

<%
if (Validator.isNull(backLabel)) {
	backLabel = LanguageUtil.get(resourceBundle, "back");
}

String headerTitle = (localizeTitle) ? LanguageUtil.get(resourceBundle, title) : title;
%>

<div class="taglib-header <%= cssClass %>">
	<c:if test="<%= showBackURL && Validator.isNotNull(backURL) %>">
		<liferay-ui:icon
			cssClass="header-back-to"
			icon="angle-left"
			id="TabsBack"
			label="<%= false %>"
			markupView="lexicon"
			message="<%= escapeXml ? HtmlUtil.escape(backLabel) : backLabel %>"
			method="get"
			url="<%= backURL %>"
		/>
	</c:if>

	<h3 class="header-title">
		<span>
			<c:choose>
				<c:when test="<%= escapeXml %>">
					<%= HtmlUtil.escape(headerTitle) %>
				</c:when>
				<c:otherwise>
					<%= headerTitle %>
				</c:otherwise>
			</c:choose>
		</span>
	</h3>
</div>