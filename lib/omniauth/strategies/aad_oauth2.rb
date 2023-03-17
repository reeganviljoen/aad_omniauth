
require 'jwt'
require 'oauth2'
require 'omniauth/strategies/oauth2'
require 'uri'

  module OmniAuth
    module Strategies
      class AadOmniauth < OmniAuth::Strategies::OAuth2
        BASE_SCOPE_URL = ENV['AAD_B2C_URL']
        BASE_SCOPES =  %w[profile email openid].freeze
        DEFAULT_SCOPE = 'email, profile'
        AUTHORIZE_OPTIONS = %i[access_type hd login_hint prompt request_visible_actions scope state redirect_uri include_granted_scopes openid_realm device_id device_name]


        option :name, "aad_omniauth"
        option :skip_friends, true
        option :skip_image_info, true
        option :skip_jwt, false
        option :jwt_leeway, 60
        option :authorize_options, AUTHORIZE_OPTIONS
        option :overridable_authorize_params, AUTHORIZE_OPTIONS
        option :authorized_client_ids, []

      end
    end
  end
