defmodule HkObservatory do
  import SweetXml

  @moduledoc """
  Documentation for HkObservatory.
  """

  @doc """
  Get Current Weather Warning.
  """
  def weather_warning do
    case weather_warning_str() do
      'Very Hot Weather Warning' ++ _ -> :very_hot_weather
      _ -> :unknown
    end
  end

  defp weather_warning_str do
    xml_body() |> xpath(~x"/rss/channel/item/title/text()")
  end

  defp xml_body do
    {:ok, {_, _, body}} = :httpc.request(:get, {'https://rss.weather.gov.hk/rss/WeatherWarningSummaryv2.xml', []}, [], [])
    body
  end
end
