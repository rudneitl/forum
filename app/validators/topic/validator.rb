class Topic
  class Validator < ActiveModel::Validator
    MASK = '****'

    def validate(record)
      # sanitize_black_list_words record
      BlackList.sanitize(record.description, MASK)
    end

    protected

    def sanitize_black_list_words(record)
      black_list = FinderBlackListService.all
      black_list.each do |bl|
        record.description.gsub!(/\b#{bl.word}\b/i, MASK)
      end
    end
  end
end
