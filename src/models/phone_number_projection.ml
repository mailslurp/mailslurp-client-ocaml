(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Phone_number_projection.t : Phone number projection
 *)

type t = {
    created_at: string;
    user_id: string;
    phone_number: string;
    phone_country: Enums.phonecountry;
    name: string option [@default None];
    id: string;
} [@@deriving yojson { strict = false }, show ];;

(** Phone number projection *)
let create (created_at : string) (user_id : string) (phone_number : string) (phone_country : Enums.phonecountry) (id : string) : t = {
    created_at = created_at;
    user_id = user_id;
    phone_number = phone_number;
    phone_country = phone_country;
    name = None;
    id = id;
}

