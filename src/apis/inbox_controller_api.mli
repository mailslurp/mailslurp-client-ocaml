(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val create_inbox : ?allow_team_access:bool -> ?description:string -> ?email_address:string -> ?expires_at:string -> ?expires_in:int64 -> ?favourite:bool -> ?inbox_type:Enums.inboxtype -> ?name:string -> ?tags:string list -> ?use_domain_pool:bool -> unit -> Inbox.t Lwt.t
val create_inbox_with_defaults : unit -> Inbox.t Lwt.t
val create_inbox_with_options : create_inbox_dto:Create_inbox_dto.t -> Inbox.t Lwt.t
val delete_all_inboxes : unit -> unit Lwt.t
val delete_inbox : inbox_id:string -> unit Lwt.t
val get_all_inboxes : ?favourite:bool -> ?page:int32 -> ?search:string -> ?size:int32 -> ?sort:Enums.sortdirection -> ?tag:string -> ?team_access:bool -> unit -> Page_inbox_projection.t Lwt.t
val get_emails : inbox_id:string -> ?limit:int32 -> ?min_count:int64 -> ?retry_timeout:int64 -> ?since:string -> ?size:int32 -> ?sort:Enums.sortdirection -> unit -> Email_preview.t list Lwt.t
val get_inbox : inbox_id:string -> Inbox.t Lwt.t
val get_inbox_emails_paginated : inbox_id:string -> ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> unit -> Page_email_preview.t Lwt.t
val get_inbox_sent_emails : inbox_id:string -> ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> unit -> Page_sent_email_projection.t Lwt.t
val get_inbox_tags : unit -> string list Lwt.t
val get_inboxes : ?size:int32 -> ?sort:Enums.sortdirection -> unit -> Inbox.t list Lwt.t
val get_organization_inboxes : ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> unit -> Page_organization_inbox_projection.t Lwt.t
val send_email : inbox_id:string -> send_email_options:Send_email_options.t -> unit -> unit Lwt.t
val send_email_and_confirm : inbox_id:string -> send_email_options:Send_email_options.t -> unit -> Sent_email_dto.t Lwt.t
val send_test_email : inbox_id:string -> unit Lwt.t
val set_inbox_favourited : inbox_id:string -> set_inbox_favourited_options:Set_inbox_favourited_options.t -> Inbox.t Lwt.t
val update_inbox : inbox_id:string -> update_inbox_options:Update_inbox_options.t -> Inbox.t Lwt.t
