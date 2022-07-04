class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def create
    ticket = Ticket.new(ticket_params)
    ticket.save!
    redirect_to(tickets_url, notice: "タスク「#{ticket.title}」を登録しました。")
  end

  private

  def ticket_params
    params.require(:ticket).permit(:title, :body) # TODO: 締切日も許可する
  end
end
