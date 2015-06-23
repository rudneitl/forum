class ForumRepliesController < ApplicationController
  before_action :set_forum_thread
  before_action :set_forum_reply, only: [:show, :edit, :update, :destroy]

  def index
    @forum_replies = ForumReply.all
  end

  def show
  end

  def new
    @forum_reply = ForumReply.new
  end

  def edit
  end

  def create
    @forum_reply = ForumReply.new(forum_reply_params)
    @forum_reply.forum_thread = @forum_thread

    respond_to do |format|
      if @forum_reply.save
        format.html { redirect_to [@forum_thread, @forum_reply], notice: 'Forum reply was successfully created.' }
        format.json { render :show, status: :created, location: @forum_reply }
      else
        format.html { render :new }
        format.json { render json: @forum_reply.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @forum_reply.update(forum_reply_params)
        format.html { redirect_to [@forum_thread, @forum_reply], notice: 'Forum reply was successfully updated.' }
        format.json { render :show, status: :ok, location: @forum_reply }
      else
        format.html { render :edit }
        format.json { render json: @forum_reply.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @forum_reply.destroy
    respond_to do |format|
      format.html { redirect_to forum_thread_forum_replies_path, notice: 'Forum reply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_forum_reply
    @forum_reply = ForumReply.find(params[:id])
  end

  def forum_reply_params
    params.require(:forum_reply).permit(:title, :status, :forum_reply_id)
  end

  def set_forum_thread
    @forum_thread = FinderForumThreadService.find_by_id(params[:forum_thread_id])
  rescue
    not_found(I18n.translate('tournament.message.not_found'))
  end
end
