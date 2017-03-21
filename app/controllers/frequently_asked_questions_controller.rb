class FrequentlyAskedQuestionsController < ApplicationController

  layout 'kiosk', :only => [:index]
  def index
    @faq = FrequentlyAskedQuestion.all
  end

  def new
    @faq = FrequentlyAskedQuestion.new
  end

  def show
    @faq = FrequentlyAskedQuestion.all
  end
end
