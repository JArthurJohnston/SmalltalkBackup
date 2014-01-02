"Filed out from Dolphin Smalltalk X6"!

ExternalStructure subclass: #CEFSettings
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CEFSettings guid: (GUID fromString: '{D70ECC44-32CB-49E1-B591-8FC92AD40EF5}')!
CEFSettings comment: 'typedef struct _cef_settings_t {
     
     Size of this structure.
     
  size_t size;

     
     Set to true (1) to have the message loop run in a separate thread. If
     false (0) than the CefDoMessageLoopWork() function must be called from
     your application message loop.
     
  bool multi_threaded_message_loop;

     
     The location where cache data will be stored on disk. If empty an
     in-memory cache will be used. HTML5 databases such as localStorage will
     only persist across sessions if a cache path is specified.
     
  cef_string_t cache_path;

     
     Value that will be returned as the User-Agent HTTP header. If empty the
     default User-Agent string will be used.
     
  cef_string_t user_agent;

     
     Value that will be inserted as the product portion of the default
     User-Agent string. If empty the Chromium product version will be used. If
     |userAgent| is specified this value will be ignored.
     
  cef_string_t product_version;

     
     The locale string that will be passed to WebKit. If empty the default
     locale of "en-US" will be used. This value is ignored on Linux where locale
     is determined using environment variable parsing with the precedence order:
     LANGUAGE, LC_ALL, LC_MESSAGES and LANG.
     
  cef_string_t locale;

     
     List of fully qualified paths to plugins (including plugin name) that will
     be loaded in addition to any plugins found in the default search paths.
     
  cef_string_list_t extra_plugin_paths;

     
     The directory and file name to use for the debug log. If empty, the
     default name of "debug.log" will be used and the file will be written
     to the application directory.
     
  cef_string_t log_file;

     
     The log severity. Only messages of this severity level or higher will be
     logged.
     
  cef_log_severity_t log_severity;

     
     Enable DCHECK in release mode to ease debugging.
     
  bool release_dcheck_enabled;

     
     The graphics implementation that CEF will use for rendering GPU accelerated
     content like WebGL, accelerated layers and 3D CSS.
     
  cef_graphics_implementation_t graphics_implementation;

     
     Quota limit for localStorage data across all origins. Default size is 5MB.
     
  unsigned int local_storage_quota;

     
     Quota limit for sessionStorage data per namespace. Default size is 5MB.
     
  unsigned int session_storage_quota;

     
     Custom flags that will be used when initializing the V8 JavaScript engine.
     The consequences of using custom flags may not be well tested.
     
  cef_string_t javascript_flags;

#if defined(OS_WIN)
     
     Set to true (1) to use the system proxy resolver on Windows when
     "Automatically detect settings" is checked. This setting is disabled
     by default for performance reasons.
     
  bool auto_detect_proxy_settings_enabled;
#endif

     
     The fully qualified path for the resources directory. If this value is
     empty the chrome.pak and or devtools_resources.pak files must be located in
     the module directory on Windows Linux or the app bundle Resources directory
     on Mac OS X.
     
  cef_string_t resources_dir_path;

     
     The fully qualified path for the locales directory. If this value is empty
     the locales directory must be located in the module directory. This value
     is ignored on Mac OS X where pack files are always loaded from the app
     bundle Resources directory.
     
  cef_string_t locales_dir_path;

     
     Set to true (1) to disable loading of pack files for resources and locales.
     A resource bundle handler must be provided for the browser and renderer
     processes via CefApp::GetResourceBundleHandler() if loading of pack files
     is disabled.
     
  bool pack_loading_disabled;

     
     The number of stack trace frames to capture for uncaught exceptions.
     Specify a positive value to enable the CefV8ContextHandler::
     OnUncaughtException() callback. Specify 0 (default value) and
     OnUncaughtException() will not be called.
     
  int uncaught_exception_stack_size;

     
     By default CEF V8 references will be invalidated (the IsValid() method will
     return false) after the owning context has been released. This reduces the
     need for external record keeping and avoids crashes due to the use of V8
     references after the associated context has been released.
    
     CEF currently offers two context safety implementations with different
     performance characteristics. The default implementation (value of 0) uses a
     map of hash values and should provide better performance in situations with
     a small number contexts. The alternate implementation (value of 1) uses a
     hidden value attached to each context and should provide better performance
     in situations with a large number of contexts.
    
     If you need better performance in the creation of V8 references and you
     plan to manually track context lifespan you can disable context safety by
     specifying a value of -1.
     
  int context_safety_implementation;
} cef_settings_t;'!
!CEFSettings categoriesForClass!Unclassified! !
!CEFSettings class methodsFor!

defineFields
	"typedef struct _cef_settings_t {
		size_t size;
		bool multi_threaded_message_loop;
		cef_string_t cache_path;
		cef_string_t user_agent;
		cef_string_t product_version;
		cef_string_t locale;
		cef_string_list_t extra_plugin_paths;
		cef_string_t log_file;
		cef_log_severity_t log_severity;
		bool release_dcheck_enabled;
		cef_graphics_implementation_t graphics_implementation;
		unsigned int local_storage_quota;
		unsigned int session_storage_quota;
		cef_string_t javascript_flags;
		#if defined(OS_WIN)
			bool auto_detect_proxy_settings_enabled;
		#endif
		cef_string_t resources_dir_path;
		cef_string_t locales_dir_path;
		bool pack_loading_disabled;
		int uncaught_exception_stack_size;
		int context_safety_implementation;
	} cef_settings_t;"

	self
		beUncompiled;
		defineField: #size type: DWORDField new;
		defineField: #multi_threaded_message_loop type: BOOLField new;
		defineField: #cache_path type: (PointerField to: String);
		defineField: #user_agent type: (PointerField to: String);
		defineField: #product_version type: (PointerField to: String);
		defineField: #locale type: (PointerField to: String);
		defineField: #extra_plugin_paths type: (PointerField to: String);
		defineField: #log_file type: (PointerField to: String);
		defineField: #log_severity type: (PointerField to: String);
		defineField: #release_dcheck_enabled type: BOOLField new;
		defineField: #graphics_implementation type: (PointerField to: String);
		defineField: #local_storage_quota type: DWORDField new;
		defineField: #javascript_flags type: (PointerField to: String);
		defineField: #auto_detect_proxy_settings_enabled type: BOOLField new;
		defineField: #resources_dir_path type: (PointerField to: String);
		defineField: #locales_dir_path type: (PointerField to: String);
		defineField: #pack_loading_disabled type: BOOLField new;
		defineField: #uncaught_exception_stack_size type: (PointerField to: String);
		defineField: #context_safety_implementation type: (PointerField to: String)! !
!CEFSettings class categoriesFor: #defineFields!development!public! !

