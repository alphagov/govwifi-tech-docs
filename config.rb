require 'govuk_tech_docs'

GovukTechDocs.configure(self)

activate :directory_indexes

activate :google_analytics do |ga|
  ga.tracking_id = 'UA-127779891-1'

  ga.allow_linker = true

  ga.domain_name = ['docs.wifi.service.gov.uk', 'wifi.service.gov.uk', 'admin.wifi.service.gov.uk']
end
