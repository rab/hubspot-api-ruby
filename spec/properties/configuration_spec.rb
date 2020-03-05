=begin
#Properties

#All HubSpot objects store data in default and custom properties. These endpoints provide access to read and modify object properties in HubSpot.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'spec_helper'

describe Hubspot::Crm::Properties::Configuration do
  let(:config) { Hubspot::Crm::Properties::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("https://api.hubapi.com/crm/v3/properties")
    # Hubspot.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://api.hubapi.com/crm/v3/properties")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://api.hubapi.com/crm/v3/properties")
      end
    end
  end
end
