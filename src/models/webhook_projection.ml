(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Webhook_projection.t : Representation of a webhook
 *)

type t = {
    created_at: string;
    updated_at: string;
    url: string;
    inbox_id: string option [@default None];
    event_name: Enums.eventname option [@default None];
    phone_number_id: string option [@default None];
    name: string option [@default None];
    id: string;
} [@@deriving yojson { strict = false }, show ];;

(** Representation of a webhook *)
let create (created_at : string) (updated_at : string) (url : string) (id : string) : t = {
    created_at = created_at;
    updated_at = updated_at;
    url = url;
    inbox_id = None;
    event_name = None;
    phone_number_id = None;
    name = None;
    id = id;
}

