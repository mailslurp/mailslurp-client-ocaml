(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Dns_lookup_result.t : DNS lookup result. Includes record type, time to live, raw response, and name value for the name server response.
 *)

type t = {
    (* Domain Name Server Record Types *)
    record_type: Enums.recordtype option [@default None];
    ttl: int64 option [@default None];
    record_entries: string list;
    name: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** DNS lookup result. Includes record type, time to live, raw response, and name value for the name server response. *)
let create () : t = {
    record_type = None;
    ttl = None;
    record_entries = [];
    name = None;
}

