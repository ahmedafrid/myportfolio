'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "9b818ca9511483c901bed1545384376c",
"index.html": "fc25937faf876f201c6cff74046f5ef5",
"/": "fc25937faf876f201c6cff74046f5ef5",
"main.dart.js": "6ed221221dac0c336079198a62191a85",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "2704101cb06ce66e2000356a312be25c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"assets/AssetManifest.json": "f432697fc50ba09f8f3d9f5cbd81fc4b",
"assets/NOTICES": "18be432c9f71d324073fae514ff593d3",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "83fd63f33f700411bb9513ab20ccb357",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "a5d7457fda15b7622c14f432ba63039a",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "22a762f3b6332b1e6653bd94c6610a69",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "6eee27705b4877d7d5b32a3c95c38af6",
"assets/fonts/MaterialIcons-Regular.otf": "6454ffbe1ddceeeff0f7494f174ae337",
"assets/assets/audios/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/rive_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/Group_4182.webp": "d81b5ab6bb022a9098ff2ea94e7e7a7d",
"assets/assets/images/elementfooter-min.png": "7812dd9026e6563495dfb6a768b95168",
"assets/assets/images/xcode.png": "141f357cc7c746d00a58ec83cd6207c3",
"assets/assets/images/logo-css-3-2048-min.png": "6a2208d38b81f26eb5d6f40f4b0ec77e",
"assets/assets/images/download.png": "ace28b0b8d3eb03c0e922701d88fff1f",
"assets/assets/images/tML8CA1M_400x400.jpg": "01db2631bb67c83cc99900c210675b98",
"assets/assets/images/65813-google-computer-icons-github-firebase-angularjs-messaging-min.png": "b40d81e09a3cfd4947d561a95a8485e5",
"assets/assets/images/AECC_Logo_30-6-2022-removebg-preview.png": "e41e6157d071f388d5aa7441ae8af038",
"assets/assets/images/pngimg.com_-_wordpress_PNG26-min.png": "a816b54c72befeed24762d45f0f9dc90",
"assets/assets/images/React-Logo-min.png": "23925fca4bde533e0c9763c995efb84a",
"assets/assets/images/urbandrive2.png": "722731d93d6f949668314b30390b4703",
"assets/assets/images/flutter_logo_470e9f7491-min.png": "d4a7c8dcf9b099452c6a57bbe19163ac",
"assets/assets/images/javascript-logo-transparent-logo-javascript-images-3.png": "94ae2dcd4fa410811cab4e1fbb403340",
"assets/assets/images/Line_5.png": "00dedcb3d05c7e930f6bd1d42dcdc66b",
"assets/assets/images/urbandrive1.png": "aa33348894d81ed8b6191bc78d1f9177",
"assets/assets/images/Line_4.png": "bba7217deb0d18a7c0af39e25c62a1c4",
"assets/assets/images/bootstrap.png": "3eaaa2b1a6e42c3505ee0157e52ddae2",
"assets/assets/images/android_studio.png": "f8219531e2f91824393ca0a1a92340b7",
"assets/assets/images/being-mangaloreaan-new-logo.jpg": "91c07db06ab58a44f5a35b78f7e8fd9d",
"assets/assets/images/Group_4173.webp": "bbf30fb70517cae283ec267c6c0c10dc",
"assets/assets/images/fireIcon_(1).png": "06bf47f8aaa213b1e13863e8c7623fdb",
"assets/assets/images/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/Dart_logo.png": "3b00897ca7235a88f59e8d0b0e24506a",
"assets/assets/images/Screenshot__75_-removebg-preview.png": "bbe73afb00c710409b1e9f8b3b9ea8e8",
"assets/assets/images/Ahmed_Afrid_-_FlutterFlow_Expert_Wrap_2023.png": "46006b7ee5ea4606f7fad78d3215f5be",
"assets/assets/images/styleHub-Logo.png": "d86f77fae4e9658c1160057388fa0d96",
"assets/assets/images/The_Visionnaire_Academy__2_-removebg-preview.png": "4d8434625ca499b97cffed823f675458",
"assets/assets/images/Screenshot_2023-12-31_at_9.07.08_PM.png": "fe244d11b8005f42ba424aa5681be8d3",
"assets/assets/images/Group_4181.webp": "522109384965e975217f4c2da55064a2",
"assets/assets/images/732212-min.png": "a9a80bcd035d3c49ed25b38abc3415f3",
"assets/assets/images/bg-element1.png": "272c8c18bfe967888b9eba7303656c37",
"assets/assets/images/3b_s-logo-removebg-preview.png": "58336ab0fee119fb7b99a2d438498bb9",
"assets/assets/lottie_animations/Animation_-_1704623834575.json": "0fdd106fd446d1b79d581480a81810e1",
"assets/assets/lottie_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/videos/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/pdfs/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
