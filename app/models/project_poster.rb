class ProjectPoster < ActiveRecord::Base
  belongs_to :project
  belongs_to :poster
end
