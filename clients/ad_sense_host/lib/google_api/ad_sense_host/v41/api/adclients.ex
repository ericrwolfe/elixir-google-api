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

defmodule GoogleApi.AdSenseHost.V41.Api.Adclients do
  @moduledoc """
  API calls for all endpoints tagged `Adclients`.
  """

  alias GoogleApi.AdSenseHost.V41.Connection
  import GoogleApi.AdSenseHost.V41.RequestBuilder

  @doc """
  Get information about one of the ad clients in the Host AdSense account.

  ## Parameters

  - connection (GoogleApi.AdSenseHost.V41.Connection): Connection to server
  - ad_client_id (String): Ad client to get.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AdSenseHost.V41.Model.AdClient{}} on success
  {:error, info} on failure
  """
  @spec adsensehost_adclients_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.AdClient.t()} | {:error, Tesla.Env.t()}
  def adsensehost_adclients_get(connection, ad_client_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    %{}
    |> method(:get)
    |> url("/adclients/{adClientId}", %{
      "adClientId" => URI.encode_www_form(ad_client_id)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdSenseHost.V41.Model.AdClient{})
  end

  @doc """
  List all host ad clients in this AdSense account.

  ## Parameters

  - connection (GoogleApi.AdSenseHost.V41.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_results (Integer): The maximum number of ad clients to include in the response, used for paging.
    - :page_token (String): A continuation token, used to page through ad clients. To retrieve the next page, set this parameter to the value of \&quot;nextPageToken\&quot; from the previous response.

  ## Returns

  {:ok, %GoogleApi.AdSenseHost.V41.Model.AdClients{}} on success
  {:error, info} on failure
  """
  @spec adsensehost_adclients_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.AdClients.t()} | {:error, Tesla.Env.t()}
  def adsensehost_adclients_list(connection, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    %{}
    |> method(:get)
    |> url("/adclients")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdSenseHost.V41.Model.AdClients{})
  end
end
