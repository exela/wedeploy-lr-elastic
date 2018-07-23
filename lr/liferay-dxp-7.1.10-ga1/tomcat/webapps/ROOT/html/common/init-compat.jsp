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

<%@ page import="com.liferay.asset.kernel.AssetRendererFactoryRegistryUtil" %><%@
page import="com.liferay.asset.kernel.model.AssetCategory" %><%@
page import="com.liferay.asset.kernel.model.AssetEntry" %><%@
page import="com.liferay.asset.kernel.model.AssetRenderer" %><%@
page import="com.liferay.asset.kernel.model.AssetRendererFactory" %><%@
page import="com.liferay.asset.kernel.model.AssetTag" %><%@
page import="com.liferay.asset.kernel.model.AssetVocabulary" %><%@
page import="com.liferay.asset.kernel.service.AssetCategoryLocalServiceUtil" %><%@
page import="com.liferay.asset.kernel.service.AssetCategoryServiceUtil" %><%@
page import="com.liferay.asset.kernel.service.AssetEntryLocalServiceUtil" %><%@
page import="com.liferay.asset.kernel.service.AssetTagServiceUtil" %><%@
page import="com.liferay.asset.kernel.service.AssetVocabularyLocalServiceUtil" %><%@
page import="com.liferay.asset.kernel.service.AssetVocabularyServiceUtil" %><%@
page import="com.liferay.document.library.kernel.model.DLFileEntry" %><%@
page import="com.liferay.document.library.kernel.util.DLUtil" %><%@
page import="com.liferay.expando.kernel.model.ExpandoBridge" %><%@
page import="com.liferay.portal.kernel.comment.Comment" %><%@
page import="com.liferay.portal.kernel.portlet.LiferayPortletRequest" %><%@
page import="com.liferay.portal.kernel.portlet.LiferayPortletResponse" %><%@
page import="com.liferay.portal.kernel.repository.model.FileEntry" %><%@
page import="com.liferay.portal.kernel.search.RelatedSearchResult" %><%@
page import="com.liferay.portal.kernel.search.Summary" %><%@
page import="com.liferay.portal.kernel.webserver.WebServerServletTokenUtil" %><%@
page import="com.liferay.portlet.asset.util.AssetUtil" %><%@
page import="com.liferay.portlet.usersadmin.search.GroupSearch" %><%@
page import="com.liferay.portlet.usersadmin.search.GroupSearchTerms" %><%@
page import="com.liferay.trash.kernel.model.TrashEntry" %><%@
page import="com.liferay.trash.kernel.util.TrashUtil" %>

<%@ page import="java.util.Iterator" %>