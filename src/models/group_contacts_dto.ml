(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    contacts: Contact_dto.t list;
    group: Group_dto.t;
} [@@deriving yojson { strict = false }, show ];;

let create (contacts : Contact_dto.t list) (group : Group_dto.t) : t = {
    contacts = contacts;
    group = group;
}

