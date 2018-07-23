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
UserSearchTerms searchTerms = (UserSearchTerms)request.getAttribute("liferay-ui:user-search-container-results:searchTerms");
LinkedHashMap<String, Object> userParams = (LinkedHashMap<String, Object>)request.getAttribute("liferay-ui:user-search-container-results:userParams");
SearchContainer userSearchContainer = (SearchContainer)request.getAttribute("liferay-ui:user-search-container-results:searchContainer");
%>

<liferay-ui:search-container
	id="<%= userSearchContainer.getId(request, namespace) %>"
	searchContainer="<%= userSearchContainer %>"
>
	<liferay-ui:search-container-results>

		<%
		if (searchTerms.isAdvancedSearch()) {
			total = UserLocalServiceUtil.searchCount(company.getCompanyId(), searchTerms.getFirstName(), searchTerms.getMiddleName(), searchTerms.getLastName(), searchTerms.getScreenName(), searchTerms.getEmailAddress(), searchTerms.getStatus(), userParams, searchTerms.isAndOperator());

			results = UserLocalServiceUtil.search(company.getCompanyId(), searchTerms.getFirstName(), searchTerms.getMiddleName(), searchTerms.getLastName(), searchTerms.getScreenName(), searchTerms.getEmailAddress(), searchTerms.getStatus(), userParams, searchTerms.isAndOperator(), searchContainer.getStart(), searchContainer.getEnd(), searchContainer.getOrderByComparator());
		}
		else {
			total = UserLocalServiceUtil.searchCount(company.getCompanyId(), searchTerms.getKeywords(), searchTerms.getStatus(), userParams);

			searchContainer.setTotal(total);

			results = UserLocalServiceUtil.search(company.getCompanyId(), searchTerms.getKeywords(), searchTerms.getStatus(), userParams, searchContainer.getStart(), searchContainer.getEnd(), searchContainer.getOrderByComparator());
		}

		searchContainer.setTotal(total);
		searchContainer.setResults(results);
		%>

	</liferay-ui:search-container-results>
</liferay-ui:search-container>