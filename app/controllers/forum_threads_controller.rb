class ForumThreadsController < ApplicationController
  before_action :set_forum_thread, only: [:show, :edit, :update, :destroy]

  def index
    @forum_threads = ForumThread.all
  end

  def show
  end

  def new
    @forum_thread = ForumThread.new
  end

  def edit
  end

  def create
    @forum_thread = ForumThread.new(forum_thread_params)

    respond_to do |format|
      if @forum_thread.save
        format.html { redirect_to forum_threads_path, notice: 'Forum thread was successfully created.' }
        format.json { render :show, status: :created, location: @forum_thread }
      else
        format.html { render :new }
        format.json { render json: @forum_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @forum_thread.update(forum_thread_params)
        format.html { redirect_to forum_threads_path, notice: 'Forum thread was successfully updated.' }
        format.json { render :show, status: :ok, location: @forum_thread }
      else
        format.html { render :edit }
        format.json { render json: @forum_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @forum_thread.destroy
    respond_to do |format|
      format.html { redirect_to forum_threads_url, notice: 'Forum thread was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_forum_thread
    @forum_thread = ForumThread.find(params[:id])
  end

  def forum_thread_params
    params.require(:forum_thread).permit(:title, :status)
  end
end
