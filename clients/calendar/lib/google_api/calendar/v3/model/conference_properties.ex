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

defmodule GoogleApi.Calendar.V3.Model.ConferenceProperties do
  @moduledoc """


  ## Attributes

  - allowedConferenceSolutionTypes ([String.t]): The types of conference solutions that are supported for this calendar. The possible values are:   - \&quot;eventHangout\&quot;  - \&quot;eventNamedHangout\&quot;  - \&quot;hangoutsMeet\&quot;  Optional. Defaults to: `null`.
  """

  defstruct [
    :allowedConferenceSolutionTypes
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.ConferenceProperties do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.ConferenceProperties do
  def encode(value, options) do
    GoogleApi.Calendar.V3.Deserializer.serialize_non_nil(value, options)
  end
end
