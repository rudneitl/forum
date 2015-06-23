class ForumReply
  class Validator < ActiveModel::Validator

    def validate(record)
      validate_parent_relation record
      sanitize_black_list_words record
    end

    protected

    def sanitize_black_list_words(record)
      black_list = FinderBlackListService.all
      black_list.each do |bl|
        record.title.gsub!(/\b#{bl.word}\b/i, 'xxxx')
      end
    end

    def validate_parent_relation(record)
      FinderForumReplyService.find_by_id record.forum_reply_id unless record.forum_reply_id.nil?
    rescue
     record.errors.add 'Form Reply', 'not found'
    end
  end
end
