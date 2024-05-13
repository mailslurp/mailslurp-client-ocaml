(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Expired_inbox_record_projection.t : Record of inbox expiration
 *)

type t = {
    email_address: string;
    user_id: string;
    created_at: string;
    id: string;
} [@@deriving yojson { strict = false }, show ];;

(** Record of inbox expiration *)
let create (email_address : string) (user_id : string) (created_at : string) (id : string) : t = {
    email_address = email_address;
    user_id = user_id;
    created_at = created_at;
    id = id;
}

