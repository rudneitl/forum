class TopicsController < ApplicationController
  before_action :set_parent_topic, only: [:new]
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  def index
    @topics = FinderTopicService.find_by_topic(nil)
  end

  def show
  end

  def new
    @topic = Topic.new
    @topic.topic = @parent_topic
  end

  def edit
  end

  def create
    @topic = Topic.new(topic_params)
    # @topic.topic = @parent_topic

    respond_to do |format|
      if @topic.save
        format.html { redirect_to topics_url, notice: I18n.translate('topic.message.success_create') }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @topic.update(topic_params)
        format.html { redirect_to @topic, notice: I18n.translate('topic.message.success_update') }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @topic.destroy
    respond_to do |format|
      format.html { redirect_to topics_url, notice: I18n.translate('topic.message.success_destroy') }
    end
  end

  private

  def set_topic
    @topic = Topic.find(params[:id])
  end

  def set_parent_topic
    @parent_topic = Topic.find(params[:topic_id]) if params[:topic_id].present? 
  end

  def topic_params
    params.require(:topic).permit(:description, :status, :topic_id)
  end
end
