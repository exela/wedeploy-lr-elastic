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

<portlet:defineObjects />

<%
String tilesPortletContent = GetterUtil.getString(request.getAttribute(WebKeys.PORTLET_CONTENT_JSP));

if (Validator.isBlank(tilesPortletContent)) {
	tilesPortletContent = GetterUtil.getString(TilesAttributeUtil.getTilesAttribute(pageContext, "portlet_content"));
}

TilesAttributeUtil.removeComponentContext(pageContext);

Portlet portlet = (Portlet)request.getAttribute(WebKeys.RENDER_PORTLET);

PortletPreferences portletSetup = portletDisplay.getPortletSetup();

LiferayRenderResponse liferayRenderResponse = (LiferayRenderResponse)LiferayPortletUtil.getLiferayPortletResponse(renderResponse);

// Portlet title

String portletTitle = PortletConfigurationUtil.getPortletTitle(portletSetup, themeDisplay.getLanguageId());

if (portletDisplay.isAccess() && portletDisplay.isActive() && Validator.isNull(portletTitle)) {
	portletTitle = liferayRenderResponse.getTitle();
}

if (Validator.isNull(portletTitle)) {
	portletTitle = PortalUtil.getPortletTitle(portlet, application, locale);
}

portletDisplay.setTitle(portletTitle);

// Portlet description

if (Validator.isNull(portletDisplay.getDescription())) {
	String portletDescription = PortalUtil.getPortletDescription(portlet, application, locale);

	portletDisplay.setDescription(portletDescription);
}

Group group = layout.getGroup();
%>

<c:choose>
	<c:when test="<%= themeDisplay.isStateExclusive() %>">
		<%@ include file="/html/common/themes/portlet_content_wrapper.jspf" %>
	</c:when>
	<c:when test="<%= themeDisplay.isStatePopUp() %>">
		<div class="portlet-body">
			<c:if test='<%= !tilesPortletContent.endsWith("/error.jsp") %>'>
				<liferay-theme:portlet-messages
					group="<%= group %>"
					portlet="<%= portlet %>"
				/>
			</c:if>

			<c:choose>
				<c:when test="<%= Validator.isNotNull(tilesPortletContent) %>">
					<liferay-util:include page="<%= StrutsUtil.TEXT_HTML_DIR + tilesPortletContent %>" />
				</c:when>
				<c:otherwise>

					<%
					pageContext.getOut().print(renderRequest.getAttribute(WebKeys.PORTLET_CONTENT));
					%>

				</c:otherwise>
			</c:choose>
		</div>
	</c:when>
	<c:otherwise>

		<%
		Boolean renderPortletResource = (Boolean)request.getAttribute(WebKeys.RENDER_PORTLET_RESOURCE);

		boolean runtimePortlet = (renderPortletResource != null) && renderPortletResource.booleanValue();

		boolean freeformPortlet = themeDisplay.isFreeformLayout() && !runtimePortlet && !layoutTypePortlet.hasStateMax();

		String containerStyles = StringPool.BLANK;

		if (freeformPortlet) {
			Properties freeformStyleProps = PropertiesUtil.load(portletSetup.getValue("portlet-freeform-styles", StringPool.BLANK));

			containerStyles = "style=\"height: ".concat(GetterUtil.getString(HtmlUtil.escapeAttribute(freeformStyleProps.getProperty("height")), "300px")).concat("; overflow: auto;\"");
		}
		%>

		<liferay-theme:wrap-portlet
			page="portlet.jsp"
		>
			<div class="<%= portletDisplay.isStateMin() ? "hide" : "" %> portlet-content-container" <%= containerStyles %>>
				<%@ include file="/html/common/themes/portlet_content_wrapper.jspf" %>
			</div>
		</liferay-theme:wrap-portlet>

		<c:if test="<%= freeformPortlet %>">
			<div class="portlet-resize-container">
				<div class="portlet-resize-handle"></div>
			</div>
		</c:if>
	</c:otherwise>
</c:choose>