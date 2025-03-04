(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let delete_all_attachments () =
    let open Lwt in
    let uri = Request.build_uri "/attachments" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let delete_attachment ~attachment_id =
    let open Lwt in
    let uri = Request.build_uri "/attachments/{attachmentId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "attachmentId" (fun x -> x) attachment_id in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let download_attachment_as_base64_encoded ~attachment_id =
    let open Lwt in
    let uri = Request.build_uri "/attachments/{attachmentId}/base64" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "attachmentId" (fun x -> x) attachment_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Download_attachment_dto.of_yojson) resp body

let download_attachment_as_bytes ~attachment_id =
    let open Lwt in
    let uri = Request.build_uri "/attachments/{attachmentId}/bytes" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "attachmentId" (fun x -> x) attachment_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.to_string) resp body

let get_attachment ~attachment_id =
    let open Lwt in
    let uri = Request.build_uri "/attachments/{attachmentId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "attachmentId" (fun x -> x) attachment_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Attachment_entity_dto.of_yojson) resp body

let get_attachment_info ~attachment_id =
    let open Lwt in
    let uri = Request.build_uri "/attachments/{attachmentId}/metadata" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "attachmentId" (fun x -> x) attachment_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Attachment_meta_data.of_yojson) resp body

let get_attachments ?(page = 0l) ?(size = 20l) ?(sort = `ASC) ?file_name_filter ?since ?before ?inbox_id () =
    let open Lwt in
    let uri = Request.build_uri "/attachments" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    let uri = Request.maybe_add_query_param uri "fileNameFilter" (fun x -> x) file_name_filter in
    let uri = Request.maybe_add_query_param uri "since" (fun x -> x) since in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    let uri = Request.maybe_add_query_param uri "inboxId"  inbox_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_attachment_entity.of_yojson) resp body

let upload_attachment ~upload_attachment_options_t =
    let open Lwt in
    let uri = Request.build_uri "/attachments" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let body = Request.write_as_json_body Upload_attachment_options.to_yojson upload_attachment_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as_list_of (JsonSupport.to_string) resp body

let upload_attachment_bytes ?content_type ?content_type2 ?content_id ?filename ?file_size ?filename2 () =
    let open Lwt in
    let uri = Request.build_uri "/attachments/bytes" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let headers = Request.maybe_add_header headers "contentType" (fun x -> x) content_type in
    let headers = Request.maybe_add_header headers "filename" (fun x -> x) filename2 in
    let uri = Request.maybe_add_query_param uri "contentType" (fun x -> x) content_type2 in
    let uri = Request.maybe_add_query_param uri "contentId" (fun x -> x) content_id in
    let uri = Request.maybe_add_query_param uri "filename" (fun x -> x) filename in
    let uri = Request.maybe_add_query_param uri "fileSize" Int64.to_string file_size in
    Cohttp_lwt_unix.Client.call `POST uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as_list_of (JsonSupport.to_string) resp body

let upload_multipart_form ?content_id ?content_type ?filename ?content_type_header ?x_filename ?x_filename_raw ?x_filesize ~inline_object_t () =
    let open Lwt in
    let uri = Request.build_uri "/attachments/multipart" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "contentId" (fun x -> x) content_id in
    let uri = Request.maybe_add_query_param uri "contentType" (fun x -> x) content_type in
    let uri = Request.maybe_add_query_param uri "filename" (fun x -> x) filename in
    let uri = Request.maybe_add_query_param uri "contentTypeHeader" (fun x -> x) content_type_header in
    let uri = Request.maybe_add_query_param uri "x-filename" (fun x -> x) x_filename in
    let uri = Request.maybe_add_query_param uri "x-filename-raw" (fun x -> x) x_filename_raw in
    let uri = Request.maybe_add_query_param uri "x-filesize" Int64.to_string x_filesize in
    let body = Request.write_as_json_body Inline_object.to_yojson inline_object_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as_list_of (JsonSupport.to_string) resp body

