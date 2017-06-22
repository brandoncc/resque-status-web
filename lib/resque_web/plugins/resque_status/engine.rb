module ResqueWeb
  module Plugins
    module ResqueStatus
      class Engine < ::Rails::Engine
        isolate_namespace ResqueWeb::Plugins::ResqueStatus
      end

      Engine.routes do
        get '/statuses', to: 'statuses#index', as: 'statuses'
        get '/statuses/poll', to: 'statuses#poll', as: 'poll_statuses'
        get '/statuses/:id(.:format)', to: 'statuses#show', as: 'status'
        post '/statuses/:id/kill', to: 'statuses#destroy', as: 'kill_status'
        post '/statuses/clear', to: 'statuses#clear', as: 'clear_statuses'
        post '/statuses/clear/completed', to: 'statuses#clear_completed', as: 'clear_completed_statuses'
        post '/statuses/clear/failed', to: 'statuses#clear_failed', as: 'clear_failed_statuses'
      end

      def self.engine_path
        '/status'
      end

      def self.tabs
        [
          {
            'status' => Engine.app.url_helpers.statuses_path
          }
        ]
      end
    end
  end
end
