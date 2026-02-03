defmodule Phone.GB do
  @moduledoc false

  use Helper.Country

  # Guernsey, Jersey, and Isle of Man also have the phone prefix +44. Therefore,
  # we need to exclude their specific number ranges from the general UK regex:
  #
  # * Guernsey: 1481 (landline), 7781, 7839, 7911 (mobile)
  # * Jersey: 1534 (landline), 7509, 7700, 7797, 7829, 7937 (mobile)
  # * Isle of Man: 1624 (landline), 7624, 7524, 7924, 7452 (mobile)
  #
  # Check gg.ex, je.ex, and im.ex for those specific regexes.
  def regex,
    do:
      ~r/^(44)(?!1481|7781|7839|7911|1534|7509|7700|7797|7829|7937|1624|7624|7524|7924|7452)(\d{10})$/

  def country, do: "United Kingdom"
  def a2, do: "GB"
  def a3, do: "GBR"

  matcher(:regex, ["44"])
end
