(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    stack_trace: Connector_sync_request_result_exception_cause_stack_trace.t list;
    message: string option [@default None];
    suppressed: Connector_sync_request_result_exception_cause_suppressed.t list;
    localized_message: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    stack_trace = [];
    message = None;
    suppressed = [];
    localized_message = None;
}
