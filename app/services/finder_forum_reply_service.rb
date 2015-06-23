class FinderForumReplyService
  def self.all
    ForumReply.where(status: :active).order(created_at: :desc).all
  end

  def self.find_by_id(forum_reply_id)
    ForumReply.where(status: :active).find(forum_reply_id)
  end
end
