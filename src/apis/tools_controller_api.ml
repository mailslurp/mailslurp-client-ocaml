(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let generate_bimi_record ~generate_bimi_record_options_t =
    let open Lwt in
    let uri = Request.build_uri "/tools/generate-bimi-record" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let body = Request.write_as_json_body Generate_bimi_record_options.to_yojson generate_bimi_record_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generate_bimi_record_results.of_yojson) resp body

let generate_dmarc_record ~generate_dmarc_record_options_t =
    let open Lwt in
    let uri = Request.build_uri "/tools/generate-dmarc-record" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let body = Request.write_as_json_body Generate_dmarc_record_options.to_yojson generate_dmarc_record_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generate_dmarc_record_results.of_yojson) resp body

let generate_mta_sts_record ~generate_mta_sts_record_options_t =
    let open Lwt in
    let uri = Request.build_uri "/tools/generate-mta-sts-record" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let body = Request.write_as_json_body Generate_mta_sts_record_options.to_yojson generate_mta_sts_record_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generate_mta_sts_record_results.of_yojson) resp body

let generate_tls_reporting_record ~generate_tls_reporting_record_options_t =
    let open Lwt in
    let uri = Request.build_uri "/tools/generate-tls-reporting-record" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let body = Request.write_as_json_body Generate_tls_reporting_record_options.to_yojson generate_tls_reporting_record_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Generate_tls_reporting_record_results.of_yojson) resp body

let lookup_bimi_domain ~lookup_bimi_domain_options_t =
    let open Lwt in
    let uri = Request.build_uri "/tools/lookup-bimi-domain" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let body = Request.write_as_json_body Lookup_bimi_domain_options.to_yojson lookup_bimi_domain_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Lookup_bimi_domain_results.of_yojson) resp body

let lookup_dmarc_domain ~lookup_dmarc_domain_options_t =
    let open Lwt in
    let uri = Request.build_uri "/tools/lookup-dmarc-domain" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let body = Request.write_as_json_body Lookup_dmarc_domain_options.to_yojson lookup_dmarc_domain_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Lookup_dmarc_domain_results.of_yojson) resp body

let lookup_mta_sts_domain ~lookup_mta_sts_domain_options_t =
    let open Lwt in
    let uri = Request.build_uri "/tools/lookup-mta-sts-domain" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let body = Request.write_as_json_body Lookup_mta_sts_domain_options.to_yojson lookup_mta_sts_domain_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Lookup_mta_sts_domain_results.of_yojson) resp body

let lookup_tls_reporting_domain ~lookup_tls_reporting_domain_options_t =
    let open Lwt in
    let uri = Request.build_uri "/tools/lookup-tls-reporting-domain" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let body = Request.write_as_json_body Lookup_tls_reporting_domain_options.to_yojson lookup_tls_reporting_domain_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Lookup_tls_reporting_domain_results.of_yojson) resp body

