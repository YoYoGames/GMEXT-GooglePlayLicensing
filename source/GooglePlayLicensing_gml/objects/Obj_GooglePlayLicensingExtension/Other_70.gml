
show_debug_message("async_load: " + json_encode(async_load))

if(async_load[?"type"] = "GooglePlayLicensingExtension")
{
	if(async_load[?"allowed"])
	{
		// Should allow user access.
		//room_goto(Room_Menu)
	}
	else
	{
		var reason = async_load[?"reason"];
		if(reason == GooglePlayLicensingExtension_RETRY)
		{
            // If the reason received from the policy is RETRY, it was probably
            // due to a loss of connection with the service, so we should give the
            // user a chance to retry. So show a dialog to retry.
				//GooglePlayLicensing_CheckLicensing()
		}
		else
		{
            // Otherwise, the user isn't licensed to use this app.
            // Your response should always inform the user that the application
            // isn't licensed, but your behavior at that point can vary. You might
            // provide the user a limited access version of your app or you can
            // take them to Google Play to purchase the app.
				//room_goto(Room_BANNED)
		}
	}
}
