(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Describe_mail_server_domain_result.t : Name Server lookup result
 *)

type t = {
    domain: string;
    message: string option [@default None];
    mx_records: Name_server_record.t list;
} [@@deriving yojson { strict = false }, show ];;

(** Name Server lookup result *)
let create (domain : string) (mx_records : Name_server_record.t list) : t = {
    domain = domain;
    message = None;
    mx_records = mx_records;
}

