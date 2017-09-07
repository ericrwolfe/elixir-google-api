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

defmodule GoogleApi.Monitoring.V3.Model.Explicit do
  @moduledoc """
  Specifies a set of buckets with arbitrary widths.There are size(bounds) + 1 (&#x3D; N) buckets. Bucket i has the following boundaries:Upper bound (0 &lt;&#x3D; i &lt; N-1): boundsi  Lower bound (1 &lt;&#x3D; i &lt; N); boundsi - 1The bounds field must contain at least one element. If bounds has only one element, then there are no finite buckets, and that single element is the common boundary of the overflow and underflow buckets.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"bounds"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.Explicit do
  import GoogleApi.Monitoring.V3.Deserializer
  def decode(value, options) do
    value
  end
end

