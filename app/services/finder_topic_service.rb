class FinderTopicService
  def self.count
    criteria.where(topic: nil).count
  end

  def self.all
    criteria.all
  end

  def self.find(topic_id)
    criteria.find(topic_id)
  end

  def self.find_by_topic(topic, limit=nil, page=nil)
    finder = criteria.where(topic: topic)
    finder = finder.limit(limit) unless limit.nil?
    finder = finder.offset(limit.to_i * page.to_i) unless page.nil? && limit.nil?
    finder
  end

  protected

  def self.criteria
    Topic.where(status: :active).order(created_at: :desc)
  end
end
