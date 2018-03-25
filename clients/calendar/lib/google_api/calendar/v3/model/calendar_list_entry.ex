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

defmodule GoogleApi.Calendar.V3.Model.CalendarListEntry do
  @moduledoc """


  ## Attributes

  - accessRole (String.t): The effective access role that the authenticated user has on the calendar. Read-only. Possible values are:   - \&quot;freeBusyReader\&quot; - Provides read access to free/busy information.  - \&quot;reader\&quot; - Provides read access to the calendar. Private events will appear to users with reader access, but event details will be hidden.  - \&quot;writer\&quot; - Provides read and write access to the calendar. Private events will appear to users with writer access, and event details will be visible.  - \&quot;owner\&quot; - Provides ownership of the calendar. This role has all of the permissions of the writer role with the additional ability to see and manipulate ACLs. Defaults to: `null`.
  - backgroundColor (String.t): The main color of the calendar in the hexadecimal format \&quot;#0088aa\&quot;. This property supersedes the index-based colorId property. To set or change this property, you need to specify colorRgbFormat&#x3D;true in the parameters of the insert, update and patch methods. Optional. Defaults to: `null`.
  - colorId (String.t): The color of the calendar. This is an ID referring to an entry in the calendar section of the colors definition (see the colors endpoint). This property is superseded by the backgroundColor and foregroundColor properties and can be ignored when using these properties. Optional. Defaults to: `null`.
  - conferenceProperties (ConferenceProperties): Conferencing properties for this calendar, for example what types of conferences are allowed. Defaults to: `null`.
  - defaultReminders ([EventReminder]): The default reminders that the authenticated user has for this calendar. Defaults to: `null`.
  - deleted (boolean()): Whether this calendar list entry has been deleted from the calendar list. Read-only. Optional. The default is False. Defaults to: `null`.
  - description (String.t): Description of the calendar. Optional. Read-only. Defaults to: `null`.
  - etag (String.t): ETag of the resource. Defaults to: `null`.
  - foregroundColor (String.t): The foreground color of the calendar in the hexadecimal format \&quot;#ffffff\&quot;. This property supersedes the index-based colorId property. To set or change this property, you need to specify colorRgbFormat&#x3D;true in the parameters of the insert, update and patch methods. Optional. Defaults to: `null`.
  - hidden (boolean()): Whether the calendar has been hidden from the list. Optional. The default is False. Defaults to: `null`.
  - id (String.t): Identifier of the calendar. Defaults to: `null`.
  - kind (String.t): Type of the resource (\&quot;calendar#calendarListEntry\&quot;). Defaults to: `null`.
  - location (String.t): Geographic location of the calendar as free-form text. Optional. Read-only. Defaults to: `null`.
  - notificationSettings (CalendarListEntryNotificationSettings):  Defaults to: `null`.
  - primary (boolean()): Whether the calendar is the primary calendar of the authenticated user. Read-only. Optional. The default is False. Defaults to: `null`.
  - selected (boolean()): Whether the calendar content shows up in the calendar UI. Optional. The default is False. Defaults to: `null`.
  - summary (String.t): Title of the calendar. Read-only. Defaults to: `null`.
  - summaryOverride (String.t): The summary that the authenticated user has set for this calendar. Optional. Defaults to: `null`.
  - timeZone (String.t): The time zone of the calendar. Optional. Read-only. Defaults to: `null`.
  """

  defstruct [
    :accessRole,
    :backgroundColor,
    :colorId,
    :conferenceProperties,
    :defaultReminders,
    :deleted,
    :description,
    :etag,
    :foregroundColor,
    :hidden,
    :id,
    :kind,
    :location,
    :notificationSettings,
    :primary,
    :selected,
    :summary,
    :summaryOverride,
    :timeZone
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.CalendarListEntry do
  import GoogleApi.Calendar.V3.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :conferenceProperties,
      :struct,
      GoogleApi.Calendar.V3.Model.ConferenceProperties,
      options
    )
    |> deserialize(:defaultReminders, :list, GoogleApi.Calendar.V3.Model.EventReminder, options)
    |> deserialize(
      :notificationSettings,
      :struct,
      GoogleApi.Calendar.V3.Model.CalendarListEntryNotificationSettings,
      options
    )
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.CalendarListEntry do
  def encode(value, options) do
    GoogleApi.Calendar.V3.Deserializer.serialize_non_nil(value, options)
  end
end
