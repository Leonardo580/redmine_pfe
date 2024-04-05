class BotKbController < ApplicationController
  before_action :find_issue
  before_action :find_kb, only: [:edit, :update, :destroy]

  helper :bot_kb  

  def new
    @kb = BotKb.new
  end

  def create
    
    @kb = BotKb.new(kb_params)
    @kb.issue=@issue
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
    @kb.destroy
    flash[:notice] = 'Knowledge Base deleted successfully.'
    redirect_to issue_path(@issue)
  end

  private

  def find_issue
    @issue = Issue.find(params[:issue_id])
  end

  def find_kb
    @kb = BotKb.where(issue_id: @issue.id).first
  end

  def kb_params
    params.require(:bot_kb).permit(:subject, :question, :answer, :related_issue_id, :tag, :issue_id)
  end
  
end
