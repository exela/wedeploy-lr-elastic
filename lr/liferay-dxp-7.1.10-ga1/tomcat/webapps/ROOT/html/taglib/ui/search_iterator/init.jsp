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

<%@ page import="com.liferay.portal.kernel.dao.search.ResultRowSplitterEntry" %><%@
page import="com.liferay.taglib.ui.SearchIteratorTag" %>

<%
SearchContainer searchContainer = (SearchContainer)request.getAttribute("liferay-ui:search:searchContainer");

boolean compactEmptyResultsMessage = GetterUtil.getBoolean((String)request.getAttribute("liferay-ui:search:compactEmptyResultsMessage"));
String displayStyle = GetterUtil.getString((String)request.getAttribute("liferay-ui:search-iterator:displayStyle"), SearchIteratorTag.DEFAULT_DISPLAY_STYLE);
String markupView = (String)request.getAttribute("liferay-ui:search-iterator:markupView");
boolean paginate = GetterUtil.getBoolean((String)request.getAttribute("liferay-ui:search-iterator:paginate"));
ResultRowSplitter resultRowSplitter = (ResultRowSplitter)request.getAttribute("liferay-ui:search-iterator:resultRowSplitter");
String type = (String)request.getAttribute("liferay-ui:search:type");

String id = searchContainer.getId(request, namespace);

String emptyResultsMessage = searchContainer.getEmptyResultsMessage();
String emptyResultsMessageCssClass = searchContainer.getEmptyResultsMessageCssClass();
List<String> headerNames = searchContainer.getHeaderNames();
List<String> normalizedHeaderNames = searchContainer.getNormalizedHeaderNames();
Map orderableHeaders = searchContainer.getOrderableHeaders();
RowChecker rowChecker = searchContainer.getRowChecker();
RowMover rowMover = searchContainer.getRowMover();
List resultRows = searchContainer.getResultRows();
String summary = searchContainer.getSummary();

JSONArray primaryKeysJSONArray = JSONFactoryUtil.createJSONArray();
%>