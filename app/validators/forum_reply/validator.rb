class ForumReply
  class Validator < ActiveModel::Validator

    def validate(record)
      validate_black_list_words(record)
    end

    protected

    def validate_black_list_words(record)
      record.errors.add 'myerror', 'iiiii faio'
    end

    # def validate_limit_bet_by_round(record)
    #   bet_repeated = 0
    #   record.siblings.each do |b|
    #     if (b.team_home_goals == record.team_home_goals) && (b.team_away_goals == record.team_away_goals)
    #       bet_repeated += 1
    #     end
    #   end
    #   if (bet_repeated >= MAX_BET_REPEAT_BY_ROUND)
    #     record.errors.add 'myerror', I18n.translate('bet.message.repeat_limit_exceded')
    #     record.errors.add 'match_id', record.match_id
    #   end
    # end

    # def validate_match_editable(record)
    #   unless record.match.editable?
    #     record.errors.add 'myerror', I18n.translate('bet.message.not_editable')
    #     record.errors.add 'match_id', record.match_id
    #   end
    # end
  end
end
