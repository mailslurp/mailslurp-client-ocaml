(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    status: Enums.statuses;
    percentage: float;
} [@@deriving yojson { strict = false }, show ];;

let create (status : Enums.statuses) (percentage : float) : t = {
    status = status;
    percentage = percentage;
}

