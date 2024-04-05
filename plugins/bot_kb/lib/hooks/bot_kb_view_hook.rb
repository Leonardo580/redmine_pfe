
class BotKbViewHook < Redmine::Hook::ViewListener
  def view_projects_show_left(context = {})
    puts "loaded"
    return content_tag("p", "Custom content added to the left")
  end

 render_on :view_issues_show_description_bottom, partial: "views/hooks/view_issue_button"
end