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

defmodule GoogleApi.AdExchangeSeller.V20.Model.ReportHeaders do
  @moduledoc """


  ## Attributes

  - currency (String): The currency of this column. Only present if the header type is METRIC_CURRENCY. Defaults to: `null`.
  - name (String): The name of the header. Defaults to: `null`.
  - type (String): The type of the header; one of DIMENSION, METRIC_TALLY, METRIC_RATIO, or METRIC_CURRENCY. Defaults to: `null`.
  """

  defstruct [
    :currency,
    :name,
    :type
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeSeller.V20.Model.ReportHeaders do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeSeller.V20.Model.ReportHeaders do
  def encode(value, options) do
    GoogleApi.AdExchangeSeller.V20.Deserializer.serialize_non_nil(value, options)
  end
end
