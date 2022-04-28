(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Webhook_projection.t : Representation of a webhook
 *)

type t = {
    name: string option [@default None];
    id: string;
    url: string;
    inbox_id: string option [@default None];
    event_name: Enums.eventname option [@default None];
    updated_at: string;
    created_at: string;
} [@@deriving yojson { strict = false }, show ];;

(** Representation of a webhook *)
let create (id : string) (url : string) (updated_at : string) (created_at : string) : t = {
    name = None;
    id = id;
    url = url;
    inbox_id = None;
    event_name = None;
    updated_at = updated_at;
    created_at = created_at;
}

