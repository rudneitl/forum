class ForumReply < ActiveRecord::Base
  belongs_to :forum_reply, class_name: 'ForumReply'
  belongs_to :forum_thread, class_name: 'ForumThread'

  has_many :forum_reply, class_name: 'ForumReply'

  validates :title,
            :status,
            :forum_thread_id,
            presence: true

  validates_with ForumReply::Validator
end
