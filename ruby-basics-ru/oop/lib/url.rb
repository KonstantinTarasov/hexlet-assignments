# frozen_string_literal: true

# BEGIN
require 'uri'

class Url
  extend Forwardable
  include Comparable
  
  attr_reader :query_params 

  def initialize(str)
    @uri = URI(str)
    if query
      @query_params = query.split('&').each_with_object({}) { |str, hsh| hsh[str.split('=')[0].to_sym] = str.split('=')[1]}
    else
      @query_params = {}
    end
  end

  def_delegators :@uri, :scheme, :host, :port, :query, :to_s

  def query_param(key, default = nil)
    query_params.fetch(key, default)
  end

  def <=>(other)
    return false if self.class != other.class

    to_s <=> other.to_s 
  end
end
# END
