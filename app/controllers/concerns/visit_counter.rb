module VisitCounter
  private

  def count_visits
    if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
    end
  end

  def reset_visits
    session[:counter] = 0
  end
end
