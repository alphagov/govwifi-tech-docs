require 'govuk_tech_docs'

set :relative_links, true

configure :build do
    Middleman::Extensions::MinifyJavascript.config.setting(:compressor).value = proc {
        require 'uglifier'
        Uglifier.new(harmony: true)
    }
    activate :relative_assets
end

GovukTechDocs.configure(self)

activate :directory_indexes