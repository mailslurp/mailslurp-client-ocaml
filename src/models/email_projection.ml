(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Email_projection.t : A compact representation of a full email. Used in list endpoints to keep response sizes low. Body and attachments are not included. To get all fields of the email use the `getEmail` method with the email projection's ID. See `EmailDto` for documentation on projection properties.
 *)

type t = {
    id: string;
    from: string option [@default None];
    subject: string option [@default None];
    attachments: string list;
    inbox_id: string;
    _to: string list;
    bcc: string list;
    cc: string list;
    created_at: string;
    domain_id: string option [@default None];
    read: bool;
    team_access: bool;
    body_md5_hash: string option [@default None];
    body_excerpt: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** A compact representation of a full email. Used in list endpoints to keep response sizes low. Body and attachments are not included. To get all fields of the email use the `getEmail` method with the email projection's ID. See `EmailDto` for documentation on projection properties. *)
let create (id : string) (inbox_id : string) (_to : string list) (created_at : string) (read : bool) (team_access : bool) : t = {
    id = id;
    from = None;
    subject = None;
    attachments = [];
    inbox_id = inbox_id;
    _to = _to;
    bcc = [];
    cc = [];
    created_at = created_at;
    domain_id = None;
    read = read;
    team_access = team_access;
    body_md5_hash = None;
    body_excerpt = None;
}

