# Open Font Glyphs for GL Styles

This project packages the most common free fonts with
[fontnik](https://github.com/mapbox/fontnik) so you don't have to
worry about [SDL](https://www.mapbox.com/blog/text-signed-distance-fields/)
and [gzipped PBFs](https://github.com/mapbox/mapbox-gl-js/issues/830).

## Configure Mapbox GL Style JSON

Your current Mapbox GL Style JSON configuration for `glyphs` will look like this.

```javascript
"glyphs": "mapbox://fonts/openmaptiles/{fontstack}/{range}.pbf",
```

In order to use the fonts without a Mapbox API key edit your Mapbox GL Style JSON and change the endpoint for `glyphs` to `http://fonts.openmaptiles.org/{fontstack}/{range}.pbf`.

```javascript
"glyphs": "http://fonts.openmaptiles.org/{fontstack}/{range}.pbf",
```

## Supported Font Families

The following fonts that are available in Mapbox Studio are supported.

* Google Noto (patched by Klokan Technologies)
* Open Sans
* PT Sans
* Roboto
* Metropolis

## Package the Fonts

Install [genfontgl](https://github.com/sabas/genfontgl).

```
npm install genfontgl
```

Generate fonts.

```
./generate.sh
```

## Font License

Please mind the license of the original fonts.
All fonts are either licensed under OFL or Apache.
