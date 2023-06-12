(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Group_dto.t : Contact group data
 *)

type t = {
    id: string;
    name: string;
    description: string option [@default None];
    created_at: string;
} [@@deriving yojson { strict = false }, show ];;

(** Contact group data *)
let create (id : string) (name : string) (created_at : string) : t = {
    id = id;
    name = name;
    description = None;
    created_at = created_at;
}

