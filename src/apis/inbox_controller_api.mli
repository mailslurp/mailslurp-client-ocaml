(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val create_inbox : ?email_address:string -> ?tags:string list -> ?name:string -> ?description:string -> ?use_domain_pool:bool -> ?favourite:bool -> ?expires_at:string -> ?expires_in:int64 -> ?allow_team_access:bool -> ?inbox_type:Enums.inboxtype -> ?virtual_inbox:bool -> unit -> Inbox_dto.t Lwt.t
val create_inbox_ruleset : inbox_id:string -> create_inbox_ruleset_options_t:Create_inbox_ruleset_options.t -> Inbox_ruleset_dto.t Lwt.t
val create_inbox_with_defaults : unit -> Inbox_dto.t Lwt.t
val create_inbox_with_options : create_inbox_dto_t:Create_inbox_dto.t -> Inbox_dto.t Lwt.t
val delete_all_inbox_emails : inbox_id:string -> unit Lwt.t
val delete_all_inboxes : unit -> unit Lwt.t
val delete_inbox : inbox_id:string -> unit Lwt.t
val does_inbox_exist : email_address:string -> Inbox_exists_dto.t Lwt.t
val flush_expired : ?before:string -> unit -> Flush_expired_inboxes_result.t Lwt.t
val get_all_inboxes : ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?favourite:bool -> ?search:string -> ?tag:string -> ?team_access:bool -> ?since:string -> ?before:string -> unit -> Page_inbox_projection.t Lwt.t
val get_emails : inbox_id:string -> ?size:int32 -> ?limit:int32 -> ?sort:Enums.sortdirection -> ?retry_timeout:int64 -> ?delay_timeout:int64 -> ?min_count:int64 -> ?unread_only:bool -> ?before:string -> ?since:string -> unit -> Email_preview.t list Lwt.t
val get_imap_smtp_access : ?inbox_id:string -> unit -> Imap_smtp_access_details.t Lwt.t
val get_inbox : inbox_id:string -> Inbox_dto.t Lwt.t
val get_inbox_by_email_address : email_address:string -> Inbox_by_email_address_result.t Lwt.t
val get_inbox_count : unit -> Count_dto.t Lwt.t
val get_inbox_email_count : inbox_id:string -> Count_dto.t Lwt.t
val get_inbox_emails_paginated : inbox_id:string -> ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?since:string -> ?before:string -> unit -> Page_email_preview.t Lwt.t
val get_inbox_ids : unit -> Inbox_ids_result.t Lwt.t
val get_inbox_sent_emails : inbox_id:string -> ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?search_filter:string -> ?since:string -> ?before:string -> unit -> Page_sent_email_projection.t Lwt.t
val get_inbox_tags : unit -> string list Lwt.t
val get_inboxes : ?size:int32 -> ?sort:Enums.sortdirection -> ?since:string -> ?before:string -> unit -> Inbox_dto.t list Lwt.t
val get_latest_email_in_inbox : inbox_id:string -> timeout_millis:int64 -> Email.t Lwt.t
val get_organization_inboxes : ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?search_filter:string -> ?since:string -> ?before:string -> unit -> Page_organization_inbox_projection.t Lwt.t
val list_inbox_rulesets : inbox_id:string -> ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?search_filter:string -> ?since:string -> ?before:string -> unit -> Page_inbox_ruleset_dto.t Lwt.t
val list_inbox_tracking_pixels : inbox_id:string -> ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?search_filter:string -> ?since:string -> ?before:string -> unit -> Page_tracking_pixel_projection.t Lwt.t
val send_email : inbox_id:string -> send_email_options_t:Send_email_options.t -> unit Lwt.t
val send_email_and_confirm : inbox_id:string -> send_email_options_t:Send_email_options.t -> Sent_email_dto.t Lwt.t
val send_smtp_envelope : inbox_id:string -> send_smtp_envelope_options_t:Send_smtp_envelope_options.t -> Sent_email_dto.t Lwt.t
val send_test_email : inbox_id:string -> unit Lwt.t
val set_inbox_favourited : inbox_id:string -> set_inbox_favourited_options_t:Set_inbox_favourited_options.t -> Inbox_dto.t Lwt.t
val update_inbox : inbox_id:string -> update_inbox_options_t:Update_inbox_options.t -> Inbox_dto.t Lwt.t
