module ResqueWeb
  module Plugins
    module ResqueStatus
      # Helper methods for the schedule UI
      module StatusesHelper
        PER_PAGE = 50

        def per_page
          PER_PAGE
        end

        def status_poll(start, polling)
          if polling
            text = "Last Updated: #{Time.now.strftime("%H:%M:%S")}"
          else
            text = link_to "Live Poll", poll_statuses_path(start: start), rel: 'poll'
          end
          "<p class='poll'>#{text}</p>".html_safe
        end
      end
    end
  end
end
