module ActionDispatch
  module Routing
    RECORD_SELECT_ROUTING = {
        :collection => {:browse => :get},
        :member => {:select => :post}
    }
    class Mapper
      module Base
        def record_select_routes
          collection do
            ActionDispatch::Routing::RECORD_SELECT_ROUTING[:collection].each {|name, type| send(type, name)}
          end
          member do
            ActionDispatch::Routing::RECORD_SELECT_ROUTING[:member].each {|name, type| send(type, name)}
          end
        end
      end
    end
  end
end
