Ad blocking
-----------

* Download/install the latest NetGuard version [from GitHub](https://github.com/M66B/NetGuard/releases)
* Enable the setting '*Filter traffic*' (always enabled on Android 5.0 or earlier)
* Enable the setting '*Block domain names*' (default enabled)
* Import or download [a hosts file](https://en.wikipedia.org/wiki/Hosts_(file)) using the appropriate option
* Disable browser compression (Chrome: three dot menu > Settings > Data Saver > Off)
* Wait 10 minutes to let the Android DNS cache time out
* Test if it works by opening [this page](http://www.adblocker.me/test)
* Enjoy ad blocking, but don't forget to support application developers

Note that applications, like the browser, may cache data, so you might need to clear caches.

Which hosts (domains) will be blocked depends on the hosts file being used.

NetGuard provides the [StevenBlack hosts file](https://github.com/StevenBlack/hosts) download with the following additions:

* reports.crashlytics.com
* settings.crashlytics.com
* e.crashlytics.com

See [here](https://github.com/M66B/NetGuard/issues/277) for alternative hosts files.

NetGuard does not concatenate hosts files, so you will have to use a source which does this for you or do it yourself.

You can check the number of hosts (domains) imported by pulling the NetGuard notification down using two fingers.

**Note that ad blocking is not available when NetGuard was installed from the Play store!**
