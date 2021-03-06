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

defmodule GoogleApi.Admin.Reports_v1.Model.UsageReports do
  @moduledoc """
  JSON template for a collection of usage reports.

  ## Attributes

  - etag (String): ETag of the resource. Defaults to: `null`.
  - kind (String): The kind of object. Defaults to: `null`.
  - nextPageToken (String): Token for retrieving the next page Defaults to: `null`.
  - usageReports (List[UsageReport]): Various application parameter records. Defaults to: `null`.
  - warnings (List[UsageReportsWarnings]): Warnings if any. Defaults to: `null`.
  """

  defstruct [
    :etag,
    :kind,
    :nextPageToken,
    :usageReports,
    :warnings
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Reports_v1.Model.UsageReports do
  import GoogleApi.Admin.Reports_v1.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:usageReports, :list, GoogleApi.Admin.Reports_v1.Model.UsageReport, options)
    |> deserialize(
      :warnings,
      :list,
      GoogleApi.Admin.Reports_v1.Model.UsageReportsWarnings,
      options
    )
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Reports_v1.Model.UsageReports do
  def encode(value, options) do
    GoogleApi.Admin.Reports_v1.Deserializer.serialize_non_nil(value, options)
  end
end
