(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    id: string option [@default None];
    user_id: string;
    inbox_id: string;
    webhook_id: string;
    webhook_url: string;
    message_id: string;
    redrive_id: string option [@default None];
    http_method: Enums.webhooktestrequest_method;
    webhook_event: Enums.eventname;
    response_status: int32 option [@default None];
    response_time_millis: int64;
    response_body_extract: string option [@default None];
    result_type: Enums.resulttype option [@default None];
    created_at: string;
    updated_at: string;
    seen: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (user_id : string) (inbox_id : string) (webhook_id : string) (webhook_url : string) (message_id : string) (http_method : Enums.webhooktestrequest_method) (webhook_event : Enums.eventname) (response_time_millis : int64) (created_at : string) (updated_at : string) : t = {
    id = None;
    user_id = user_id;
    inbox_id = inbox_id;
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
    seen = None;
}

