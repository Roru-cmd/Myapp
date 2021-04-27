class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :tickets, :today]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    @users = User.order('name') 
    @task = Task.all
    @ticket = Ticket.all
  end

  def home
    session[:user_id] = nil
    session[:task_id] = nil
    @users = User.all
    @user = User.find_by(id: params[:id])
    @users = User.order('name')
  end

  # GET /users/1
  # GET /users/1.json
  def show
    session[:task_id] = nil
    @user = User.find(params[:id])    
    @task = @user.tasks
    @tasks = @task.order('updated_at DESC')
    @ticket = @user.tickets
    @tickets = @ticket.order('updated_at')
    session[:user_id] = @user.id
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    flash[:notice] = "User successfully deleted"
    redirect_to("/")
  end

  def tickets
    @tickets = Ticket.order('updated_at')
  end

  def today
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])      
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :active_job, :time, :task_ids, :ticket_ids)
    end
end
