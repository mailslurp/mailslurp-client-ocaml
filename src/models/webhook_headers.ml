(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Webhook_headers.t : Webhook HTTP headers to include with each request from MailSlurp to your server
 *)

type t = {
    (* List of header name value pairs to include with webhook requests *)
    headers: Webhook_header_name_value.t list;
} [@@deriving yojson { strict = false }, show ];;

(** Webhook HTTP headers to include with each request from MailSlurp to your server *)
let create (headers : Webhook_header_name_value.t list) : t = {
    headers = headers;
}

