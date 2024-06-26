(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Email_projection.t : A compact representation of a full email. Used in list endpoints to keep response sizes low. Body and attachments are not included. To get all fields of the email use the `getEmail` method with the email projection's ID. See `EmailDto` for documentation on projection properties.
 *)

type t = {
    created_at: string;
    attachments: string list;
    inbox_id: string;
    _to: string list;
    domain_id: string option [@default None];
    bcc: string list;
    cc: string list;
    read: bool;
    body_excerpt: string option [@default None];
    team_access: bool;
    body_md5_hash: string option [@default None];
    text_excerpt: string option [@default None];
    subject: string option [@default None];
    id: string;
    from: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** A compact representation of a full email. Used in list endpoints to keep response sizes low. Body and attachments are not included. To get all fields of the email use the `getEmail` method with the email projection's ID. See `EmailDto` for documentation on projection properties. *)
let create (created_at : string) (inbox_id : string) (_to : string list) (read : bool) (team_access : bool) (id : string) : t = {
    created_at = created_at;
    attachments = [];
    inbox_id = inbox_id;
    _to = _to;
    domain_id = None;
    bcc = [];
    cc = [];
    read = read;
    body_excerpt = None;
    team_access = team_access;
    body_md5_hash = None;
    text_excerpt = None;
    subject = None;
    id = id;
    from = None;
}

