class OrganizationsController < ApplicationController
  def index
    if params[:query]
      @organizations = Organization.search_by_organization(params[:query])
    else
      @organizations = Organization.all
      # @events = Event.all --> en phase de test pour appeler les event sur index organization
    end
    params[:query] = ""

  end

    def show
      @organization = Organization.find(params[:id])
    end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
