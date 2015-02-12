module ApplicationHelper
  # Fallback page-title
  def full_title(page_title = '', second_argument='')
    base_title = "Ruby on Rails Tutorial"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
end
