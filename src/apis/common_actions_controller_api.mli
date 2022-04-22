(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val create_new_email_address : ?allow_team_access:bool -> ?use_domain_pool:bool -> ?expires_at:string -> ?expires_in:int64 -> ?email_address:string -> ?inbox_type:Enums.inboxtype -> ?description:string -> ?name:string -> ?tags:string list -> ?favourite:bool -> unit -> Inbox_dto.t Lwt.t
val create_random_inbox : ?allow_team_access:bool -> ?use_domain_pool:bool -> ?expires_at:string -> ?expires_in:int64 -> ?email_address:string -> ?inbox_type:Enums.inboxtype -> ?description:string -> ?name:string -> ?tags:string list -> ?favourite:bool -> unit -> Inbox_dto.t Lwt.t
val delete_email_address : inbox_id:string -> unit Lwt.t
val empty_inbox : inbox_id:string -> unit Lwt.t
val send_email_simple : simple_send_email_options_t:Simple_send_email_options.t -> unit Lwt.t
