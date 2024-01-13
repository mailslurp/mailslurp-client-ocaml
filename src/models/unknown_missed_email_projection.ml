(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Unknown_missed_email_projection.t : Unknown missed email projection
 *)

type t = {
    created_at: string;
    _to: string list;
    subject: string option [@default None];
    id: string;
    from: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Unknown missed email projection *)
let create (created_at : string) (id : string) : t = {
    created_at = created_at;
    _to = [];
    subject = None;
    id = id;
    from = None;
}

