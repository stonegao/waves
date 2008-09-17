module Waves
  module Layers
    module Cache

      module File
        
        def self.included(app)
          require 'layers/cache/filecache/filecache-ipi'

          if Waves.cache.nil?
            Waves.cache = Waves::Cache::File.new( Waves.config.cache )
          end
          
        end
      end

    end
  end
end

