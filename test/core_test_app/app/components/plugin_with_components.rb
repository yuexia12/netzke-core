class PluginWithComponents < Netzke::Plugin
  js_method :init, <<-JS
    function(cmp){
      this.cmp = cmp;
      this.cmp.tools = this.cmp.tools || [];
      this.cmp.tools.push({type: 'help', handler: function(){
        var w = this.instantiateChildNetzkeComponent('simple_window');
        w.show();
      }, scope: this});
    }
  JS

  component :simple_window, :width => 300, :height => 200, :title => "Window created by PluginWithComponents"
end