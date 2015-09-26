$(function() {
  var $element = $(".form-field-has-many select");
      debugger;

  $element.selectize({
    preload: true,
    render: {
      option: function(item, escape) {
        return '<div>' + escape(item.id) + '</div>';
      }
    },
    load: function(query, callback) {
      $.ajax({
        url: '/admin/users.json', //+ encodeURIComponent(query),
        type: 'GET',
        error: function() {
          debugger;
          callback();
        },
        success: function(res) {
          debugger;
          callback(res.users);
        }
      });
    }
  });
});
