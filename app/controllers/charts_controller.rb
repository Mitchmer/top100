class ChartsController < ApplicationController
  before_action :set_chart, only: [:show, :update, :edit, :destroy]

  def index
    @charts = Chart.all
  end

  def show
  end

  def new
    @charts = Chart.new
  end

  def edit
  end

  def update
    
  end

  def create
  end

  def destroy
  end
  
end
