defmodule Pokerwars.TestHelpers do
  import ExUnit.Assertions
  def assert_score(card_strings, expected_score) do
    cards = parse_cards(card_strings)
    score = Pokerwars.Hand.score(cards)
    assertion = (score == expected_score)
    message = "Expected score of #{print_cards(cards)} to be #{expected_score} but was #{score}"
    assert(assertion, message)
  end

  def assert_winning_hands(hands_strings, expected_winning_hands_strings) do
    hands = Enum.map hands_strings, &parse_cards(&1)
    expected_winning_hands = Enum.map expected_winning_hands_strings, &parse_cards(&1)
    winning_hands = Pokerwars.Hand.winning(hands)
    # assertion = (winning_hands == expected_winning_hands)
    # message = "Expected score of #{print_cards(cards)} to be #{expected_score} but was #{score}"
    assert(winning_hands == expected_winning_hands)
  end

  defp print_cards(cards) do
    cards
    |> Enum.map(&(Pokerwars.Card.print(&1)))
    |> Enum.join(" ")
  end

  def parse_cards(card_strings) do
    card_strings
    |> String.split(" ")
    |> Enum.map(&(Pokerwars.Card.parse(&1)))
  end
end
ExUnit.start()
