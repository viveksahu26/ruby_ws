require "faraday"
require "json"
require "uri"

class DepsDevClient
  BASE_URL = "https://api.deps.dev/v3alpha"

  def initialize
    @conn = Faraday.new do |faraday|
      faraday.request :json
      faraday.response :json
      faraday.options.timeout = 10
      faraday.adapter Faraday.default_adapter
    end
  end

  # Lookup a PURL
  def purl_lookup(purl)
    encoded_purl = URI.encode_www_form_component(purl)
    get("/purl/#{encoded_purl}")
  end

  # Get a package by system and name
  def get_package(system, name)
    encoded_name = URI.encode_www_form_component(name)
    system = "go"
    get("/systems/#{system}/packages/#{encoded_name}")
  end

  # Get a specific version of a package by system, name, and version
  def get_version(system, name, version)
    encoded_name = URI.encode_www_form_component(name)
    encoded_version = URI.encode_www_form_component(version)
    system = "go"
    get("/systems/#{system}/packages/#{encoded_name}/versions/#{encoded_version}")
  end

  # Get dependencies of a specific version
  def get_dependencies(system, name, version)
    system = "go"
    encoded_name = URI.encode_www_form_component(name)
    encoded_version = URI.encode_www_form_component(version)
    get("/systems/#{system}/packages/#{encoded_name}/versions/#{encoded_version}:dependencies")
  end


  private

  # General GET request method
  def get(path)
    response = @conn.get("#{BASE_URL}#{path}")
    if response.success?
      response.body
    else
      puts "Request failed with status: #{response.status}"
      nil
    end
  rescue Faraday::TimeoutError => e
    puts "Request timed out: #{e.message}"
    nil
  rescue Faraday::ParsingError => e
    puts "Error parsing response: #{e.message}"
    nil
  end
end

# Instantiate the client
client = DepsDevClient.new

# Define the PURL components
system = "golang"
name = "github.com/cyclonedx/cyclonedx-go"
version = "v0.9.0"
purl = "pkg:#{system}/#{name}@#{version}"

# Example API Calls
puts "PURL Lookup:"
puts client.purl_lookup(purl)

puts "\nPackage Lookup:"
puts client.get_package(system, name)

puts "\nVersion Lookup:"
puts client.get_version(system, name, version)

# Example API Calls
puts "Dependencies Lookup:"
puts client.get_dependencies(system, name, version)
