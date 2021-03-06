(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Group_contacts_dto.t : Describes contacts attached to a contact group
 *)

type t = {
    group: Group_dto.t;
    contacts: Contact_dto.t list;
} [@@deriving yojson { strict = false }, show ];;

(** Describes contacts attached to a contact group *)
let create (group : Group_dto.t) (contacts : Contact_dto.t list) : t = {
    group = group;
    contacts = contacts;
}

