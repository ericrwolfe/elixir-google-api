# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AdExchangeBuyer.V14.Model.AccountBidderLocation do
  @moduledoc """


  ## Attributes

  - bidProtocol (String): The protocol that the bidder endpoint is using. OpenRTB protocols with prefix PROTOCOL_OPENRTB_PROTOBUF use proto buffer, otherwise use JSON.  Allowed values:   - PROTOCOL_ADX  - PROTOCOL_OPENRTB_2_2  - PROTOCOL_OPENRTB_2_3  - PROTOCOL_OPENRTB_2_4  - PROTOCOL_OPENRTB_2_5  - PROTOCOL_OPENRTB_PROTOBUF_2_3  - PROTOCOL_OPENRTB_PROTOBUF_2_4  - PROTOCOL_OPENRTB_PROTOBUF_2_5 Defaults to: `null`.
  - maximumQps (Integer): The maximum queries per second the Ad Exchange will send. Defaults to: `null`.
  - region (String): The geographical region the Ad Exchange should send requests from. Only used by some quota systems, but always setting the value is recommended. Allowed values:   - ASIA  - EUROPE  - US_EAST  - US_WEST Defaults to: `null`.
  - url (String): The URL to which the Ad Exchange will send bid requests. Defaults to: `null`.
  """

  defstruct [
    :bidProtocol,
    :maximumQps,
    :region,
    :url
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.AccountBidderLocation do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.AccountBidderLocation do
  def encode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Deserializer.serialize_non_nil(value, options)
  end
end
