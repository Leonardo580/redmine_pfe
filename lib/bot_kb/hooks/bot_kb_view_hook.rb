
class BotKbViewHook < Redmine::Hook::ViewListener
  def view_issues_show_description_bottom(context = {})
  issue = context[:issue]
  Rails.cache.fetch("issue_#{issue.id}_button", expires_in: 1.hour) do
  return context[:controller].send(:render_to_string, {
    partial: "hooks/view_issue_button",
    locals: { issue: context[:issue] }
  })
end
end
# def view_issues_show_description_bottom(context={})
#     issue = context[:issue]
#     content_tag :button, 'Open Modal', class: 'btn btn-primary', data: { toggle: 'modal', target: '#modal-form' }
#   end
  
   render_on :view_issues_index_top, partial: "views/hooks/view_issue_button"
  end