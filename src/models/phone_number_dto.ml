(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    id: string;
    name: string option [@default None];
    description: string option [@default None];
    user_id: string;
    compliance_address: string option [@default None];
    emergency_address: string option [@default None];
    phone_number: string;
    phone_country: Enums.phonecountry;
    phone_plan: string;
    created_at: string;
    updated_at: string;
    favourite: bool;
} [@@deriving yojson { strict = false }, show ];;

let create (id : string) (user_id : string) (phone_number : string) (phone_country : Enums.phonecountry) (phone_plan : string) (created_at : string) (updated_at : string) (favourite : bool) : t = {
    id = id;
    name = None;
    description = None;
    user_id = user_id;
    compliance_address = None;
    emergency_address = None;
    phone_number = phone_number;
    phone_country = phone_country;
    phone_plan = phone_plan;
    created_at = created_at;
    updated_at = updated_at;
    favourite = favourite;
}

