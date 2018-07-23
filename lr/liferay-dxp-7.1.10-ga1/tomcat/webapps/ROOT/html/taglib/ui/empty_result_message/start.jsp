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

<%@ include file="/html/taglib/ui/empty_result_message/init.jsp" %>

<%
String cssClass = (String)request.getAttribute("liferay-ui:empty-result-message:cssClass");
String message = GetterUtil.getString((String)request.getAttribute("liferay-ui:empty-result-message:message"));
%>

<c:choose>
	<c:when test="<%= compact %>">
		<p class="text-muted">
			<liferay-ui:message key="<%= message %>" />
		</p>
	</c:when>
	<c:otherwise>
		<div class="sheet taglib-empty-result-message">
			<div class="<%= cssClass %>"></div>

			<c:if test="<%= Validator.isNotNull(message) %>">
				<div class="sheet-text text-center text-muted">
					<liferay-ui:message key="<%= message %>" />
				</div>
			</c:if>
	</c:otherwise>
</c:choose>