'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"assets/FontManifest.json": "df961bb733a39cc5099372c185fb5b9b",
"assets/AssetManifest.bin.json": "4d22104718c845d623d067e8593c0ccc",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/assets/web/2.webp": "8f623e99c26d5f644e6063674b7a3c9b",
"assets/assets/web/3.webp": "91d71e822829a28a8831d0d4a6a86775",
"assets/assets/web/gallery.js": "82abc876c8edcf0c581c52e0348fbf52",
"assets/assets/web/gallery.html": "7b2cce64c65a153f5bfdb4802f638482",
"assets/assets/web/1.webp": "d910cbfb85f8f8a13e7f94b4666bfc13",
"assets/assets/web/gallery.css": "5b2d120ee4df2d8d0650affd19ff629f",
"assets/assets/fonts/navbar_font.otf": "c8e1ea897e627db556eb0cfc9c4d827c",
"assets/assets/fonts/primary_font.otf": "bc338d9769740ef2b5f894d1d454cf7a",
"assets/assets/fonts/post_font.ttf": "ca8446d58eb8315c7a458caf81c6ed86",
"assets/assets/l10n/en.json": "4a2aab32323caf2a8e5901c3fc074c23",
"assets/assets/images/jpg/farazpardazan.jpg": "3c892a5ce6b322cb2beed4c58dfe8822",
"assets/assets/images/jpg/innos.jpg": "5b67affbe7ea0d4cc4de865e048f640a",
"assets/assets/images/jpg/profile.jpg": "373707ec749ed986dd5d674f1c85e88f",
"assets/assets/images/jpg/raman.jpg": "1ece0c9010698e75bf6cf51506e08df4",
"assets/assets/images/jpg/default.jpg": "da01d33f0a262f8a569ae5ad789b6304",
"assets/assets/images/projects/poshtiban_yar/2.webp": "2a14320c6796430f16754b9bee72f15d",
"assets/assets/images/projects/poshtiban_yar/3.webp": "f4f158fd9782e7a4f098deb31ae849f0",
"assets/assets/images/projects/poshtiban_yar/4.webp": "9bd1eed9a2e90de019bcac954166c1ed",
"assets/assets/images/projects/poshtiban_yar/5.webp": "63c7d2a893be09da7e51f3578121ad23",
"assets/assets/images/projects/poshtiban_yar/1.webp": "fd2428e296996a12d340a2d57e8bd475",
"assets/assets/images/projects/poshtiban_yar/6.webp": "d41c1e6ce70668867850c97d255275cc",
"assets/assets/images/projects/covers/clusterix_livechat.png": "b5838de032cc870d3c7f8a3724f8b70f",
"assets/assets/images/projects/covers/time_tracker_cover.webp": "06d7994a77f2c8f44b4c49fa7e7fb1b9",
"assets/assets/images/projects/covers/kidora.webp": "1d674b395293afbd05364aec1a7b096d",
"assets/assets/images/projects/covers/unicom.webp": "f5ec88a5e1cd7acd562ec50edb504a43",
"assets/assets/images/projects/covers/clusterix_time_tracker.png": "5984146f74516030b47a2fb0ed4d2504",
"assets/assets/images/projects/covers/clusterix_email.webp": "a7152f3ebf8a87936ce69862505897b5",
"assets/assets/images/projects/covers/adv_summery.webp": "d4c130c070f15ae119f9c441ef4c5c14",
"assets/assets/images/projects/covers/clusterix_livechat.webp": "4cc0d01733753f1cc47032014f852ea6",
"assets/assets/images/projects/covers/polaris.webp": "fa1e1cee397b620f36aa3511f2850aa3",
"assets/assets/images/projects/covers/wallito.webp": "f330ba53f230e7dcb2c8d4e10c866443",
"assets/assets/images/projects/covers/put.webp": "749f57fa48fb0d5b593055174ec32901",
"assets/assets/images/projects/covers/poshtiban_yar.webp": "255a4b063a6168d4d3efd7bc9f6ad9fa",
"assets/assets/images/projects/covers/clusterix_time_tracker.webp": "06d7994a77f2c8f44b4c49fa7e7fb1b9",
"assets/assets/images/projects/covers/fanoos.webp": "889cbbf53b079da075856cf79f3d8005",
"assets/assets/images/projects/covers/damapa.webp": "5e922d99e5dbd066d13cad5b847de59f",
"assets/assets/images/projects/fanoos/2.webp": "ddeed8ade714e53f0bb7cd16acfd9942",
"assets/assets/images/projects/fanoos/3.webp": "c7ffa99d023e3bd185fb8f25dcfb19ab",
"assets/assets/images/projects/fanoos/4.webp": "515a1c069638b7e8f9772391a3f9a5ed",
"assets/assets/images/projects/fanoos/1.png": "19398d0bc9308f809b946b8b03e7ec9d",
"assets/assets/images/projects/fanoos/1.webp": "cc3541e4224bdab1f7c6a0436da0aee6",
"assets/assets/images/projects/fanoos/2.png": "fd474955648d9025fec088a46382e529",
"assets/assets/images/projects/damapa/8.webp": "4811a19c873ca727b42865aa64fdf373",
"assets/assets/images/projects/damapa/2.webp": "f8eaa120754ff103a92b3d5beb908d89",
"assets/assets/images/projects/damapa/3.webp": "a207b44a68c90e104a8afa758087ea32",
"assets/assets/images/projects/damapa/4.webp": "f5af9379d7a2983f05d607b10ffe4068",
"assets/assets/images/projects/damapa/5.webp": "a1667f7f70ea3d702525e06fe4c5b7e1",
"assets/assets/images/projects/damapa/1.webp": "b88fc43c697c95a62dd33ba6084db993",
"assets/assets/images/projects/damapa/6.webp": "d97869173ff9219e3d9bf1529861d7d2",
"assets/assets/images/projects/damapa/7.webp": "f6a8a668e9b4404915919e01e3954198",
"assets/assets/images/projects/clusterix_email/2.webp": "84cb28db46a7d69cf183b0182144fed6",
"assets/assets/images/projects/clusterix_email/3.webp": "3e303679b8b0ad2163848e53e50d599e",
"assets/assets/images/projects/clusterix_email/4.webp": "068092fcef9df87164f4c5de501d0674",
"assets/assets/images/projects/clusterix_email/5.webp": "41014ad2431bdd5a9b642cb98239213b",
"assets/assets/images/projects/clusterix_email/1.webp": "327d6856ec9b73fb779ef87c2045ae0a",
"assets/assets/images/projects/clusterix_email/6.webp": "41014ad2431bdd5a9b642cb98239213b",
"assets/assets/images/projects/clusterix_time_tracker/2.webp": "b8c291929eb69a36772a2da3ca31946b",
"assets/assets/images/projects/clusterix_time_tracker/3.webp": "1ef420842140c6d80f59347877d453c0",
"assets/assets/images/projects/clusterix_time_tracker/4.webp": "e9a054e4d0be07790d39594f9acd53fd",
"assets/assets/images/projects/clusterix_time_tracker/5.webp": "485a1895ab948191ec4f83bd8346fcef",
"assets/assets/images/projects/clusterix_time_tracker/1.webp": "af7c9c15f53f699b702e992f47435e4e",
"assets/assets/images/projects/polaris_vpn/2.webp": "e41b5739a477920de9aba925d61350c7",
"assets/assets/images/projects/polaris_vpn/3.webp": "eba132481a16154a98387ca103ba3f6f",
"assets/assets/images/projects/polaris_vpn/4.webp": "3e571df0e05799c167ffff6ec65da5ce",
"assets/assets/images/projects/polaris_vpn/5.webp": "b99608c119e441d6a4a46d498e81371a",
"assets/assets/images/projects/polaris_vpn/1.webp": "286780285783e610a629218a872782ad",
"assets/assets/images/projects/unicom/8.webp": "9324acb9284ba410d0d39a443bf61f5b",
"assets/assets/images/projects/unicom/2.webp": "28799685472ba861c353f2cff61f440c",
"assets/assets/images/projects/unicom/3.webp": "b97d7a5d66f7cb030989218cc71ae647",
"assets/assets/images/projects/unicom/9.webp": "443da83225ad1d481301c8ebb286d7da",
"assets/assets/images/projects/unicom/4.webp": "838092e08b286acff81b861c06342c61",
"assets/assets/images/projects/unicom/5.webp": "1ba5dba30da9aa592e08e7eae8400ef8",
"assets/assets/images/projects/unicom/1.webp": "fb0f880c0c2b092b482a3ee45c4c5d08",
"assets/assets/images/projects/unicom/6.webp": "4500ec285ee2284edefba90e4ff3d37f",
"assets/assets/images/projects/unicom/7.webp": "65b25e1eb3da0f0391a272d0f21f5492",
"assets/assets/images/projects/wallito/2.webp": "6e0ac74dc4f4f1088ec63f05425b8fbf",
"assets/assets/images/projects/wallito/3.webp": "4481b62f581255e4d186f8a46c3f3419",
"assets/assets/images/projects/wallito/4.webp": "241e7d14f31569cefe2be0e7d48b16ce",
"assets/assets/images/projects/wallito/5.webp": "076f1e87eb868370001cfbd183e1eb23",
"assets/assets/images/projects/wallito/1.webp": "3e6a264b053d7235f3cc788920ee5702",
"assets/assets/images/projects/wallito/6.webp": "f53d778f74d346a7332522df7726d2ef",
"assets/assets/images/projects/put_mobile_banking/8.webp": "3739cee6d0b84df5f4f8f903cbd1bd52",
"assets/assets/images/projects/put_mobile_banking/2.webp": "8f623e99c26d5f644e6063674b7a3c9b",
"assets/assets/images/projects/put_mobile_banking/9.webp": "e38580dcdccdb64ae8b65a670c191575",
"assets/assets/images/projects/put_mobile_banking/4.webp": "d74c73a9685723d120c7016557b0e65d",
"assets/assets/images/projects/put_mobile_banking/13.webp": "c3913a02b8810c55cbd3fb212a0d6203",
"assets/assets/images/projects/put_mobile_banking/5.webp": "e08c32f5315a246c330b5309ef04f8eb",
"assets/assets/images/projects/put_mobile_banking/1.webp": "d910cbfb85f8f8a13e7f94b4666bfc13",
"assets/assets/images/projects/put_mobile_banking/11.webp": "aa379165ef09337dbb8815a4e406649f",
"assets/assets/images/projects/put_mobile_banking/6.webp": "701b431d1a0140497db948814e1bddf1",
"assets/assets/images/projects/put_mobile_banking/7.webp": "2d449be403e5742b61eac66fb628e5e0",
"assets/assets/images/projects/put_mobile_banking/3%2520copy.webp": "91d71e822829a28a8831d0d4a6a86775",
"assets/assets/images/projects/put_mobile_banking/12.webp": "0c4e7922c430c8c17ca09d28ad23d1de",
"assets/assets/images/projects/put_mobile_banking/10.webp": "5ef48305ef6334550f3bb196086e3111",
"assets/assets/images/projects/clusterix_livechat/2.webp": "3234735f4e240595b91b9a87727b36a8",
"assets/assets/images/projects/clusterix_livechat/3.webp": "bba41231ee8530f3ea22a74dfa0b5ee8",
"assets/assets/images/projects/clusterix_livechat/4.webp": "1b5b68a1448596001d0dcf7d9cd5578f",
"assets/assets/images/projects/clusterix_livechat/5.webp": "dc3a975523dbf7126ddd8d5596a83727",
"assets/assets/images/projects/clusterix_livechat/1.webp": "b98a32caac51c9578741825ba059b240",
"assets/assets/images/projects/clusterix_livechat/6.webp": "e3a037ff114c08aa0b38b562db7259cb",
"assets/assets/images/projects/clusterix_livechat/7.webp": "093a0f89ca08ee693718432fc071f6e9",
"assets/assets/images/projects/kidora/6.png": "8dbc15ad5baad7cd29b22e62128739cc",
"assets/assets/images/projects/kidora/1(1).png": "c279f1d4471e50792497db29f7104355",
"assets/assets/images/projects/kidora/4.png": "628ed599efe4715859e1c2471a80a6b5",
"assets/assets/images/projects/kidora/3.png": "3a066f4cc1f3de50f43c24f91b8a2893",
"assets/assets/images/projects/kidora/8.png": "bb9fdf6a6a06b0ee94cf9130592a2ca2",
"assets/assets/images/projects/kidora/2.png": "81c1e1766661b5542a4af6178a7118a7",
"assets/assets/images/projects/kidora/7.png": "b985c3b828abae31b23d74ca21578a53",
"assets/assets/images/projects/kidora/5.png": "afa295065ae5e40efa428f45ee7fe885",
"assets/assets/images/png/telegram.png": "d06f388a3eecf09833a73329bd34ffbc",
"assets/assets/images/png/linkedin.png": "0dfdf900b4949bfe7a038c3121e99376",
"assets/assets/images/png/device.png": "3689d4a0f37fc3518d1ca6a4e3833943",
"assets/assets/images/png/instagram.png": "e9b15b731eafbfc16355b811c81af450",
"assets/assets/images/png/github.png": "9181c9cf2ee47b4265ac43d46f09bea5",
"assets/fonts/MaterialIcons-Regular.otf": "ba724e1b88929e62ad073581b57f6b5c",
"assets/AssetManifest.bin": "f87e5e8c133db336f6a0c577834d7768",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/AssetManifest.json": "6e3733ef2c5a2acaff9ae61c7ee3fc4a",
"assets/NOTICES": "9e5e0d6bfa9517b7cc94f078df90ba62",
"index.html": "47f0ae4e6387caa7f5952d3c572361b8",
"/": "47f0ae4e6387caa7f5952d3c572361b8",
"main.dart.js": "eb8b1caabf213b9e0e2098975b6b0d68",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"version.json": "009c9e65172e010890f7f65fde438006",
"flutter_bootstrap.js": "51211d84cbbbef40fc816f0b9101d4b6",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"manifest.json": "99f580033d59dd75defcba737b4cff3f",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c"};
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
