(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val apply_imap_flag_operation : email_id:string -> imap_flag_operation_options_t:Imap_flag_operation_options.t -> Email_preview.t Lwt.t
val delete_all_emails : unit -> unit Lwt.t
val delete_email : email_id:string -> unit Lwt.t
val download_attachment : email_id:string -> attachment_id:string -> ?api_key:string -> unit -> string Lwt.t
val download_attachment_base64 : email_id:string -> attachment_id:string -> Download_attachment_dto.t Lwt.t
val download_body : email_id:string -> string Lwt.t
val download_body_bytes : email_id:string -> string Lwt.t
val forward_email : email_id:string -> forward_email_options_t:Forward_email_options.t -> Sent_email_dto.t Lwt.t
val get_attachment_meta_data : email_id:string -> attachment_id:string -> Attachment_meta_data.t Lwt.t
val get_email : email_id:string -> ?decode:bool -> unit -> Email.t Lwt.t
val get_email_attachments : email_id:string -> Attachment_meta_data.t list Lwt.t
val get_email_content_match : email_id:string -> content_match_options_t:Content_match_options.t -> Email_content_match_result.t Lwt.t
val get_email_count : unit -> Count_dto.t Lwt.t
val get_email_html : email_id:string -> ?decode:bool -> unit -> string Lwt.t
val get_email_html_json : email_id:string -> ?decode:bool -> unit -> Email_html_dto.t Lwt.t
val get_email_html_query : email_id:string -> html_selector:string -> Email_text_lines_result.t Lwt.t
val get_email_links : email_id:string -> Email_links_result.t Lwt.t
val get_email_preview_urls : email_id:string -> Email_preview_urls.t Lwt.t
val get_email_text_lines : email_id:string -> ?decode_html_entities:bool -> ?line_separator:string -> unit -> Email_text_lines_result.t Lwt.t
val get_emails_paginated : ?inbox_id:string list -> ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?unread_only:bool -> ?search_filter:string -> ?since:string -> ?before:string -> unit -> Page_email_projection.t Lwt.t
val get_gravatar_url_for_email_address : email_address:string -> ?size:string -> unit -> Gravatar_url.t Lwt.t
val get_latest_email : ?inbox_ids:string list -> unit -> Email.t Lwt.t
val get_latest_email_in_inbox1 : inbox_id:string -> Email.t Lwt.t
val get_organization_emails_paginated : ?inbox_id:string list -> ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?unread_only:bool -> ?search_filter:string -> ?since:string -> ?before:string -> unit -> Page_email_projection.t Lwt.t
val get_raw_email_contents : email_id:string -> string Lwt.t
val get_raw_email_json : email_id:string -> Raw_email_json.t Lwt.t
val get_unread_email_count : unit -> Unread_count.t Lwt.t
val mark_as_read : email_id:string -> ?read:bool -> unit -> Email_preview.t Lwt.t
val reply_to_email : email_id:string -> reply_to_email_options_t:Reply_to_email_options.t -> Sent_email_dto.t Lwt.t
val send_email_source_optional : send_email_options_t:Send_email_options.t -> ?inbox_id:string -> ?use_domain_pool:bool -> ?virtual_send:bool -> unit -> unit Lwt.t
val validate_email : email_id:string -> Validation_dto.t Lwt.t
