=begin
# Mux Ruby - Copyright 2019 Mux Inc.
# NOTE: This file is auto generated. Do not edit this file manually.
=end

# Common files
require 'mux_ruby/api_client'
require 'mux_ruby/api_error'
require 'mux_ruby/version'
require 'mux_ruby/configuration'

# Models
require 'mux_ruby/models/abridged_video_view'
require 'mux_ruby/models/asset'
require 'mux_ruby/models/asset_errors'
require 'mux_ruby/models/asset_master'
require 'mux_ruby/models/asset_response'
require 'mux_ruby/models/asset_static_renditions'
require 'mux_ruby/models/asset_static_renditions_files'
require 'mux_ruby/models/breakdown_value'
require 'mux_ruby/models/create_asset_request'
require 'mux_ruby/models/create_live_stream_request'
require 'mux_ruby/models/create_playback_id_request'
require 'mux_ruby/models/create_playback_id_response'
require 'mux_ruby/models/create_upload_request'
require 'mux_ruby/models/error'
require 'mux_ruby/models/filter_value'
require 'mux_ruby/models/get_asset_input_info_response'
require 'mux_ruby/models/get_asset_playback_id_response'
require 'mux_ruby/models/get_metric_timeseries_data_response'
require 'mux_ruby/models/get_overall_values_response'
require 'mux_ruby/models/incident'
require 'mux_ruby/models/incident_breakdown'
require 'mux_ruby/models/incident_notification'
require 'mux_ruby/models/incident_notification_rule'
require 'mux_ruby/models/incident_response'
require 'mux_ruby/models/input_file'
require 'mux_ruby/models/input_info'
require 'mux_ruby/models/input_settings'
require 'mux_ruby/models/input_settings_overlay_settings'
require 'mux_ruby/models/input_track'
require 'mux_ruby/models/insight'
require 'mux_ruby/models/list_all_metric_values_response'
require 'mux_ruby/models/list_assets_response'
require 'mux_ruby/models/list_breakdown_values_response'
require 'mux_ruby/models/list_errors_response'
require 'mux_ruby/models/list_exports_response'
require 'mux_ruby/models/list_filter_values_response'
require 'mux_ruby/models/list_filters_response'
require 'mux_ruby/models/list_filters_response_data'
require 'mux_ruby/models/list_incidents_response'
require 'mux_ruby/models/list_insights_response'
require 'mux_ruby/models/list_live_streams_response'
require 'mux_ruby/models/list_related_incidents_response'
require 'mux_ruby/models/list_signing_keys_response'
require 'mux_ruby/models/list_uploads_response'
require 'mux_ruby/models/list_video_views_response'
require 'mux_ruby/models/live_stream'
require 'mux_ruby/models/live_stream_response'
require 'mux_ruby/models/metric'
require 'mux_ruby/models/notification_rule'
require 'mux_ruby/models/overall_values'
require 'mux_ruby/models/playback_id'
require 'mux_ruby/models/playback_policy'
require 'mux_ruby/models/score'
require 'mux_ruby/models/signal_live_stream_complete_response'
require 'mux_ruby/models/signing_key'
require 'mux_ruby/models/signing_key_response'
require 'mux_ruby/models/track'
require 'mux_ruby/models/update_asset_mp4_support_request'
require 'mux_ruby/models/upload'
require 'mux_ruby/models/upload_error'
require 'mux_ruby/models/upload_response'
require 'mux_ruby/models/video_view'
require 'mux_ruby/models/video_view_event'
require 'mux_ruby/models/video_view_response'

# APIs
require 'mux_ruby/api/assets_api'
require 'mux_ruby/api/direct_uploads_api'
require 'mux_ruby/api/errors_api'
require 'mux_ruby/api/exports_api'
require 'mux_ruby/api/filters_api'
require 'mux_ruby/api/incidents_api'
require 'mux_ruby/api/live_streams_api'
require 'mux_ruby/api/metrics_api'
require 'mux_ruby/api/url_signing_keys_api'
require 'mux_ruby/api/video_views_api'

module MuxRuby
  class << self
    # Customize default settings for the SDK using block.
    #   MuxRuby.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
