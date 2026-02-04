defmodule Phone.UK44Test do
  use ExUnit.Case, async: true

  countries = [
    {Phone.UK44.GG, 6},
    {Phone.UK44.JE, 6},
    {Phone.UK44.IM, 6},
    {Phone.UK44.GB, 10}
  ]

  for {main_module, digits} <- countries do
    Enum.map(main_module.codes, fn code ->
      test "#{inspect(main_module)} parses area code #{code}" do
        phone = "#{unquote(code)}" <> String.duplicate("5", unquote(digits))

        assert Phone.valid?(phone)
        assert {:ok, parsed} = Phone.parse(phone)

        assert parsed.country == unquote(main_module).country
        assert parsed.a2 == unquote(main_module).a2
        assert parsed.a3 == unquote(main_module).a3
      end

      test "#{inspect(main_module)} cant parse wrong number with code #{code}" do
        phone = "#{unquote(code)}555"

        refute Phone.valid?(phone)
        assert {:error, _} = Phone.parse(phone)

        refute unquote(main_module).match?(phone)
        assert {:error, _} = unquote(main_module).build(phone)

        assert_raise ArgumentError, "Not a valid phone number.", fn ->
          unquote(main_module).build!(phone)
        end
      end
    end)
  end
end
