(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let create_account_webhook ~create_webhook_options_t =
    let open Lwt in
    let uri = Request.build_uri "/webhooks" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let body = Request.write_as_json_body Create_webhook_options.to_yojson create_webhook_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Webhook_dto.of_yojson) resp body

let create_webhook ~inbox_id ~create_webhook_options_t =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/webhooks" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    let body = Request.write_as_json_body Create_webhook_options.to_yojson create_webhook_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Webhook_dto.of_yojson) resp body

let delete_all_webhooks () =
    let open Lwt in
    let uri = Request.build_uri "/webhooks" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let delete_webhook ~inbox_id ~webhook_id =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/webhooks/{webhookId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    let uri = Request.replace_path_param uri "webhookId"  webhook_id in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let delete_webhook_by_id ~webhook_id =
    let open Lwt in
    let uri = Request.build_uri "/webhooks/{webhookId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "webhookId"  webhook_id in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let get_all_webhook_results ?(page = 0l) ?(size = 20l) ?(sort = `ASC) ?search_filter ?since ?before ?unseen_only () =
    let open Lwt in
    let uri = Request.build_uri "/webhooks/results" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    let uri = Request.maybe_add_query_param uri "searchFilter" (fun x -> x) search_filter in
    let uri = Request.maybe_add_query_param uri "since" (fun x -> x) since in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    let uri = Request.maybe_add_query_param uri "unseenOnly" string_of_bool unseen_only in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_webhook_result.of_yojson) resp body

let get_all_webhooks ?(page = 0l) ?(size = 20l) ?(sort = `DESC) ?search_filter ?since ?before () =
    let open Lwt in
    let uri = Request.build_uri "/webhooks/paginated" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    let uri = Request.maybe_add_query_param uri "searchFilter" (fun x -> x) search_filter in
    let uri = Request.maybe_add_query_param uri "since" (fun x -> x) since in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_webhook_projection.of_yojson) resp body

let get_inbox_webhooks_paginated ~inbox_id ?(page = 0l) ?(size = 20l) ?(sort = `ASC) ?search_filter ?since ?before () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/webhooks/paginated" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    let uri = Request.maybe_add_query_param uri "searchFilter" (fun x -> x) search_filter in
    let uri = Request.maybe_add_query_param uri "since" (fun x -> x) since in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_webhook_projection.of_yojson) resp body

let get_json_schema_for_webhook_payload ~webhook_id =
    let open Lwt in
    let uri = Request.build_uri "/webhooks/{webhookId}/schema" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "webhookId"  webhook_id in
    Cohttp_lwt_unix.Client.call `POST uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Json_schema_dto.of_yojson) resp body

let get_test_webhook_payload ?event_name () =
    let open Lwt in
    let uri = Request.build_uri "/webhooks/test" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "eventName" Enums.show_eventname event_name in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Abstract_webhook_payload.of_yojson) resp body

let get_test_webhook_payload_bounce () =
    let open Lwt in
    let uri = Request.build_uri "/webhooks/test/email-bounce-payload" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Webhook_bounce_payload.of_yojson) resp body

let get_test_webhook_payload_bounce_recipient () =
    let open Lwt in
    let uri = Request.build_uri "/webhooks/test/email-bounce-recipient-payload" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Webhook_bounce_recipient_payload.of_yojson) resp body

let get_test_webhook_payload_email_opened () =
    let open Lwt in
    let uri = Request.build_uri "/webhooks/test/email-opened-payload" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Webhook_email_opened_payload.of_yojson) resp body

let get_test_webhook_payload_email_read () =
    let open Lwt in
    let uri = Request.build_uri "/webhooks/test/email-read-payload" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Webhook_email_read_payload.of_yojson) resp body

let get_test_webhook_payload_for_webhook ~webhook_id =
    let open Lwt in
    let uri = Request.build_uri "/webhooks/{webhookId}/example" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "webhookId"  webhook_id in
    Cohttp_lwt_unix.Client.call `POST uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Abstract_webhook_payload.of_yojson) resp body

let get_test_webhook_payload_new_attachment () =
    let open Lwt in
    let uri = Request.build_uri "/webhooks/test/new-attachment-payload" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Webhook_new_attachment_payload.of_yojson) resp body

let get_test_webhook_payload_new_contact () =
    let open Lwt in
    let uri = Request.build_uri "/webhooks/test/new-contact-payload" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Webhook_new_contact_payload.of_yojson) resp body

let get_test_webhook_payload_new_email () =
    let open Lwt in
    let uri = Request.build_uri "/webhooks/test/new-email-payload" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Webhook_new_email_payload.of_yojson) resp body

let get_webhook ~webhook_id =
    let open Lwt in
    let uri = Request.build_uri "/webhooks/{webhookId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "webhookId"  webhook_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Webhook_dto.of_yojson) resp body

let get_webhook_result ~webhook_result_id =
    let open Lwt in
    let uri = Request.build_uri "/webhooks/results/{webhookResultId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "webhookResultId"  webhook_result_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Webhook_result_dto.of_yojson) resp body

let get_webhook_results ~webhook_id ?(page = 0l) ?(size = 20l) ?(sort = `ASC) ?search_filter ?since ?before ?unseen_only () =
    let open Lwt in
    let uri = Request.build_uri "/webhooks/{webhookId}/results" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "webhookId"  webhook_id in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    let uri = Request.maybe_add_query_param uri "searchFilter" (fun x -> x) search_filter in
    let uri = Request.maybe_add_query_param uri "since" (fun x -> x) since in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    let uri = Request.maybe_add_query_param uri "unseenOnly" string_of_bool unseen_only in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_webhook_result.of_yojson) resp body

let get_webhook_results_unseen_error_count ~inbox_id =
    let open Lwt in
    let uri = Request.build_uri "/webhooks/results/unseen-count" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Unseen_error_count_dto.of_yojson) resp body

let get_webhooks ~inbox_id =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/webhooks" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as_list_of (JsonSupport.unwrap Webhook_dto.of_yojson) resp body

let redrive_webhook_result ~webhook_result_id =
    let open Lwt in
    let uri = Request.build_uri "/webhooks/results/{webhookResultId}/redrive" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "webhookResultId"  webhook_result_id in
    Cohttp_lwt_unix.Client.call `POST uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Webhook_redrive_result.of_yojson) resp body

let send_test_data ~webhook_id =
    let open Lwt in
    let uri = Request.build_uri "/webhooks/{webhookId}/test" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "webhookId"  webhook_id in
    Cohttp_lwt_unix.Client.call `POST uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Webhook_test_result.of_yojson) resp body

