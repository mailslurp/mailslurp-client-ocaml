(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    created_at: string;
    id: string;
    name: string option [@default None];
    seen: bool;
    user_id: string;
} [@@deriving yojson { strict = false }, show ];;

let create (created_at : string) (id : string) (seen : bool) (user_id : string) : t = {
    created_at = created_at;
    id = id;
    name = None;
    seen = seen;
    user_id = user_id;
}

