class Topic < ActiveRecord::Base
  TOPIC_STATUS = %w(active inactive)
  LIMIT_PER_PAGE = 5

  belongs_to :topic, class_name: 'Topic'
  has_many :topics, class_name: 'Topic'

  validates :description,
            :status,
            presence: {
              message: I18n.translate('topic.message.error.presence')
            }

  validates :status,
            inclusion: { in: TOPIC_STATUS }

  validates_with Topic::Validator

  def self.status_collection
    TOPIC_STATUS
  end

  def self.limit_default
    LIMIT_PER_PAGE
  end
end
