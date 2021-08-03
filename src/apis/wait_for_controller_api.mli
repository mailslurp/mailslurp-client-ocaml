(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val wait_for : wait_for_conditions:Wait_for_conditions.t -> unit -> Email_preview.t list Lwt.t
val wait_for_email_count : ?count:int32 -> ?delay:int64 -> ?inbox_id:string -> ?since:string -> ?sort:Enums.sortdirection -> ?timeout:int64 -> ?unread_only:bool -> unit -> Email_preview.t list Lwt.t
val wait_for_latest_email : ?delay:int64 -> ?inbox_id:string -> ?since:string -> ?sort:Enums.sortdirection -> ?timeout:int64 -> ?unread_only:bool -> unit -> Email.t Lwt.t
val wait_for_matching_email : match_options:Match_options.t -> ?count:int32 -> ?delay:int64 -> ?inbox_id:string -> ?since:string -> ?sort:Enums.sortdirection -> ?timeout:int64 -> ?unread_only:bool -> unit -> Email_preview.t list Lwt.t
val wait_for_matching_first_email : match_options:Match_options.t -> ?delay:int64 -> ?inbox_id:string -> ?since:string -> ?sort:Enums.sortdirection -> ?timeout:int64 -> ?unread_only:bool -> unit -> Email.t Lwt.t
val wait_for_nth_email : ?delay:int64 -> ?inbox_id:string -> ?index:int32 -> ?since:string -> ?sort:Enums.sortdirection -> ?timeout:int64 -> ?unread_only:bool -> unit -> Email.t Lwt.t
