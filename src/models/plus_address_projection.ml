(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    created_at: string;
    updated_at: string;
    user_id: string;
    inbox_id: string;
    plus_address: string;
    full_address: string;
    id: string;
} [@@deriving yojson { strict = false }, show ];;

let create (created_at : string) (updated_at : string) (user_id : string) (inbox_id : string) (plus_address : string) (full_address : string) (id : string) : t = {
    created_at = created_at;
    updated_at = updated_at;
    user_id = user_id;
    inbox_id = inbox_id;
    plus_address = plus_address;
    full_address = full_address;
    id = id;
}

