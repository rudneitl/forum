class Topic < ActiveRecord::Base
  TOPIC_STATUS = %w(active inactive) 

  belongs_to :topic, class_name: 'Topic'
  has_many :topics, class_name: 'Topic'

  validates :description,
            :status,
            presence: true

  validates :status,
            inclusion: { in: TOPIC_STATUS }

  validates_with Topic::Validator

  def self.status_collection
    TOPIC_STATUS
  end
end
