class Route
  attr_reader :route

  def initialize(route)
    @route = route
  end

  def new_session?
    route == "sessions#new"
  end

  def create_session?
    route == "sessions#create"
  end

  def show_message?
    route == "messages#show"
  end

  def destroy_session?
    route == "sessions#destroy"
  end
end
