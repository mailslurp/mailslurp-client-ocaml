(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let create_new_inbox_ruleset ~create_inbox_ruleset_options ?inbox_id () =
    let open Lwt in
    let uri = Request.build_uri "/rulesets" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "inboxId"  inbox_id in
    let body = Request.write_as_json_body Create_inbox_ruleset_options.to_yojson create_inbox_ruleset_options in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_ruleset_dto.of_yojson) resp body

let delete_inbox_ruleset ~id =
    let open Lwt in
    let uri = Request.build_uri "/rulesets/{id}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "id"  id in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let delete_inbox_rulesets ?inbox_id () =
    let open Lwt in
    let uri = Request.build_uri "/rulesets" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "inboxId"  inbox_id in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let get_inbox_ruleset ~id =
    let open Lwt in
    let uri = Request.build_uri "/rulesets/{id}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "id"  id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_ruleset_dto.of_yojson) resp body

let get_inbox_rulesets ?before ?inbox_id ?(page = 0l) ?search_filter ?since ?(size = 20l) ?(sort = `ASC) () =
    let open Lwt in
    let uri = Request.build_uri "/rulesets" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    let uri = Request.maybe_add_query_param uri "inboxId"  inbox_id in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.maybe_add_query_param uri "searchFilter" (fun x -> x) search_filter in
    let uri = Request.maybe_add_query_param uri "since" (fun x -> x) since in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_inbox_ruleset_dto.of_yojson) resp body

let test_inbox_ruleset ~id ~inbox_ruleset_test_options =
    let open Lwt in
    let uri = Request.build_uri "/rulesets/{id}/test" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "id"  id in
    let body = Request.write_as_json_body Inbox_ruleset_test_options.to_yojson inbox_ruleset_test_options in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_ruleset_test_result.of_yojson) resp body

let test_inbox_rulesets_for_inbox ~inbox_id ~inbox_ruleset_test_options =
    let open Lwt in
    let uri = Request.build_uri "/rulesets" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.add_query_param uri "inboxId"  inbox_id in
    let body = Request.write_as_json_body Inbox_ruleset_test_options.to_yojson inbox_ruleset_test_options in
    Cohttp_lwt_unix.Client.call `PUT uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_ruleset_test_result.of_yojson) resp body

let test_new_inbox_ruleset ~test_new_inbox_ruleset_options =
    let open Lwt in
    let uri = Request.build_uri "/rulesets" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let body = Request.write_as_json_body Test_new_inbox_ruleset_options.to_yojson test_new_inbox_ruleset_options in
    Cohttp_lwt_unix.Client.call `PATCH uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_ruleset_test_result.of_yojson) resp body

