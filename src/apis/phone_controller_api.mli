(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val create_emergency_address : create_emergency_address_options_t:Create_emergency_address_options.t -> Emergency_address.t Lwt.t
val delete_emergency_address : address_id:string -> Empty_response_dto.t Lwt.t
val delete_phone_number : phone_number_id:string -> unit Lwt.t
val get_emergency_address : address_id:string -> Emergency_address.t Lwt.t
val get_emergency_addresses : unit -> Emergency_address_dto.t list Lwt.t
val get_phone_number : phone_number_id:string -> Phone_number_dto.t Lwt.t
val get_phone_numbers : ?phone_country:Enums.isocountrycode -> ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?since:string -> ?before:string -> unit -> Page_phone_number_projection.t Lwt.t
val get_phone_plans : unit -> Phone_plan_dto.t list Lwt.t
val test_phone_number_send_sms : phone_number_id:string -> test_phone_number_options_t:Test_phone_number_options.t -> ?x_test_id:string -> unit -> unit Lwt.t
