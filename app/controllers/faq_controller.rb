class FaqController < ApplicationController

  def index
    faq1 = Faq.new
    faq1.question = "Blah?"
    faq1.answer = "Blah."
    faq2 = Faq.new
    faq2.question = "Blah 2?"
    faq2.answer = "Blah blah."

    @faqs = [faq1, faq2]
  end
end
