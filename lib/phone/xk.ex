defmodule Phone.XK do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(383)(..)(.{6})/
  def country, do: "Kosovo"
  def a2, do: "XK"
  def a3, do: "XKX"

  matcher(:regex, ["383"])
end
