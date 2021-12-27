class HomeController < ApplicationController
  def index
    @entities = Entity.last(3)
    @candidates = Candidate.last(3)
    @job_offers = JobOffer.last(3)
    @news = News.last(3)
  end
end
