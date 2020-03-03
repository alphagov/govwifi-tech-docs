#!/usr/bin/env ruby

require 'fileutils'

GOVUK_FRONTEND_PATH = './node_modules/govuk-frontend/govuk'.freeze
OUR_PATH = './source'.freeze

ASSETS_MAP = {
  'node_modules/govwifi-shared-frontend/dist/govwifi-shared-frontend.js' => 'javascripts/dist/'
}.freeze

puts "[copy-assets.rb] Starting assets copy.\n\n"

ASSETS_MAP.each do |src, dest_folder|
  destination = File.join(OUR_PATH, dest_folder)

  Dir.mkdir(destination) unless Dir.exist?(destination)

  FileUtils.cp_r(src, destination, verbose: true)
end

puts "\n[copy-assets.rb] Assets copy finished."
