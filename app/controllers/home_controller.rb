class HomeController < ApplicationController
  def index
    @entities = Entity.all
    @candidates = Candidate.all
    @job_offers = JobOffer.all
    @news = News.all
  end
end
