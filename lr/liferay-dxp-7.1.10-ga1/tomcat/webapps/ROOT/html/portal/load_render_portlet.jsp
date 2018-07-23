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
Portlet portlet = (Portlet)request.getAttribute(WebKeys.RENDER_PORTLET);

portletDisplay.setId(portlet.getPortletId());
portletDisplay.setNamespace(PortalUtil.getPortletNamespace(portlet.getPortletId()));

String url = PortletURLUtil.getRefreshURL(request, themeDisplay, false);

Map<String, String[]> parameters = PortletURLUtil.getRefreshURLParameters(request);

String data = JSONFactoryUtil.looseSerializeDeep(parameters);
%>

<div class="loading-animation" id="p_p_id<%= portletDisplay.getNamespace() %>">
	<div id="p_p_id<%= portletDisplay.getNamespace() %>-defaultScreen"></div>
</div>

<aui:script use="aui-base">
	var ns = '<%= portletDisplay.getNamespace() %>';

	Liferay.Portlet.addHTML(
		{
			data: <%= data %>,
			onComplete: function(portlet, portletId) {
				portlet.refreshURL = '<%= HtmlUtil.escapeJS(url) %>';
			},
			placeHolder: A.one('#p_p_id' + ns),
			url: '<%= HtmlUtil.escapeJS(url) %>'
		}
	);
</aui:script>