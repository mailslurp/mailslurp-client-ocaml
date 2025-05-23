(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    customer_name: string;
    address1: string;
    city: string;
    region: string;
    postal_code: string;
    iso_country_code: Enums.phonecountry;
    display_name: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (customer_name : string) (address1 : string) (city : string) (region : string) (postal_code : string) (iso_country_code : Enums.phonecountry) : t = {
    customer_name = customer_name;
    address1 = address1;
    city = city;
    region = region;
    postal_code = postal_code;
    iso_country_code = iso_country_code;
    display_name = None;
}

