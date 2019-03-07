class Movie < ApplicationRecord
  belongs_to :director
  include PgSearch
  pg_search_scope :search_title_syllabus,
    against: [ :title, :syllabus ],
    associated_against: {
      director: [ :first_name, :last_name ]
    }


end
