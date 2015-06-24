class FinderTopicService
  def self.all
    criteria.all
  end

  def self.find(topic_id)
    criteria.find(topic_id)
  end

  def self.find_by_topic(topic)
    criteria.where(topic: topic)
  end

  protected

  def self.criteria
    Topic.where(status: :active).order(created_at: :desc)
  end
end
