(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val create_webhook : inbox_id:string -> webhook_options:Create_webhook_options.t -> Webhook_dto.t Lwt.t
val delete_webhook : inbox_id:string -> webhook_id:string -> unit Lwt.t
val get_all_webhooks : ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> unit -> Page_webhook_projection.t Lwt.t
val get_test_webhook_payload : unit -> Webhook_payload.t Lwt.t
val get_webhook : webhook_id:string -> Webhook_dto.t Lwt.t
val get_webhooks : inbox_id:string -> Webhook_dto.t list Lwt.t
val send_test_data : webhook_id:string -> Webhook_test_result.t Lwt.t
