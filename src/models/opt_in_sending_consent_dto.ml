(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    verification_code_sent: bool;
    user_has_consented: bool;
    can_send: bool;
} [@@deriving yojson { strict = false }, show ];;

let create (verification_code_sent : bool) (user_has_consented : bool) (can_send : bool) : t = {
    verification_code_sent = verification_code_sent;
    user_has_consented = user_has_consented;
    can_send = can_send;
}

