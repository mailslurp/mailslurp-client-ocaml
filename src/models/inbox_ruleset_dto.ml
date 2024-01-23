(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Inbox_ruleset_dto.t : Rules for inbox
 *)

type t = {
    id: string;
    inbox_id: string option [@default None];
    scope: Enums.scope;
    action: Enums.action;
    target: string;
    handler: Enums.handler[@default `EXCEPTION];
    created_at: string;
} [@@deriving yojson { strict = false }, show ];;

(** Rules for inbox *)
let create (id : string) (scope : Enums.scope) (action : Enums.action) (target : string) (handler : Enums.handler) (created_at : string) : t = {
    id = id;
    inbox_id = None;
    scope = scope;
    action = action;
    target = target;
    handler = handler;
    created_at = created_at;
}

