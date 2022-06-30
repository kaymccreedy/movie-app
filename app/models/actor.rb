class Actor < ApplicationRecord

  def actor
    actor = Actor.find_by(id: params["id"])      
  end

end
