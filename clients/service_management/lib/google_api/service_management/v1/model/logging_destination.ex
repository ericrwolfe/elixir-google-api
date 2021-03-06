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

defmodule GoogleApi.ServiceManagement.V1.Model.LoggingDestination do
  @moduledoc """
  Configuration of a specific logging destination (the producer project or the consumer project).

  ## Attributes

  - logs (List[String]): Names of the logs to be sent to this destination. Each name must be defined in the Service.logs section. If the log name is not a domain scoped name, it will be automatically prefixed with the service name followed by \&quot;/\&quot;. Defaults to: `null`.
  - monitoredResource (String): The monitored resource type. The type must be defined in the Service.monitored_resources section. Defaults to: `null`.
  """

  defstruct [
    :"logs",
    :"monitoredResource"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.LoggingDestination do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.LoggingDestination do
  def encode(value, options) do
    GoogleApi.ServiceManagement.V1.Deserializer.serialize_non_nil(value, options)
  end
end

