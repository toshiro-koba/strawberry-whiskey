class Api::V1::TicketsController < ApiBaseController
  def index
    self.status = :ok

    tickets = Ticket.all
    self.response_body = tickets.to_json
  end

  def completion_status
    ticket = Ticket.find(params[:id])
    ticket.update!(is_completed: params[:status])

    self.status = :created
  end
end
