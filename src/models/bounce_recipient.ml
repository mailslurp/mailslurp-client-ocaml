(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    created_at: string;
    id: string option [@default None];
    recipient: string;
    updated_at: string;
    user_id: string;
} [@@deriving yojson { strict = false }, show ];;

let create (created_at : string) (recipient : string) (updated_at : string) (user_id : string) : t = {
    created_at = created_at;
    id = None;
    recipient = recipient;
    updated_at = updated_at;
    user_id = user_id;
}

