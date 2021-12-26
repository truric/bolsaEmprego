class HomeController < ApplicationController
  def index
    @entities = Entity.all
    @candidates = Candidate.all
    @job_offers = JobOffer.all
  end
end
