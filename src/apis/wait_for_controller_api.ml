(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let wait_for ~wait_for_conditions () =
    let open Lwt in
    let uri = Request.build_uri "/waitFor" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let body = Request.write_as_json_body Wait_for_conditions.to_yojson wait_for_conditions in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as_list_of (JsonSupport.unwrap Email_preview.of_yojson) resp body

let wait_for_email_count ?count ?inbox_id ?timeout ?(unread_only = false) () =
    let open Lwt in
    let uri = Request.build_uri "/waitForEmailCount" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "count" Int32.to_string count in
    let uri = Request.maybe_add_query_param uri "inboxId"  inbox_id in
    let uri = Request.maybe_add_query_param uri "timeout" Int64.to_string timeout in
    let uri = Request.add_query_param uri "unreadOnly" string_of_bool unread_only in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as_list_of (JsonSupport.unwrap Email_preview.of_yojson) resp body

let wait_for_latest_email ?inbox_id ?timeout ?(unread_only = false) () =
    let open Lwt in
    let uri = Request.build_uri "/waitForLatestEmail" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "inboxId"  inbox_id in
    let uri = Request.maybe_add_query_param uri "timeout" Int64.to_string timeout in
    let uri = Request.add_query_param uri "unreadOnly" string_of_bool unread_only in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Email.of_yojson) resp body

let wait_for_matching_email ~match_options ?count ?inbox_id ?timeout ?(unread_only = false) () =
    let open Lwt in
    let uri = Request.build_uri "/waitForMatchingEmails" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "count" Int32.to_string count in
    let uri = Request.maybe_add_query_param uri "inboxId"  inbox_id in
    let uri = Request.maybe_add_query_param uri "timeout" Int64.to_string timeout in
    let uri = Request.add_query_param uri "unreadOnly" string_of_bool unread_only in
    let body = Request.write_as_json_body Match_options.to_yojson match_options in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as_list_of (JsonSupport.unwrap Email_preview.of_yojson) resp body

let wait_for_matching_first_email ~match_options ?inbox_id ?timeout ?(unread_only = false) () =
    let open Lwt in
    let uri = Request.build_uri "/waitForMatchingFirstEmail" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "inboxId"  inbox_id in
    let uri = Request.maybe_add_query_param uri "timeout" Int64.to_string timeout in
    let uri = Request.add_query_param uri "unreadOnly" string_of_bool unread_only in
    let body = Request.write_as_json_body Match_options.to_yojson match_options in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Email.of_yojson) resp body

let wait_for_nth_email ?inbox_id ?(index = 0l) ?timeout ?(unread_only = false) () =
    let open Lwt in
    let uri = Request.build_uri "/waitForNthEmail" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "inboxId"  inbox_id in
    let uri = Request.add_query_param uri "index" Int32.to_string index in
    let uri = Request.maybe_add_query_param uri "timeout" Int64.to_string timeout in
    let uri = Request.add_query_param uri "unreadOnly" string_of_bool unread_only in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Email.of_yojson) resp body

