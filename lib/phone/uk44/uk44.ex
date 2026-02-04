defmodule Phone.UK44 do
  @moduledoc false

  use Helper.Country

  matcher(:modules, [
    # GG, IM and JE should be before Phone.GB as they should be matched first.
    Phone.UK44.GG,
    Phone.UK44.JE,
    Phone.UK44.IM,
    Phone.UK44.GB
  ])
end
