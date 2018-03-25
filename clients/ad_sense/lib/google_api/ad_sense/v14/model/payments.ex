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

defmodule GoogleApi.AdSense.V14.Model.Payments do
  @moduledoc """


  ## Attributes

  - items (List[Payment]): The list of Payments for the account. One or both of a) the account&#39;s most recent payment; and b) the account&#39;s upcoming payment. Defaults to: `null`.
  - kind (String): Kind of list this is, in this case adsense#payments. Defaults to: `null`.
  """

  defstruct [
    :items,
    :kind
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdSense.V14.Model.Payments do
  import GoogleApi.AdSense.V14.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:items, :list, GoogleApi.AdSense.V14.Model.Payment, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSense.V14.Model.Payments do
  def encode(value, options) do
    GoogleApi.AdSense.V14.Deserializer.serialize_non_nil(value, options)
  end
end
