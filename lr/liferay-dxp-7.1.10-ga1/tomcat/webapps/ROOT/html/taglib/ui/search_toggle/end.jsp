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

		</div>
	</div>
</div>

<aui:script position="inline" use="aui-toggler,event-key">
	var Util = Liferay.Util;

	var advancedNode = A.one('#<%= id %>advanced');
	var advancedSearchNode = A.one('#<%= id + DisplayTerms.ADVANCED_SEARCH %>');
	var closeAdvancedNode = A.one('#<portlet:namespace />closeAdvancedSearch');
	var keywordsNode = A.one('#<%= id + DisplayTerms.KEYWORDS %>');
	var simpleNode = A.one('#<%= id %>simple');
	var toggleAdvancedNode = A.one('#<%= id %>toggleAdvanced');

	var toggleDisabled = function(state) {
		Util.toggleDisabled(simpleNode.all('input'), state);
		Util.toggleDisabled(advancedNode.all('input'), !state);
	};

	var toggler = new A.Toggler(
		{
			animated: true,
			content: advancedNode,
			expanded: <%= displayTerms.isAdvancedSearch() %>,
			header: toggleAdvancedNode,
			transition: {
				duration: 0.2,
				easing: 'cubic-bezier(0, 0.1, 0, 1.0)'
			}
		}
	);

	toggler.on(
		'expandedChange',
		function() {
			var expanded = !toggler.get('expanded');

			advancedSearchNode.val(expanded);

			toggleDisabled(expanded);

			var inputNode = keywordsNode;

			if (expanded) {
				inputNode = advancedNode.one('input:text');
			}

			Util.focusFormField(inputNode);
		}
	);

	closeAdvancedNode.on('click', A.fn(0, 'toggle', toggler));
</aui:script>

<c:if test="<%= autoFocus %>">
	<aui:script>
		Liferay.Util.focusFormField('#<%= id + DisplayTerms.KEYWORDS %>');
	</aui:script>
</c:if>