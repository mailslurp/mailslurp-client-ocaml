(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    guest: Guest_portal_user_dto.t;
    password: string;
} [@@deriving yojson { strict = false }, show ];;

let create (guest : Guest_portal_user_dto.t) (password : string) : t = {
    guest = guest;
    password = password;
}

