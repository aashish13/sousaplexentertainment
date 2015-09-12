class PostersProject < ActiveRecord::Base
  rails_admin do
    list do
      field :project_id
      field :poster_id
    end


  end

end
