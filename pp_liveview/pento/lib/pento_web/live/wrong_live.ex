defmodule PentoWeb.WrongLive do
  use Phoenix.LiveView, layout: {PentoWeb.LayoutView, "live.html"}

  def mount(_params, _session, socket) do
    {:ok, assign(
      socket,
      score: 0,
      message: "Make a guess:",
      answer: Enum.random(1..10)
    )}
  end

  def render(assigns) do
    ~L"""
    <h1>Your score: <%= @score %></h1>
    <h2>
      <%= @message %>
      It's <%= time() %>
    </h2>
    <h2>
      <%= for n <- 1..10 do %>
        <a href="#" phx-click="guess" phx-value-number="<%= n %>"><%= n %>  </a>
      <% end %>
    </h2>
    """
  end

  def time() do
    DateTime.utc_now |> to_string
  end

  def handle_event("guess", %{"number" => guess}=data, socket) do
    # message = "Your guess: #{guess}. Wrong. Guess again. "

    {score, message, answer} =
      if guess == "#{socket.assigns.answer}" do
        {socket.assigns.score + 1, "Well done. Try another.", Enum.random(1..10)}
      else
        {socket.assigns.score - 1, "Your guess: #{guess}. Wrong. Guess again. ",
          socket.assigns.answer}
      end

    score = socket.assigns.score - 1
    {
      :noreply,
      assign(
        socket,
        message: message,
        score: score,
        answer: answer
      )}
  end
end
