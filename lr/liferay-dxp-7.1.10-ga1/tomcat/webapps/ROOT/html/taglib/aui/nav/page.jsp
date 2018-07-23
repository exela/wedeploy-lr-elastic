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

<%@ include file="/html/taglib/aui/nav/init.jsp" %>

<c:if test="<%= Validator.isContent(bodyContentString) %>">
	<c:if test="<%= collapsible %>">
		<div class="collapse navbar-collapse" id="<%= id %>NavbarCollapse">
	</c:if>

	<ul aria-label="<%= Validator.isNull(ariaLabel) ? HtmlUtil.escapeAttribute(portletDisplay.getTitle()) : ariaLabel %>" class="lfr-nav nav <%= cssClass %>" id="<%= id %>" role="<%= Validator.isNull(ariaRole) ? "menubar" : ariaRole %>" <%= InlineUtil.buildDynamicAttributes(dynamicAttributes) %>>
		<%= bodyContentString %>
	</ul>

	<c:if test="<%= collapsible %>">
		</div>

		<aui:script use="aui-base,event-outside,liferay-menu-toggle">
			var toggleMenu = new Liferay.MenuToggle(
				{
					content: '#<%= id %>NavbarCollapse, #<%= id %>NavbarBtn',
					toggleTouch: true,
					trigger: '#<%= id %>NavbarBtn'
				}
			);
		</aui:script>
	</c:if>
</c:if>