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

defmodule GoogleApi.ServiceUser.V1.Model.Api do
  @moduledoc """
  Api is a light-weight descriptor for an API Interface.  Interfaces are also described as \&quot;protocol buffer services\&quot; in some contexts, such as by the \&quot;service\&quot; keyword in a .proto file, but they are different from API Services, which represent a concrete implementation of an interface as opposed to simply a description of methods and bindings. They are also sometimes simply referred to as \&quot;APIs\&quot; in other contexts, such as the name of this message itself. See https://cloud.google.com/apis/design/glossary for detailed terminology.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"methods",
    :"mixins",
    :"name",
    :"options",
    :"sourceContext",
    :"syntax",
    :"version"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.Api do
  import GoogleApi.ServiceUser.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"methods", :list, GoogleApi.ServiceUser.V1.Model.Method, options)
    |> deserialize(:"mixins", :list, GoogleApi.ServiceUser.V1.Model.Mixin, options)
    |> deserialize(:"options", :list, GoogleApi.ServiceUser.V1.Model.Option, options)
    |> deserialize(:"sourceContext", :struct, GoogleApi.ServiceUser.V1.Model.SourceContext, options)
  end
end

