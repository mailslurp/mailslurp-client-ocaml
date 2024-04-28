(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Bounce_projection.t : Bounced email event
 *)

type t = {
    subject: string option [@default None];
    sender: string;
    bounce_mta: string option [@default None];
    bounce_type: string option [@default None];
    created_at: string;
    id: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Bounced email event *)
let create (sender : string) (created_at : string) : t = {
    subject = None;
    sender = sender;
    bounce_mta = None;
    bounce_type = None;
    created_at = created_at;
    id = None;
}

