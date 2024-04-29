(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Bounce_projection.t : Bounced email event
 *)

type t = {
    created_at: string;
    sender: string;
    bounce_mta: string option [@default None];
    bounce_type: string option [@default None];
    subject: string option [@default None];
    id: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Bounced email event *)
let create (created_at : string) (sender : string) : t = {
    created_at = created_at;
    sender = sender;
    bounce_mta = None;
    bounce_type = None;
    subject = None;
    id = None;
}

