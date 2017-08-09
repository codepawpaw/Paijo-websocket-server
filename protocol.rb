require 'json'

# NOTICE:
#
# The basic structure of a protocol is as follows:
#
# {
#   route: <resource>#<action>,
#   <key>: <value>
# }
#
class Protocol
  attr_reader :json

  def initialize(text)
    begin
      @json = JSON.parse(text)
    rescue JSON::ParserError
      @json = {}
    end
  end

  def source
    @json["source"]
  end

  def token
    @json["token"]
  end

  def route
    @json["route"]
  end

  def target
    @json["target"]
  end

  def user
    @json["user"]
  end

  def message
    @json["message"]
  end
end
