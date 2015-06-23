class ForumThread < ActiveRecord::Base
  has_many  :forum_replies

  validates :title,
            :status,
            presence: true
end
