module ResqueWeb
  module Plugins
    module ResqueStatus
      class StatusesController < ResqueWeb::ApplicationController
        include StatusesHelper
        include Engine.app.url_helpers

        def index
          @start = params[:start].to_i
          @end = @start + (params[:per_page] || per_page) - 1
          @statuses = Resque::Plugins::Status::Hash.statuses(@start, @end)
          @size = Resque::Plugins::Status::Hash.count

          render :index
        end

        def show
          @status = Resque::Plugins::Status::Hash.get(params[:id])

          respond_to do |format|
            format.html
            format.js { render json: @status }
          end
        end

        def destroy
          Resque::Plugins::Status::Hash.kill(params[:id])
          redirect_to statuses_path
        end

        def clear
          Resque::Plugins::Status::Hash.clear
          redirect_to statuses_path
        end

        def clear_completed
          Resque::Plugins::Status::Hash.clear_completed
          redirect_to statuses_path
        end

        def clear_failed
          Resque::Plugins::Status::Hash.clear_failed
          redirect_to statuses_path
        end

        def poll
          @polling = true

          @start = params[:start].to_i
          @end = @start + (params[:per_page] || per_page) - 1
          @statuses = Resque::Plugins::Status::Hash.statuses(@start, @end)
          @size = Resque::Plugins::Status::Hash.count

          render :index, layout: false
        end
      end
    end
  end
end
