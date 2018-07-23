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
UserGroupDisplayTerms searchTerms = (UserGroupDisplayTerms)request.getAttribute("liferay-ui:user-group-search-container-results:searchTerms");
LinkedHashMap<String, Object> userGroupParams = (LinkedHashMap<String, Object>)request.getAttribute("liferay-ui:user-group-search-container-results:userGroupParams");
SearchContainer userGroupSearchContainer = (SearchContainer)request.getAttribute("liferay-ui:user-group-search-container-results:searchContainer");
%>

<liferay-ui:search-container
	id="<%= userGroupSearchContainer.getId(request, namespace) %>"
	searchContainer="<%= userGroupSearchContainer %>"
>
	<liferay-ui:search-container-results>

		<%
		String keywords = searchTerms.getKeywords();

		if (Validator.isNotNull(keywords)) {
			userGroupParams.put("expandoAttributes", keywords);
		}

		total = UserGroupLocalServiceUtil.searchCount(company.getCompanyId(), keywords, userGroupParams);

		searchContainer.setTotal(total);

		results = UserGroupLocalServiceUtil.search(company.getCompanyId(), keywords, userGroupParams, searchContainer.getStart(), searchContainer.getEnd(), searchContainer.getOrderByComparator());

		searchContainer.setResults(results);
		%>

	</liferay-ui:search-container-results>
</liferay-ui:search-container>