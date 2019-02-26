\version "2.19.80"
%\include "../include/merge-rests.ly"

%#(set-global-staff-size 19)

\header {
  title    = "Clementine"
%  poet     = "Joseph M. Scriven"
  composer = "Arr. by H.A.C."
}

%\layout {
%  ragged-last-bottom = ##f
%}

global = {
  \key g \major
  \time 3/4
  \tempo 4=120
  \partial 4
}

sopMaj = \relative c'' {
  g4 d b'8. b16
  b4 g g8 b
  d8. d16 c4 b
  a2 a8 b
  c4 c b8. a16
  b4 g g8 b
  a4. d,8 fis a
  g2
}

sopChorus = \relative c'' {
  g8. g16
  g4 d b'8. b16
  b4 g g8 b
  d8. d16 c4 b
  a2 a8 b
  c4 c b8. a16
  b4 g g8 b
  a4. d,8 fis a
  g2
}

sopMin = \relative c'' {
  \key g \minor
  g4 d bes'8. bes16
  bes4 g g8 bes
  d8. d16 c4 bes
  a2 a8 bes
  c4 c bes8. a16
  bes4 g g8 bes
  a4. d,8 f a
  g2
}

sopMChorus = \relative c'' {
  g8. g16
  g4 d bes'8. bes16
  bes4 g g8 bes
  d8. d16 c4 bes
  a2 a8 bes
  c4 c bes8. a16
  bes4 g g8 bes
  a4. d,8 f a
  g2
}

altMaj = \relative c'' {
  g8. g16
  d4 d g8. g16
  g4 d g8 g
  g8. g16 a4 g
  fis2 fis8 fis
  g4 g d8. d16
  d4 d e8 e
  e4. d8 d fis
  d2
}

altMin = \relative c'' {
  g8. g16
  d4 d g8. g16
  g4 d g8 g
  g8. g16 a4 g
  f2 f8 f
  g4 g d8. d16
  d4 d ees8 ees
  ees4. d8 d f
  d2
}

tenMaj = \relative c' {
  g8. g16
  a4 a d8. d16
  d4 b b8 d
  d8. d16 e4 e
  a,2 d8 d
  c4 c c8. c16
  b4 b b8 g
  a4. fis8 a c
  b2
}

tenMin = \relative c' {
  g8. g16
  a4 a d8. d16
  d4 bes b8 d
  d8. d16 ees4 ees
  a,2 d8 d
  c4 c c8. c16
  bes4 bes bes8 g
  a4. f8 a c
  bes2
}

basMaj = \relative c' {
  g8. g16
  g4 g g8. g16
  g4 g g8 g
  b,8. b16 c4 c
  d2 d8 d
  e4 e fis8. fis16
  g4 g e8 e
  c4. d8 d d
  g,2
}

basMin = \relative c' {
  g8. g16
  g4 g g8. g16
  g4 g g8 g
  bes,8. bes16 c4 c
  d2 d8 d
  ees4 ees f8. f16
  g4 g ees8 ees
  c4. d8 d d
  g,2
}

chorus = \lyricmode {
  \set stanza = "All"
  Oh, my darl- ing, oh, my darl- ing,
  Oh, my darl- ing Clem- en- tine,
  Thou art lost and gone for ev- er,
  Dread- ful sor- ry, Clem- ent- ine.
}

verseOne = \lyricmode {
  \set stanza = "Men"
  In a cav- ern, by a can- yon,
  Ex- ca- vat- ing for a mine,
  Dwelt a min- er, for- ty- nin- er,
  And his daugh- ter Clem- en- tine.
}

verseTwo = \lyricmode {
  \set stanza = "Robert"
  Light she was, and like a fai- ry
  Ad her shoes were num- ber nine,
  Her- ring box- es with- out top- ses,
  San- dals were for Clem- ent- ine.
}

verseThree = \lyricmode {
  \set stanza = "Diane"
  Drove she duck- lings to the wat- er,
  Ev- ery morn- ing just at nine,
  Struck her foot a- gainst a splint- er,
  Fell in- to the foam- ing brine.
}

verseFour = \lyricmode {
  \set stanza = "Kevin"
  Ros- y lips a- bove the wat- er,
  Blow- ing bub- bles might- y fine,
  But, al- as I was no swim- mer,
  So I lost my Clem- ent- ine.
}

verseFive = \lyricmode {
  \set stanza = "Geoff"
  How I missed her! How I missed her!
  How I missed my Clem- ent- ine,
  But I kissed her lit- tle sis- ter,
  And for- got my Clem- ent- ine.
}

\book {
  \score {
    \new ChoirStaff <<
      \new Staff = women <<
	\new Voice = sop { \global \voiceOne
                           \repeat volta 3 {
			   g'8. g'16 \sopMaj \sopChorus
			   } \key g \minor \break
			   g'8.^\markup{\bold{Kevin}}  g'16 \sopMin \sopMChorus \key g \major \bar ":|."
%			   g'8.^\markup{\bold{Geoff}}  g'16 \sopMaj \sopChorus  \bar "|."
			 }
	\new Voice = alt { \global \voiceTwo
                           \repeat volta 3 {
			   \altMaj \altMaj
			 }
			   \key g \minor
			   \altMin \altMin \key g \major
%			   \altMaj \altMaj \bar "|."
			 }
      >>
      \new Lyrics \lyricsto sop { \verseOne   \chorus \verseFour \chorus }
      \new Lyrics \lyricsto sop { \verseTwo }
      \new Lyrics \lyricsto sop { \verseThree }
      \new Lyrics \lyricsto sop { \verseFive }
      \new Staff = men <<
	\new Voice = ten \clef "bass" { \global \voiceOne
\repeat volta 3 {
					\tenMaj \tenMaj
				      }
					\key g \minor
					\tenMin \tenMin \key g \major
%					\tenMaj \tenMaj
				      }
	\new Voice = bas \clef "bass" { \global \voiceTwo
\repeat volta 3 {
					\basMaj \basMaj
				      }
					\key g \minor
					\basMin \basMin \key g \major
%					\basMaj \basMaj
				      }
      >>
    >>
    
    \layout {
      \context {
	\Staff
	\override DynamicText.direction = #UP
	\override DynamicText.staff-padding = #0
	\override DynamicLineSpanner.direction = #UP
      }
    }
    \midi {}
  }
}
