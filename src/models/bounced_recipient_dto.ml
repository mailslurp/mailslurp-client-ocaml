(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Bounced_recipient_dto.t : Bounced recipient
 *)

type t = {
    id: string option [@default None];
    user_id: string;
    recipient: string;
    created_at: string;
} [@@deriving yojson { strict = false }, show ];;

(** Bounced recipient *)
let create (user_id : string) (recipient : string) (created_at : string) : t = {
    id = None;
    user_id = user_id;
    recipient = recipient;
    created_at = created_at;
}
