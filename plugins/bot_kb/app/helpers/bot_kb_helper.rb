module BotKbHelper
    #include Redmine::ApplicationHelper

    def is_present?(issue)
      BotKb.where(issue_id: issue.id).present?
    end
  end   