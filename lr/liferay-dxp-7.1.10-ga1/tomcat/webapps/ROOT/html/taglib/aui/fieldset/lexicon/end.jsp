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

<%@ include file="/html/taglib/aui/fieldset/init.jsp" %>

		</div>
	</div>
</fieldset>

<c:if test="<%= collapsible %>">
	<aui:script sandbox="<%= true %>" use="aui-base,liferay-store">
		var storeTask = A.debounce(Liferay.Store, 100);

		$('#<%= id %>Content').on(
			'hide.bs.collapse show.bs.collapse',
			function(event) {
				if (event.target.id === '<%= id %>Content') {
					storeTask(
						{
							'<%= id %>': (event.type === 'hide')
						}
					);
				}
			}
		);
	</aui:script>
</c:if>