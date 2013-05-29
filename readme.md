# jQuery Select Options

This is a jQuery plugin to replace the options in a select menu.

## Examples

Note: These examples assume you have already included jQuery and this plugin.

### Simple usage

```javascript
$(function() {
  var options = [
    { text: 'one', value: 1 },
    { text: 'two', value: 2 }
  ];

  $('select').selectOptions(options);
});
```

### Preselected option

```javascript
$(function() {
  var options = [
    { text: 'one', value: 1 },
    { text: 'two', value: 2 }
  ];

  $('select').selectOptions(options, { selected: 2 });
});
```

### Add a blank option

```javascript
$(function() {
  var options = [
    { text: 'one', value: 1 },
    { text: 'two', value: 2 }
  ];

  $('select').selectOptions(options, { includeBlank: 'choose something' });
});
```

### Optgroups

```javascript
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
```

### Putting it all together

```javascript
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
  
  $('select').selectOptions(options, { includeBlank: 'choose something', selected: 3 });
});
```

## Contributing
I've chosen to write this plugin in Coffeescript and compile it for easy use. If you wish to contribute, please edit the Coffeescript file and compile it into JS before committing.

For directions on how to use Coffeescript, please reference http://coffeescript.org
