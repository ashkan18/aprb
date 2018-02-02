defmodule Aprb.Views.RadiationMessageSlackView do
  import Aprb.ViewHelper
  def render(event) do
    if event["verb"] in ["bounce", "spamreport"] do
      %{
        text: ":sadbot: #{event["verb"]} event for #{radiation_link(event["object"]["link"])}",
        attachments: [%{
                        fields: [
                          %{
                            title: "Recipient Name",
                            value: "#{event["properties"]["to_name"]}",
                            short: true
                          },
                          %{
                            title: "Recipient Email",
                            value: "#{event["properties"]["to_email_address"]}",
                            short: true
                          }
                        ]
                      }],
        unfurl_links: false
      }
    end
  end
end
