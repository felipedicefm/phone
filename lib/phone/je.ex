defmodule Phone.JE do
  @moduledoc false

  use Helper.Country

  # Jersey prefixes:
  #
  # * Landline: +44 1534 xxxxxx or +44 1534 xxxxxxx (6-7 digits)
  # * Mobile: +44 7509, +44 7700, +44 7797, +44 7829, +44 7937
  def regex, do: ~r/^(44)(1534|7509|7700|7797|7829|7937)(\d{6,7})$/
  def country, do: "Jersey"
  def a2, do: "JE"
  def a3, do: "JEY"
  def iso, do: "832"
  def international_code, do: "44"
  def area_code, do: "1534"

  matcher(:regex, ["441534", "447509", "447700", "447797", "447829", "447937"])
end
