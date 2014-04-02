# Antipodes

This is a silly gem of no consequence with exactly one feature: to find the
[antipodes](http://en.wikipedia.org/wiki/Antipodes) of a given place on Earth.

Both latitude/longitude coordinates and place names are accepted as input. If a
place name is used, it is geocoded with the
[Geocoder](https://github.com/alexreisner/geocoder) gem.

```ruby
Antipodes.for(47.6062095, -122.3320708) #=> [-47.6062095, 57.6679292]

Antipodes.for(-47.6062095, 57.6679292) #=> [47.6062095, -122.3320708]

Antipodes.for('Beijing') #=> [-39.90403, -63.592473999999996]

Antipodes.for('Buenos Aires') #=> [34.6037232, 121.6184069]
```

While it would be cool to get a corresponding place name (instead of
lat/lon), it’s neither practical (most places don’t have land antipodes, since
most of Earth is covered in water) nor possible given the current range of
geocoding options.
