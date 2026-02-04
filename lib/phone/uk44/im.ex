defmodule Phone.UK44.IM do
  @moduledoc false

  use Helper.Country

  # Isle of Man prefixes:
  #
  # * Landline: +44 1624 xxxxxx
  # * Mobile (primary): +44 7624 xxxxxx, +44 7524 xxxxxx, +44 7924 xxxxxx
  # * Mobile (extended): +44 7452 xxxxxx
  def regex, do: ~r/^(44)(1624|7624|7524|7924|7452)(\d{6})$/

  def country, do: "Isle of Man"
  def a2, do: "IM"
  def a3, do: "IMN"
  def iso, do: "833"
  def international_code, do: "44"
  def area_code, do: "1624"

  matcher(:regex, ["441624", "447624", "447524", "447924", "447452"])
end
