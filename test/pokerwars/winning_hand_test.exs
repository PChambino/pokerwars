defmodule Pokerwars.Hand.WinningTest do
  use ExUnit.Case, async: true
  import Pokerwars.TestHelpers
  doctest Pokerwars.Hand

  test "pair wins high card (right)" do
    assert_winning_hands(["2s 3h 4c 7s Qd", "2s 3h 4c 7s 7d"], ["2s 3h 4c 7s 7d"])
  end

  test "pair wins high card (left)" do
    assert_winning_hands(["2s 3h 4c 7s 7d", "2s 3h 4c 7s Qd"], ["2s 3h 4c 7s 7d"])
  end

  test "two pairs wins pair and high card" do
    assert_winning_hands(["2s 3h 4c 7s 7d", "2s 3h 4c 7s Kd", "2s 4h 4c 7s 7d"], ["2s 4h 4c 7s 7d"])
  end

  test "two pairs wins two high card hands" do
    assert_winning_hands(["2s 3h 4c 7s Qd", "2s 3h 4c 7s Kd", "2s 3h 4c 7s 7d"], ["2s 3h 4c 7s 7d"])
  end
end
