(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    company: string option [@default None];
    created_at: string;
    email_addresses: string list;
    first_name: string option [@default None];
    group_id: string option [@default None];
    id: string;
    last_name: string option [@default None];
    opt_out: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (created_at : string) (id : string) : t = {
    company = None;
    created_at = created_at;
    email_addresses = [];
    first_name = None;
    group_id = None;
    id = id;
    last_name = None;
    opt_out = None;
}

