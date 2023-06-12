(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val create_alias : create_alias_options_t:Create_alias_options.t -> Alias_dto.t Lwt.t
val delete_alias : alias_id:string -> unit Lwt.t
val get_alias : alias_id:string -> Alias_dto.t Lwt.t
val get_alias_emails : alias_id:string -> ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?since:string -> ?before:string -> unit -> Page_email_projection.t Lwt.t
val get_alias_threads : alias_id:string -> ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?since:string -> ?before:string -> unit -> Page_thread_projection.t Lwt.t
val get_aliases : ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?since:string -> ?before:string -> unit -> Page_alias.t Lwt.t
val reply_to_alias_email : alias_id:string -> email_id:string -> reply_to_alias_email_options_t:Reply_to_alias_email_options.t -> Sent_email_dto.t Lwt.t
val send_alias_email : alias_id:string -> send_email_options_t:Send_email_options.t -> Sent_email_dto.t Lwt.t
val update_alias : alias_id:string -> update_alias_options_t:Update_alias_options.t -> Alias_dto.t Lwt.t
