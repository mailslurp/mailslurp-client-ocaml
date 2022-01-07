(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let create_new_email_address ?allow_team_access ?use_domain_pool ?expires_at ?expires_in ?email_address ?inbox_type ?description ?name ?(tags = []) ?favourite () =
    let open Lwt in
    let uri = Request.build_uri "/createInbox" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "allowTeamAccess" string_of_bool allow_team_access in
    let uri = Request.maybe_add_query_param uri "useDomainPool" string_of_bool use_domain_pool in
    let uri = Request.maybe_add_query_param uri "expiresAt" (fun x -> x) expires_at in
    let uri = Request.maybe_add_query_param uri "expiresIn" Int64.to_string expires_in in
    let uri = Request.maybe_add_query_param uri "emailAddress" (fun x -> x) email_address in
    let uri = Request.maybe_add_query_param uri "inboxType" Enums.show_inboxtype inbox_type in
    let uri = Request.maybe_add_query_param uri "description" (fun x -> x) description in
    let uri = Request.maybe_add_query_param uri "name" (fun x -> x) name in
    let uri = Request.add_query_param_list uri "tags" (List.map (fun x -> x)) tags in
    let uri = Request.maybe_add_query_param uri "favourite" string_of_bool favourite in
    Cohttp_lwt_unix.Client.call `POST uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_dto.of_yojson) resp body

let create_new_email_address1 ?allow_team_access ?use_domain_pool ?expires_at ?expires_in ?email_address ?inbox_type ?description ?name ?(tags = []) ?favourite () =
    let open Lwt in
    let uri = Request.build_uri "/newEmailAddress" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "allowTeamAccess" string_of_bool allow_team_access in
    let uri = Request.maybe_add_query_param uri "useDomainPool" string_of_bool use_domain_pool in
    let uri = Request.maybe_add_query_param uri "expiresAt" (fun x -> x) expires_at in
    let uri = Request.maybe_add_query_param uri "expiresIn" Int64.to_string expires_in in
    let uri = Request.maybe_add_query_param uri "emailAddress" (fun x -> x) email_address in
    let uri = Request.maybe_add_query_param uri "inboxType" Enums.show_inboxtype inbox_type in
    let uri = Request.maybe_add_query_param uri "description" (fun x -> x) description in
    let uri = Request.maybe_add_query_param uri "name" (fun x -> x) name in
    let uri = Request.add_query_param_list uri "tags" (List.map (fun x -> x)) tags in
    let uri = Request.maybe_add_query_param uri "favourite" string_of_bool favourite in
    Cohttp_lwt_unix.Client.call `POST uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_dto.of_yojson) resp body

let delete_email_address ~inbox_id =
    let open Lwt in
    let uri = Request.build_uri "/deleteEmailAddress" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.add_query_param uri "inboxId"  inbox_id in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let empty_inbox ~inbox_id =
    let open Lwt in
    let uri = Request.build_uri "/emptyInbox" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.add_query_param uri "inboxId"  inbox_id in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let send_email_simple ~simple_send_email_options_t =
    let open Lwt in
    let uri = Request.build_uri "/sendEmail" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let body = Request.write_as_json_body Simple_send_email_options.to_yojson simple_send_email_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.handle_unit_response resp

