(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Inbox_forwarder_dto.t : Inbox forwarder
 *)

type t = {
    id: string;
    inbox_id: string;
    field: Enums.createinboxforwarderoptions_field;
    _match: string;
    forward_to_recipients: string list;
    created_at: string;
} [@@deriving yojson { strict = false }, show ];;

(** Inbox forwarder *)
let create (id : string) (inbox_id : string) (field : Enums.createinboxforwarderoptions_field) (_match : string) (forward_to_recipients : string list) (created_at : string) : t = {
    id = id;
    inbox_id = inbox_id;
    field = field;
    _match = _match;
    forward_to_recipients = forward_to_recipients;
    created_at = created_at;
}

