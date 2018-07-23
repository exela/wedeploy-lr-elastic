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

<%@ taglib uri="http://liferay.com/tld/util" prefix="liferay-util" %>

<%@ page import="com.liferay.petra.string.StringBundler" %><%@
page import="com.liferay.portal.kernel.util.WebKeys" %><%@
page import="com.liferay.taglib.util.OutputTag" %>

<%
StringBundler bodyBottomSB = OutputTag.getDataSB(request, WebKeys.PAGE_BODY_BOTTOM);

if (bodyBottomSB != null) {
	bodyBottomSB.writeTo(out);
}
%>

<liferay-util:include page="/html/common/themes/body_bottom-ext.jsp" />