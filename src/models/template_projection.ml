(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Template_projection.t : Email template data
 *)

type t = {
    name: string;
    id: string;
    updated_at: string;
    created_at: string;
    variables: string list;
} [@@deriving yojson { strict = false }, show ];;

(** Email template data *)
let create (name : string) (id : string) (updated_at : string) (created_at : string) (variables : string list) : t = {
    name = name;
    id = id;
    updated_at = updated_at;
    created_at = created_at;
    variables = variables;
}

