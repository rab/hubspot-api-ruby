=begin
#CRM Objects

#CRM objects such as companies, contacts, deals, line items, products, tickets, and quotes are native objects in HubSpot’s CRM. These core building blocks support custom properties, store critical information, and play a central role in the HubSpot application.  ## Supported Object Types  This API provides access to collections of CRM objects, which return a map of property names to values. Each object type has its own set of default properties, which can be found by exploring the [CRM Object Properties API](https://developers.hubspot.com/docs/methods/crm-properties/crm-properties-overview).  |Object Type |Properties returned by default | |--|--| | `companies` | `name`, `domain` | | `contacts` | `firstname`, `lastname`, `email` | | `deals` | `dealname`, `amount`, `closedate`, `pipeline`, `dealstage` | | `products` | `name`, `description`, `price` | | `tickets` | `content`, `hs_pipeline`, `hs_pipeline_stage`, `hs_ticket_category`, `hs_ticket_priority`, `subject` |  Find a list of all properties for an object type using the [CRM Object Properties](https://developers.hubspot.com/docs/methods/crm-properties/get-properties) API. e.g. `GET https://api.hubapi.com/properties/v2/companies/properties`. Change the properties returned in the response using the `properties` array in the request body.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'uri'
require 'logger'

ROOT_PATH = File.dirname(__FILE__)
Dir["#{ROOT_PATH}/hubspot/**/*.rb"].each { |f| require f }


module Hubspot
  class << self
    CLIENTS = [
      'OAuth',
      'Crm::Associations',
      'Crm::Companies',
      'Crm::Contacts',
      'Crm::Deals',
      'Crm::Extensions::Cards',
      'Crm::LineItems',
      'Crm::Objects',
      'Crm::Owners',
      'Crm::Pipelines',
      'Crm::Products',
      'Crm::Properties',
      'Crm::Quotes',
      'Crm::Tickets'
    ].freeze

    def configure
      return Configuration.default unless block_given?
      yield(Configuration.default)
      CLIENTS.each do |client_class_name|
        config_class = Hubspot.const_get("#{client_class_name}::Configuration")
        yield(config_class.default)
      end
      Configuration.default
    end
  end
end