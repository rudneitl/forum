class BlackList < ActiveRecord::Base
  validates :word, presence: true

  def self.sanitize(string, mask)
    black_list = FinderBlackListService.all
    black_list.each do |bl|
      string.gsub!(/\b#{bl.word}\b/i, mask)
    end
  end
end
