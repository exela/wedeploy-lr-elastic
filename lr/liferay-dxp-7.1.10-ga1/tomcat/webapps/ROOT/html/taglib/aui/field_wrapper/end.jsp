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

<%@ include file="/html/taglib/aui/field_wrapper/init.jsp" %>

	<<%= showForLabel ? "label" : "span" %> <%= AUIUtil.buildLabel("wrapper", inlineField, showForLabel, name) %>>
		<liferay-ui:message key="<%= label %>" />

		<c:if test="<%= required %>">
			<span class="icon-asterisk text-warning">
				<span class="hide-accessible"><liferay-ui:message key="required" /></span>
			</span>
		</c:if>

		<c:if test="<%= Validator.isNotNull(helpMessage) %>">
			<liferay-ui:icon-help message="<%= helpMessage %>" />
		</c:if>
	</<%= showForLabel ? "label" : "span" %>>
</div>