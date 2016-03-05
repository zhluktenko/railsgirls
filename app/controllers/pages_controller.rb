class PagesController < ApplicationController
  def feedback
  end
  def process_feedback
    flash[:success] = "Your feedback was sent: #{feedback_params.inspect}"
    redirect_to :back
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def feedback_params
    params.permit(:name)
  end
end
