# External Dependencies
require 'rubygems'

# Some scripts need to be able to locate items relative to waves source.
WAVES = "#{File.dirname(__FILE__)}/.." unless defined?(WAVES)

require 'rack'
require 'daemons'

# a bunch of handy stuff
require 'extensions/io'
require 'extensions/symbol' unless Symbol.instance_methods.include? 'to_proc'
require 'fileutils'
require 'metaid'
require 'forwardable'
require 'date'
require 'benchmark'
require 'base64'

gem 'dyoder-functor', '>= 0.5.0'
require 'functor'
gem 'dyoder-filebase', '>= 0.3.4'
require 'filebase'
require 'filebase/model'

# selected project-specific extensions
require 'ext/module'
require 'ext/string'
require 'ext/symbol'
require 'ext/object'
require 'ext/integer'
require 'ext/inflect'
require 'ext/proc'
require 'ext/hash'
require 'ext/tempfile'
require 'ext/kernel'

# waves Runtime
require 'dispatchers/base'
require 'dispatchers/default'
require 'runtime/logger'
require 'runtime/mime_types'
require 'runtime/runtime'
require 'runtime/console'
require 'runtime/server'
require 'runtime/request'
require 'runtime/response'
require 'runtime/response_mixin'
require 'runtime/session'
require 'runtime/configuration'
require 'cache/cache'

# waves URI mapping
require 'matchers/base'
require 'matchers/accept'
require 'matchers/content_type'
require 'matchers/path'
require 'matchers/query'
require 'matchers/traits'
require 'matchers/uri'
require 'matchers/request'
require 'matchers/resource'
require 'resources/paths'
require 'resources/mixin'

require 'views/mixin'
require 'views/errors'
require 'renderers/mixin'