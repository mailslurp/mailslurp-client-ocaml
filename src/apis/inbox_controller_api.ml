(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let create_inbox ?email_address ?(tags = []) ?name ?description ?use_domain_pool ?favourite ?expires_at ?expires_in ?allow_team_access ?inbox_type () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "emailAddress" (fun x -> x) email_address in
    let uri = Request.add_query_param_list uri "tags" (List.map (fun x -> x)) tags in
    let uri = Request.maybe_add_query_param uri "name" (fun x -> x) name in
    let uri = Request.maybe_add_query_param uri "description" (fun x -> x) description in
    let uri = Request.maybe_add_query_param uri "useDomainPool" string_of_bool use_domain_pool in
    let uri = Request.maybe_add_query_param uri "favourite" string_of_bool favourite in
    let uri = Request.maybe_add_query_param uri "expiresAt" (fun x -> x) expires_at in
    let uri = Request.maybe_add_query_param uri "expiresIn" Int64.to_string expires_in in
    let uri = Request.maybe_add_query_param uri "allowTeamAccess" string_of_bool allow_team_access in
    let uri = Request.maybe_add_query_param uri "inboxType" Enums.show_inboxtype inbox_type in
    Cohttp_lwt_unix.Client.call `POST uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_dto.of_yojson) resp body

let create_inbox_ruleset ~inbox_id ~create_inbox_ruleset_options_t =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/rulesets" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    let body = Request.write_as_json_body Create_inbox_ruleset_options.to_yojson create_inbox_ruleset_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_ruleset_dto.of_yojson) resp body

let create_inbox_with_defaults () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/withDefaults" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `POST uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_dto.of_yojson) resp body

let create_inbox_with_options ~create_inbox_dto_t =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/withOptions" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let body = Request.write_as_json_body Create_inbox_dto.to_yojson create_inbox_dto_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_dto.of_yojson) resp body

let delete_all_inboxes () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let delete_inbox ~inbox_id =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let does_inbox_exist ~email_address =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/exists" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.add_query_param uri "emailAddress" (fun x -> x) email_address in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_exists_dto.of_yojson) resp body

let flush_expired ?before () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/expired" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Flush_expired_inboxes_result.of_yojson) resp body

let get_all_inboxes ?(page = 0l) ?(size = 20l) ?(sort = `ASC) ?(favourite = false) ?search ?tag ?team_access ?since ?before () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/paginated" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    let uri = Request.add_query_param uri "favourite" string_of_bool favourite in
    let uri = Request.maybe_add_query_param uri "search" (fun x -> x) search in
    let uri = Request.maybe_add_query_param uri "tag" (fun x -> x) tag in
    let uri = Request.maybe_add_query_param uri "teamAccess" string_of_bool team_access in
    let uri = Request.maybe_add_query_param uri "since" (fun x -> x) since in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_inbox_projection.of_yojson) resp body

let get_emails ~inbox_id ?alias_for_limit__assessed_first_before_assessing_any_passed_limit_ ?limit ?sort_the_results_by_received_date_and_direction_asc_or_desc ?retry_timeout ?delay_timeout ?min_count ?unread_only ?before ?since () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/emails" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    let uri = Request.maybe_add_query_param uri "Alias for limit. Assessed first before assessing any passed limit." Int32.to_string alias_for_limit__assessed_first_before_assessing_any_passed_limit_ in
    let uri = Request.maybe_add_query_param uri "limit" Int32.to_string limit in
    let uri = Request.maybe_add_query_param uri "Sort the results by received date and direction ASC or DESC" Enums.show_sortdirection sort_the_results_by_received_date_and_direction_asc_or_desc in
    let uri = Request.maybe_add_query_param uri "retryTimeout" Int64.to_string retry_timeout in
    let uri = Request.maybe_add_query_param uri "delayTimeout" Int64.to_string delay_timeout in
    let uri = Request.maybe_add_query_param uri "minCount" Int64.to_string min_count in
    let uri = Request.maybe_add_query_param uri "unreadOnly" string_of_bool unread_only in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    let uri = Request.maybe_add_query_param uri "since" (fun x -> x) since in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as_list_of (JsonSupport.unwrap Email_preview.of_yojson) resp body

let get_inbox ~inbox_id =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_dto.of_yojson) resp body

let get_inbox_count () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/count" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Count_dto.of_yojson) resp body

let get_inbox_email_count ~inbox_id =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/emails/count" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Count_dto.of_yojson) resp body

let get_inbox_emails_paginated ~inbox_id ?(page = 0l) ?(size = 20l) ?(sort = `ASC) ?since ?before () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/emails/paginated" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    let uri = Request.maybe_add_query_param uri "since" (fun x -> x) since in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_email_preview.of_yojson) resp body

let get_inbox_sent_emails ~inbox_id ?(page = 0l) ?(size = 20l) ?(sort = `ASC) ?search_filter ?since ?before () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/sent" in
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
    Request.read_json_body_as (JsonSupport.unwrap Page_sent_email_projection.of_yojson) resp body

let get_inbox_tags () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/tags" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as_list_of (JsonSupport.to_string) resp body

let get_inboxes ?(size = 100l) ?(sort = `ASC) ?since ?before () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    let uri = Request.maybe_add_query_param uri "since" (fun x -> x) since in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as_list_of (JsonSupport.unwrap Inbox_dto.of_yojson) resp body

let get_organization_inboxes ?(page = 0l) ?(size = 20l) ?(sort = `ASC) ?search_filter ?since ?before () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/organization" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    let uri = Request.maybe_add_query_param uri "searchFilter" (fun x -> x) search_filter in
    let uri = Request.maybe_add_query_param uri "since" (fun x -> x) since in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_organization_inbox_projection.of_yojson) resp body

let list_inbox_rulesets ~inbox_id ?(page = 0l) ?(size = 20l) ?(sort = `ASC) ?search_filter ?since ?before () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/rulesets" in
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
    Request.read_json_body_as (JsonSupport.unwrap Page_inbox_ruleset_dto.of_yojson) resp body

let list_inbox_tracking_pixels ~inbox_id ?(page = 0l) ?(size = 20l) ?(sort = `ASC) ?search_filter ?since ?before () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/tracking-pixels" in
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
    Request.read_json_body_as (JsonSupport.unwrap Page_tracking_pixel_projection.of_yojson) resp body

let send_email ~inbox_id ~send_email_options_t =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    let body = Request.write_as_json_body Send_email_options.to_yojson send_email_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.handle_unit_response resp

let send_email_and_confirm ~inbox_id ~send_email_options_t =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/confirm" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    let body = Request.write_as_json_body Send_email_options.to_yojson send_email_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Sent_email_dto.of_yojson) resp body

let send_test_email ~inbox_id =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/send-test-email" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    Cohttp_lwt_unix.Client.call `POST uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let set_inbox_favourited ~inbox_id ~set_inbox_favourited_options_t =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/favourite" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    let body = Request.write_as_json_body Set_inbox_favourited_options.to_yojson set_inbox_favourited_options_t in
    Cohttp_lwt_unix.Client.call `PUT uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_dto.of_yojson) resp body

let update_inbox ~inbox_id ~update_inbox_options_t =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    let body = Request.write_as_json_body Update_inbox_options.to_yojson update_inbox_options_t in
    Cohttp_lwt_unix.Client.call `PATCH uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_dto.of_yojson) resp body

