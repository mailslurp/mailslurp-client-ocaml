(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    id: string;
    inbox_id: string;
    scope: Enums.scope;
    action: Enums.action;
    target: string;
    handler: Enums.handler[@default `EXCEPTION];
    created_at: string;
} [@@deriving yojson { strict = false }, show ];;

let create (id : string) (inbox_id : string) (scope : Enums.scope) (action : Enums.action) (target : string) (handler : Enums.handler) (created_at : string) : t = {
    id = id;
    inbox_id = inbox_id;
    scope = scope;
    action = action;
    target = target;
    handler = handler;
    created_at = created_at;
}

