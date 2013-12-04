"Filed out from Dolphin Smalltalk X6"!

ExternalLibrary subclass: #LibCEF
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
LibCEF guid: (GUID fromString: '{32C5B859-9F9E-454F-B494-D2FBCA5AE102}')!
LibCEF comment: ''!
!LibCEF categoriesForClass!Unclassified! !
!LibCEF methodsFor!

createURLUsing: parts and: urlString 
	"Creates a URL from the specified |parts|, which must contain a non-NULL spec
// or a non-NULL host and path (at a minimum), but not both. Returns false (0)
// if |parts| isn't initialized as described.
///
CEF_EXPORT int cef_create_url(
	const struct _cef_urlparts_t* parts,
	cef_string_t* url);"

	<stdcall: byte cefCreateParts lpvoid lpstr>
	^self invalidCall!

currentlyOnId: threadID 
	" CEF maintains multiple internal threads that are used for handling different
  types of tasks. The UI thread creates the browser window and is used for all
  interaction with the WebKit rendering engine and V8 JavaScript engine (The UI
  thread will be the same as the main application thread if cef_initialize() is
  called with a CefSettings.multi_threaded_message_loop value of false (0).)
  The IO thread is used for handling schema and network requests. The FILE
  thread is used for the application cache and other miscellaneous activities.
  This function will return true (1) if called on the specified thread.
 
CEF_EXPORT int cef_currently_on(cef_thread_id_t threadId);"

	<stdcall: byte cefCurrentlyOn lpvoid>
	^self invalidCall!

doMessageLoopWork
	"// Perform a single iteration of CEF message loop processing. This function is
// used to integrate the CEF message loop into an existing application message
// loop. Care must be taken to balance performance against excessive CPU usage.
// This function should only be called on the main application thread and only
// if cef_initialize() is called with a CefSettings.multi_threaded_message_loop
// value of false (0). This function will not block.

void cef_do_message_loop_work();
"

	<stdcall: void cefDoMessageLoopWork>
	^self invalidCall!

initializeCEFSetting: settings application: application 
	"int cef_initialize(
		const struct _cef_settings_t* settings,
		struct _cef_app_t* application);"

	<stdcall: dword cefInitialize lpvoid lpvoid>
	^self invalidCall!

parseUrl: urlString struct: parts 
	"///
// Parse the specified |url| into its component parts. Returns false (0) if the
// URL is NULL or invalid.

CEF_EXPORT int cef_parse_url(
	const cef_string_t* url,
	struct _cef_urlparts_t* parts);"

	<stdcall: byte cefParseUrl lpstr lpvoid>
	^self invalidCall!

postDelayedTaskOnThread: threadID task: lpstrTask delay: sdwordDelay 
	"Post a task for delayed execution on the specified thread. This function may
// be called on any thread.
///
CEF_EXPORT int cef_post_delayed_task(cef_thread_id_t threadId,
    struct _cef_task_t* task, long delay_ms);"

	<stdcall: byte cefPostTask byte lpstr sdword>
	^self invalidCall!

postTaskOnThread: threadID task: lpstrTask 
	" Post a task for execution on the specified thread. This function may be
 called on any thread.

CEF_EXPORT int cef_post_task(cef_thread_id_t threadId,
    struct _cef_task_t* task);"

	<stdcall: byte cefPostTask byte lpstr>
	^self invalidCall!

quitMessageLoop
	"// Quit the CEF message loop that was started by calling cef_run_message_loop().
// This function should only be called on the main application thread and only
// if cef_run_message_loop() was used.
///
CEF_EXPORT void cef_quit_message_loop();"

	<stdcall: void cefQuitMessageLoop>
	^self invalidCall!

registerExtensionName: lpstrExtName code: lpstrCode struct: handler 
	"Register a new V8 extension with the specified JavaScript extension code and
// handler. Functions implemented by the handler are prototyped using the
// keyword 'native'. The calling of a native function is restricted to the scope
// in which the prototype of the native function is defined. This function may
// be called on any thread.

CEF_EXPORT int cef_register_extension(
	const cef_string_t* extension_name,
	const cef_string_t* javascript_code, 
	struct _cef_v8handler_t* handler);"

	<stdcall: byte cefRegisterExtension lpstr lpstr lpvoid>
	^self invalidCall!

runMessageLoop
	"///
// Run the CEF message loop. Use this function instead of an application-
// provided message loop to get the best balance between performance and CPU
// usage. This function should only be called on the main application thread and
// only if cef_initialize() is called with a
// CefSettings.multi_threaded_message_loop value of false (0). This function
// will block until a quit message is received by the system.
///

CEF_EXPORT void cef_run_message_loop();"

	<stdcall: void cefRunMessageLoop>
	^self invalidCall!

shutdownCEF
	"void cef_shutdown();"

	<stdcall: void cefShutdown>
	^self invalidCall! !
!LibCEF categoriesFor: #createURLUsing:and:!operations!public! !
!LibCEF categoriesFor: #currentlyOnId:!operations!public! !
!LibCEF categoriesFor: #doMessageLoopWork!operations!public! !
!LibCEF categoriesFor: #initializeCEFSetting:application:!operations!public! !
!LibCEF categoriesFor: #parseUrl:struct:!operations!public! !
!LibCEF categoriesFor: #postDelayedTaskOnThread:task:delay:!operations!public! !
!LibCEF categoriesFor: #postTaskOnThread:task:!operations!public! !
!LibCEF categoriesFor: #quitMessageLoop!operations!public! !
!LibCEF categoriesFor: #registerExtensionName:code:struct:!operations!public! !
!LibCEF categoriesFor: #runMessageLoop!operations!public! !
!LibCEF categoriesFor: #shutdownCEF!operations!public! !

!LibCEF class methodsFor!

fileName
	^'libcef'! !
!LibCEF class categoriesFor: #fileName!public! !

