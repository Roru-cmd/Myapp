class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  # GET /tickets
  # GET /tickets.json
  def index
    @tickets = Ticket.all
  end

  # GET /tickets/1
  # GET /tickets/1.json
  def show
    #@ticket = Ticket.find_by(task_id:params[:task_id])     
  end

  # GET /tickets/new
  def new
    @ticket = Ticket.new
    @task = Task.new
    @user = User.new
  end

  # GET /tickets/1/edit
  def edit   
  end

  # POST /tickets
  # POST /tickets.json
  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.user_id = session[:user_id] 
    @ticket.task_id = session[:task_id]
    #@user = User.find(user_id: params[:user_id]) 
    #@user = User.find(params[:user_id])    #work   
    #@ticket = @user.tickets.build(ticket_params)
    # @user = User.find(params[:user_id]) # Error "User Must Exist" if has_many :tickets, through: :tasks    
    # @user = Task.find_by(user_id:params[:task_id]) # Do not work
    # @user = Task.find_by(user_id:params[:user_id]) # Error
    # @ticket = @user.tasks.create(ticket_params) # Error    
    # @ticket = Ticket.find_by(task_id:params[:task_id]) 

  if @ticket.save
    flash[:notice] = "Ticket successfully created"    
    redirect_to("/tasks/#{@ticket.task_id}")
  else
    render("tickets/new")
  end
end

  # PATCH/PUT /tickets/1
  # PATCH/PUT /tickets/1.json
  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: 'Ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets/1
  # DELETE /tickets/1.json
  def destroy    
    @ticket.destroy
    respond_to do |format|
      #format.html { redirect_to tickets_url, notice: 'Ticket was successfully destroyed.' }      
      format.html { redirect_to user_path(@ticket.user_id), notice: 'Ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ticket_params
      params.require(:ticket).permit(:ticket_d, :ticket_start, :ticket_end)
      #params.require(:ticket).permit(:ticket_d, :ticket_start, :ticket_end, :user_id)
      #params.require(:ticket).permit(:ticket_d, :ticket_start, :ticket_end, :user_id, task_id)
    end
end
