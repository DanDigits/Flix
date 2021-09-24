# Flix

Flix is an app that allows users to browse movies from the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

---
## Flix Part 2

### User Stories

#### REQUIRED (10pts)
- [x] (5pts) User can tap a cell to see more details about a particular movie.
- [x] (5pts) User can tap a tab bar button to view a grid layout of Movie Posters using a CollectionView.

#### BONUS
- [ ] (2pts) User can tap a poster in the collection view to see a detail screen of that movie.
- [ ] (2pts) In the detail view, when the user taps the poster, a new screen is presented modally where they can view the trailer.

### App Walkthrough GIF
`TODO://` Add the URL to your animated app walkthough `gif` in the image tag below, `YOUR_GIF_URL_HERE`. Make sure the gif actually renders and animates when viewing this README. (🚫 Remove this paragraph after after adding gif)

<img src="YOUR_GIF_URL_HERE" width=250><br>

### Notes
For the most part, the only issue encountered was resolving the icon issue with collection view; I wasnt able to figure the issue with the icons, but the hint helped at the end. There is also an issue present with the Now Playing tab when someone taps on a movie for information; unfortunately the background for the details screen is transparent/adaptive to the users settings, so there is a visual error when oving to the details screen. I actually like the effect an it doesnt hinder use, so this will be resolved if a bit. As for additional features, they weren implemented as this week was rather troublesome. Do plan to implement in the future however.
------------------------------------------------------------------------

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
