(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val create_emergency_address : create_emergency_address_options_t:Create_emergency_address_options.t -> Emergency_address.t Lwt.t
val create_phone_number : create_phone_number_options_t:Create_phone_number_options.t -> Phone_number_dto.t Lwt.t
val delete_emergency_address : address_id:string -> Empty_response_dto.t Lwt.t
val delete_phone_number : phone_number_id:string -> unit Lwt.t
val get_all_phone_message_threads : ?page:int32 -> ?size:int32 -> unit -> Page_phone_message_thread_projection.t Lwt.t
val get_consent_status : unit -> Consent_status_dto.t Lwt.t
val get_emergency_address : address_id:string -> Emergency_address.t Lwt.t
val get_emergency_addresses : unit -> Emergency_address_dto.t list Lwt.t
val get_phone_message_thread_items : phone_number_id:string -> other_number:string -> ?page:int32 -> ?size:int32 -> unit -> Page_phone_message_thread_item_projection.t Lwt.t
val get_phone_message_threads : phone_number_id:string -> ?page:int32 -> ?size:int32 -> unit -> Page_phone_message_thread_projection.t Lwt.t
val get_phone_number : phone_number_id:string -> Phone_number_dto.t Lwt.t
val get_phone_number_by_name : name:string -> Phone_number_dto.t Lwt.t
val get_phone_number_by_phone_number : phone_number:string -> Phone_number_dto.t Lwt.t
val get_phone_numbers : ?phone_country:Enums.phonecountry -> ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?since:string -> ?before:string -> ?search:string -> ?_include:string list -> ?favourite:bool -> unit -> Page_phone_number_projection.t Lwt.t
val get_phone_plans : unit -> Phone_plan_dto.t list Lwt.t
val get_phone_plans_availability : unit -> Phone_plan_availability.t Lwt.t
val get_sent_sms_by_phone_number : phone_number_id:string -> ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?since:string -> ?before:string -> ?search:string -> unit -> Page_sent_sms_projection.t Lwt.t
val get_sms_by_phone_number : phone_number_id:string -> ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?unread_only:bool -> ?since:string -> ?before:string -> ?search:string -> ?favourite:bool -> unit -> Page_sms_projection.t Lwt.t
val send_sms_from_phone_number : phone_number_id:string -> sms_send_options_t:Sms_send_options.t -> Sent_sms_dto.t Lwt.t
val set_consent_status : agree:bool -> Consent_status_dto.t Lwt.t
val set_phone_favourited : phone_number_id:string -> set_phone_favourited_options_t:Set_phone_favourited_options.t -> Phone_number_dto.t Lwt.t
val test_phone_number_send_sms : phone_number_id:string -> test_phone_number_options_t:Test_phone_number_options.t -> ?x_test_id:string -> unit -> unit Lwt.t
val update_phone_number : phone_number_id:string -> update_phone_number_options_t:Update_phone_number_options.t -> Phone_number_dto.t Lwt.t
val validate_phone_number : validate_phone_number_options_t:Validate_phone_number_options.t -> Phone_number_validation_dto.t Lwt.t
