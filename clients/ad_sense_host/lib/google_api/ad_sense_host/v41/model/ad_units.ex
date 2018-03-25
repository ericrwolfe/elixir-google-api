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

defmodule GoogleApi.AdSenseHost.V41.Model.AdUnits do
  @moduledoc """


  ## Attributes

  - etag (String): ETag of this response for caching purposes. Defaults to: `null`.
  - items (List[AdUnit]): The ad units returned in this list response. Defaults to: `null`.
  - kind (String): Kind of list this is, in this case adsensehost#adUnits. Defaults to: `null`.
  - nextPageToken (String): Continuation token used to page through ad units. To retrieve the next page of results, set the next request&#39;s \&quot;pageToken\&quot; value to this. Defaults to: `null`.
  """

  defstruct [
    :etag,
    :items,
    :kind,
    :nextPageToken
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdSenseHost.V41.Model.AdUnits do
  import GoogleApi.AdSenseHost.V41.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:items, :list, GoogleApi.AdSenseHost.V41.Model.AdUnit, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSenseHost.V41.Model.AdUnits do
  def encode(value, options) do
    GoogleApi.AdSenseHost.V41.Deserializer.serialize_non_nil(value, options)
  end
end
