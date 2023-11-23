#include <stdio.h>
#include <curl/curl.h>

static size_t writeData (void *ptr, size_t size, size_t nmemb, void *stream)
{
    size_t written = fwrite (ptr, size, nmemb, (FILE *)stream);

    return written;
}


main ()
{
    CURL *curlHandle;
    static const char *webPageURL = "https://www.moveelectric.com/";
    //static const char *webPageURL2 = "https://www.rideapart.com/";

    FILE *pagefile;

    curl_global_init (CURL_GLOBAL_ALL);
    curlHandle = curl_easy_init ();
    curl_easy_setopt (curlHandle, CURLOPT_URL, webPageURL);
    //curl_easy_setopt (curlHandle, CURLOPT_URL, webPageURL2);
    curl_easy_setopt (curlHandle, CURLOPT_VERBOSE, 2L);
    curl_easy_setopt (curlHandle, CURLOPT_NOPROGRESS, 2L);
    curl_easy_setopt (curlHandle, CURLOPT_WRITEFUNCTION, writeData);

    pagefile = fopen ("output.txt", "wb");

    if (pagefile)
    {
        curl_easy_setopt (curlHandle, CURLOPT_WRITEDATA, pagefile);
        curl_easy_perform (curlHandle);

        fclose (pagefile);
    }

    curl_easy_cleanup (curlHandle);
    curl_global_cleanup ();

    return 0;
}