=begin
#OAuthService

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module Hubspot
  module Client
    module OAuth
      module Api
        class TokensApi
          attr_accessor :api_client

          def initialize(api_client = ApiClient.default)
            @api_client = api_client
          end
          # Auth Level: none ([Docs](https://product.hubteam.com/docs/appsystems/auth-and-rest/auth-levels.html)) [Source Code](https://private.hubteam.com/opengrok/search?project=all&path=TokensResource%20OR%20Object&defs=requestAccessToken)&nbsp;|&nbsp;[API Goggles](https://tools.hubteam.com/api/post/api.hubapi.com%2Foauth%2Fv1%2Ftoken?showRequestDetails=true)&nbsp;|&nbsp;<a href='#operations-Tokens-post-%2Foauth%2Fv1%2Ftoken'>Permalink</a>
          # @param [Hash] opts the optional parameters
          # @option opts [String] :grant_type 
          # @option opts [String] :code 
          # @option opts [String] :redirect_uri 
          # @option opts [String] :client_id 
          # @option opts [String] :client_secret 
          # @option opts [String] :refresh_token 
          # @return [Error]
          def postoauthv1token(opts = {})
            data, _status_code, _headers = postoauthv1token_with_http_info(opts)
            data
          end

          # Auth Level: none ([Docs](https://product.hubteam.com/docs/appsystems/auth-and-rest/auth-levels.html)) [Source Code](https://private.hubteam.com/opengrok/search?project&#x3D;all&amp;path&#x3D;TokensResource%20OR%20Object&amp;defs&#x3D;requestAccessToken)&amp;nbsp;|&amp;nbsp;[API Goggles](https://tools.hubteam.com/api/post/api.hubapi.com%2Foauth%2Fv1%2Ftoken?showRequestDetails&#x3D;true)&amp;nbsp;|&amp;nbsp;&lt;a href&#x3D;&#39;#operations-Tokens-post-%2Foauth%2Fv1%2Ftoken&#39;&gt;Permalink&lt;/a&gt;
          # @param [Hash] opts the optional parameters
          # @option opts [String] :grant_type 
          # @option opts [String] :code 
          # @option opts [String] :redirect_uri 
          # @option opts [String] :client_id 
          # @option opts [String] :client_secret 
          # @option opts [String] :refresh_token 
          # @return [Array<(Error, Fixnum, Hash)>] Error data, response status code and response headers
          def postoauthv1token_with_http_info(opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: TokensApi.postoauthv1token ...'
            end
            # resource path
            local_var_path = '/v1/token'

            # query parameters
            query_params = {}

            # header parameters
            header_params = {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['*/*'])
            # HTTP header 'Content-Type'
            header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

            # form parameters
            form_params = {}
            form_params['grant_type'] = opts[:'grant_type'] if !opts[:'grant_type'].nil?
            form_params['code'] = opts[:'code'] if !opts[:'code'].nil?
            form_params['redirect_uri'] = opts[:'redirect_uri'] if !opts[:'redirect_uri'].nil?
            form_params['client_id'] = opts[:'client_id'] if !opts[:'client_id'].nil?
            form_params['client_secret'] = opts[:'client_secret'] if !opts[:'client_secret'].nil?
            form_params['refresh_token'] = opts[:'refresh_token'] if !opts[:'refresh_token'].nil?

            # http body (model)
            post_body = nil
            auth_names = []
            data, status_code, headers = @api_client.call_api(:POST, local_var_path,
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => 'Error')
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: TokensApi#postoauthv1token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

        end
      end
    end
  end
end