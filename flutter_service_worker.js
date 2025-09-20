'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "76c0a8c7fb71f15f47a360bbaa1f3307",
"assets/AssetManifest.bin.json": "74aaded45135e73059bc73e9e3888c5c",
"assets/AssetManifest.json": "60ef4e6f2f63b741d5e42457322943bf",
"assets/assets/books/cloque/chapters/iii_LA_CHAPELLE_PROVISOIRE.txt": "4580e557e5db46134a25ad7458013285",
"assets/assets/books/cloque/chapters/ii_LA_MAISON_DE_LA_RUE_DE_LA_BOURDE.txt": "f62b293f166bc73681ccb7699bb8c74d",
"assets/assets/books/cloque/chapters/iv_GENEVI%25C3%2588VE.txt": "482988aa07cbf106f13a50d1a7ddb7a4",
"assets/assets/books/cloque/chapters/ix_EX%25C3%2589CUTION.txt": "fc4927e8996f7475d6594088d8f9f396",
"assets/assets/books/cloque/chapters/I_UNE_ENTREVUE_AVEC_CHATEAUBRIAND.txt": "73de8a9b39d54f3576459d7b74eb724b",
"assets/assets/books/cloque/chapters/viii_EN_VACANCES.txt": "0ef65da68d254727a58020b6dab237dd",
"assets/assets/books/cloque/chapters/vii_AUTOUR_D%25E2%2580%2599UNE_B%25C3%2589N%25C3%2589DICTION_DU_SAINT_SACREMENT.txt": "c66c2583bb7745b77b90b9932a4a88b5",
"assets/assets/books/cloque/chapters/vi_LA_PELET.txt": "7e93e21a172e72b3a2bfac303d6c95d2",
"assets/assets/books/cloque/chapters/v_LA_LIBRAIRIE_PIGEONNEAU-EXELCIS.txt": "2b7b576318f2b35b2d2d6d2a08501e06",
"assets/assets/books/cloque/chapters/xiii_LES_DEUX_BLESS%25C3%2589ES.txt": "72c4cba8e9ae31e396ea62efba9084ff",
"assets/assets/books/cloque/chapters/xii_NIORT-CAEN.txt": "9add1cb3ab13ac5d64dc110a76da9678",
"assets/assets/books/cloque/chapters/xiv_EXTR%25C3%2589MIT%25C3%2589S.txt": "c1ca9b408625f960933e229ccfcfdb64",
"assets/assets/books/cloque/chapters/xi_R%25C3%2589UNION_DE_%25C2%25AB_Z%25C3%2589LATRICES_%25C2%25BB.txt": "c8925ef322e7b576ed3df6dd9a3a5d8c",
"assets/assets/books/cloque/chapters/xvii_LA_FIN.txt": "e56d575145f47f392de699b406752019",
"assets/assets/books/cloque/chapters/xvi_LES_COMBINAISONS_DE_LA_PROVIDENCE.txt": "a0e8f4581d606bfe236dd15fef813cf8",
"assets/assets/books/cloque/chapters/xv_LE_PETIT_BONHEUR.txt": "450fff7433db469aa8715db1bb9de144",
"assets/assets/books/cloque/chapters/x_MARCHE_LENTE.txt": "bb9f5f2e8c7dd13cfca0852a7b4fab7b",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/NOTICES": "8c17f82e02dc1f8abdcce55010891b6f",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "27361387bc24144b46a745f1afe92b50",
"canvaskit/canvaskit.wasm": "a37f2b0af4995714de856e21e882325c",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "f7c5e5502d577306fb6d530b1864ff86",
"canvaskit/chromium/canvaskit.wasm": "c054c2c892172308ca5a0bd1d7a7754b",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "9fe690d47b904d72c7d020bd303adf16",
"canvaskit/skwasm.wasm": "1c93738510f202d9ff44d36a4760126b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "c449c31b1ee7073e167fdfcf2ff002d2",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "fa5ddd31a943ff1baf3492cdc74ca1b1",
"/": "fa5ddd31a943ff1baf3492cdc74ca1b1",
"main.dart.js": "a0a07c6902b873cd044f4b6a65cd1456",
"manifest.json": "cb8b6280b59af92bff109e770cf1f89d",
"version.json": "ff8110ed26e10b837b8f3e514321a3ae"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
