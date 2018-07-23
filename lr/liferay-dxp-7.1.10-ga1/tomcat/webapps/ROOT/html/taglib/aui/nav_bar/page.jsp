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

<%@ include file="/html/taglib/aui/nav_bar/init.jsp" %>

<c:if test="<%= Validator.isContent(bodyContentString) %>">
	<div class="navbar navbar-default <%= cssClass %>" id="<%= id %>" <%= AUIUtil.buildData(data) %> <%= InlineUtil.buildDynamicAttributes(dynamicAttributes) %>>
		<div class="container-fluid">
			<c:if test="<%= Validator.isNotNull(responsiveButtons) %>">
				<div class="navbar-header">
					<%= responsiveButtons %>
				</div>
			</c:if>

			<%= bodyContentString %>
		</div>
	</div>
</c:if>