# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
    scope '/issues/:issue_id' do
      resources :bot_kb, only: [:new, :create, :edit, :update, :destroy]
    end
  end

#require 'redmine/application_helper'