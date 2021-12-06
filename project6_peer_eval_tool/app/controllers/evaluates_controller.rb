class EvaluatesController < ApplicationController
  before_action :set_evaluate, only: [:show, :edit, :update, :destroy]

  def index
    if !user_signed_in?
      redirect_to welcomes_path
    end
    @evaluates = Evaluate.all
  end

  def show
    if !user_signed_in?
      redirect_to welcomes_path
    end
  end


  def new
    if !user_signed_in?
      redirect_to welcomes_path
    end
    @evaluate = Evaluate.new
  end


  def edit
    if !user_signed_in?
      redirect_to welcomes_path
    end
  end

  def create
    @evaluate = Evaluate.new(evaluate_params)

      if @evaluate.save
        flash[:success] = "Evaluation was successfully created"
        redirect_to evaluates_path
      else
        render 'new'
      end
  end

  def update
      if @evaluate.update(evaluate_params)
        flash[:success] = "Evaluation was successfully updated"
        redirect_to evaluates_path
      else
        render 'edit'
      end
  end

  def destroy
    @evaluate.destroy
      flash[:success] = "Evaluation was successfully deleted"
      redirect_to evaluates_path
  end

  private
    def set_evaluate
      @evaluate = Evaluate.find(params[:id])
    end

    def evaluate_params
      params.require(:evaluate).permit(:attempt, :user_id, :ratee_id, :group_id)
    end
end
