# Flix

Flix is an app that allows users to browse movies from the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

---

## Flix Part 1

### User Stories
#### REQUIRED (10pts)
- [x] (2pts) User sees an app icon on the home screen and a styled launch screen.
- [x] (5pts) User can view and scroll through a list of movies now playing in theaters.
- [x] (3pts) User can view the movie poster image for each movie.

#### BONUS
- [ ] (2pt) User can view the app on various device sizes and orientations.
- [ ] (1pt) Run your app on a real device.

### App Walkthrough GIF
<img src="YOUR_GIF_URL_HERE" width=250><br>

### Notes
One specific challenge I encountered when creating this app was the curious top and bottom (maybe lateral as well but this wasnt investigated) padding in the "Labels" object, towards which synopises (in my project, "descriptions") were unusually spaced relative to the dimensions set by the image and relative layout. In the synopsis label, there appeared to be extra padding on the top and bottom which made a cut (with ...) paragraph appear unusual. Im unsure if this is rather due to the line amount, as I experimented both with 0 and some specific number, but still encounterd this issue with visually-appropriate line amounts. In the end I let it be and resized my picure, so the spacing wasn't too apparent, but im still curious on why this was.
