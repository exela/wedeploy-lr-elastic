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

<%@ include file="/html/taglib/init.jsp" %>

<%
String alertMessage = (String)request.getAttribute("liferay-ui:error:alertMessage");
String alertIcon = (String)request.getAttribute("liferay-ui:error:alertIcon");
String alertStyle = (String)request.getAttribute("liferay-ui:error:alertStyle");
String alertTitle = (String)request.getAttribute("liferay-ui:error:alertTitle");
boolean embed = GetterUtil.getBoolean((String)request.getAttribute("liferay-ui:error:embed"));
String rowBreak = (String)request.getAttribute("liferay-ui:error:rowBreak");
%>

<c:choose>
	<c:when test="<%= embed %>">
		<div class="alert alert-<%= alertStyle %>" role="alert">
			<span class="alert-indicator">
				<svg aria-hidden="true" class="lexicon-icon lexicon-icon-<%= alertIcon %>">
					<use xlink:href="<%= themeDisplay.getPathThemeImages() %>/lexicon/icons.svg#<%= alertIcon %>"></use>
				</svg>
			</span>

			<strong class="lead"><%= alertTitle %>:</strong><%= alertMessage %>
		</div>

		<%= rowBreak %>
	</c:when>
	<c:otherwise>
		<aui:script require="metal-dom/src/all/dom as dom,clay-alert/src/ClayToast as ClayToast">
			let alertContainer = document.getElementById('alertContainer');

			if (!alertContainer) {
				alertContainer = document.createElement('div');
				alertContainer.id = 'alertContainer';

				dom.addClasses(alertContainer, 'alert-notifications alert-notifications-fixed');
				dom.enterDocument(alertContainer);
			}
			else {
				dom.removeChildren(alertContainer);
			}

			const clayToast = new ClayToast.default(
				{
					autoClose: true,
					destroyOnHide: true,
					events: {
						'disposed': function(event) {
							if (!alertContainer.hasChildNodes()) {
								dom.exitDocument(alertContainer);
							}
						}
					},
					message: '<%= HtmlUtil.escapeJS(alertMessage) %>',
					spritemap: '<%= themeDisplay.getPathThemeImages() %>/lexicon/icons.svg',
					style: '<%= alertStyle %>',
					title: '<%= alertTitle %>'
				},
				alertContainer
			);

			dom.removeClasses(clayToast.element, 'show');

			requestAnimationFrame(
				function() {
					dom.addClasses(clayToast.element, 'show');
				}
			);
		</aui:script>
	</c:otherwise>
</c:choose>