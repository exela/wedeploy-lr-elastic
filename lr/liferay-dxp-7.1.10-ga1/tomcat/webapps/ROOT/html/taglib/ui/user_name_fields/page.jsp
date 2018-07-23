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

<%@ include file="/html/taglib/ui/user_name_fields/init.jsp" %>

<aui:select label="language" name="languageId">

	<%
	for (Locale curLocale : LanguageUtil.getAvailableLocales()) {
	%>

		<aui:option label="<%= curLocale.getDisplayName(curLocale) %>" lang="<%= LocaleUtil.toW3cLanguageId(curLocale) %>" selected="<%= userLocale.getLanguage().equals(curLocale.getLanguage()) && userLocale.getCountry().equals(curLocale.getCountry()) %>" value="<%= LocaleUtil.toLanguageId(curLocale) %>" />

	<%
	}
	%>

</aui:select>

<aui:script sandbox="<%= true %>" use="liferay-portlet-url">
	var formData = {};

	var select = $('#<portlet:namespace />languageId');

	var userDetailsURL = Liferay.PortletURL.createURL('<%= themeDisplay.getURLCurrent() %>');

	var userNameFields = $('#<portlet:namespace />userNameFields');

	select.on(
		'change',
		function(event) {
			_.forEach(
				$('#<portlet:namespace />fm').formToArray(),
				function(item, index) {
					if (userNameFields.find('#' + item.name).length) {
						formData[item.name] = item.value;
					}
				}
			);

			userDetailsURL.setParameter('languageId', select.val());

			$.ajax(
				userDetailsURL.toString(),
				{
					beforeSend: function() {
						userNameFields.before('<div class="loading-animation" id="<portlet:namespace />loadingUserNameFields"></div>');

						userNameFields.hide();
					},
					complete: function() {
						$('#<portlet:namespace />loadingUserNameFields').remove();

						userNameFields.show();

						_.forEach(
							formData,
							function(item, index) {
								userNameFields.find('#' + index).val(item);
							}
						);
					},
					success: function(responseData) {
						var responseUserNameFields = $(responseData).find('#<portlet:namespace />userNameFields').html();

						userNameFields.html(responseUserNameFields);
					},
					timeout: 5000
				}
			);
		}
	);
</aui:script>

<%
FullNameDefinition fullNameDefinition = FullNameDefinitionFactory.getInstance(userLocale);
%>

<liferay-ui:error exception="<%= ContactNameException.MustHaveFirstName.class %>" message="please-enter-a-valid-first-name" />
<liferay-ui:error exception="<%= ContactNameException.MustHaveValidFullName.class %>" message="please-enter-a-valid-first-middle-and-last-name" />

<div id="<portlet:namespace />userNameFields">

	<%
	for (FullNameField fullNameField : fullNameDefinition.getFullNameFields()) {
		String fieldName = CamelCaseUtil.toCamelCase(fullNameField.getName());
	%>

		<c:choose>
			<c:when test="<%= fullNameField.isFreeText() %>">
				<aui:input bean="<%= bean %>" disabled="<%= !UsersAdminUtil.hasUpdateFieldPermission(permissionChecker, user, selUser, fieldName) %>" model="<%= User.class %>" name="<%= fieldName %>">
					<c:if test="<%= fullNameField.isRequired() %>">
						<aui:validator name="required" />
					</c:if>
				</aui:input>
			</c:when>
			<c:otherwise>
				<aui:select disabled="<%= !UsersAdminUtil.hasUpdateFieldPermission(permissionChecker, user, selUser, fieldName) %>" label="<%= fieldName %>" name='<%= fieldName.concat("Value") %>' showEmptyOption="<%= true %>">

					<%
					String listTypeName = StringPool.BLANK;

					if (selContact != null) {
						int listTypeId = BeanParamUtil.getInteger(selContact, request, fieldName.concat("Id"));

						try {
							ListType listType = ListTypeServiceUtil.getListType(listTypeId);

							listTypeName = listType.getName();
						}
						catch (Exception e) {
						}
					}

					for (String value : fullNameField.getValues()) {
					%>

						<aui:option label="<%= value %>" selected="<%= StringUtil.equalsIgnoreCase(listTypeName, value) %>" value="<%= value %>" />

					<%
					}
					%>

				</aui:select>
			</c:otherwise>
		</c:choose>

	<%
	}
	%>

</div>