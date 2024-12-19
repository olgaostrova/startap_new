class Api::V1::ProfileController < ApplicationController


  def show
    @profile = Profile.first
  end

end
