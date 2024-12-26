class DislikeController < ApplicationController
before_action :authenticate_user!

  def toggle
    dislikeable = Object.const_get(params[:type]).find(params[:id])
    dislikes = dislikeable.dislikes.where(user_id: current_user.id)

    if dislikes && dislikes.count > 0
      dislikes.each do |dislike|
        dislike.destroy!
      end
    else
      current_user.dislikes.create!(dislikeable_type: params[:type], dislikeable_id: params[:id])
    end
  end
end
