(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let delete_all_emails () =
    let open Lwt in
    let uri = Request.build_uri "/emails" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let delete_email ~email_id =
    let open Lwt in
    let uri = Request.build_uri "/emails/{emailId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "emailId"  email_id in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let download_attachment ~attachment_id ~email_id ?api_key () =
    let open Lwt in
    let uri = Request.build_uri "/emails/{emailId}/attachments/{attachmentId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "attachmentId" (fun x -> x) attachment_id in
    let uri = Request.replace_path_param uri "emailId"  email_id in
    let uri = Request.maybe_add_query_param uri "apiKey" (fun x -> x) api_key in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.to_string) resp body

let download_attachment_base64 ~attachment_id ~email_id =
    let open Lwt in
    let uri = Request.build_uri "/emails/{emailId}/attachments/{attachmentId}/base64" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "attachmentId" (fun x -> x) attachment_id in
    let uri = Request.replace_path_param uri "emailId"  email_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Download_attachment_dto.of_yojson) resp body

let forward_email ~email_id ~forward_email_options =
    let open Lwt in
    let uri = Request.build_uri "/emails/{emailId}/forward" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "emailId"  email_id in
    let body = Request.write_as_json_body Forward_email_options.to_yojson forward_email_options in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.handle_unit_response resp

let get_attachment_meta_data ~attachment_id ~email_id =
    let open Lwt in
    let uri = Request.build_uri "/emails/{emailId}/attachments/{attachmentId}/metadata" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "attachmentId" (fun x -> x) attachment_id in
    let uri = Request.replace_path_param uri "emailId"  email_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Attachment_meta_data.of_yojson) resp body

let get_attachments1 ~email_id =
    let open Lwt in
    let uri = Request.build_uri "/emails/{emailId}/attachments" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "emailId"  email_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as_list_of (JsonSupport.unwrap Attachment_meta_data.of_yojson) resp body

let get_email ~email_id ?(decode = false) () =
    let open Lwt in
    let uri = Request.build_uri "/emails/{emailId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "emailId"  email_id in
    let uri = Request.add_query_param uri "decode" string_of_bool decode in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Email.of_yojson) resp body

let get_email_content_match ~email_id ~content_match_options =
    let open Lwt in
    let uri = Request.build_uri "/emails/{emailId}/contentMatch" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "emailId"  email_id in
    let body = Request.write_as_json_body Content_match_options.to_yojson content_match_options in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Email_content_match_result.of_yojson) resp body

let get_email_html ~email_id ?(decode = false) () =
    let open Lwt in
    let uri = Request.build_uri "/emails/{emailId}/html" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "emailId"  email_id in
    let uri = Request.add_query_param uri "decode" string_of_bool decode in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.to_string) resp body

let get_email_html_query ~email_id ?html_selector () =
    let open Lwt in
    let uri = Request.build_uri "/emails/{emailId}/htmlQuery" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "emailId"  email_id in
    let uri = Request.maybe_add_query_param uri "htmlSelector" (fun x -> x) html_selector in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Email_text_lines_result.of_yojson) resp body

let get_email_text_lines ~email_id ?decode_html_entities ?line_separator () =
    let open Lwt in
    let uri = Request.build_uri "/emails/{emailId}/textLines" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "emailId"  email_id in
    let uri = Request.maybe_add_query_param uri "decodeHtmlEntities" string_of_bool decode_html_entities in
    let uri = Request.maybe_add_query_param uri "lineSeparator" (fun x -> x) line_separator in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Email_text_lines_result.of_yojson) resp body

let get_emails_paginated ?(inbox_id = []) ?(page = 0l) ?(size = 20l) ?(sort = `ASC) ?(unread_only = false) () =
    let open Lwt in
    let uri = Request.build_uri "/emails" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.add_query_param_list uri "inboxId" (List.map (fun x -> x)) inbox_id in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    let uri = Request.add_query_param uri "unreadOnly" string_of_bool unread_only in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_email_projection.of_yojson) resp body

let get_latest_email ?(inbox_ids = []) () =
    let open Lwt in
    let uri = Request.build_uri "/emails/latest" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.add_query_param_list uri "inboxIds" (List.map (fun x -> x)) inbox_ids in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Email.of_yojson) resp body

let get_latest_email_in_inbox ?inbox_id () =
    let open Lwt in
    let uri = Request.build_uri "/emails/latestIn" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "inboxId"  inbox_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Email.of_yojson) resp body

let get_organization_emails_paginated ?(inbox_id = []) ?(page = 0l) ?(size = 20l) ?(sort = `ASC) ?(unread_only = false) () =
    let open Lwt in
    let uri = Request.build_uri "/emails/organization" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.add_query_param_list uri "inboxId" (List.map (fun x -> x)) inbox_id in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    let uri = Request.add_query_param uri "unreadOnly" string_of_bool unread_only in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_email_projection.of_yojson) resp body

let get_raw_email_contents ~email_id =
    let open Lwt in
    let uri = Request.build_uri "/emails/{emailId}/raw" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "emailId"  email_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.to_string) resp body

let get_raw_email_json ~email_id =
    let open Lwt in
    let uri = Request.build_uri "/emails/{emailId}/raw/json" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "emailId"  email_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Raw_email_json.of_yojson) resp body

let get_unread_email_count () =
    let open Lwt in
    let uri = Request.build_uri "/emails/unreadCount" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Unread_count.of_yojson) resp body

let reply_to_email ~email_id ~reply_to_email_options =
    let open Lwt in
    let uri = Request.build_uri "/emails/{emailId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "emailId"  email_id in
    let body = Request.write_as_json_body Reply_to_email_options.to_yojson reply_to_email_options in
    Cohttp_lwt_unix.Client.call `PUT uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Sent_email_dto.of_yojson) resp body

let validate_email ~email_id =
    let open Lwt in
    let uri = Request.build_uri "/emails/{emailId}/validate" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "emailId"  email_id in
    Cohttp_lwt_unix.Client.call `POST uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Validation_dto.of_yojson) resp body

