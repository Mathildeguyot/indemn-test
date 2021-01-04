class DepositionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @depositions = Deposition.all
  end

  def new
    session[:deposition_params] ||= {}
    @deposition = Deposition.new
  end

  def create
    self.params = params.permit!
    session[:deposition_params].deep_merge!(params[:deposition])
    @deposition = Deposition.new(session[:deposition_params])
    @deposition.current_step = session[:deposition_step]
    if params[:back_button]
      @deposition.previous_step
    elsif params[:next_button]
      @deposition.next_step
    else
      @deposition.save
    end
    session[:deposition_step] = @deposition.current_step
    if @deposition.new_record?
      render :new
    else
      session[:deposition_step] = session[:deposition_params] = nil
      redirect_to deposition_path(@deposition)
    end
  end

  def show
    @deposition = Deposition.find(params[:id])
  end

  private

  def deposition_params
    params.require(:deposition).permit(:dep_city, :arr_city, :reason, :excuse, :departure, :arrival, :forward, :forward_dep, :forward_arr, :alert_date, :delay)
  end
end
