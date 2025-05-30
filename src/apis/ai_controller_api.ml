(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let generate_structured_content_from_attachment ~generate_structured_content_attachment_options_t =
    let open Lwt in
    let uri = Request.build_uri "/ai/structured-content/attachment" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let body = Request.write_as_json_body Generate_structured_content_attachment_options.to_yojson generate_structured_content_attachment_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Structured_content_result.of_yojson) resp body

let generate_structured_content_from_email ~generate_structured_content_email_options_t =
    let open Lwt in
    let uri = Request.build_uri "/ai/structured-content/email" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let body = Request.write_as_json_body Generate_structured_content_email_options.to_yojson generate_structured_content_email_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Structured_content_result.of_yojson) resp body

let validate_structured_output_schema ~structured_output_schema_t =
    let open Lwt in
    let uri = Request.build_uri "/ai/structured-content/validate" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let body = Request.write_as_json_body Structured_output_schema.to_yojson structured_output_schema_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Structured_output_schema_validation.of_yojson) resp body

