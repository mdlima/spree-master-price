module SpreeMasterPrice
  class Engine < Rails::Engine
    engine_name 'spree_master_price'

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
    
    initializer "spree.master_price.additional_field", :after => "spree.environment" do |app|
      Spree::Variant.additional_fields += [ :name => 'Use Master Price', :only => [:variant], :use => 'check_box' ]
    end
  end
end
