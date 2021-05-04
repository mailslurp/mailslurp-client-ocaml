(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Domain_name_record.t : DNS Record required for verification of a domain
 *)

type t = {
    name: string;
    record_entries: string list;
    record_type: Enums.recordtypes;
    ttl: int64;
} [@@deriving yojson { strict = false }, show ];;

(** DNS Record required for verification of a domain *)
let create (name : string) (record_entries : string list) (record_type : Enums.recordtypes) (ttl : int64) : t = {
    name = name;
    record_entries = record_entries;
    record_type = record_type;
    ttl = ttl;
}

