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
UserSearch searchContainer = (UserSearch)request.getAttribute("liferay-ui:search:searchContainer");

UserDisplayTerms displayTerms = (UserDisplayTerms)searchContainer.getDisplayTerms();
%>

<liferay-ui:search-toggle
	buttonLabel="search"
	displayTerms="<%= displayTerms %>"
	id="toggle_id_user_search"
>
	<%@ include file="/html/taglib/ui/user_search_form/user_name.jspf" %>

	<aui:fieldset>
		<aui:input inlineField="<%= true %>" name="<%= UserDisplayTerms.SCREEN_NAME %>" size="20" type="text" value="<%= displayTerms.getScreenName() %>" />

		<aui:input inlineField="<%= true %>" name="<%= UserDisplayTerms.EMAIL_ADDRESS %>" size="20" type="text" value="<%= displayTerms.getEmailAddress() %>" />
	</aui:fieldset>
</liferay-ui:search-toggle>