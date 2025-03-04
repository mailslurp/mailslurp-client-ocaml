(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val imap_server_fetch : seq_num:int64 -> ?inbox_id:string -> unit -> Imap_server_fetch_result.t Lwt.t
val imap_server_get : email_id:string -> ?inbox_id:string -> unit -> Imap_server_get_result.t Lwt.t
val imap_server_list : imap_server_list_options_t:Imap_server_list_options.t -> ?inbox_id:string -> unit -> Imap_server_list_result.t Lwt.t
val imap_server_mailbox : name:string -> Imap_server_mailbox_result.t Lwt.t
val imap_server_search : imap_server_search_options_t:Imap_server_search_options.t -> ?inbox_id:string -> unit -> Imap_server_search_result.t Lwt.t
val imap_server_status : imap_server_status_options_t:Imap_server_status_options.t -> ?inbox_id:string -> unit -> Imap_server_status_result.t Lwt.t
val imap_server_update_flags : imap_update_flags_options_t:Imap_update_flags_options.t -> ?inbox_id:string -> unit -> unit Lwt.t
