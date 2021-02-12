\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Man of Galilee"
  subtitle    = "Sankey No. 50"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "H. P. Danks"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "John R. Clements"
  meter       = "L.M."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 3/4
  \tempo 4=120
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4. s2.*3 s4.
  \mark \markup { \box "B" } s4. s2.*3 s4. \time 4/4
  \mark \markup { \box "C" } s4. s1*2
  \mark \markup { \box "D" } s1*3
  \mark \markup { \box "E" } s1*2 s2 s8
}

TempoTrack = {
}

soprano = \relative {
  d'8 d e
  g4. fis8 fis e
  d4. fis8 fis g
  b4. a8 a g
  fis4. \bar "|" \partial 4. a8 gis a
  d4. d8 cis c % B
  b4. b8 c d
  a8 fis g4 e
  d4.\fermata \bar "||" \time 4/4 \partial 4. f8^\markup\smallCaps Chorus. fis g
  a2~8 fis g b % C
  a2~8 a d c
  b2~8 d cis b % D
  a2~8 a fis a
  d2~8 cis b ais
  cis4. b8 b d cis b % E
  a2~8 fis g e
  d2~8\fermata
}

alto = \relative {
  d'8 d d
  d4. d8 cis cis
  d4. d8 d e
  g4. fis8 e e
  d4. fis8 eis fis
  fis4. fis8 g a % B
  g4. g8 a b
  fis8 d cis4 cis
  d4.\fermata \bar "||" \time 4/4 \partial 4. d8 d e
  fis2~8 d e g
  fis2~8 fis fis a
  g2~8 b a g
  fis2~8 fis d fis
  fis2~8 a g g
  a4. g8 g b a g
  fis2~8 d cis cis
  d2~8\fermata
}

tenor = \relative {
  fis8 fis fis
  b4. a8 a g
  fis4. a8 a a
  d4. d8 a a
  a4. a8 b a
  a4. a8 a d % B
  d4. d8 d d
  d8 a e4 g
  fis4.\fermata \time 4/4 r8 r4
  r8 a fis a d r r4 % C
  r8 a fis a d r r4
  r8 b g b d r r4 % D
  r8 a fis a d r r4
  r8 a fis a d r r4
  r8 d d d d b cis d % E
  d8 d d d d a e g
  fis2~8\fermata
}

bass= \relative {
  d8 d d
  d4. d8 a a
  d4. d8 d d
  d4. d8 cis cis d4. d8 d d
  d4. d8 e fis % B
  g4. g8 g g
  a8 a a,4 a
  d4.\fermata \time 4/4 r8 r4
  r8 d d d d r r4 % C
  r8 d d d d r r4
  r8 g g g g r r4 % D
  r8 d d d d r r4
  r8 d d d d r r4
  r8 g g g g g g g % E
  a8 a a a a a a, a
  d2~8\fermata
}

chorusWomen = \lyricmode {
  \set stanza = "Women:"
  It was the Man __ of Gal -- i -- lee __
  Who whis -- per'd words __ of joy to me: __
  "\"Thy" ma -- ny sins __
  be all for -- giv -- en thee,
  Thy sins be all __ for -- giv -- en "thee;\""
}

chorusMen = \lyricmode {
  \set stanza = "Men:"
  It was the Man of Gal -- i -- lee
  Who whis -- per'd words of joy to me:
  "\"Thy" ma -- ny sins
  for -- giv -- en thee,
  Thy sins be all for -- giv -- en thee,
  for -- giv -- en "thee.\""
}

emptyVerse = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  I met a Stran -- ger fair to see,
  As walk'd I down life's rug -- ged way;
  He spoke so sweet, so ten -- der -- ly,
  He won me to Him -- self that day.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  And when that Stran -- ger spoke to me,
  My heart threw off its guil -- ty load;
  I felt at onec that I was free;
  I left my bur -- dens by the road.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I love that Stran -- ger since the hour
  He talk'd to me in ten -- der tone;
  A joy is mine, I feel its power—
  And Him as Lord I'm glad to own.p
}
  
wordsMidiWomen = \lyricmode {
  \set stanza = "1."
  I met a Stran -- ger fair to see,
  As walk'd I down life's rug -- ged way;
  He spoke so sweet, so ten -- der -- ly,
  He won me to Him -- self that day.
  It was the Man __ of Gal -- i -- lee __
  Who whis -- per'd words __ of joy to me: __
  "\"Thy" ma -- ny sins __
  be all for -- giv -- en thee,
  Thy sins be all __ for -- giv -- en "thee;\""

  \set stanza = "2."
  And when that Stran -- ger spoke to me,
  My heart threw off its guil -- ty load;
  I felt at onec that I was free;
  I left my bur -- dens by the road.
  It was the Man __ of Gal -- i -- lee __
  Who whis -- per'd words __ of joy to me: __
  "\"Thy" ma -- ny sins __
  be all for -- giv -- en thee,
  Thy sins be all __ for -- giv -- en "thee;\""

  \set stanza = "3."
  I love that Stran -- ger since the hour
  He talk'd to me in ten -- der tone;
  A joy is mine, I feel its power—
  And Him as Lord I'm glad to own.p
  It was the Man __ of Gal -- i -- lee __
  Who whis -- per'd words __ of joy to me: __
  "\"Thy" ma -- ny sins __
  be all for -- giv -- en thee,
  Thy sins be all __ for -- giv -- en "thee;\""
}
  
wordsMidiMen = \lyricmode {
  \set stanza = "1."
  I met a Stran -- ger fair to see,
  As walk'd I down life's rug -- ged way;
  He spoke so sweet, so ten -- der -- ly,
  He won me to Him -- self that day.
  It was the Man of Gal -- i -- lee
  Who whis -- per'd words of joy to me:
  "\"Thy" ma -- ny sins
  for -- giv -- en thee,
  Thy sins be all for -- giv -- en thee,
  for -- giv -- en "thee.\""

  \set stanza = "2."
  And when that Stran -- ger spoke to me,
  My heart threw off its guil -- ty load;
  I felt at onec that I was free;
  I left my bur -- dens by the road.
  It was the Man of Gal -- i -- lee
  Who whis -- per'd words of joy to me:
  "\"Thy" ma -- ny sins
  for -- giv -- en thee,
  Thy sins be all for -- giv -- en thee,
  for -- giv -- en "thee.\""

  \set stanza = "3."
  I love that Stran -- ger since the hour
  He talk'd to me in ten -- der tone;
  A joy is mine, I feel its power—
  And Him as Lord I'm glad to own.p
  It was the Man of Gal -- i -- lee
  Who whis -- per'd words of joy to me:
  "\"Thy" ma -- ny sins
  for -- giv -- en thee,
  Thy sins be all for -- giv -- en thee,
  for -- giv -- en "thee.\""
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorusWomen }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
            \new Lyrics = "chorusmen"
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice ="alignerM" \tenor
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \context Lyrics = "chorusmen" { \lyricsto "alignerM" \emptyVerse \chorusMen }
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorusWomen
                                              \wordsTwo   \chorusWomen
                                              \wordsThree \chorusWomen
                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Lyrics = "chorusmen"
            \clef "bass"
            \new NullVoice ="alignerM" { \tenor \tenor \tenor }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass  \bass  \bass  }
            \context Lyrics = "chorusmen" { \lyricsto "alignerM" \emptyVerse \chorusMen \emptyVerse \chorusMen \emptyVerse \chorusMen }
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidiWomen
          >>
                                  % Joint tenor/bass staff
          \new Lyrics = "chorusmen"
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice ="alignerM" { \tenor \tenor \tenor }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass  \bass  \bass  }
%            \context Lyrics = "chorusmen" { \lyricsto "alignerM" \wordsMidiMen }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
%            \new Lyrics \lyricsto "aligner" \wordsMidiWomen
          >>
                                  % Joint tenor/bass staff
          \new Lyrics = "chorusmen"
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice ="alignerM" { \tenor \tenor \tenor }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass  \bass  \bass  }
            \context Lyrics = "chorusmen" { \lyricsto "alignerM" \wordsMidiMen }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
