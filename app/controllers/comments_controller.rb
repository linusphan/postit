class CommentsController < ApplicationController
  before_action :require_user

  def vote
    comment = Comment.find(params[:id])
    vote = Vote.create(voteable: comment, creator: current_user, vote: params[:vote])
    
    if vote.valid?
      flash[:notice] = "Your vote was counted."
    else
      flash[:error] = "You can only vote on a comment once."
    end

    redirect_back(fallback_location: root_path)
  end
end
