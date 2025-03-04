(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val create_account_webhook : create_webhook_options_t:Create_webhook_options.t -> Webhook_dto.t Lwt.t
val create_webhook : inbox_id:string -> create_webhook_options_t:Create_webhook_options.t -> Webhook_dto.t Lwt.t
val create_webhook_for_phone_number : phone_number_id:string -> create_webhook_options_t:Create_webhook_options.t -> Webhook_dto.t Lwt.t
val delete_all_webhooks : ?before:string -> unit -> unit Lwt.t
val delete_webhook : inbox_id:string -> webhook_id:string -> unit Lwt.t
val delete_webhook_by_id : webhook_id:string -> unit Lwt.t
val get_all_account_webhooks : ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?since:string -> ?before:string -> ?event_type:Enums.eventname -> ?health:Enums.healthstatus -> ?search_filter:string -> unit -> Page_webhook_projection.t Lwt.t
val get_all_webhook_endpoints : ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?search_filter:string -> ?since:string -> ?inbox_id:string -> ?phone_id:string -> ?before:string -> ?health:Enums.healthstatus -> ?event_type:Enums.eventname -> unit -> Page_webhook_endpoint_projection.t Lwt.t
val get_all_webhook_results : ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?search_filter:string -> ?since:string -> ?before:string -> ?unseen_only:bool -> ?result_type:Enums.resulttype -> ?event_name:Enums.eventname -> ?min_status_code:int32 -> ?max_status_code:int32 -> ?inbox_id:string -> ?sms_id:string -> ?attachment_id:string -> ?email_id:string -> ?phone_id:string -> unit -> Page_webhook_result.t Lwt.t
val get_all_webhooks : ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?search_filter:string -> ?since:string -> ?inbox_id:string -> ?phone_id:string -> ?before:string -> ?health:Enums.healthstatus -> ?event_type:Enums.eventname -> ?url:string -> unit -> Page_webhook_projection.t Lwt.t
val get_inbox_webhooks_paginated : inbox_id:string -> ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?search_filter:string -> ?since:string -> ?before:string -> ?health:Enums.healthstatus -> ?event_type:Enums.eventname -> unit -> Page_webhook_projection.t Lwt.t
val get_json_schema_for_webhook_event : event:Enums.eventname -> Json_schema_dto.t Lwt.t
val get_json_schema_for_webhook_payload : webhook_id:string -> Json_schema_dto.t Lwt.t
val get_phone_number_webhooks_paginated : phone_id:string -> ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?since:string -> ?before:string -> ?event_type:Enums.eventname -> ?search_filter:string -> ?health:Enums.healthstatus -> unit -> Page_webhook_projection.t Lwt.t
val get_test_webhook_payload : ?event_name:Enums.eventname -> unit -> Abstract_webhook_payload.t Lwt.t
val get_test_webhook_payload_bounce : unit -> Webhook_bounce_payload.t Lwt.t
val get_test_webhook_payload_bounce_recipient : unit -> Webhook_bounce_recipient_payload.t Lwt.t
val get_test_webhook_payload_delivery_status : unit -> Webhook_delivery_status_payload.t Lwt.t
val get_test_webhook_payload_email_opened : unit -> Webhook_email_opened_payload.t Lwt.t
val get_test_webhook_payload_email_read : unit -> Webhook_email_read_payload.t Lwt.t
val get_test_webhook_payload_for_webhook : webhook_id:string -> Abstract_webhook_payload.t Lwt.t
val get_test_webhook_payload_new_attachment : unit -> Webhook_new_attachment_payload.t Lwt.t
val get_test_webhook_payload_new_contact : unit -> Webhook_new_contact_payload.t Lwt.t
val get_test_webhook_payload_new_email : unit -> Webhook_new_email_payload.t Lwt.t
val get_test_webhook_payload_new_sms : unit -> Webhook_new_sms_payload.t Lwt.t
val get_webhook : webhook_id:string -> Webhook_dto.t Lwt.t
val get_webhook_result : webhook_result_id:string -> Webhook_result_dto.t Lwt.t
val get_webhook_results : webhook_id:string -> ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?search_filter:string -> ?since:string -> ?before:string -> ?unseen_only:bool -> ?result_type:Enums.resulttype -> ?event_name:Enums.eventname -> ?min_status_code:int32 -> ?max_status_code:int32 -> ?inbox_id:string -> ?sms_id:string -> ?attachment_id:string -> ?email_id:string -> ?phone_id:string -> unit -> Page_webhook_result.t Lwt.t
val get_webhook_results_count : webhook_id:string -> Count_dto.t Lwt.t
val get_webhook_results_unseen_error_count : unit -> Unseen_error_count_dto.t Lwt.t
val get_webhooks : inbox_id:string -> ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> unit -> Webhook_projection.t list Lwt.t
val redrive_all_webhook_results : unit -> Webhook_redrive_all_result.t Lwt.t
val redrive_webhook_result : webhook_result_id:string -> Webhook_redrive_result.t Lwt.t
val send_test_data : webhook_id:string -> Webhook_test_result.t Lwt.t
val update_webhook : webhook_id:string -> create_webhook_options_t:Create_webhook_options.t -> ?inbox_id:string -> ?phone_number_id:string -> ?override_auth:bool -> unit -> Webhook_dto.t Lwt.t
val update_webhook_headers : webhook_id:string -> webhook_headers_t:Webhook_headers.t -> Webhook_dto.t Lwt.t
val verify_webhook_signature : verify_webhook_signature_options_t:Verify_webhook_signature_options.t -> Verify_webhook_signature_results.t Lwt.t
val wait_for_webhook_results : webhook_id:string -> expected_count:int32 -> timeout:int32 -> Webhook_result_dto.t list Lwt.t
