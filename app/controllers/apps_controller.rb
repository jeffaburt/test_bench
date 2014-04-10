class AppsController < ApplicationController
  before_action :get_user
  before_action :set_app, only: [:show, :edit, :update, :destroy]

  def index
    @apps = @user.apps
  end

  def show
  end

  def new
    @app = App.new
  end

  def edit
  end

  def create
    @app = App.new(app_params)
    @user.apps << @app

    if @app.save && @user.save
      render action: 'index'
    else
      render action: 'new'
    end
  end

  def update
    @app.update(app_params)
    render action: 'index'
  end

  def destroy
    @app.destroy
    respond_to do |format|
      format.html { redirect_to apps_url }
      format.json { head :no_content }
    end
  end


  private

  def get_user
    @user = current_user
  end

  def app_params
    params.require(:app).permit(:name,:description)
  end

  def set_app
    @app = App.find(params[:id])
  end
end
