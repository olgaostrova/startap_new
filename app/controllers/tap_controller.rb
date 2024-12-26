class TapController < ApplicationController
before_action :authenticate_user!

  def toggle
    tapable = Object.const_get(params[:type]).find(params[:id])
    taps = tapable.taps.where(user_id: current_user.id)

    if taps && taps.count > 0
      taps.each do |tap|
        tap.destroy!
      end
    else
      current_user.taps.create!(tapable_type: params[:type], tapable_id: params[:id])
    end
  end
end
