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

<%@ include file="/html/taglib/ui/form_navigator/init.jsp" %>

<%
String randomNamespace = PortalUtil.generateRandomKey(request, "taglib_ui_form_navigator_init") + StringPool.UNDERLINE;

String tabs1Param = randomNamespace + "tabs1";
String tabs1Value = GetterUtil.getString(SessionClicks.get(request, namespace + id, null));

List<String> filterCategoryKeys = new ArrayList<String>();

for (String categoryKey : categoryKeys) {
	List<FormNavigatorEntry<Object>> formNavigatorEntries = FormNavigatorEntryUtil.getFormNavigatorEntries(id, categoryKey, user, formModelBean);

	if (ListUtil.isNotEmpty(formNavigatorEntries)) {
		filterCategoryKeys.add(categoryKey);
	}
}
%>

<c:choose>
	<c:when test="<%= deprecatedCategorySections.length > 0 %>">
		<%@ include file="/html/taglib/ui/form_navigator/lexicon/deprecated_sections.jspf" %>
	</c:when>
	<c:when test="<%= filterCategoryKeys.size() > 1 %>">
		<liferay-ui:tabs
			names="<%= StringUtil.merge(filterCategoryKeys) %>"
			param="<%= tabs1Param %>"
			refresh="<%= false %>"
			type="tabs nav-tabs-default"
			value="<%= tabs1Value %>"
		>

			<%
			for (String categoryKey : filterCategoryKeys) {
				List<FormNavigatorEntry<Object>> formNavigatorEntries = FormNavigatorEntryUtil.getFormNavigatorEntries(id, categoryKey, user, formModelBean);

				request.setAttribute("currentTab", categoryKey);
			%>

				<liferay-ui:section>
					<%@ include file="/html/taglib/ui/form_navigator/lexicon/sections.jspf" %>
				</liferay-ui:section>

			<%
			}

			String errorTab = (String)request.getAttribute("errorTab");

			if (Validator.isNotNull(errorTab)) {
				request.setAttribute(WebKeys.ERROR_SECTION, errorTab);
			}
			%>

		</liferay-ui:tabs>
	</c:when>
	<c:otherwise>

		<%
		List<FormNavigatorEntry<Object>> formNavigatorEntries = FormNavigatorEntryUtil.getFormNavigatorEntries(id, user, formModelBean);
		%>

		<%@ include file="/html/taglib/ui/form_navigator/lexicon/sections.jspf" %>
	</c:otherwise>
</c:choose>

<c:if test="<%= showButtons %>">
	<aui:button-row>
		<aui:button primary="<%= true %>" type="submit" />

		<aui:button href="<%= backURL %>" type="cancel" />
	</aui:button-row>
</c:if>

<aui:script require="metal-dom/src/dom,metal-uri/src/Uri">
	AUI().use(
		'liferay-store',
		function(A) {
			var dom = metalDomSrcDom.default;
			var uri = metalUriSrcUri.default;

			var redirectField = dom.toElement('input[name="<portlet:namespace />redirect"]');
			var tabs1Param = '<portlet:namespace /><%= tabs1Param %>';

			var updateRedirectField = function(event) {
				var redirectURL = new uri(redirectField.value);

				redirectURL.setParameterValue(tabs1Param, event.id);

				redirectField.value = redirectURL.toString();

				Liferay.Store('<portlet:namespace /><%= id %>', event.id);
			};

			var clearFormNavigatorHandles = function(event) {
				if (event.portletId === '<%= portletDisplay.getRootPortletId() %>') {
					Liferay.detach('showTab', updateRedirectField);
					Liferay.detach('destroyPortlet', clearFormNavigatorHandles);
				}
			};

			if (redirectField) {
				var currentURL = new uri(document.location.href);

				var tabs1Value = currentURL.getParameterValue(tabs1Param);

				if (tabs1Value) {
					updateRedirectField(
						{
							id: tabs1Value
						}
					);
				}

				Liferay.on('showTab', updateRedirectField);
				Liferay.on('destroyPortlet', clearFormNavigatorHandles);
			}
		}
	);
</aui:script>