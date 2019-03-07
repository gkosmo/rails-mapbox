class MoviesController < ApplicationController
  def index
    search_index
      if params[:sort]
        @movies =  @movies.order(params[:sort].to_sym => :asc)
      end
  end




    private


  def search_index
     if params[:query].present?
                sql_query = "
            movies.title @@ :query \
            OR movies.syllabus @@ :query \
            OR directors.first_name @@ :query \
            OR directors.last_name @@ :query \

          "
          @movies = Movie.joins(:director).where(sql_query, query: "%#{params[:query]}%")
          @movies = Movie.search_title_syllabus(params[:query])
       else
          @movies = Movie.all
        end
      end
end
