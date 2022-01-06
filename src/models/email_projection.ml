(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Email_projection.t : A compact representation of a full email. Used in list endpoints to keep response sizes low. Body and attachments are not included. To get all fields of the email use the `getEmail` method with the email projection's ID. See `EmailDto` for documentation on projection properties.
 *)

type t = {
    id: string option [@default None];
    from: string option [@default None];
    team_access: bool option [@default None];
    read: bool option [@default None];
    body_md5_hash: string option [@default None];
    body_excerpt: string option [@default None];
    subject: string option [@default None];
    inbox_id: string option [@default None];
    _to: string list;
    attachments: string list;
    bcc: string list;
    cc: string list;
    created_at: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** A compact representation of a full email. Used in list endpoints to keep response sizes low. Body and attachments are not included. To get all fields of the email use the `getEmail` method with the email projection's ID. See `EmailDto` for documentation on projection properties. *)
let create () : t = {
    id = None;
    from = None;
    team_access = None;
    read = None;
    body_md5_hash = None;
    body_excerpt = None;
    subject = None;
    inbox_id = None;
    _to = [];
    attachments = [];
    bcc = [];
    cc = [];
    created_at = None;
}

