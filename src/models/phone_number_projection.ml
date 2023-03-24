(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Phone_number_projection.t : Phone number projection
 *)

type t = {
    id: string;
    user_id: string;
    created_at: string;
    phone_country: Enums.isocountrycode;
    phone_number: string;
} [@@deriving yojson { strict = false }, show ];;

(** Phone number projection *)
let create (id : string) (user_id : string) (created_at : string) (phone_country : Enums.isocountrycode) (phone_number : string) : t = {
    id = id;
    user_id = user_id;
    created_at = created_at;
    phone_country = phone_country;
    phone_number = phone_number;
}

