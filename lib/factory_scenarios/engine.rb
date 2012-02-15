
module FactoryScenarios
  module ::FactoryGirl
    def self.register_factory(factory, options = {})
      self.factories.class.class_eval {
        def add_forced(item)
          @items[item.name.to_sym] = item
        end
      }

      self.factories.add_forced(factory)
    end
  end
  
  class Engine < Rails::Engine
    
    initializer "paths" do
      paths.factories Rails.root + "spec/factories"
      paths.factory_scenario_datastore Rails.root + "db/factory_scenarios.#{Rails.env}.yml"

      config.factory_scenarios_moneta_backend = :YAML unless config.respond_to? :factory_scenarios_moneta_backend
      config.factory_scenarios_moneta_config = {
        :path => config.paths.factory_scenario_datastore.first
      } unless config.respond_to? :factory_scenarios_moneta_config
    end

    config.to_prepare do
      # Doesn't seem to work :(
      # FactoryGirl.factories = {}
      
      root = Rails.application.config.root
      factories_path = FactoryScenarios::Engine.paths.factories.first
      globstring = (factories_path + "/**/*.rb").to_s

      
      Dir[globstring].each do |factory|
        require factory
      end
    end
  end
end