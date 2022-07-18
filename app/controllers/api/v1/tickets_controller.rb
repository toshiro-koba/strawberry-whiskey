class Api::V1::TicketsController < ApiBaseController
  def completion_status
    ticket = Ticket.find(params[:id])
    ticket.update!(is_completed: params[:status])

    self.status = :created
  end
end
