class FinderBlackListService
  def self.all
    BlackList.select(:word).all
  end
end