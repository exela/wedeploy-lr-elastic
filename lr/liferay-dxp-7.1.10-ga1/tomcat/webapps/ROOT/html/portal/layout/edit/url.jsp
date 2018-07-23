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

<%@ include file="/html/portal/layout/edit/init.jsp" %>

<%
String url = StringPool.BLANK;

if (selLayout != null) {
	UnicodeProperties typeSettingsProperties = selLayout.getTypeSettingsProperties();

	url = typeSettingsProperties.getProperty("url", StringPool.BLANK);
}
%>

<aui:input cssClass="lfr-input-text-container" id="url" label="url" name="TypeSettingsProperties--url--" type="text" value="<%= url %>">
	<aui:validator errorMessage="please-enter-a-valid-url" name="required" />
</aui:input>

<aui:script use="liferay-form">
	var form = Liferay.Form.get('<portlet:namespace />addPageFm');

	if (!form) {
		form = Liferay.Form.get('<portlet:namespace />editLayoutFm');
	}

	if (form) {
		var rules = form.formValidator.get('rules');

		var fieldName = '<portlet:namespace />TypeSettingsProperties--url--';

		if (!(fieldName in rules)) {
			rules[fieldName] = {
				custom: false,
				required: true
			};
		}
	}
</aui:script>