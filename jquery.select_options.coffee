###
Created by Kyle Ellman
https://github.com/kyleellman/jquery-select-options
###

(($, window) ->
  # This function will add an option tag to the desired element, either a select menu or optgroup
  # Required:
  #   selectMenu: element to which the option will be added
  #   value: value of the option
  #   text: display text of the option
  # Optional:
  #   selected: value of the option to be selected. This will automatically select the option of the values match
  addOption = (selectMenu, value, text, selected) ->
    newOption = $('<option></option>').attr('value', value).text(text)
    newOption.attr('selected', 'selected') if value == selected
    selectMenu.append newOption
  
  # This function will replace the options of a select menu
  # Required: 
  #   options: This can be an array of objects (example: {text: "display text", value: "the value"}),
  #            or a hash of arrays whose keys are optgroup names
  # Optional:
  #   otherOptions: This is a hash of optional settings:
  #     - includeBlank: a blank option added to the top of the select menu
  #     - selected: The default selected option of the select menu
  $.fn.selectOptions = (options, otherOptions = {}) ->
    # Remove old options
    @empty()
    
    # Blank option
    if otherOptions?.includeBlank
      addOption @, '', otherOptions.includeBlank
      
    # No optgroups
    if options instanceof Array
      for option in options
        addOption @, option.value, option.text, otherOptions?.selected
    
    # Optgroups
    else
      for groupName, groupOptions of options
        newGroup = $('<optgroup></optgroup>').attr('label', groupName)
        for option in groupOptions
          addOption newGroup, option.value, option.text, otherOptions?.selected
        @append newGroup

) jQuery, window
