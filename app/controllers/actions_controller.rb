class ActionsController < ApplicationController

  before_action :set_action, only: [:show, :edit, :update, :destroy]

  def index
    @actions = Action.all
  end

  def show
  end

  def new
    @action = Action.new
  end

  def edit
  end

  def create
    @action = Action.new(action_params)
    @action.save

    redirect_to action_path(@action)
  end

  def update
    @action.update(action_params)

    redirect_to action_path(@action)
  end

  def destroy
    @action.destroy
    redirect_to actions_path
  end

  private

  def set_action
    @action = Action.find(params[:id])
  end

  def action_params
    params.require(:action).permit(:title, :details)
  end

end
