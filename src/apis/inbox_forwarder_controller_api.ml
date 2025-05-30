(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let create_new_inbox_forwarder ~create_inbox_forwarder_options_t ?inbox_id () =
    let open Lwt in
    let uri = Request.build_uri "/forwarders" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "inboxId"  inbox_id in
    let body = Request.write_as_json_body Create_inbox_forwarder_options.to_yojson create_inbox_forwarder_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_forwarder_dto.of_yojson) resp body

let delete_inbox_forwarder ~id =
    let open Lwt in
    let uri = Request.build_uri "/forwarders/{id}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "id"  id in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let delete_inbox_forwarders ?inbox_id () =
    let open Lwt in
    let uri = Request.build_uri "/forwarders" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "inboxId"  inbox_id in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let get_all_inbox_forwarder_events ?(page = 0l) ?(size = 20l) ?inbox_id ?email_id ?sent_id ?(sort = `ASC) () =
    let open Lwt in
    let uri = Request.build_uri "/forwarders/events" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.maybe_add_query_param uri "inboxId"  inbox_id in
    let uri = Request.maybe_add_query_param uri "emailId"  email_id in
    let uri = Request.maybe_add_query_param uri "sentId"  sent_id in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_inbox_forwarder_events.of_yojson) resp body

let get_forwarder_event ~event_id =
    let open Lwt in
    let uri = Request.build_uri "/forwarders/events/{eventId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "eventId"  event_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_forwarder_event_dto.of_yojson) resp body

let get_inbox_forwarder ~id =
    let open Lwt in
    let uri = Request.build_uri "/forwarders/{id}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "id"  id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_forwarder_dto.of_yojson) resp body

let get_inbox_forwarder_event ~id ~event_id =
    let open Lwt in
    let uri = Request.build_uri "/forwarders/{id}/events/{eventId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "id"  id in
    let uri = Request.replace_path_param uri "eventId"  event_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_forwarder_event_dto.of_yojson) resp body

let get_inbox_forwarder_events ~id ?(page = 0l) ?(size = 20l) ?(sort = `ASC) () =
    let open Lwt in
    let uri = Request.build_uri "/forwarders/{id}/events" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "id"  id in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_inbox_forwarder_events.of_yojson) resp body

let get_inbox_forwarders ?inbox_id ?(page = 0l) ?(size = 20l) ?(sort = `ASC) ?search_filter ?since ?before () =
    let open Lwt in
    let uri = Request.build_uri "/forwarders" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "inboxId"  inbox_id in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    let uri = Request.maybe_add_query_param uri "searchFilter" (fun x -> x) search_filter in
    let uri = Request.maybe_add_query_param uri "since" (fun x -> x) since in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_inbox_forwarder_dto.of_yojson) resp body

let test_inbox_forwarder ~id ~inbox_forwarder_test_options_t =
    let open Lwt in
    let uri = Request.build_uri "/forwarders/{id}/test" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "id"  id in
    let body = Request.write_as_json_body Inbox_forwarder_test_options.to_yojson inbox_forwarder_test_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_forwarder_test_result.of_yojson) resp body

let test_inbox_forwarders_for_inbox ~inbox_id ~inbox_forwarder_test_options_t =
    let open Lwt in
    let uri = Request.build_uri "/forwarders" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.add_query_param uri "inboxId"  inbox_id in
    let body = Request.write_as_json_body Inbox_forwarder_test_options.to_yojson inbox_forwarder_test_options_t in
    Cohttp_lwt_unix.Client.call `PUT uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_forwarder_test_result.of_yojson) resp body

let test_new_inbox_forwarder ~test_new_inbox_forwarder_options_t =
    let open Lwt in
    let uri = Request.build_uri "/forwarders" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let body = Request.write_as_json_body Test_new_inbox_forwarder_options.to_yojson test_new_inbox_forwarder_options_t in
    Cohttp_lwt_unix.Client.call `PATCH uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_forwarder_test_result.of_yojson) resp body

let update_inbox_forwarder ~id ~create_inbox_forwarder_options_t =
    let open Lwt in
    let uri = Request.build_uri "/forwarders/{id}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "id"  id in
    let body = Request.write_as_json_body Create_inbox_forwarder_options.to_yojson create_inbox_forwarder_options_t in
    Cohttp_lwt_unix.Client.call `PUT uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_forwarder_dto.of_yojson) resp body

