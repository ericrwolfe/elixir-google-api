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

defmodule GoogleApi.Content.V2.Model.Table do
  @moduledoc """
  

  ## Attributes

  - columnHeaders (Headers): Headers of the table&#39;s columns. Optional: if not set then the table has only one dimension. Defaults to: `null`.
  - name (String): Name of the table. Required for subtables, ignored for the main table. Defaults to: `null`.
  - rowHeaders (Headers): Headers of the table&#39;s rows. Required. Defaults to: `null`.
  - rows (List[Row]): The list of rows that constitute the table. Must have the same length as rowHeaders. Required. Defaults to: `null`.
  """

  defstruct [
    :"columnHeaders",
    :"name",
    :"rowHeaders",
    :"rows"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.Table do
  import GoogleApi.Content.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"columnHeaders", :struct, GoogleApi.Content.V2.Model.Headers, options)
    |> deserialize(:"rowHeaders", :struct, GoogleApi.Content.V2.Model.Headers, options)
    |> deserialize(:"rows", :list, GoogleApi.Content.V2.Model.Row, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.Table do
  def encode(value, options) do
    GoogleApi.Content.V2.Deserializer.serialize_non_nil(value, options)
  end
end

