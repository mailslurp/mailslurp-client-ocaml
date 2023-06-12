(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    id: string;
    user_id: string;
    inbox_id: string;
    job_id: string;
    group_id: string;
    trigger_id: string;
    status: Enums.scheduledjobdto_status;
    send_at_timestamp: string;
    created_at: string;
    updated_at: string;
} [@@deriving yojson { strict = false }, show ];;

let create (id : string) (user_id : string) (inbox_id : string) (job_id : string) (group_id : string) (trigger_id : string) (status : Enums.scheduledjobdto_status) (send_at_timestamp : string) (created_at : string) (updated_at : string) : t = {
    id = id;
    user_id = user_id;
    inbox_id = inbox_id;
    job_id = job_id;
    group_id = group_id;
    trigger_id = trigger_id;
    status = status;
    send_at_timestamp = send_at_timestamp;
    created_at = created_at;
    updated_at = updated_at;
}

