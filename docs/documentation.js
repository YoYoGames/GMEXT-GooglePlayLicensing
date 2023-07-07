// CONSTANTS

/**
 * @const LicensingErrorReason
 * @desc The reason for the licensing error, if there was any
 * @member GooglePlayLicensingExtension_RETRY There was probably a loss of connection with the service.
 * @const_end
 */

// FUNCTIONS

/**
 * @func GooglePlayLicensing_CheckLicensing
 * @desc This function triggers the validation process of the license that will result in a callback event being executed when the process is finished. If the resulting ${event.social} returns a not allowed flag with a `GooglePlayLicensingExtension_RETRY` (reason code), the developer should try to check the license again as this indicates there was a connection error.
 * 
 * [[Note: The asynchronous event will not be triggered if the **Manual Callback** option is disabled under [Extension Options](https://manual.yoyogames.com/The_Asset_Editors/Extensions.htm#extension_options).]]
 * 
 * @event social
 * @member {string} type The string `"GooglePlayLicensingExtension"`
 * @member {boolean} allowed Whether the user was allowed access
 * @member {constant.LicensingErrorReason} reason When the user isn't allowed, a constant describing the reason why
 * @event_end
 * 
 * @func_end
 */

/**
 * @module home
 * @title Google Play Licensing
 * @desc This is the Google Play Licensing extension.
 * 
 * @section Guides
 * @desc This section hosts the guides to get you up and running.
 * @reference page.extension_setup
 * @reference page.extension_options
 * @section_end
 * 
 * @section_func
 * @desc This new version of the extension will require developers to manually make the validation of the license using a provided function and also allows them to handle the response in a way they see fit.
 * @ref GooglePlayLicensing_CheckLicensing
 * @section_end
 * 
 * @module_end
 */