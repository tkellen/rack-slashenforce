module Rack

  module SlashEnforce
    def self.version
      '0.0.1'
    end
  end

  class RemoveSlash
    # regexp to match strings that start and end with a slash
    MATCH = %r{^/(.*)/$}

    def initialize(app)
      @app = app
    end

    def call(env)
      if env['PATH_INFO'] != '/' && env['PATH_INFO'] =~ MATCH
        env['PATH_INFO'].sub!(/(\/)+$/,'')
        [301, {"Location" => Rack::Request.new(env).url, "Content-Type" => ""}, []]
      else
        @app.call(env)
      end
    end
  end

  class AppendSlash
    # regexp to match strings without periods that start and end with a slash
    MATCH = %r{^/([^.]*)[^/]$}

    def initialize(app)
      @app = app
    end

    def call(env)
      if env['PATH_INFO'] != '/' && env['PATH_INFO'] =~ MATCH
        env['PATH_INFO'] += '/'
        [301, {"Location" => Rack::Request.new(env).url, "Content-Type" => ""}, []]
      else
        @app.call(env)
      end
    end
  end

end