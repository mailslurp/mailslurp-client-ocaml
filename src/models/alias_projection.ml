(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Alias_projection.t : Representation of a alias
 *)

type t = {
    user_id: string;
    email_address: string;
    inbox_id: string;
    updated_at: string;
    created_at: string;
    use_threads: bool option [@default None];
    name: string option [@default None];
    id: string;
} [@@deriving yojson { strict = false }, show ];;

(** Representation of a alias *)
let create (user_id : string) (email_address : string) (inbox_id : string) (updated_at : string) (created_at : string) (id : string) : t = {
    user_id = user_id;
    email_address = email_address;
    inbox_id = inbox_id;
    updated_at = updated_at;
    created_at = created_at;
    use_threads = None;
    name = None;
    id = id;
}

