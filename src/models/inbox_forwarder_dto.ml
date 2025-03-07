(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Inbox_forwarder_dto.t : Inbox forwarder. Describes how an inbox will forward matching emails to designated recipients.
 *)

type t = {
    id: string;
    inbox_id: string option [@default None];
    (* Name of inbox forwarder *)
    name: string option [@default None];
    (* Which field to match against *)
    field: Enums.updateinboxreplieroptions_field;
    (* Wild-card type pattern to apply to field *)
    _match: string;
    (* Who to send forwarded email to *)
    forward_to_recipients: string list;
    created_at: string;
} [@@deriving yojson { strict = false }, show ];;

(** Inbox forwarder. Describes how an inbox will forward matching emails to designated recipients. *)
let create (id : string) (field : Enums.updateinboxreplieroptions_field) (_match : string) (forward_to_recipients : string list) (created_at : string) : t = {
    id = id;
    inbox_id = None;
    name = None;
    field = field;
    _match = _match;
    forward_to_recipients = forward_to_recipients;
    created_at = created_at;
}

