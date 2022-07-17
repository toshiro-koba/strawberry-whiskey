class Api::V1::TicketsController < ApiBaseController
  def index
    self.status = :ok

    tickets = Ticket.all
    self.response_body = tickets.to_json
  end
end
