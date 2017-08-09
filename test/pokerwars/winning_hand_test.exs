defmodule Pokerwars.Hand.WinningTest do
  use ExUnit.Case, async: true
  import Pokerwars.TestHelpers
  doctest Pokerwars.Hand

  test "highest card hand" do
    assert_winning_hands(["2s 3h 4c 7s Qd", "2s 3h 4c 7s Kd"], ["2s 3h 4c 7s Kd"])
  end
end
