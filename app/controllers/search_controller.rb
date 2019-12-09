class SearchController < ApplicationController
  def index

    render locals: {
      search_results: PhoenixMemberSearch.new(params[:house])
    }
  end

end
