HTMLWidgets.widget({

  name: 'XJtreemap',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance

    return {

      renderValue: function(x) {

        var sample_data=HTMLWidgets.dataframeToD3(x.data)
        var visuolization=d3plus.viz()
               . container("#" + el.id)
               . data(sample_data)
               . type("tree_map")
               . id(["group","name"])
               . size("value")
               . draw()

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});