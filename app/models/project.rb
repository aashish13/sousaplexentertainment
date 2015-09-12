class Project < ActiveRecord::Base
  validates_presence_of :movie_title,:movie_logline,:movie_synopsis,:movie_budget_start,:movie_budget_end,:funding_level,:poster_url
  validates_numericality_of :funding_level,less_than: 100, greater_than: 0
  has_and_belongs_to_many :posters
  has_and_belongs_to_many :talents


end
