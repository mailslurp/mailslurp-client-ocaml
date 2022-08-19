(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Webhook_result_dto.t : Result of a webhook notification
 *)

type t = {
    id: string option [@default None];
    user_id: string;
    inbox_id: string option [@default None];
    webhook_id: string;
    webhook_url: string;
    message_id: string;
    redrive_id: string option [@default None];
    http_method: Enums.webhookdto_method;
    webhook_event: Enums.eventname;
    response_status: int32 option [@default None];
    response_time_millis: int64;
    response_body_extract: string option [@default None];
    result_type: Enums.resulttype option [@default None];
    created_at: string;
    updated_at: string;
    seen: bool;
} [@@deriving yojson { strict = false }, show ];;

(** Result of a webhook notification *)
let create (user_id : string) (webhook_id : string) (webhook_url : string) (message_id : string) (http_method : Enums.webhookdto_method) (webhook_event : Enums.eventname) (response_time_millis : int64) (created_at : string) (updated_at : string) (seen : bool) : t = {
    id = None;
    user_id = user_id;
    inbox_id = None;
    webhook_id = webhook_id;
    webhook_url = webhook_url;
    message_id = message_id;
    redrive_id = None;
    http_method = http_method;
    webhook_event = webhook_event;
    response_status = None;
    response_time_millis = response_time_millis;
    response_body_extract = None;
    result_type = None;
    created_at = created_at;
    updated_at = updated_at;
    seen = seen;
}

