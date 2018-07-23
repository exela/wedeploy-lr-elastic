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

<%@ include file="/html/taglib/aui/form/init.jsp" %>

	<c:if test="<%= (checkboxNames != null) && !checkboxNames.isEmpty() %>">
		<aui:input name="checkboxNames" type="hidden" value="<%= StringUtil.merge(checkboxNames) %>" />
	</c:if>

	<c:if test="<%= Validator.isNotNull(onSubmit) %>">
		</fieldset>
	</c:if>
</form>

<%
String fullName = namespace + HtmlUtil.escapeJS(name);
%>

<aui:script use="liferay-form">
	Liferay.Form.register(
		{
			id: '<%= fullName %>'

			<c:if test="<%= validatorTagsMap != null %>">
				, fieldRules: [

					<%
					int i = 0;

					for (Map.Entry<String, List<ValidatorTag>> entry : validatorTagsMap.entrySet()) {
						String fieldName = entry.getKey();
						List<ValidatorTag> validatorTags = entry.getValue();

						for (ValidatorTag validatorTag : validatorTags) {
					%>

							<%= (i != 0) ? StringPool.COMMA : StringPool.BLANK %>

							{
								body: <%= validatorTag.getBody() %>,
								custom: <%= validatorTag.isCustom() %>,
								errorMessage: '<%= UnicodeLanguageUtil.get(resourceBundle, validatorTag.getErrorMessage()) %>',
								fieldName: '<%= namespace + HtmlUtil.escapeJS(fieldName) %>',
								validatorName: '<%= validatorTag.getName() %>'
							}

					<%
							i++;
						}
					}
					%>

				]
			</c:if>

			<c:if test="<%= Validator.isNotNull(onSubmit) %>">
				, onSubmit: function(event) {
					<%= onSubmit %>
				}
			</c:if>

			, validateOnBlur: <%= validateOnBlur %>
		}
	);

	var onDestroyPortlet = function(event) {
		if (event.portletId === '<%= portletDisplay.getId() %>') {
			delete Liferay.Form._INSTANCES['<%= fullName %>'];
		}
	};

	Liferay.on('destroyPortlet', onDestroyPortlet);

	<c:if test="<%= Validator.isNotNull(onSubmit) %>">
		A.all('#<%= fullName %> .input-container').removeAttribute('disabled');
	</c:if>

	Liferay.fire(
		'<portlet:namespace />formReady',
		{
			formName: '<%= fullName %>'
		}
	);
</aui:script>