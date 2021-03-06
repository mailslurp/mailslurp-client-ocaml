(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Webhook_redrive_result.t : Result of retrying webhook
 *)

type t = {
    webhook_result_id: string;
    success: bool;
    message: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Result of retrying webhook *)
let create (webhook_result_id : string) (success : bool) : t = {
    webhook_result_id = webhook_result_id;
    success = success;
    message = None;
}

