class FinderBlackListService
  def self.all
    BlackList.select(:title).all
  end
end