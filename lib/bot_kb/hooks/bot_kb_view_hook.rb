
class BotKbViewHook < Redmine::Hook::ViewListener
  def view_issues_show_description_bottom(context = {})
  puts "loaded"
  return context[:controller].send(:render_to_string, {
    partial: "hooks/view_issue_button",
    locals: { issue: context[:issue] }
  })
end
  
   render_on :view_issues_index_top, partial: "views/hooks/view_issue_button"
  end