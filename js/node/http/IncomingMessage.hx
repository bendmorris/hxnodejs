package js.node.http;

import haxe.DynamicAccess;
import js.node.stream.Readable;
import js.node.net.Socket;

/**
	An `IncomingMessage` object is created by `Server` or `ClientRequest`
	and passed as the first argument to the 'request' and 'response' event respectively.
	It may be used to access response status, headers and data.
**/
extern class IncomingMessage extends Readable {
	/**
		In case of server request, the HTTP version sent by the client.
		In the case of client response, the HTTP version of the connected-to server.
		Probably either '1.1' or '1.0'.
	**/
	var httpVersion(default,null):String;

	/**
		HTTP Version first integer
	**/
	var httpVersionMajor(default,null):Int;

	/**
		HTTP Version second integer
	**/
	var httpVersionMinor(default,null):Int;

	/**
		The request/response headers object.
		Read only map of header names and values. Header names are lower-cased
	**/
	var headers(default,null):DynamicAccess<String>;

	/**
		The request/response trailers object.
		Only populated after the 'end' event.
	**/
	var trailers(default,null):DynamicAccess<String>;

	/**
		Calls `setTimeout` on the `socket` object.
	**/
	function setTimeout(msecs:Int, ?callback:Void->Void):Void;

	/**
		Only valid for request obtained from `Server`.

		The request method as a string.
		Read only. Example: 'GET', 'DELETE'.
	**/
	var method(default,null):Method;

	/**
		Only valid for request obtained from `Server`.

		Request URL string. This contains only the URL that is present in the actual HTTP request.
	**/
	var url(default,null):String;

	/**
		Only valid for response obtained from `ClientRequest`.
		The 3-digit HTTP response status code. E.G. 404.
	**/
	var statusCode(default,null):Int;

	/**
		The `Socket` object associated with the connection.
	**/
	var socket(default,null):Socket;

	/**
		Alias for `socket`.
	**/
	var connection(default,null):Socket;
}
