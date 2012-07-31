# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def title(page_title, show_title = true)
    @show_title = show_title
    @title = page_title.to_s
  end
  
  def show_title?
    @show_title
  end
  
end
