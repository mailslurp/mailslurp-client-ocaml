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
    user_id: string;
    inbox_id: string option [@default None];
    sent_email_id: string option [@default None];
    created_at: string;
    seen: bool;
    recipient: string option [@default None];
    seen_at: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Tracking pixel data *)
let create (id : string) (user_id : string) (created_at : string) (seen : bool) : t = {
    name = None;
    id = id;
    user_id = user_id;
    inbox_id = None;
    sent_email_id = None;
    created_at = created_at;
    seen = seen;
    recipient = None;
    seen_at = None;
}

