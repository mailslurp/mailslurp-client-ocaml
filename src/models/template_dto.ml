(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    id: string;
    name: string;
    variables: Template_variable.t list;
    content: string;
    created_at: string;
} [@@deriving yojson { strict = false }, show ];;

let create (id : string) (name : string) (variables : Template_variable.t list) (content : string) (created_at : string) : t = {
    id = id;
    name = name;
    variables = variables;
    content = content;
    created_at = created_at;
}

