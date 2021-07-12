=begin
#Mux API

#Mux is how developers build online video. This API encompasses both Mux Video and Mux Data functionality to help you build your video-related projects better and faster than ever before.

The version of the OpenAPI document: v1
Contact: devex@mux.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'cgi'

module MuxRuby
  class FiltersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Lists values for a specific filter
    # Deprecated: The API has been replaced by the list-dimension-values API call.  Lists the values for a filter along with a total count of related views. 
    # @param filter_id [String] ID of the Filter
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of items to include in the response (default to 25)
    # @option opts [Integer] :page Offset by this many pages, of the size of &#x60;limit&#x60; (default to 1)
    # @option opts [Array<String>] :filters Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;country:US). Possible filter names are the same as returned by the List Filters endpoint. 
    # @option opts [Array<String>] :timeframe Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;). Accepted formats are...   * array of epoch timestamps e.g. timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600   * duration string e.g. timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days. 
    # @return [ListFilterValuesResponse]
    def list_filter_values(filter_id, opts = {})
      data, _status_code, _headers = list_filter_values_with_http_info(filter_id, opts)
      data
    end

    # Lists values for a specific filter
    # Deprecated: The API has been replaced by the list-dimension-values API call.  Lists the values for a filter along with a total count of related views. 
    # @param filter_id [String] ID of the Filter
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of items to include in the response
    # @option opts [Integer] :page Offset by this many pages, of the size of &#x60;limit&#x60;
    # @option opts [Array<String>] :filters Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;country:US). Possible filter names are the same as returned by the List Filters endpoint. 
    # @option opts [Array<String>] :timeframe Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;). Accepted formats are...   * array of epoch timestamps e.g. timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600   * duration string e.g. timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days. 
    # @return [Array<(ListFilterValuesResponse, Integer, Hash)>] ListFilterValuesResponse data, response status code and response headers
    def list_filter_values_with_http_info(filter_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FiltersApi.list_filter_values ...'
      end
      # verify the required parameter 'filter_id' is set
      if @api_client.config.client_side_validation && filter_id.nil?
        fail ArgumentError, "Missing the required parameter 'filter_id' when calling FiltersApi.list_filter_values"
      end
      # resource path
      local_var_path = '/data/v1/filters/{FILTER_ID}'.sub('{' + 'FILTER_ID' + '}', CGI.escape(filter_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'filters[]'] = @api_client.build_collection_param(opts[:'filters'], :multi) if !opts[:'filters'].nil?
      query_params[:'timeframe[]'] = @api_client.build_collection_param(opts[:'timeframe'], :multi) if !opts[:'timeframe'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListFilterValuesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken']

      new_options = opts.merge(
        :operation => :"FiltersApi.list_filter_values",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FiltersApi#list_filter_values\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Filters
    # Deprecated: The API has been replaced by the list-dimensions API call.  Lists all the filters broken out into basic and advanced. 
    # @param [Hash] opts the optional parameters
    # @return [ListFiltersResponse]
    def list_filters(opts = {})
      data, _status_code, _headers = list_filters_with_http_info(opts)
      data
    end

    # List Filters
    # Deprecated: The API has been replaced by the list-dimensions API call.  Lists all the filters broken out into basic and advanced. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListFiltersResponse, Integer, Hash)>] ListFiltersResponse data, response status code and response headers
    def list_filters_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FiltersApi.list_filters ...'
      end
      # resource path
      local_var_path = '/data/v1/filters'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListFiltersResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken']

      new_options = opts.merge(
        :operation => :"FiltersApi.list_filters",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FiltersApi#list_filters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
