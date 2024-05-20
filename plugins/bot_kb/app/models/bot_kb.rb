class BotKb < ActiveRecord::Base
  belongs_to :issue
  belongs_to :related_knowledge_base, class_name: 'BotKb', optional: true
end
