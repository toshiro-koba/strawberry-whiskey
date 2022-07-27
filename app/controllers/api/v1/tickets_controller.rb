# frozen_string_literal: true

module Api
  module V1
    class TicketsController < ApiBaseController
      def completion_status
        ticket = Ticket.find(params[:id])
        ticket.update!(is_completed: params[:status])

        self.status = :created
      end
    end
  end
end
