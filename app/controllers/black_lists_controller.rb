class BlackListsController < ApplicationController
  before_action :set_black_list, only: [:show, :edit, :update, :destroy]

  def index
    @black_lists = BlackList.all
  end

  def show
  end

  def new
    @black_list = BlackList.new
  end

  def edit
  end

  def create
    @black_list = BlackList.new(black_list_params)

    respond_to do |format|
      if @black_list.save
        format.html { redirect_to @black_list, notice: I18n.translate('black_list.message.success_create') }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @black_list.update(black_list_params)
        format.html { redirect_to @black_list, notice: I18n.translate('black_list.message.success_update') }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @black_list.destroy
    respond_to do |format|
      format.html { redirect_to black_lists_url, notice: I18n.translate('black_list.message.success_destroy') }
    end
  end

  private
  def set_black_list
    @black_list = BlackList.find(params[:id])
  end

  def black_list_params
    params.require(:black_list).permit(:word)
  end
end
