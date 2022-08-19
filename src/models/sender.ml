(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Sender.t : Sender object containing from email address and from personal name if provided in address
 *)

type t = {
    raw_value: string;
    email_address: string;
    name: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Sender object containing from email address and from personal name if provided in address *)
let create (raw_value : string) (email_address : string) : t = {
    raw_value = raw_value;
    email_address = email_address;
    name = None;
}

