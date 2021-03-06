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
    
    static let mockFollowedArtists = """
{
  "artists" : {
    "items" : [ {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/0A0FS04o6zMoto8OKPsDwY"
      },
      "followers" : {
        "href" : null,
        "total" : 2026712
      },
      "genres" : [ "cali rap", "gangster rap", "hip hop", "pop rap", "rap", "southern hip hop", "trap" ],
      "href" : "https://api.spotify.com/v1/artists/0A0FS04o6zMoto8OKPsDwY",
      "id" : "0A0FS04o6zMoto8OKPsDwY",
      "images" : [ {
        "height" : 640,
        "url" : "https://i.scdn.co/image/d1e573d166fe6f42bba50cb9754ed38c9ecf8105",
        "width" : 640
      }, {
        "height" : 320,
        "url" : "https://i.scdn.co/image/a0a1f11888d0df301c4156d8c438d08f0c803fd3",
        "width" : 320
      }, {
        "height" : 160,
        "url" : "https://i.scdn.co/image/a0509c067ce449005d48308ee7484c76afea1f52",
        "width" : 160
      } ],
      "name" : "YG",
      "popularity" : 87,
      "type" : "artist",
      "uri" : "spotify:artist:0A0FS04o6zMoto8OKPsDwY"
    }, {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/0VRj0yCOv2FXJNP47XQnx5"
      },
      "followers" : {
        "href" : null,
        "total" : 3592868
      },
      "genres" : [ "atl hip hop", "hip hop", "melodic rap", "pop rap", "rap", "southern hip hop", "trap" ],
      "href" : "https://api.spotify.com/v1/artists/0VRj0yCOv2FXJNP47XQnx5",
      "id" : "0VRj0yCOv2FXJNP47XQnx5",
      "images" : [ {
        "height" : 640,
        "url" : "https://i.scdn.co/image/5bbc6877502c2a0db474b3b2bd48a073f5048bc2",
        "width" : 640
      }, {
        "height" : 320,
        "url" : "https://i.scdn.co/image/64561dc42e110aeee2c8a819f14cf5b98438ddfe",
        "width" : 320
      }, {
        "height" : 160,
        "url" : "https://i.scdn.co/image/14b6788f934633a9400815623cdfdbdeca54f57c",
        "width" : 160
      } ],
      "name" : "Quavo",
      "popularity" : 88,
      "type" : "artist",
      "uri" : "spotify:artist:0VRj0yCOv2FXJNP47XQnx5"
    }, {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/0Y5tJX1MQlPlqiwlOH1tJY"
      },
      "followers" : {
        "href" : null,
        "total" : 7663003
      },
      "genres" : [ "rap" ],
      "href" : "https://api.spotify.com/v1/artists/0Y5tJX1MQlPlqiwlOH1tJY",
      "id" : "0Y5tJX1MQlPlqiwlOH1tJY",
      "images" : [ {
        "height" : 640,
        "url" : "https://i.scdn.co/image/fec51156ed94b7ee30fbd4c7fd29b4a840e7daec",
        "width" : 640
      }, {
        "height" : 320,
        "url" : "https://i.scdn.co/image/67497c55a766af3f57860c88562314a313fc137c",
        "width" : 320
      }, {
        "height" : 160,
        "url" : "https://i.scdn.co/image/d7a58203669d00936dd5b89ba6f6e192c119532d",
        "width" : 160
      } ],
      "name" : "Travis Scott",
      "popularity" : 98,
      "type" : "artist",
      "uri" : "spotify:artist:0Y5tJX1MQlPlqiwlOH1tJY"
    }, {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/14CHVeJGrR5xgUGQFV5BVM"
      },
      "followers" : {
        "href" : null,
        "total" : 12266
      },
      "genres" : [ ],
      "href" : "https://api.spotify.com/v1/artists/14CHVeJGrR5xgUGQFV5BVM",
      "id" : "14CHVeJGrR5xgUGQFV5BVM",
      "images" : [ {
        "height" : 640,
        "url" : "https://i.scdn.co/image/e105cfc576fb3f6f79147db9cdcbb38f0786720a",
        "width" : 640
      }, {
        "height" : 300,
        "url" : "https://i.scdn.co/image/a4f9c691ebfb3bd74962e62a15e3aa6c6ae8a44a",
        "width" : 300
      }, {
        "height" : 64,
        "url" : "https://i.scdn.co/image/28afcf763fffd6a55ce2e58501183ad0aced8f3e",
        "width" : 64
      } ],
      "name" : "Fivio Foreign",
      "popularity" : 63,
      "type" : "artist",
      "uri" : "spotify:artist:14CHVeJGrR5xgUGQFV5BVM"
    }, {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/1RyvyyTE3xzB2ZywiAwp0i"
      },
      "followers" : {
        "href" : null,
        "total" : 8268292
      },
      "genres" : [ "atl hip hop", "hip hop", "pop rap", "rap", "southern hip hop", "trap" ],
      "href" : "https://api.spotify.com/v1/artists/1RyvyyTE3xzB2ZywiAwp0i",
      "id" : "1RyvyyTE3xzB2ZywiAwp0i",
      "images" : [ {
        "height" : 640,
        "url" : "https://i.scdn.co/image/287c505d7b76d3971a8c5b2fbb3935f9b2dbc3ce",
        "width" : 640
      }, {
        "height" : 320,
        "url" : "https://i.scdn.co/image/25f94b6a4776ff07b9410f28bb03642233522782",
        "width" : 320
      }, {
        "height" : 160,
        "url" : "https://i.scdn.co/image/78989e708e98755c8702497a5d853801454f78d8",
        "width" : 160
      } ],
      "name" : "Future",
      "popularity" : 92,
      "type" : "artist",
      "uri" : "spotify:artist:1RyvyyTE3xzB2ZywiAwp0i"
    }, {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/1URnnhqYAYcrqrcwql10ft"
      },
      "followers" : {
        "href" : null,
        "total" : 7292900
      },
      "genres" : [ "atl hip hop", "pop rap", "rap", "trap" ],
      "href" : "https://api.spotify.com/v1/artists/1URnnhqYAYcrqrcwql10ft",
      "id" : "1URnnhqYAYcrqrcwql10ft",
      "images" : [ {
        "height" : 640,
        "url" : "https://i.scdn.co/image/cfd6e47fbe4446750ec209dfa37bc919cb55c86f",
        "width" : 640
      }, {
        "height" : 320,
        "url" : "https://i.scdn.co/image/d10e087e512aa5584f54f28344d861f025fb827a",
        "width" : 320
      }, {
        "height" : 160,
        "url" : "https://i.scdn.co/image/959e1d873f53832e8102f4188ee3cae25b83d5da",
        "width" : 160
      } ],
      "name" : "21 Savage",
      "popularity" : 89,
      "type" : "artist",
      "uri" : "spotify:artist:1URnnhqYAYcrqrcwql10ft"
    }, {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/1cNDP5yjU5vjeR8qMf4grg"
      },
      "followers" : {
        "href" : null,
        "total" : 2473388
      },
      "genres" : [ "melodic rap", "trap" ],
      "href" : "https://api.spotify.com/v1/artists/1cNDP5yjU5vjeR8qMf4grg",
      "id" : "1cNDP5yjU5vjeR8qMf4grg",
      "images" : [ {
        "height" : 640,
        "url" : "https://i.scdn.co/image/030819be90d9cd2438d122215868eb46ed880ebf",
        "width" : 640
      }, {
        "height" : 320,
        "url" : "https://i.scdn.co/image/c34f23ec99b4cc2cf2b42f27041e3805b80ff94b",
        "width" : 320
      }, {
        "height" : 160,
        "url" : "https://i.scdn.co/image/13723ef6f4c3d47e21ae551be299425557aae04e",
        "width" : 160
      } ],
      "name" : "YNW Melly",
      "popularity" : 90,
      "type" : "artist",
      "uri" : "spotify:artist:1cNDP5yjU5vjeR8qMf4grg"
    }, {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/1pPmIToKXyGdsCF6LmqLmI"
      },
      "followers" : {
        "href" : null,
        "total" : 1940673
      },
      "genres" : [ "atl hip hop", "hip hop", "melodic rap", "pop rap", "rap", "southern hip hop", "trap" ],
      "href" : "https://api.spotify.com/v1/artists/1pPmIToKXyGdsCF6LmqLmI",
      "id" : "1pPmIToKXyGdsCF6LmqLmI",
      "images" : [ {
        "height" : 640,
        "url" : "https://i.scdn.co/image/b7b47be84cfa8c949717987366f03f60450a93c3",
        "width" : 640
      }, {
        "height" : 320,
        "url" : "https://i.scdn.co/image/5f2b91b3487f2183cc99b1b251ad5505e4936c4f",
        "width" : 320
      }, {
        "height" : 160,
        "url" : "https://i.scdn.co/image/bba4bcdaccd6d8228c0df4ed1053b886f256359e",
        "width" : 160
      } ],
      "name" : "Rich The Kid",
      "popularity" : 84,
      "type" : "artist",
      "uri" : "spotify:artist:1pPmIToKXyGdsCF6LmqLmI"
    }, {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/21dooacK2WGBB5amYvKyfM"
      },
      "followers" : {
        "href" : null,
        "total" : 1825431
      },
      "genres" : [ "melodic rap", "miami hip hop", "pop rap", "rap", "trap", "underground hip hop", "vapor trap" ],
      "href" : "https://api.spotify.com/v1/artists/21dooacK2WGBB5amYvKyfM",
      "id" : "21dooacK2WGBB5amYvKyfM",
      "images" : [ {
        "height" : 640,
        "url" : "https://i.scdn.co/image/0aedc706c53e007a3c2785d88c6fdfee301b7cdc",
        "width" : 640
      }, {
        "height" : 320,
        "url" : "https://i.scdn.co/image/f0355c9e1359215206db6b1ffd3eddcfa7e785ec",
        "width" : 320
      }, {
        "height" : 160,
        "url" : "https://i.scdn.co/image/6f59ed21bca99e40a6fb40b5fc2ec6a2ea894d0c",
        "width" : 160
      } ],
      "name" : "Smokepurpp",
      "popularity" : 79,
      "type" : "artist",
      "uri" : "spotify:artist:21dooacK2WGBB5amYvKyfM"
    }, {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/3TVXtAsR1Inumwj472S9r4"
      },
      "followers" : {
        "href" : null,
        "total" : 43870295
      },
      "genres" : [ "canadian hip hop", "canadian pop", "hip hop", "pop rap", "rap", "toronto rap" ],
      "href" : "https://api.spotify.com/v1/artists/3TVXtAsR1Inumwj472S9r4",
      "id" : "3TVXtAsR1Inumwj472S9r4",
      "images" : [ {
        "height" : 640,
        "url" : "https://i.scdn.co/image/012ecd119617ac24ab56620ace4b81735b172686",
        "width" : 640
      }, {
        "height" : 320,
        "url" : "https://i.scdn.co/image/55e3fb26d67b4d71321440b3a440eecd9d8f20f7",
        "width" : 320
      }, {
        "height" : 160,
        "url" : "https://i.scdn.co/image/ad10179d5f27ba77c7d6c95abd6e26f6a227e0d5",
        "width" : 160
      } ],
      "name" : "Drake",
      "popularity" : 99,
      "type" : "artist",
      "uri" : "spotify:artist:3TVXtAsR1Inumwj472S9r4"
    }, {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/4Gso3d4CscCijv0lmajZWs"
      },
      "followers" : {
        "href" : null,
        "total" : 191392
      },
      "genres" : [ "rap", "trap" ],
      "href" : "https://api.spotify.com/v1/artists/4Gso3d4CscCijv0lmajZWs",
      "id" : "4Gso3d4CscCijv0lmajZWs",
      "images" : [ {
        "height" : 640,
        "url" : "https://i.scdn.co/image/703b452ee316bbc4a8a0c8c49ba518a0d8edeef0",
        "width" : 640
      }, {
        "height" : 320,
        "url" : "https://i.scdn.co/image/ec0303f045edf2c0796797375594f303213e77fb",
        "width" : 320
      }, {
        "height" : 160,
        "url" : "https://i.scdn.co/image/f541b75b17a607e82b054cbb689ad516e484c534",
        "width" : 160
      } ],
      "name" : "Don Toliver",
      "popularity" : 85,
      "type" : "artist",
      "uri" : "spotify:artist:4Gso3d4CscCijv0lmajZWs"
    }, {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/4LLpKhyESsyAXpc4laK94U"
      },
      "followers" : {
        "href" : null,
        "total" : 3851240
      },
      "genres" : [ "hip hop", "pittsburgh rap", "pop rap", "rap" ],
      "href" : "https://api.spotify.com/v1/artists/4LLpKhyESsyAXpc4laK94U",
      "id" : "4LLpKhyESsyAXpc4laK94U",
      "images" : [ {
        "height" : 640,
        "url" : "https://i.scdn.co/image/ed63d93ec5348edc9cdf85c97179bbc78cd57292",
        "width" : 640
      }, {
        "height" : 320,
        "url" : "https://i.scdn.co/image/fc5a96c07e5405d083bdce4da9e23990a3e6002f",
        "width" : 320
      }, {
        "height" : 160,
        "url" : "https://i.scdn.co/image/67a39ada83e4dc3e4690e361e9dc91dd702ea2ee",
        "width" : 160
      } ],
      "name" : "Mac Miller",
      "popularity" : 88,
      "type" : "artist",
      "uri" : "spotify:artist:4LLpKhyESsyAXpc4laK94U"
    }, {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/4O15NlyKLIASxsJ0PrXPfz"
      },
      "followers" : {
        "href" : null,
        "total" : 7610417
      },
      "genres" : [ "melodic rap", "philly rap", "pop rap", "rap", "trap" ],
      "href" : "https://api.spotify.com/v1/artists/4O15NlyKLIASxsJ0PrXPfz",
      "id" : "4O15NlyKLIASxsJ0PrXPfz",
      "images" : [ {
        "height" : 640,
        "url" : "https://i.scdn.co/image/a6dd2fabeba127e6eea02bd234545de91c44e604",
        "width" : 640
      }, {
        "height" : 320,
        "url" : "https://i.scdn.co/image/c9349089a7a62d2adff29a6091cac80005433ac1",
        "width" : 320
      }, {
        "height" : 160,
        "url" : "https://i.scdn.co/image/5ddd6e2d4758ec7390879c50613f0d16a840fc34",
        "width" : 160
      } ],
      "name" : "Lil Uzi Vert",
      "popularity" : 92,
      "type" : "artist",
      "uri" : "spotify:artist:4O15NlyKLIASxsJ0PrXPfz"
    }, {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/4r63FhuTkUYltbVAg5TQnk"
      },
      "followers" : {
        "href" : null,
        "total" : 1839630
      },
      "genres" : [ "nc hip hop", "rap" ],
      "href" : "https://api.spotify.com/v1/artists/4r63FhuTkUYltbVAg5TQnk",
      "id" : "4r63FhuTkUYltbVAg5TQnk",
      "images" : [ {
        "height" : 640,
        "url" : "https://i.scdn.co/image/f68192e6516d89a77a2b16904725a77b75b42056",
        "width" : 640
      }, {
        "height" : 320,
        "url" : "https://i.scdn.co/image/f88e08cf9132c7facc2ee9fbdd1be3924b5c5a74",
        "width" : 320
      }, {
        "height" : 160,
        "url" : "https://i.scdn.co/image/1b6dd2116962f6d9741d0181708e31006b5048a7",
        "width" : 160
      } ],
      "name" : "DaBaby",
      "popularity" : 96,
      "type" : "artist",
      "uri" : "spotify:artist:4r63FhuTkUYltbVAg5TQnk"
    }, {
      "external_urls" : {
        "spotify" : "https://open.spotify.com/artist/5K4W6rqBFWDnAN6FQUkS6x"
      },
      "followers" : {
        "href" : null,
        "total" : 11016743
      },
      "genres" : [ "chicago rap", "rap" ],
      "href" : "https://api.spotify.com/v1/artists/5K4W6rqBFWDnAN6FQUkS6x",
      "id" : "5K4W6rqBFWDnAN6FQUkS6x",
      "images" : [ {
        "height" : 640,
        "url" : "https://i.scdn.co/image/bd1c6fdf3705cf9b7d0c8ac8e7bbed98e31a1559",
        "width" : 640
      }, {
        "height" : 320,
        "url" : "https://i.scdn.co/image/b1414e865a16bc0080085ee1901d0bfd19f83fcb",
        "width" : 320
      }, {
        "height" : 160,
        "url" : "https://i.scdn.co/image/ac5cb571c194ca5a942b8096618217839b901a76",
        "width" : 160
      } ],
      "name" : "Kanye West",
      "popularity" : 94,
      "type" : "artist",
      "uri" : "spotify:artist:5K4W6rqBFWDnAN6FQUkS6x"
    } ],
    "next" : "https://api.spotify.com/v1/me/following?type=artist&after=5K4W6rqBFWDnAN6FQUkS6x&limit=15",
    "total" : 20,
    "cursors" : {
      "after" : "5K4W6rqBFWDnAN6FQUkS6x"
    },
    "limit" : 15,
    "href" : "https://api.spotify.com/v1/me/following?type=artist&limit=15"
  }
}
"""
}
