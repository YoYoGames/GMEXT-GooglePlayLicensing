
package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.RunnerActivity;
import com.yoyogames.runner.RunnerJNILib;

import android.util.Log;
import android.os.Handler;

import com.google.android.vending.licensing.LicenseChecker;
import com.google.android.vending.licensing.LicenseCheckerCallback;
import com.google.android.vending.licensing.Obfuscator;
import com.google.android.vending.licensing.ServerManagedPolicy;
import com.google.android.vending.licensing.AESObfuscator;
import com.google.android.vending.licensing.Policy;

import android.net.Uri;
import android.provider.Settings.Secure;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;

public class GooglePlayLicensingAsExt implements LicenseCheckerCallback
{
	private static final int EVENT_OTHER_SOCIAL = 70;
	
    private LicenseChecker mChecker;
	GooglePlayLicensingAsExt me = this;
	
    public void GooglePlayLicensing_CheckLicensing() 
	{
	    if (RunnerActivity.CurrentActivity.checkCallingOrSelfPermission("com.android.vending.CHECK_LICENSE") != PackageManager.PERMISSION_GRANTED) 
		{
			Log.i("yoyo", "@@@@@@ Google Licensing permission not set" );
			return;
		}
		
		String deviceId = Secure.getString(RunnerActivity.CurrentActivity.getContentResolver(), Secure.ANDROID_ID);
		ServerManagedPolicy policy = new ServerManagedPolicy( RunnerActivity.CurrentActivity, new AESObfuscator( RunnerActivity.CurrentActivity.SALT, RunnerActivity.CurrentActivity.getPackageName(), deviceId));
		
		if( RunnerActivity.BASE64_PUBLIC_KEY == null || RunnerActivity.BASE64_PUBLIC_KEY == "")
		{
			Log.i("yoyo", "Invalid license key found");
		}
		
		try 
		{
			mChecker = new LicenseChecker( RunnerActivity.CurrentActivity, policy, RunnerActivity.BASE64_PUBLIC_KEY);
			mChecker.checkAccess(this);
		} 
		catch (IllegalArgumentException _ex)
		{
			Log.i("yoyo", "exception while doing license check! invalid license key????" + _ex);
		}
	}
	
	public void allow(int reason) 
	{
		if (RunnerActivity.CurrentActivity.isFinishing())
			return;
		
		Log.i("yoyo", "!!!!##### Successful license check #####!!!!!! ");
		
		if(RunnerJNILib.extOptGetReal("GooglePlayLicensingExtension", "manualCallback") >= 0.5)
		{
			int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
			RunnerJNILib.DsMapAddString(dsMapIndex, "type", "GooglePlayLicensingExtension");
			RunnerJNILib.DsMapAddDouble(dsMapIndex, "allowed", 1.0);
			RunnerJNILib.DsMapAddDouble(dsMapIndex, "reason", (double)reason);
			RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
		}
	}

	public void dontAllow(int reason) 
	{
		if (RunnerActivity.CurrentActivity.isFinishing())
			return;
		
		if(RunnerJNILib.extOptGetReal("GooglePlayLicensingExtension", "manualCallback") >= 0.5)
		{
			int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
			RunnerJNILib.DsMapAddString(dsMapIndex, "type", "GooglePlayLicensingExtension");
			RunnerJNILib.DsMapAddDouble(dsMapIndex, "allowed", 0.0);
			RunnerJNILib.DsMapAddDouble(dsMapIndex, "reason", (double)reason);
			RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
			return;
		}
		
		Log.i("yoyo", "!!!!##### failed license check reason=" + reason + " #####!!!!!! ");
		
		if (reason == Policy.RETRY) 
		{
			displayResult( RunnerActivity.CurrentActivity.getString(R.string.yyg_gpl_ext_retry_needed) );
		}
		else 
		{
			displayResult( RunnerActivity.CurrentActivity.getString(R.string.yyg_gpl_ext_license_fail) );
		}
	}
   
	public void applicationError( int _error ) 
	{
		if (RunnerActivity.CurrentActivity.isFinishing())
			return;

		Log.i("yoyo", "License Error - " + _error);
		
		dontAllow(0);
	}
    
    public void displayResult( final String result ) 
    {
    	RunnerActivity.ViewHandler.post( new Runnable() 
		{
    		public void run() {
    			if (result == null) 
				{
					mChecker.checkAccess(me);
    			}
    			else 
				{
					AlertDialog.Builder builder = new AlertDialog.Builder(RunnerActivity.CurrentActivity);
					if (!RunnerJNILib.isNetworkConnected()) {
						builder.setMessage( RunnerActivity.CurrentActivity.getString(R.string.yyg_gpl_ext_check_network ))
							.setCancelable(false)
							.setNegativeButton( RunnerActivity.CurrentActivity.getString(R.string.yyg_gpl_ext_retry), new DialogInterface.OnClickListener() {
								public void onClick( DialogInterface dialog, int id ) {
		        					mChecker.checkAccess(me);
		        					dialog.dismiss();
								}});
					}
					else { 
						builder.setMessage( result )
							.setCancelable(false)
							.setNegativeButton(  RunnerActivity.CurrentActivity.getString(R.string.yyg_gpl_ext_retry), new DialogInterface.OnClickListener() {
								public void onClick( DialogInterface dialog, int id ) {
		        					mChecker.checkAccess(me);
		        					dialog.dismiss();
								}})
							.setPositiveButton( RunnerActivity.CurrentActivity.getString(R.string.yyg_gpl_ext_buy), new DialogInterface.OnClickListener() {
								public void onClick( DialogInterface dialog, int id ) {
									 Intent myIntent = new Intent(Intent.ACTION_VIEW, Uri.parse( "market://details?id="+RunnerActivity.CurrentActivity.getPackageName() ));
									 RunnerActivity.CurrentActivity.startActivity(myIntent);
									 // RunnerJNILib.ExitApplication();//This create a crash :)
								}
 							});
 					}
	 				
					AlertDialog alert  = builder.create();
    				Log.i("yoyo", "License display - "+ result );
	    			
        			alert.show();
        		}
    		}
    	});
    }
}

