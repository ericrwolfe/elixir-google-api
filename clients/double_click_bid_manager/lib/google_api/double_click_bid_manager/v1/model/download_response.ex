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

defmodule GoogleApi.DoubleClickBidManager.V1.Model.DownloadResponse do
  @moduledoc """
  Download response.

  ## Attributes

  - adGroups (String): Retrieved ad groups in SDF format. Defaults to: `null`.
  - ads (String): Retrieved ads in SDF format. Defaults to: `null`.
  - insertionOrders (String): Retrieved insertion orders in SDF format. Defaults to: `null`.
  - lineItems (String): Retrieved line items in SDF format. Defaults to: `null`.
  """

  defstruct [
    :"adGroups",
    :"ads",
    :"insertionOrders",
    :"lineItems"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V1.Model.DownloadResponse do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V1.Model.DownloadResponse do
  def encode(value, options) do
    GoogleApi.DoubleClickBidManager.V1.Deserializer.serialize_non_nil(value, options)
  end
end

