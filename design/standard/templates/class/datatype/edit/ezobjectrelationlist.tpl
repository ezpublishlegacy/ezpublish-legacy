{let content=$class_attribute.content
     class_list=$content.class_constraint_list
     default_placement=$content.default_placement}

<div class="block">
    <div class="element">
        <label>{"Allowed classes"|i18n("design/standard/class/datatype")}</label><div class="labelbreak"></div>
        <p>{'Select which classes user can create'|i18n('design/standard/class/datatype')}</p>
        <select class="listbox" name="ContentClass_ezobjectrelationlist_class_list_{$class_attribute.id}[]" multiple="multiple">
            <option value="" {section show=$class_list|lt(1)}selected="selected"{/section}>{'Any'|i18n('design/standard/class/datatype')}</option>
        {section name=Class loop=fetch(class,list)}
            <option value="{$:item.identifier|wash}" {section show=$class_list|contains($:item.identifier)}selected="selected"{/section}>{$:item.name}</option>
        {/section}
        </select>
    </div>

{*
    <div class="element">
        <label>{"Default placement for objects"|i18n("design/standard/class/datatype")}</label><div class="labelbreak"></div>
        {section show=$default_placement}
            <p>{'New objects will be placed in %nodename'
                |i18n('design/standard/class/datatype',,
                      hash('%nodename',concat('<i>',
                                              fetch(content,node,hash(node_id,$default_placement.node_id)).name,
                                              '</i>')
                          )
                     )}</p>
            <input type="hidden" name="ContentClass_ezobjectrelationlist_placement_{$class_attribute.id}" value="{$default_placement.node_id}" />
        {section-else}
            <p>{'New objects will not be placed in the content tree'|i18n('design/standard/class/datatype')}</p>
            <input type="hidden" name="ContentClass_ezobjectrelationlist_placement_{$class_attribute.id}" value="" />
        {/section}
        <input class="button" type="submit" name="CustomActionButton[{$class_attribute.id}_browse_for_placement]" value="{'Select placement'|i18n('design/standard/class/datatype')}" />
        {section show=$default_placement}
            <input class="button" type="submit" name="CustomActionButton[{$class_attribute.id}_disable_placement]" value="{'Disable placement'|i18n('design/standard/class/datatype')}" />
        {/section}
    </div>
*}

</div>
{/let}