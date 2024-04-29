(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let delete_sms_message ~sms_id =
    let open Lwt in
    let uri = Request.build_uri "/sms/{smsId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "smsId"  sms_id in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let delete_sms_messages ?phone_number_id () =
    let open Lwt in
    let uri = Request.build_uri "/sms" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "phoneNumberId"  phone_number_id in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let get_reply_for_sms_message ~sms_id =
    let open Lwt in
    let uri = Request.build_uri "/sms/{smsId}/reply" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "smsId"  sms_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Reply_for_sms.of_yojson) resp body

let get_sms_count () =
    let open Lwt in
    let uri = Request.build_uri "/sms/count" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Count_dto.of_yojson) resp body

let get_sms_message ~sms_id =
    let open Lwt in
    let uri = Request.build_uri "/sms/{smsId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "smsId"  sms_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Sms_dto.of_yojson) resp body

let get_sms_messages_paginated ?phone_number ?(page = 0l) ?(size = 20l) ?(sort = `ASC) ?(unread_only = false) ?since ?before () =
    let open Lwt in
    let uri = Request.build_uri "/sms" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "phoneNumber"  phone_number in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    let uri = Request.add_query_param uri "unreadOnly" string_of_bool unread_only in
    let uri = Request.maybe_add_query_param uri "since" (fun x -> x) since in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_sms_projection.of_yojson) resp body

let get_unread_sms_count () =
    let open Lwt in
    let uri = Request.build_uri "/sms/unreadCount" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Unread_count.of_yojson) resp body

let reply_to_sms_message ~sms_id ~sms_reply_options_t =
    let open Lwt in
    let uri = Request.build_uri "/sms/{smsId}/reply" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "smsId"  sms_id in
    let body = Request.write_as_json_body Sms_reply_options.to_yojson sms_reply_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Sent_sms_dto.of_yojson) resp body

