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

defmodule GoogleApi.Reseller.V1.Api.Subscriptions do
  @moduledoc """
  API calls for all endpoints tagged `Subscriptions`.
  """

  alias GoogleApi.Reseller.V1.Connection
  import GoogleApi.Reseller.V1.RequestBuilder


  @doc """
  Activates a subscription previously suspended by the reseller

  ## Parameters

  - connection (GoogleApi.Reseller.V1.Connection): Connection to server
  - customer_id (String): Either the customer&#39;s primary domain name or the customer&#39;s unique identifier. If using the domain name, we do not recommend using a customerId as a key for persistent data. If the domain name for a customerId is changed, the Google system automatically updates.
  - subscription_id (String): This is a required property. The subscriptionId is the subscription identifier and is unique for each customer. Since a subscriptionId changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the subscriptionId can be found using the retrieve all reseller subscriptions method.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Reseller.V1.Model.Subscription{}} on success
  {:error, info} on failure
  """
  @spec reseller_subscriptions_activate(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Reseller.V1.Model.Subscription.t} | {:error, Tesla.Env.t}
  def reseller_subscriptions_activate(connection, customer_id, subscription_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:post)
    |> url("/customers/#{customer_id}/subscriptions/#{subscription_id}/activate")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Reseller.V1.Model.Subscription{})
  end

  @doc """
  Update a subscription plan. Use this method to update a plan for a 30-day trial or a flexible plan subscription to an annual commitment plan with monthly or yearly payments.

  ## Parameters

  - connection (GoogleApi.Reseller.V1.Connection): Connection to server
  - customer_id (String): Either the customer&#39;s primary domain name or the customer&#39;s unique identifier. If using the domain name, we do not recommend using a customerId as a key for persistent data. If the domain name for a customerId is changed, the Google system automatically updates.
  - subscription_id (String): This is a required property. The subscriptionId is the subscription identifier and is unique for each customer. Since a subscriptionId changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the subscriptionId can be found using the retrieve all reseller subscriptions method.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (ChangePlanRequest): 

  ## Returns

  {:ok, %GoogleApi.Reseller.V1.Model.Subscription{}} on success
  {:error, info} on failure
  """
  @spec reseller_subscriptions_change_plan(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Reseller.V1.Model.Subscription.t} | {:error, Tesla.Env.t}
  def reseller_subscriptions_change_plan(connection, customer_id, subscription_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/customers/#{customer_id}/subscriptions/#{subscription_id}/changePlan")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Reseller.V1.Model.Subscription{})
  end

  @doc """
  Update a user license&#39;s renewal settings. This is applicable for accounts with annual commitment plans only.

  ## Parameters

  - connection (GoogleApi.Reseller.V1.Connection): Connection to server
  - customer_id (String): Either the customer&#39;s primary domain name or the customer&#39;s unique identifier. If using the domain name, we do not recommend using a customerId as a key for persistent data. If the domain name for a customerId is changed, the Google system automatically updates.
  - subscription_id (String): This is a required property. The subscriptionId is the subscription identifier and is unique for each customer. Since a subscriptionId changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the subscriptionId can be found using the retrieve all reseller subscriptions method.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (RenewalSettings): 

  ## Returns

  {:ok, %GoogleApi.Reseller.V1.Model.Subscription{}} on success
  {:error, info} on failure
  """
  @spec reseller_subscriptions_change_renewal_settings(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Reseller.V1.Model.Subscription.t} | {:error, Tesla.Env.t}
  def reseller_subscriptions_change_renewal_settings(connection, customer_id, subscription_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/customers/#{customer_id}/subscriptions/#{subscription_id}/changeRenewalSettings")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Reseller.V1.Model.Subscription{})
  end

  @doc """
  Update a subscription&#39;s user license settings.

  ## Parameters

  - connection (GoogleApi.Reseller.V1.Connection): Connection to server
  - customer_id (String): Either the customer&#39;s primary domain name or the customer&#39;s unique identifier. If using the domain name, we do not recommend using a customerId as a key for persistent data. If the domain name for a customerId is changed, the Google system automatically updates.
  - subscription_id (String): This is a required property. The subscriptionId is the subscription identifier and is unique for each customer. Since a subscriptionId changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the subscriptionId can be found using the retrieve all reseller subscriptions method.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Seats): 

  ## Returns

  {:ok, %GoogleApi.Reseller.V1.Model.Subscription{}} on success
  {:error, info} on failure
  """
  @spec reseller_subscriptions_change_seats(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Reseller.V1.Model.Subscription.t} | {:error, Tesla.Env.t}
  def reseller_subscriptions_change_seats(connection, customer_id, subscription_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/customers/#{customer_id}/subscriptions/#{subscription_id}/changeSeats")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Reseller.V1.Model.Subscription{})
  end

  @doc """
  Cancel, suspend or transfer a subscription to direct.

  ## Parameters

  - connection (GoogleApi.Reseller.V1.Connection): Connection to server
  - customer_id (String): Either the customer&#39;s primary domain name or the customer&#39;s unique identifier. If using the domain name, we do not recommend using a customerId as a key for persistent data. If the domain name for a customerId is changed, the Google system automatically updates.
  - subscription_id (String): This is a required property. The subscriptionId is the subscription identifier and is unique for each customer. Since a subscriptionId changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the subscriptionId can be found using the retrieve all reseller subscriptions method.
  - deletion_type (String): The deletionType query string enables the cancellation, downgrade, or suspension of a subscription.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec reseller_subscriptions_delete(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def reseller_subscriptions_delete(connection, customer_id, subscription_id, deletion_type, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:delete)
    |> url("/customers/#{customer_id}/subscriptions/#{subscription_id}")
    |> add_param(:query, :"deletionType", deletion_type)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Get a specific subscription.

  ## Parameters

  - connection (GoogleApi.Reseller.V1.Connection): Connection to server
  - customer_id (String): Either the customer&#39;s primary domain name or the customer&#39;s unique identifier. If using the domain name, we do not recommend using a customerId as a key for persistent data. If the domain name for a customerId is changed, the Google system automatically updates.
  - subscription_id (String): This is a required property. The subscriptionId is the subscription identifier and is unique for each customer. Since a subscriptionId changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the subscriptionId can be found using the retrieve all reseller subscriptions method.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Reseller.V1.Model.Subscription{}} on success
  {:error, info} on failure
  """
  @spec reseller_subscriptions_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Reseller.V1.Model.Subscription.t} | {:error, Tesla.Env.t}
  def reseller_subscriptions_get(connection, customer_id, subscription_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/customers/#{customer_id}/subscriptions/#{subscription_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Reseller.V1.Model.Subscription{})
  end

  @doc """
  Create or transfer a subscription.

  ## Parameters

  - connection (GoogleApi.Reseller.V1.Connection): Connection to server
  - customer_id (String): Either the customer&#39;s primary domain name or the customer&#39;s unique identifier. If using the domain name, we do not recommend using a customerId as a key for persistent data. If the domain name for a customerId is changed, the Google system automatically updates.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :customer_auth_token (String): The customerAuthToken query string is required when creating a resold account that transfers a direct customer&#39;s subscription or transfers another reseller customer&#39;s subscription to your reseller management. This is a hexadecimal authentication token needed to complete the subscription transfer. For more information, see the administrator help center.
    - :body (Subscription): 

  ## Returns

  {:ok, %GoogleApi.Reseller.V1.Model.Subscription{}} on success
  {:error, info} on failure
  """
  @spec reseller_subscriptions_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Reseller.V1.Model.Subscription.t} | {:error, Tesla.Env.t}
  def reseller_subscriptions_insert(connection, customer_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"customerAuthToken" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/customers/#{customer_id}/subscriptions")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Reseller.V1.Model.Subscription{})
  end

  @doc """
  List of subscriptions managed by the reseller. The list can be all subscriptions, all of a customer&#39;s subscriptions, or all of a customer&#39;s transferable subscriptions.

  ## Parameters

  - connection (GoogleApi.Reseller.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :customer_auth_token (String): The customerAuthToken query string is required when creating a resold account that transfers a direct customer&#39;s subscription or transfers another reseller customer&#39;s subscription to your reseller management. This is a hexadecimal authentication token needed to complete the subscription transfer. For more information, see the administrator help center.
    - :customer_id (String): Either the customer&#39;s primary domain name or the customer&#39;s unique identifier. If using the domain name, we do not recommend using a customerId as a key for persistent data. If the domain name for a customerId is changed, the Google system automatically updates.
    - :customer_name_prefix (String): When retrieving all of your subscriptions and filtering for specific customers, you can enter a prefix for a customer name. Using an example customer group that includes exam.com, example20.com and example.com:   - exa -- Returns all customer names that start with &#39;exa&#39; which could include exam.com, example20.com, and example.com. A name prefix is similar to using a regular expression&#39;s asterisk, exa*.  - example -- Returns example20.com and example.com.
    - :max_results (Integer): When retrieving a large list, the maxResults is the maximum number of results per page. The nextPageToken value takes you to the next page. The default is 20.
    - :page_token (String): Token to specify next page in the list

  ## Returns

  {:ok, %GoogleApi.Reseller.V1.Model.Subscriptions{}} on success
  {:error, info} on failure
  """
  @spec reseller_subscriptions_list(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Reseller.V1.Model.Subscriptions.t} | {:error, Tesla.Env.t}
  def reseller_subscriptions_list(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"customerAuthToken" => :query,
      :"customerId" => :query,
      :"customerNamePrefix" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/subscriptions")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Reseller.V1.Model.Subscriptions{})
  end

  @doc """
  Immediately move a 30-day free trial subscription to a paid service subscription.

  ## Parameters

  - connection (GoogleApi.Reseller.V1.Connection): Connection to server
  - customer_id (String): Either the customer&#39;s primary domain name or the customer&#39;s unique identifier. If using the domain name, we do not recommend using a customerId as a key for persistent data. If the domain name for a customerId is changed, the Google system automatically updates.
  - subscription_id (String): This is a required property. The subscriptionId is the subscription identifier and is unique for each customer. Since a subscriptionId changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the subscriptionId can be found using the retrieve all reseller subscriptions method.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Reseller.V1.Model.Subscription{}} on success
  {:error, info} on failure
  """
  @spec reseller_subscriptions_start_paid_service(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Reseller.V1.Model.Subscription.t} | {:error, Tesla.Env.t}
  def reseller_subscriptions_start_paid_service(connection, customer_id, subscription_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:post)
    |> url("/customers/#{customer_id}/subscriptions/#{subscription_id}/startPaidService")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Reseller.V1.Model.Subscription{})
  end

  @doc """
  Suspends an active subscription.

  ## Parameters

  - connection (GoogleApi.Reseller.V1.Connection): Connection to server
  - customer_id (String): Either the customer&#39;s primary domain name or the customer&#39;s unique identifier. If using the domain name, we do not recommend using a customerId as a key for persistent data. If the domain name for a customerId is changed, the Google system automatically updates.
  - subscription_id (String): This is a required property. The subscriptionId is the subscription identifier and is unique for each customer. Since a subscriptionId changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the subscriptionId can be found using the retrieve all reseller subscriptions method.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Reseller.V1.Model.Subscription{}} on success
  {:error, info} on failure
  """
  @spec reseller_subscriptions_suspend(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Reseller.V1.Model.Subscription.t} | {:error, Tesla.Env.t}
  def reseller_subscriptions_suspend(connection, customer_id, subscription_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:post)
    |> url("/customers/#{customer_id}/subscriptions/#{subscription_id}/suspend")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Reseller.V1.Model.Subscription{})
  end
end