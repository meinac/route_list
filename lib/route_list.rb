require "route_list/version"

module RouteList

  class Route
  
    class << self

      def list
        routes.inject({}) do |data, route|
          controller = route.defaults[:controller]
          action = route.defaults[:action]
          verb = %W{ GET POST PUT PATCH DELETE OPTIONS }.grep(route.verb).first
          data[controller] = data.fetch(controller, {}).merge({action => verb})
          data
        end
      end

      def routes
        Rails.application.routes.routes
      end

    end

  end

end
