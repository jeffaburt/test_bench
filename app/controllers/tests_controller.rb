class TestsController < ApplicationController
  before_action :get_user
  before_action :get_apps
  before_action :set_test, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @test = Test.new
  end

  def edit
  end

  def create
    @test = Test.new(test_params)

    if @test.save
      render action: 'index'
    else
      render action: 'new'
    end
  end

  def update
    @test.update(test_params)
    render action: 'index'
  end

  def destroy
    @test.destroy
    respond_to do |format|
      format.html {redirect_to tests_url}
      format.json {head :no_content}
    end
  end

  private

  def get_user
    @user = current_user
  end

  def get_apps
    @apps = @user.apps
  end

  def test_params
    params.require(:test).permit(:name,:task,:status,:app_id)
  end

  def set_test
    @test = Test.find(params[:id])
  end
end
