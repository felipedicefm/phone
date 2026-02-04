defmodule Phone.UK44.GG do
  @moduledoc false

  use Helper.Country

  # Guernsey prefixes:
  #
  # Landline: +44 1481 xxxxxx
  # Mobile: +44 7781, +44 7839, +44 7911
  def regex, do: ~r/^(44)(1481|7781|7839|7911)(\d{6})$/
  def country, do: "Guernsey"
  def a2, do: "GG"
  def a3, do: "GGY"
  def iso, do: "831"
  def international_code, do: "44"
  def area_code, do: "1481"

  matcher(:regex, ["441481", "447781", "447839", "447911"])
end
