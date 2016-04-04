# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /home/marcel/Android/Sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

#Line numbers
-renamesourcefileattribute SourceFile
-keepattributes SourceFile,LineNumberTable

#NetGuard
-keepnames class eu.faircode.adblocker.** { *; }

#JNI
-keepclasseswithmembernames class * {
    native <methods>;
}

#JNI callbacks
-keep class eu.faircode.adblocker.Allowed { *; }
-keep class eu.faircode.adblocker.Packet { *; }
-keep class eu.faircode.adblocker.ResourceRecord { *; }
-keep class eu.faircode.adblocker.Usage { *; }
-keep class eu.faircode.adblocker.ServiceSinkhole {
    void nativeExit(java.lang.String);
    void nativeError(int, java.lang.String);
    void logPacket(eu.faircode.adblocker.Packet);
    void dnsResolved(eu.faircode.adblocker.ResourceRecord);
    boolean isDomainBlocked(java.lang.String);
    eu.faircode.adblocker.Allowed isAddressAllowed(eu.faircode.adblocker.Packet);
    void accountUsage(eu.faircode.adblocker.Usage);
}

#Support library
-keep class android.support.v7.widget.** { *; }
-dontwarn android.support.v4.**

#Picasso
-dontwarn com.squareup.okhttp.**
