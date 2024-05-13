(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val create_contact : create_contact_options_t:Create_contact_options.t -> Contact_dto.t Lwt.t
val delete_contact : contact_id:string -> unit Lwt.t
val get_all_contacts : ?page:int32 -> ?size:int32 -> ?sort:Enums.sortdirection -> ?since:string -> ?before:string -> ?search:string -> unit -> Page_contact_projection.t Lwt.t
val get_contact : contact_id:string -> Contact_dto.t Lwt.t
val get_contact_v_card : contact_id:string -> unit Lwt.t
val get_contacts : unit -> Contact_projection.t list Lwt.t
