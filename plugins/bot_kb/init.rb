#require 'bot_kb_view_hook'
#require_dependency 'bot_kb_view_hook'
#require_dependency 'bot_kb/lib/hooks'
require "redmine"
require 'bot_kb/hooks/bot_kb_view_hook'

Redmine::Plugin.register :bot_kb do
  name 'Bot Kb plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  # context_menu :_view_issue_button do |context|
  #   # This block will be executed when rendering the issue page
  #   # and will inject your custom button HTML
  #   context[:hook_caller].send(:render, {
  #     partial: 'bot_kb/button',
  #     locals: { issue: context[:issue] }
  #   })
  # end
  #require_dependency File.expand_path('../lib/bot_kb_view_hook', __FILE__)
end


