(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

val export_entities : export_type:Enums.exporttype -> api_key:string -> output_format:Enums.outputformat -> ?filter:string -> ?list_separator_token:string -> ?exclude_previously_exported:bool -> ?created_earliest_time:string -> ?created_oldest_time:string -> unit -> string Lwt.t
val get_export_link : export_type:Enums.exporttype -> export_options_t:Export_options.t -> ?api_key:string -> unit -> Export_link.t Lwt.t
