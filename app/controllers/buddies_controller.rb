class BuddiesController < ApplicationController
  def index
    if current_user
      @ribbit = Ribbit.new
      buddies_ids = current_user.followeds.map(&:id).push(current_user.id)
      @ribbits = Ribbit.find_all_by_user_id buddies_ids
    else
      redirect_to root_url
    end
  end
end
