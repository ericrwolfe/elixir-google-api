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

defmodule GoogleApi.AcceleratedMobilePageUrl.V1.Model.BatchGetAmpUrlsRequest do
  @moduledoc """
  AMP URL request for a batch of URLs.

  ## Attributes

  - lookupStrategy (String): The lookup_strategy being requested. Defaults to: `null`.
    - Enum - one of [FETCH_LIVE_DOC, IN_INDEX_DOC]
  - urls (List[String]): List of URLs to look up for the paired AMP URLs. The URLs are case-sensitive. Up to 50 URLs per lookup (see [Usage Limits](/amp/cache/reference/limits)). Defaults to: `null`.
  """

  defstruct [
    :lookupStrategy,
    :urls
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AcceleratedMobilePageUrl.V1.Model.BatchGetAmpUrlsRequest do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AcceleratedMobilePageUrl.V1.Model.BatchGetAmpUrlsRequest do
  def encode(value, options) do
    GoogleApi.AcceleratedMobilePageUrl.V1.Deserializer.serialize_non_nil(value, options)
  end
end
