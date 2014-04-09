class TestsController < ApplicationController
  before_action :get_user
  before_action :get_apps

  def index
  end

  def show
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)

    if @test.save
      render action: 'show'
    else
      render action: 'new'
    end
  end

  def update
  end

  def destroy
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
end
