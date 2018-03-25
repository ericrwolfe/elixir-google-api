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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.BidResponseWithoutBidsStatusRow do
  @moduledoc """
  The number of impressions with the specified dimension values that were considered to have no applicable bids, as described by the specified status.

  ## Attributes

  - impressionCount (MetricValue): The number of impressions for which there was a bid response with the specified status. Defaults to: `null`.
  - rowDimensions (RowDimensions): The values of all dimensions associated with metric values in this row. Defaults to: `null`.
  - status (String): The status specifying why the bid responses were considered to have no applicable bids. Defaults to: `null`.
    - Enum - one of [STATUS_UNSPECIFIED, RESPONSES_WITHOUT_BIDS, RESPONSES_WITHOUT_BIDS_FOR_ACCOUNT, RESPONSES_WITHOUT_BIDS_FOR_DEAL]
  """

  defstruct [
    :impressionCount,
    :rowDimensions,
    :status
  ]
end

defimpl Poison.Decoder,
  for: GoogleApi.AdExchangeBuyer.V2beta1.Model.BidResponseWithoutBidsStatusRow do
  import GoogleApi.AdExchangeBuyer.V2beta1.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :impressionCount,
      :struct,
      GoogleApi.AdExchangeBuyer.V2beta1.Model.MetricValue,
      options
    )
    |> deserialize(
      :rowDimensions,
      :struct,
      GoogleApi.AdExchangeBuyer.V2beta1.Model.RowDimensions,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AdExchangeBuyer.V2beta1.Model.BidResponseWithoutBidsStatusRow do
  def encode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Deserializer.serialize_non_nil(value, options)
  end
end
