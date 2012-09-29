require 'typhoeus/response/header'
require 'typhoeus/response/informations'
require 'typhoeus/response/status'

module Typhoeus

  # This class respresents the response.
  class Response
    include Response::Informations
    include Response::Status

    # Remembers the corresponding request.
    #
    # @example Get request.
    #   request = Typhoeus::Request.get("www.example.com")
    #   response = request.run
    #   response == request.response
    #   #=> true
    #
    # @return [ Typhoeus::Request ]
    attr_accessor :request

    # The options provided, contains all the
    # informations about the request.
    #
    # @return [ Hash ]
    attr_accessor :options

    # @api private
    attr_accessor :mock

    # Create a new response.
    #
    # @example Create a response.
    #  Response.new
    #
    # @param [ Hash ] options The options hash.
    #
    # @return [ Response ] The new response.
    def initialize(options = {})
      @options = options
      @headers = options[:headers]
    end
  end
end
