class BotKb < ActiveRecord::Base
  belongs_to :issue
  belongs_to :related_issue, class_name: 'Issue', optional: true
end
