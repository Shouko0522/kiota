class PropertyViewing < ApplicationRecord
  belongs_to :user
  belongs_to :property

  def google_url
    date_start = confirmed_time.utc.strftime("%Y%m%dT%H%M%SZ")
    date_end = (confirmed_time + 1.hour).utc.strftime("%Y%m%dT%H%M%SZ")
    query = {
      action: "TEMPLATE" ,
      text: "[Kiota] visit room",
      details: "・#{property.age}years.old, ・¥#{property.price},000, ・#{property.size}m²",
      location: "#{property.location}",
      dates: "#{date_start}/#{date_end}"
    }

    uri = URI::HTTPS.build(
      :host => "www.google.com",
      :path => "/calendar/render",
      :query => query.to_query
      )

  end
end
