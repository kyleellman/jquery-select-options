# jQuery Select Options

This is a jQuery plugin to replace the options in a select menu.

## Examples

Note: These examples assume you have already included jQuery and this plugin.

### Simple usage

```
  <script type="text/javascript">
  $(function() {
    var options = [
      { text: 'one', value: 1 },
      { text: 'two', value: 2 }
    ];
  
    $('select').selectOptions(options);
  });
  </script>
  
  
  <select></select>
```

### Preselected option

```
  <script type="text/javascript">
  $(function() {
    var options = [
      { text: 'one', value: 1 },
      { text: 'two', value: 2 }
    ];
  
    $('select').selectOptions(options, {selected: 2});
  });
  </script>
  
  
  <select></select>
```

### Add a blank option

```
  <script type="text/javascript">
  $(function() {
    var options = [
      { text: 'one', value: 1 },
      { text: 'two', value: 2 }
    ];
  
    $('select').selectOptions(options, {includeBlank: 'choose something'});
  });
  </script>
  
  
  <select></select>
```


### Optgroups

```
<script type="text/javascript">
  $(function() {
    var options = {
      "Group 1": [
        { text: 'one', value: 1 },
        { text: 'two', value: 2}
      ],
      "Group 2": [
        { text: 'three', value: 3 },
        { text: 'four', value: 4 }
      ]
    };
    
    $('select').selectOptions(options);
  });
</script>


<select></select>
```
