(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Inbox_replier_dto.t : Inbox replier. Will automatically reply to inbound emails that match given field for an inbox.
 *)

type t = {
    id: string;
    inbox_id: string option [@default None];
    name: string option [@default None];
    field: Enums.updateinboxreplieroptions_field;
    _match: string;
    reply_to: string option [@default None];
    subject: string option [@default None];
    from: string option [@default None];
    charset: string option [@default None];
    is_html: bool;
    template_id: string option [@default None];
    template_variables: (string * Yojson.Safe.t) list;
    ignore_reply_to: bool;
    created_at: string;
} [@@deriving yojson { strict = false }, show ];;

(** Inbox replier. Will automatically reply to inbound emails that match given field for an inbox. *)
let create (id : string) (field : Enums.updateinboxreplieroptions_field) (_match : string) (is_html : bool) (ignore_reply_to : bool) (created_at : string) : t = {
    id = id;
    inbox_id = None;
    name = None;
    field = field;
    _match = _match;
    reply_to = None;
    subject = None;
    from = None;
    charset = None;
    is_html = is_html;
    template_id = None;
    template_variables = [];
    ignore_reply_to = ignore_reply_to;
    created_at = created_at;
}

