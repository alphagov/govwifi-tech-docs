require 'govuk_tech_docs'

configure :build do
    Middleman::Extensions::MinifyJavascript.config.setting(:compressor).value = proc {
        require 'uglifier'
        Uglifier.new(harmony: true)
    }
end

GovukTechDocs.configure(self)

activate :directory_indexes