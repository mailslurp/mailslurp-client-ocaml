(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Alias_projection.t : Representation of a alias
 *)

type t = {
    created_at: string;
    updated_at: string;
    inbox_id: string;
    user_id: string;
    email_address: string;
    use_threads: bool option [@default None];
    name: string option [@default None];
    id: string;
} [@@deriving yojson { strict = false }, show ];;

(** Representation of a alias *)
let create (created_at : string) (updated_at : string) (inbox_id : string) (user_id : string) (email_address : string) (id : string) : t = {
    created_at = created_at;
    updated_at = updated_at;
    inbox_id = inbox_id;
    user_id = user_id;
    email_address = email_address;
    use_threads = None;
    name = None;
    id = id;
}

