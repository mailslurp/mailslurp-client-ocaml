(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Template_variable.t : Variable for use with email template
 *)

type t = {
    (* Name of variable. This can be used in a template as {{name}} *)
    name: string;
    (* The type of variable *)
    variable_type: Enums.variabletype[@default `STRING];
} [@@deriving yojson { strict = false }, show ];;

(** Variable for use with email template *)
let create (name : string) (variable_type : Enums.variabletype) : t = {
    name = name;
    variable_type = variable_type;
}

