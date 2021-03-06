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

defmodule GoogleApi.Content.V2.Model.AccountTaxTaxRule do
  @moduledoc """
  Tax calculation rule to apply in a state or province (USA only).

  ## Attributes

  - country (String): Country code in which tax is applicable. Defaults to: `null`.
  - locationId (String): State (or province) is which the tax is applicable, described by its location id (also called criteria id). Defaults to: `null`.
  - ratePercent (String): Explicit tax rate in percent, represented as a floating point number without the percentage character. Must not be negative. Defaults to: `null`.
  - shippingTaxed (Boolean): If true, shipping charges are also taxed. Defaults to: `null`.
  - useGlobalRate (Boolean): Whether the tax rate is taken from a global tax table or specified explicitly. Defaults to: `null`.
  """

  defstruct [
    :"country",
    :"locationId",
    :"ratePercent",
    :"shippingTaxed",
    :"useGlobalRate"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.AccountTaxTaxRule do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.AccountTaxTaxRule do
  def encode(value, options) do
    GoogleApi.Content.V2.Deserializer.serialize_non_nil(value, options)
  end
end

