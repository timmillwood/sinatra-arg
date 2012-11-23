require 'sinatra/base'

module Sinatra
  module SinatraArg
    def arg(id)
      args = request.path.split('/').drop(1)
      return args[id]
    end
  end

  helpers SinatraArg
end
