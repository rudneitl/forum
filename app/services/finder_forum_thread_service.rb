class FinderForumThreadService
  def self.all
    ForumThread.where(status: :active).order(created_at: :desc).all
  end

  def self.find_by_id(forum_thread_id)
    ForumThread.where(status: :active).find(forum_thread_id)
  end
end
