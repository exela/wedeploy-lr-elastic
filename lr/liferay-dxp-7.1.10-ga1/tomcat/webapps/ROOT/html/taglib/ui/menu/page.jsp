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

<%@ include file="/html/taglib/ui/menu/init.jsp" %>

<%
Menu menu = (Menu)request.getAttribute("liferay-ui:menu:menu");

List<MenuItem> menuItems = menu.getMenuItems();
%>

<liferay-ui:icon-menu
	cssClass="<%= menu.getCssClass() %>"
	data="<%= menu.getData() %>"
	direction="<%= menu.getDirection() %>"
	extended="<%= menu.isExtended() %>"
	icon="<%= menu.getIcon() %>"
	markupView="<%= menu.getMarkupView() %>"
	message="<%= menu.getMessage() %>"
	scroll="<%= menu.isScroll() %>"
	showArrow="<%= menu.isShowArrow() %>"
	showExpanded="<%= menu.isShowExpanded() %>"
	showWhenSingleIcon="<%= menu.isShowWhenSingleIcon() %>"
	triggerCssClass="<%= menu.getTriggerCssClass() %>"
>

	<%
	for (MenuItem menuItem : menuItems) {
	%>

		<liferay-ui:menu-item
			menuItem="<%= menuItem %>"
		/>

	<%
	}
	%>

</liferay-ui:icon-menu>