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

<%@ include file="/html/taglib/ui/search_toggle/init.jsp" %>

<%
boolean advancedSearch = displayTerms.isAdvancedSearch();
%>

<div class="basic-search input-group">
	<div class="input-group-input">
		<div class="basic-search-slider" id="<%= id %>simple">
			<button class="basic-search-close btn btn-default" type="button">
				<span class="icon-remove"></span>
			</button>

			<input class="form-control search-query" <%= advancedSearch ? "disabled" : StringPool.BLANK %> id="<%= id + DisplayTerms.KEYWORDS %>" name="<portlet:namespace /><%= DisplayTerms.KEYWORDS %>" placeholder="<liferay-ui:message key="search" />..." title="search" type="text" value="<%= HtmlUtil.escapeAttribute(displayTerms.getKeywords()) %>" />
		</div>
	</div>

	<div class="input-group-btn">
		<button class="btn btn-default" type="submit">
			<span class="icon-search"></span>
		</button>

		<button class="btn btn-default toggle-advanced" id="<%= id %>toggleAdvanced" type="button">
			<span class="caret"></span>
		</button>
	</div>
</div>

<div class="taglib-search-toggle-advanced-wrapper">
	<div class="taglib-search-toggle-advanced <%= advancedSearch ? "toggler-content-expanded" : "toggler-content-collapsed" %>" id="<%= id %>advanced">
		<input id="<%= id + DisplayTerms.ADVANCED_SEARCH %>" name="<portlet:namespace /><%= DisplayTerms.ADVANCED_SEARCH %>" type="hidden" value="<%= advancedSearch %>" />

		<aui:button cssClass="close" name="closeAdvancedSearch" value="&times;" />

		<div class="taglib-search-toggle-advanced-content" id="<%= id %>advancedContent">
			<div class="form-group form-group-inline">
				<aui:select label="match" name="<%= DisplayTerms.AND_OPERATOR %>" wrapperCssClass="match-fields">
					<aui:option label="all" selected="<%= displayTerms.isAndOperator() %>" value="<%= true %>" />
					<aui:option label="any" selected="<%= !displayTerms.isAndOperator() %>" value="<%= false %>" />
				</aui:select>

				<span class="match-fields-legend">
					<liferay-ui:message key="of-the-following-fields" />
				</span>
			</div>