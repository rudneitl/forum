module TopicsHelper
  def pagination(total, limit, page)
    pages = []
    t = (total.to_f / limit.to_f).ceil
    t.times do |n|
      pages.push n
    end
    select_tag(:p, options_for_select(pages.map { |value| [(value + 1), value] }, selected: page) )
  end
end
