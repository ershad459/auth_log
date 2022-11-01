import 'dart:io' show Platform;

const REFRESH_TOKEN_KEY = 'refresh_token';
const BACKEND_TOKEN_KEY = 'backend_token';
const GOOGLE_ISSUER = 'https://accounts.google.com';
const GOOGLE_CLIENT_ID_IOS = '<903286610657-9c8j6g298nd55oek3ht4e9vjphpr1ko4.apps.googleusercontent.com>';
const GOOGLE_REDIRECT_URI_IOS = 'com.googleusercontent.apps.<903286610657-9lc8c5mmnm2rdsq03l3g1t3bmd3bdctk.apps.googleusercontent.com>:/oauthredirect';
const GOOGLE_CLIENT_ID_ANDROID = '<903286610657-9lc8c5mmnm2rdsq03l3g1t3bmd3bdctk.apps.googleusercontent.com>';
const GOOGLE_REDIRECT_URI_ANDROID = 'com.googleusercontent.apps.<903286610657-9lc8c5mmnm2rdsq03l3g1t3bmd3bdctk.apps.googleusercontent.com>:/oauthredirect';

String clientID() {
  if(Platform.isAndroid) {
    return GOOGLE_CLIENT_ID_ANDROID;
  } else if (Platform.isIOS) {
    return GOOGLE_CLIENT_ID_IOS;
  }
  return '';
}

String redirectUrl() {
  if(Platform.isAndroid) {
    return GOOGLE_REDIRECT_URI_ANDROID;
  } else if (Platform.isIOS) {
    return GOOGLE_REDIRECT_URI_IOS;
  }
  return '';
}