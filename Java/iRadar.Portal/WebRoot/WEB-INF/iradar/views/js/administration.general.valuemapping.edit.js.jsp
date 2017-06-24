<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="com.isoft.iradar.Cphp"%>
<%@ page import="com.isoft.iradar.inc.Defines"%>
<%@ page import="com.isoft.iradar.utils.CJs"%>
<%@ page import="com.isoft.iradar.helpers.CHtml"%>
<script type="text/x-jquery-tmpl" id="mappingRow">
	<tr>
		<td>
			<input class="input text " type="text" name="mappings[#{mappingNum}][value]" value="#{value}" size="20" maxlength="64">
		</td>
		<td>&rArr;</td>
		<td>
			<input class="input text" type="text" name="mappings[#{mappingNum}][newvalue]" value="#{newvalue}" size="30" maxlength="64">
		</td>
		<td>
			<input class="input link_menu remove icon removeMapping" type="button" value="<%=CHtml.encode(Cphp._("Remove"))%>">
		</td>
	</tr>
</script>
<script type="text/javascript">
	var mappingsManager = (function() {
		var tpl = new Template(jQuery('#mappingRow').html()),
			mappingsCount = 0,
			nextMappingNum = 0;

		function renderMappingRow(mapping) {
			mapping.mappingNum = nextMappingNum++;
			jQuery(tpl.evaluate(mapping)).insertBefore('#mappingsTable tr:last-child');

			if (mapping.mappingid !== void(0)) {
				jQuery('#mappingsTable tr:last-child')
					.prev()
					.find('td')
					.first()
					.append('<input type="hidden" name="mappings[' + mapping.mappingNum + '][mappingid]" value="' + mapping.mappingid + '">');
			}

			mappingsCount++;
			toggleSaveButton();
		}

		function toggleSaveButton() {
			if (mappingsCount === 0) {
				jQuery('#save').button('disable');
			}
			else if (mappingsCount === 1) {
				jQuery('#save').button('enable');
			}
		}

		return {
			addNew: function() {
				renderMappingRow({});
				toggleSaveButton();
			},

			addExisting: function(mappings) {
				for (var i = 0, ln = mappings.length; i < ln; i++) {
					renderMappingRow(mappings[i]);
				}
			},

			remove: function() {
				if(mappingsCount-1 === 0){
					showModalWindow(
							t(<%=CJs.encodeJson(Cphp._("Value mapping"))%>),
							<%=CJs.encodeJson(Cphp._("The value mapping is not null"))%>,
							[{text: t(<%=CJs.encodeJson(Cphp._("Close"))%>), click: function() {
								jQuery(this).dialog('destroy');
							}}]
						);
				}else{
					jQuery(this).closest('tr').remove();

					mappingsCount--;
					toggleSaveButton();
				}
			}
		};
	}());

	jQuery(document).ready(function() {
		jQuery('#save').button();
		jQuery('#addMapping').click(mappingsManager.addNew);
		jQuery('#mappingsTable tbody').on('click', 'input.removeMapping', mappingsManager.remove);
	});
</script>
