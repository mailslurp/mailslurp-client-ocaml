(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    id: string option [@default None];
    sid: string;
    user_id: string;
    display_name: string;
    customer_name: string;
    address1: string;
    city: string;
    region: string;
    postal_code: string;
    phone_country: Enums.isocountrycode;
    account_sid: string;
    created_at: string;
    updated_at: string;
} [@@deriving yojson { strict = false }, show ];;

let create (sid : string) (user_id : string) (display_name : string) (customer_name : string) (address1 : string) (city : string) (region : string) (postal_code : string) (phone_country : Enums.isocountrycode) (account_sid : string) (created_at : string) (updated_at : string) : t = {
    id = None;
    sid = sid;
    user_id = user_id;
    display_name = display_name;
    customer_name = customer_name;
    address1 = address1;
    city = city;
    region = region;
    postal_code = postal_code;
    phone_country = phone_country;
    account_sid = account_sid;
    created_at = created_at;
    updated_at = updated_at;
}

