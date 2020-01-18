//
//  JsonsMock.swift
//  NetworkPlatformTests
//
//  Created by Behrad Kazemi on 1/18/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
enum JsonsMock {
    static let artistModelMock =
    """
    {
    "external_urls": {
      "spotify": "https://open.spotify.com/artist/0A0FS04o6zMoto8OKPsDwY"
    },
    "followers": {
      "href": null,
      "total": 2026712
    },
    "genres": [
      "cali rap",
      "gangster rap",
      "hip hop",
      "pop rap",
      "rap",
      "southern hip hop",
      "trap"
    ],
    "href": "https://api.spotify.com/v1/artists/0A0FS04o6zMoto8OKPsDwY",
    "id": "0A0FS04o6zMoto8OKPsDwY",
    "images": [
      {
        "height": 640,
        "url": "https://i.scdn.co/image/d1e573d166fe6f42bba50cb9754ed38c9ecf8105",
        "width": 640
      },
      {
        "height": 320,
        "url": "https://i.scdn.co/image/a0a1f11888d0df301c4156d8c438d08f0c803fd3",
        "width": 320
      },
      {
        "height": 160,
        "url": "https://i.scdn.co/image/a0509c067ce449005d48308ee7484c76afea1f52",
        "width": 160
      }
    ],
    "name": "YG",
    "popularity": 87,
    "type": "artist",
    "uri": "spotify:artist:0A0FS04o6zMoto8OKPsDwY"
    }
    """

    static let albumsModelMock =
    """
{
  "href" : "https://api.spotify.com/v1/artists/0A0FS04o6zMoto8OKPsDwY/albums?offset=0&limit=15&include_groups=album&market=US",
  "items" : [ {
    "album_group" : "album",
    "album_type" : "album",
    "artists" : [ {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/0A0FS04o6zMoto8OKPsDwY"
      },
      "href" : "https://api.spotify.com/v1/artists/0A0FS04o6zMoto8OKPsDwY",
      "id" : "0A0FS04o6zMoto8OKPsDwY",
      "name" : "YG",
      "type" : "artist",
      "uri" : "spotify:artist:0A0FS04o6zMoto8OKPsDwY"
    } ],
    "external_urls" : {
      "spotify" : "https://open.spotify.com/album/5zuM1EG06X1J7VsIF1omRm"
    },
    "href" : "https://api.spotify.com/v1/albums/5zuM1EG06X1J7VsIF1omRm",
    "id" : "5zuM1EG06X1J7VsIF1omRm",
    "images" : [ {
      "height" : 640,
      "url" : "https://i.scdn.co/image/c0678e2120e6cddfebb6fb6012a0a6b2fffe40f2",
      "width" : 640
    }, {
      "height" : 300,
      "url" : "https://i.scdn.co/image/55f71de944f297f5bf4b6ab9ebd889db8dfc25f2",
      "width" : 300
    }, {
      "height" : 64,
      "url" : "https://i.scdn.co/image/b5b5a2105957f63b2e8b126a2ff2a5b25f201e80",
      "width" : 64
    } ],
    "name" : "4REAL 4REAL",
    "release_date" : "2019-05-24",
    "release_date_precision" : "day",
    "total_tracks" : 14,
    "type" : "album",
    "uri" : "spotify:album:5zuM1EG06X1J7VsIF1omRm"
  }, {
    "album_group" : "album",
    "album_type" : "album",
    "artists" : [ {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/0A0FS04o6zMoto8OKPsDwY"
      },
      "href" : "https://api.spotify.com/v1/artists/0A0FS04o6zMoto8OKPsDwY",
      "id" : "0A0FS04o6zMoto8OKPsDwY",
      "name" : "YG",
      "type" : "artist",
      "uri" : "spotify:artist:0A0FS04o6zMoto8OKPsDwY"
    } ],
    "external_urls" : {
      "spotify" : "https://open.spotify.com/album/7yCW7OZv2fQqsbW51WXjzC"
    },
    "href" : "https://api.spotify.com/v1/albums/7yCW7OZv2fQqsbW51WXjzC",
    "id" : "7yCW7OZv2fQqsbW51WXjzC",
    "images" : [ {
      "height" : 640,
      "url" : "https://i.scdn.co/image/89dd647fbf7d6f9b127435d4607ca7f0ff4a5b18",
      "width" : 640
    }, {
      "height" : 300,
      "url" : "https://i.scdn.co/image/c01bfa1452f30ea40e9c445004f7a94405111c7f",
      "width" : 300
    }, {
      "height" : 64,
      "url" : "https://i.scdn.co/image/f852f96825b6e5a6ce331ba9b0d27354f525e286",
      "width" : 64
    } ],
    "name" : "4REAL 4REAL",
    "release_date" : "2019-05-24",
    "release_date_precision" : "day",
    "total_tracks" : 14,
    "type" : "album",
    "uri" : "spotify:album:7yCW7OZv2fQqsbW51WXjzC"
  }, {
    "album_group" : "album",
    "album_type" : "album",
    "artists" : [ {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/0A0FS04o6zMoto8OKPsDwY"
      },
      "href" : "https://api.spotify.com/v1/artists/0A0FS04o6zMoto8OKPsDwY",
      "id" : "0A0FS04o6zMoto8OKPsDwY",
      "name" : "YG",
      "type" : "artist",
      "uri" : "spotify:artist:0A0FS04o6zMoto8OKPsDwY"
    } ],
    "external_urls" : {
      "spotify" : "https://open.spotify.com/album/5IYvKd22yQkJRfoIStesbX"
    },
    "href" : "https://api.spotify.com/v1/albums/5IYvKd22yQkJRfoIStesbX",
    "id" : "5IYvKd22yQkJRfoIStesbX",
    "images" : [ {
      "height" : 640,
      "url" : "https://i.scdn.co/image/374db95c20470ee921fa802ecfda4608c9bf3e56",
      "width" : 640
    }, {
      "height" : 300,
      "url" : "https://i.scdn.co/image/6ddd55d9dead9104632b4f6e6cd315898f4c7377",
      "width" : 300
    }, {
      "height" : 64,
      "url" : "https://i.scdn.co/image/f07e6a4351ce6cd2209a3eda55da5adda4af9c23",
      "width" : 64
    } ],
    "name" : "STAY DANGEROUS",
    "release_date" : "2018-08-03",
    "release_date_precision" : "day",
    "total_tracks" : 15,
    "type" : "album",
    "uri" : "spotify:album:5IYvKd22yQkJRfoIStesbX"
  }, {
    "album_group" : "album",
    "album_type" : "album",
    "artists" : [ {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/0A0FS04o6zMoto8OKPsDwY"
      },
      "href" : "https://api.spotify.com/v1/artists/0A0FS04o6zMoto8OKPsDwY",
      "id" : "0A0FS04o6zMoto8OKPsDwY",
      "name" : "YG",
      "type" : "artist",
      "uri" : "spotify:artist:0A0FS04o6zMoto8OKPsDwY"
    } ],
    "external_urls" : {
      "spotify" : "https://open.spotify.com/album/4VqdntbxmB7r1At6sPKRnb"
    },
    "href" : "https://api.spotify.com/v1/albums/4VqdntbxmB7r1At6sPKRnb",
    "id" : "4VqdntbxmB7r1At6sPKRnb",
    "images" : [ {
      "height" : 640,
      "url" : "https://i.scdn.co/image/2cd4011336b3292fe4d90329a954e7057baa31c1",
      "width" : 640
    }, {
      "height" : 300,
      "url" : "https://i.scdn.co/image/462a7fd5f4bdd783f40b276dfe576c0180911efa",
      "width" : 300
    }, {
      "height" : 64,
      "url" : "https://i.scdn.co/image/c049d7440e4381216497acd803b328d34fdd50cd",
      "width" : 64
    } ],
    "name" : "Red Friday",
    "release_date" : "2016-11-25",
    "release_date_precision" : "day",
    "total_tracks" : 8,
    "type" : "album",
    "uri" : "spotify:album:4VqdntbxmB7r1At6sPKRnb"
  }, {
    "album_group" : "album",
    "album_type" : "album",
    "artists" : [ {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/0A0FS04o6zMoto8OKPsDwY"
      },
      "href" : "https://api.spotify.com/v1/artists/0A0FS04o6zMoto8OKPsDwY",
      "id" : "0A0FS04o6zMoto8OKPsDwY",
      "name" : "YG",
      "type" : "artist",
      "uri" : "spotify:artist:0A0FS04o6zMoto8OKPsDwY"
    } ],
    "external_urls" : {
      "spotify" : "https://open.spotify.com/album/1qzCVhQ7nAgiK6I2kS8sE7"
    },
    "href" : "https://api.spotify.com/v1/albums/1qzCVhQ7nAgiK6I2kS8sE7",
    "id" : "1qzCVhQ7nAgiK6I2kS8sE7",
    "images" : [ {
      "height" : 640,
      "url" : "https://i.scdn.co/image/645e65e7610cd0f127e6cfd3425cdd10f6d6be7c",
      "width" : 640
    }, {
      "height" : 300,
      "url" : "https://i.scdn.co/image/064ffb2dda959f6845d3c9c8e9504b20200027c1",
      "width" : 300
    }, {
      "height" : 64,
      "url" : "https://i.scdn.co/image/c85aaf619943daa2e38f8ff0d90559e0faf189d9",
      "width" : 64
    } ],
    "name" : "Red Friday",
    "release_date" : "2016-11-25",
    "release_date_precision" : "day",
    "total_tracks" : 8,
    "type" : "album",
    "uri" : "spotify:album:1qzCVhQ7nAgiK6I2kS8sE7"
  }, {
    "album_group" : "album",
    "album_type" : "album",
    "artists" : [ {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/0A0FS04o6zMoto8OKPsDwY"
      },
      "href" : "https://api.spotify.com/v1/artists/0A0FS04o6zMoto8OKPsDwY",
      "id" : "0A0FS04o6zMoto8OKPsDwY",
      "name" : "YG",
      "type" : "artist",
      "uri" : "spotify:artist:0A0FS04o6zMoto8OKPsDwY"
    } ],
    "external_urls" : {
      "spotify" : "https://open.spotify.com/album/4nwd6ernojhNIIRifDJoRz"
    },
    "href" : "https://api.spotify.com/v1/albums/4nwd6ernojhNIIRifDJoRz",
    "id" : "4nwd6ernojhNIIRifDJoRz",
    "images" : [ {
      "height" : 640,
      "url" : "https://i.scdn.co/image/3018a56f0d169870db1d3a6f60feb3284cbceaf3",
      "width" : 640
    }, {
      "height" : 300,
      "url" : "https://i.scdn.co/image/9ad1f8781388cc22cccde559ae5f0d0531775bb1",
      "width" : 300
    }, {
      "height" : 64,
      "url" : "https://i.scdn.co/image/c79080ac3ab8556f596abba9b562e8c407f8e2db",
      "width" : 64
    } ],
    "name" : "Still Brazy (Deluxe)",
    "release_date" : "2016-06-17",
    "release_date_precision" : "day",
    "total_tracks" : 17,
    "type" : "album",
    "uri" : "spotify:album:4nwd6ernojhNIIRifDJoRz"
  }, {
    "album_group" : "album",
    "album_type" : "album",
    "artists" : [ {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/0A0FS04o6zMoto8OKPsDwY"
      },
      "href" : "https://api.spotify.com/v1/artists/0A0FS04o6zMoto8OKPsDwY",
      "id" : "0A0FS04o6zMoto8OKPsDwY",
      "name" : "YG",
      "type" : "artist",
      "uri" : "spotify:artist:0A0FS04o6zMoto8OKPsDwY"
    } ],
    "external_urls" : {
      "spotify" : "https://open.spotify.com/album/2eYQlGEvc3b1ahYVdqN49M"
    },
    "href" : "https://api.spotify.com/v1/albums/2eYQlGEvc3b1ahYVdqN49M",
    "id" : "2eYQlGEvc3b1ahYVdqN49M",
    "images" : [ {
      "height" : 640,
      "url" : "https://i.scdn.co/image/ba9e615e9bf14e8aa492fb014ff4dbb3a4f09580",
      "width" : 640
    }, {
      "height" : 300,
      "url" : "https://i.scdn.co/image/1bdd5e14f02d180968a8dcaf16a0a10b6a4de45c",
      "width" : 300
    }, {
      "height" : 64,
      "url" : "https://i.scdn.co/image/ee6a417b35cfd0f926f14623374aec826237732c",
      "width" : 64
    } ],
    "name" : "Still Brazy (Deluxe)",
    "release_date" : "2016-06-17",
    "release_date_precision" : "day",
    "total_tracks" : 17,
    "type" : "album",
    "uri" : "spotify:album:2eYQlGEvc3b1ahYVdqN49M"
  }, {
    "album_group" : "album",
    "album_type" : "album",
    "artists" : [ {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/2R2C8r0t9p98AnGzUnOLAe"
      },
      "href" : "https://api.spotify.com/v1/artists/2R2C8r0t9p98AnGzUnOLAe",
      "id" : "2R2C8r0t9p98AnGzUnOLAe",
      "name" : "Blanco",
      "type" : "artist",
      "uri" : "spotify:artist:2R2C8r0t9p98AnGzUnOLAe"
    }, {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/0A0FS04o6zMoto8OKPsDwY"
      },
      "href" : "https://api.spotify.com/v1/artists/0A0FS04o6zMoto8OKPsDwY",
      "id" : "0A0FS04o6zMoto8OKPsDwY",
      "name" : "YG",
      "type" : "artist",
      "uri" : "spotify:artist:0A0FS04o6zMoto8OKPsDwY"
    }, {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/762cK7uB9Z90RDkpbKckkY"
      },
      "href" : "https://api.spotify.com/v1/artists/762cK7uB9Z90RDkpbKckkY",
      "id" : "762cK7uB9Z90RDkpbKckkY",
      "name" : "DB Tha General",
      "type" : "artist",
      "uri" : "spotify:artist:762cK7uB9Z90RDkpbKckkY"
    } ],
    "external_urls" : {
      "spotify" : "https://open.spotify.com/album/023jioejd2M0SHsBo3tXrP"
    },
    "href" : "https://api.spotify.com/v1/albums/023jioejd2M0SHsBo3tXrP",
    "id" : "023jioejd2M0SHsBo3tXrP",
    "images" : [ {
      "height" : 640,
      "url" : "https://i.scdn.co/image/ab67616d0000b2733489f1e12d39271c6b31f286",
      "width" : 640
    }, {
      "height" : 300,
      "url" : "https://i.scdn.co/image/ab67616d00001e023489f1e12d39271c6b31f286",
      "width" : 300
    }, {
      "height" : 64,
      "url" : "https://i.scdn.co/image/ab67616d000048513489f1e12d39271c6b31f286",
      "width" : 64
    } ],
    "name" : "California Livin",
    "release_date" : "2015-10-09",
    "release_date_precision" : "day",
    "total_tracks" : 8,
    "type" : "album",
    "uri" : "spotify:album:023jioejd2M0SHsBo3tXrP"
  }, {
    "album_group" : "album",
    "album_type" : "album",
    "artists" : [ {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/0A0FS04o6zMoto8OKPsDwY"
      },
      "href" : "https://api.spotify.com/v1/artists/0A0FS04o6zMoto8OKPsDwY",
      "id" : "0A0FS04o6zMoto8OKPsDwY",
      "name" : "YG",
      "type" : "artist",
      "uri" : "spotify:artist:0A0FS04o6zMoto8OKPsDwY"
    } ],
    "external_urls" : {
      "spotify" : "https://open.spotify.com/album/3ldsrFbLgrIJ00byb2tncW"
    },
    "href" : "https://api.spotify.com/v1/albums/3ldsrFbLgrIJ00byb2tncW",
    "id" : "3ldsrFbLgrIJ00byb2tncW",
    "images" : [ {
      "height" : 640,
      "url" : "https://i.scdn.co/image/1d70683f9a1d0858247794c15057a2c98265d4d7",
      "width" : 640
    }, {
      "height" : 300,
      "url" : "https://i.scdn.co/image/e029bf0d6ee00542b642009d17da100dcdbf1745",
      "width" : 300
    }, {
      "height" : 64,
      "url" : "https://i.scdn.co/image/a740f6e3996da25f67abba4f6a1cb57afcea1f83",
      "width" : 64
    } ],
    "name" : "Blame It On The Streets",
    "release_date" : "2014-11-24",
    "release_date_precision" : "day",
    "total_tracks" : 9,
    "type" : "album",
    "uri" : "spotify:album:3ldsrFbLgrIJ00byb2tncW"
  }, {
    "album_group" : "album",
    "album_type" : "album",
    "artists" : [ {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/0A0FS04o6zMoto8OKPsDwY"
      },
      "href" : "https://api.spotify.com/v1/artists/0A0FS04o6zMoto8OKPsDwY",
      "id" : "0A0FS04o6zMoto8OKPsDwY",
      "name" : "YG",
      "type" : "artist",
      "uri" : "spotify:artist:0A0FS04o6zMoto8OKPsDwY"
    } ],
    "external_urls" : {
      "spotify" : "https://open.spotify.com/album/60QP93G98tBVQnB6qWROtY"
    },
    "href" : "https://api.spotify.com/v1/albums/60QP93G98tBVQnB6qWROtY",
    "id" : "60QP93G98tBVQnB6qWROtY",
    "images" : [ {
      "height" : 640,
      "url" : "https://i.scdn.co/image/70a2b1797cb1a3eb6d5abc1b5f9cef47a95445ea",
      "width" : 640
    }, {
      "height" : 300,
      "url" : "https://i.scdn.co/image/261a55a09e3e69b88578c609780dddd439de3ddf",
      "width" : 300
    }, {
      "height" : 64,
      "url" : "https://i.scdn.co/image/9caebebc79d4b07c68419497e1d463758c5536e8",
      "width" : 64
    } ],
    "name" : "My Krazy Life (Deluxe Edition)",
    "release_date" : "2014-03-18",
    "release_date_precision" : "day",
    "total_tracks" : 18,
    "type" : "album",
    "uri" : "spotify:album:60QP93G98tBVQnB6qWROtY"
  }, {
    "album_group" : "album",
    "album_type" : "album",
    "artists" : [ {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/0A0FS04o6zMoto8OKPsDwY"
      },
      "href" : "https://api.spotify.com/v1/artists/0A0FS04o6zMoto8OKPsDwY",
      "id" : "0A0FS04o6zMoto8OKPsDwY",
      "name" : "YG",
      "type" : "artist",
      "uri" : "spotify:artist:0A0FS04o6zMoto8OKPsDwY"
    } ],
    "external_urls" : {
      "spotify" : "https://open.spotify.com/album/4F6GGyqtJoF4EOxDgsKzsB"
    },
    "href" : "https://api.spotify.com/v1/albums/4F6GGyqtJoF4EOxDgsKzsB",
    "id" : "4F6GGyqtJoF4EOxDgsKzsB",
    "images" : [ {
      "height" : 640,
      "url" : "https://i.scdn.co/image/70a2b1797cb1a3eb6d5abc1b5f9cef47a95445ea",
      "width" : 640
    }, {
      "height" : 300,
      "url" : "https://i.scdn.co/image/261a55a09e3e69b88578c609780dddd439de3ddf",
      "width" : 300
    }, {
      "height" : 64,
      "url" : "https://i.scdn.co/image/9caebebc79d4b07c68419497e1d463758c5536e8",
      "width" : 64
    } ],
    "name" : "My Krazy Life (Deluxe)",
    "release_date" : "2014-01-01",
    "release_date_precision" : "day",
    "total_tracks" : 17,
    "type" : "album",
    "uri" : "spotify:album:4F6GGyqtJoF4EOxDgsKzsB"
  }, {
    "album_group" : "album",
    "album_type" : "album",
    "artists" : [ {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/0A0FS04o6zMoto8OKPsDwY"
      },
      "href" : "https://api.spotify.com/v1/artists/0A0FS04o6zMoto8OKPsDwY",
      "id" : "0A0FS04o6zMoto8OKPsDwY",
      "name" : "YG",
      "type" : "artist",
      "uri" : "spotify:artist:0A0FS04o6zMoto8OKPsDwY"
    } ],
    "external_urls" : {
      "spotify" : "https://open.spotify.com/album/10jogO732o8oGvsjVpWRmO"
    },
    "href" : "https://api.spotify.com/v1/albums/10jogO732o8oGvsjVpWRmO",
    "id" : "10jogO732o8oGvsjVpWRmO",
    "images" : [ {
      "height" : 640,
      "url" : "https://i.scdn.co/image/70a2b1797cb1a3eb6d5abc1b5f9cef47a95445ea",
      "width" : 640
    }, {
      "height" : 300,
      "url" : "https://i.scdn.co/image/261a55a09e3e69b88578c609780dddd439de3ddf",
      "width" : 300
    }, {
      "height" : 64,
      "url" : "https://i.scdn.co/image/9caebebc79d4b07c68419497e1d463758c5536e8",
      "width" : 64
    } ],
    "name" : "My Krazy Life (Deluxe)",
    "release_date" : "2014-01-01",
    "release_date_precision" : "day",
    "total_tracks" : 17,
    "type" : "album",
    "uri" : "spotify:album:10jogO732o8oGvsjVpWRmO"
  }, {
    "album_group" : "album",
    "album_type" : "album",
    "artists" : [ {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/0A0FS04o6zMoto8OKPsDwY"
      },
      "href" : "https://api.spotify.com/v1/artists/0A0FS04o6zMoto8OKPsDwY",
      "id" : "0A0FS04o6zMoto8OKPsDwY",
      "name" : "YG",
      "type" : "artist",
      "uri" : "spotify:artist:0A0FS04o6zMoto8OKPsDwY"
    } ],
    "external_urls" : {
      "spotify" : "https://open.spotify.com/album/2XXn08wc9KD8dy2ErpVxbD"
    },
    "href" : "https://api.spotify.com/v1/albums/2XXn08wc9KD8dy2ErpVxbD",
    "id" : "2XXn08wc9KD8dy2ErpVxbD",
    "images" : [ {
      "height" : 640,
      "url" : "https://i.scdn.co/image/bea1a89b605de30838d35564858da4e9ef4d5369",
      "width" : 640
    }, {
      "height" : 300,
      "url" : "https://i.scdn.co/image/d067ee500fc4d7b55751fddc5345b48a2350f0d4",
      "width" : 300
    }, {
      "height" : 64,
      "url" : "https://i.scdn.co/image/07413386fe22b52ad971b98b4f59fbac4aa4ac25",
      "width" : 64
    } ],
    "name" : "My Krazy Life (Deluxe)",
    "release_date" : "2014-01-01",
    "release_date_precision" : "day",
    "total_tracks" : 17,
    "type" : "album",
    "uri" : "spotify:album:2XXn08wc9KD8dy2ErpVxbD"
  }, {
    "album_group" : "album",
    "album_type" : "album",
    "artists" : [ {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/0A0FS04o6zMoto8OKPsDwY"
      },
      "href" : "https://api.spotify.com/v1/artists/0A0FS04o6zMoto8OKPsDwY",
      "id" : "0A0FS04o6zMoto8OKPsDwY",
      "name" : "YG",
      "type" : "artist",
      "uri" : "spotify:artist:0A0FS04o6zMoto8OKPsDwY"
    } ],
    "external_urls" : {
      "spotify" : "https://open.spotify.com/album/2Rb3gKGQ7w3Unf3So2CCaw"
    },
    "href" : "https://api.spotify.com/v1/albums/2Rb3gKGQ7w3Unf3So2CCaw",
    "id" : "2Rb3gKGQ7w3Unf3So2CCaw",
    "images" : [ {
      "height" : 640,
      "url" : "https://i.scdn.co/image/0c16a71c83dc67554de09db86d4af329f12ccf2b",
      "width" : 640
    }, {
      "height" : 300,
      "url" : "https://i.scdn.co/image/8eed9b0fa4acafa5f8cebe9c2eb26c2b7351f1cb",
      "width" : 300
    }, {
      "height" : 64,
      "url" : "https://i.scdn.co/image/c0e83b2cb727e2ab6d60f4be22a293da82c478a8",
      "width" : 64
    } ],
    "name" : "My Krazy Life (Deluxe)",
    "release_date" : "2014-01-01",
    "release_date_precision" : "day",
    "total_tracks" : 17,
    "type" : "album",
    "uri" : "spotify:album:2Rb3gKGQ7w3Unf3So2CCaw"
  }, {
    "album_group" : "album",
    "album_type" : "album",
    "artists" : [ {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/0A0FS04o6zMoto8OKPsDwY"
      },
      "href" : "https://api.spotify.com/v1/artists/0A0FS04o6zMoto8OKPsDwY",
      "id" : "0A0FS04o6zMoto8OKPsDwY",
      "name" : "YG",
      "type" : "artist",
      "uri" : "spotify:artist:0A0FS04o6zMoto8OKPsDwY"
    } ],
    "external_urls" : {
      "spotify" : "https://open.spotify.com/album/51o7e7jwDTbX8r43zbjieM"
    },
    "href" : "https://api.spotify.com/v1/albums/51o7e7jwDTbX8r43zbjieM",
    "id" : "51o7e7jwDTbX8r43zbjieM",
    "images" : [ {
      "height" : 640,
      "url" : "https://i.scdn.co/image/96b58f301eb9b2bb618337326c9a1d59b291f30c",
      "width" : 640
    }, {
      "height" : 300,
      "url" : "https://i.scdn.co/image/08d00c1dff0bd3492240662af274129184d4c9d9",
      "width" : 300
    }, {
      "height" : 64,
      "url" : "https://i.scdn.co/image/9b6b7fb1eabe6a70f70460cddd04e0671f9d2498",
      "width" : 64
    } ],
    "name" : "My Krazy Life",
    "release_date" : "2014-01-01",
    "release_date_precision" : "day",
    "total_tracks" : 14,
    "type" : "album",
    "uri" : "spotify:album:51o7e7jwDTbX8r43zbjieM"
  } ],
  "limit" : 15,
  "next" : "https://api.spotify.com/v1/artists/0A0FS04o6zMoto8OKPsDwY/albums?offset=15&limit=15&include_groups=album&market=US",
  "offset" : 0,
  "previous" : null,
  "total" : 20
}
"""
}
