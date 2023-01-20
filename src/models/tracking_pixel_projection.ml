(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Tracking_pixel_projection.t : Tracking pixel data
 *)

type t = {
    name: string option [@default None];
    id: string;
    inbox_id: string option [@default None];
    user_id: string;
    created_at: string;
    sent_email_id: string option [@default None];
    recipient: string option [@default None];
    seen: bool;
    seen_at: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Tracking pixel data *)
let create (id : string) (user_id : string) (created_at : string) (seen : bool) : t = {
    name = None;
    id = id;
    inbox_id = None;
    user_id = user_id;
    created_at = created_at;
    sent_email_id = None;
    recipient = None;
    seen = seen;
    seen_at = None;
}

