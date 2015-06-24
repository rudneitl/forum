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
        format.html { redirect_to @topic, notice: 'Topic was successfully created.' }
        format.json { render :show, status: :created, location: @topic }
      else
        format.html { render :new }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @topic.update(topic_params)
        format.html { redirect_to @topic, notice: 'Topic was successfully updated.' }
        format.json { render :show, status: :ok, location: @topic }
      else
        format.html { render :edit }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @topic.destroy
    respond_to do |format|
      format.html { redirect_to topics_url, notice: 'Topic was successfully destroyed.' }
      format.json { head :no_content }
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