(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val delete_all_emails : unit -> unit Lwt.t
val delete_email : email_id:string -> unit Lwt.t
val download_attachment : attachment_id:string -> email_id:string -> ?api_key:string -> unit -> string Lwt.t
val download_attachment_base64 : attachment_id:string -> email_id:string -> Download_attachment_dto.t Lwt.t
val forward_email : email_id:string -> forward_email_options:Forward_email_options.t -> unit Lwt.t
val get_attachment_meta_data : attachment_id:string -> email_id:string -> Attachment_meta_data.t Lwt.t
val get_attachments1 : email_id:string -> Attachment_meta_data.t list Lwt.t
val get_email : email_id:string -> ?decode:bool -> unit -> Email.t Lwt.t
val get_email_content_match : email_id:string -> content_match_options:Content_match_options.t -> Email_content_match_result.t Lwt.t
val get_email_html : email_id:string -> ?decode:bool -> unit -> string Lwt.t
val get_email_html_query : email_id:string -> ?html_selector:string -> unit -> Email_text_lines_result.t Lwt.t
val get_email_text_lines : email_id:string -> ?decode_html_entities:bool -> ?line_separator:string -> unit -> Email_text_lines_result.t Lwt.t
val get_emails_paginated : ?inbox_id:string list -> ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?unread_only:bool -> unit -> Page_email_projection.t Lwt.t
val get_latest_email : ?inbox_ids:string list -> unit -> Email.t Lwt.t
val get_latest_email_in_inbox : ?inbox_id:string -> unit -> Email.t Lwt.t
val get_organization_emails_paginated : ?inbox_id:string list -> ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?unread_only:bool -> unit -> Page_email_projection.t Lwt.t
val get_raw_email_contents : email_id:string -> string Lwt.t
val get_raw_email_json : email_id:string -> Raw_email_json.t Lwt.t
val get_unread_email_count : unit -> Unread_count.t Lwt.t
val reply_to_email : email_id:string -> reply_to_email_options:Reply_to_email_options.t -> Sent_email_dto.t Lwt.t
val validate_email : email_id:string -> Validation_dto.t Lwt.t
