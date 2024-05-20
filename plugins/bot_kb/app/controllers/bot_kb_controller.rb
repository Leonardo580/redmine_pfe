class BotKbController < ApplicationController
  require 'net/http'
  require 'json'
  before_action :find_issue
  before_action :find_kb, only: [:edit, :update, :destroy]
  after_action :enqueue_send_api_kb, only: [:create, :update]
  before_action :delete_api, only: [:destroy]
  helper :bot_kb  

  def new
    @kb = BotKb.new
  end

  def create
    @kb = BotKb.new(kb_params)
    @kb.issue = @issue
    if @kb.save
      flash[:notice] = 'Knowledge Base created successfully.'
      redirect_to issue_path(@issue)
    else
      render :new
    end
  end

  def edit
    # Renders the edit form for the selected BotKb record
  end

  def update
    if @kb.update(kb_params)
      flash[:notice] = 'Knowledge Base updated successfully.'
      redirect_to issue_path(@issue)
    else
      render :edit
    end
  end

  def destroy
    if @kb.destroy
      flash[:notice] = 'Knowledge Base deleted successfully.'
    else
      flash[:alert] = 'Failed to delete Knowledge Base.'
    end
    redirect_to issue_path(@issue)
  end

  def available_tags
    issue_custom_field = IssueCustomField.find_by(name: 'module')
    return [] if issue_custom_field.nil?
  
    issue_custom_field.possible_values
  end
  
  helper_method :available_tags

  private

  def find_issue
    @issue = Issue.find(params[:issue_id])
  end

  def find_kb
    @kb = BotKb.where(issue_id: @issue.id).first
  end

  def enqueue_send_api_kb
    
    return unless @kb.present?

    case action_name
    when 'create', 'update'
      SendKbToApiJob.perform_later(@kb, :post)
    when 'destroy'
      
      SendKbToApiJob.perform_later(@kb, :delete)
    end
  end

  def delete_api 
    DeleteApi.perform_later(@kb)
  end

  def kb_params
    params.require(:bot_kb).permit(:subject, :question, :answer, :related_knowledge_base_id, :tag, :issue_id)
  end
end
