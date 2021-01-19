\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "This Same Jesus"
  subtitle    = "Sankey No. 14"
  subsubtitle = "C.C. 19"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "W. A. Ogden"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "W. A. O."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s1*3
  \mark \markup { \box "B" } s1*3
  \mark \markup { \box "C" } s1*5
  \mark \markup { \box "D" } s1*4 s2.
}

soprano = \relative {
  \global
  d'8 ees
  f4 f f f8 f
  g8 bes bes4 bes g
  f4 f d' bes
  c2~4 bes8 c % B
  d4 d d bes
  g8 bes bes4 bes a8 g
  f4 f bes a % C
  bes2. r4 \bar "||"
  bes2^\markup \smallCaps Chorus. f4 bes
  g2 f
  f4 c' c c8 c
  bes4 c d2 % D
  bes2 f4 bes
  g2 f4 f
  f4 bes bes a
  bes2.
}

alto = \relative {
  \global
  bes8 c
  d4 d d d8 d
  ees8 ees ees4 ees ees
  d4 d f f
  f2~4 f8 f % B
  f4 f f f
  ees8 g g4 g f8 ees
  d4 d f ees % C
  d2. r4 \bar "||"
  d2 d4 d
  ees2 d
  f4 f f f8 f
  f4 f f2 % D
  d2 d4 d
  ees2 d4 d
  d4 d ees ees
  d2.
}

tenor = \relative {
  \global
  f8 f
  bes4 bes bes bes8 bes
  bes8 g g4 g bes
  bes4 bes bes bes
  a2~4 bes8 a % B
  bes4 bes bes bes
  bes8 bes bes4 bes bes8 bes
  bes4 bes d c % C
  bes2. r4 \bar "||"
  f2 bes4 bes
  bes2 bes
  a4 a a a8 a
  bes4 a bes2
  f2 bes4 bes
  bes2 bes4 bes
  bes4 bes c f,
  f2.
}

bass= \relative {
  \global
  bes,8 bes bes4 bes bes bes8 bes
  ees8 ees ees4 ees ees
  bes4 bes bes d
  f2~8 ees % B
  d c
  bes4 bes bes d
  ees8 ees ees4 ees ees8 ees
  f4 f f f % C
  bes,2. r4 \bar "||"
  bes2 bes4 bes
  bes2 bes
  f'4 f f f8 ees
  d4 f bes2 % D
  bes,2 bes4 bes
  bes2 bes4 bes
  f'4 f f f
  bes,2.
}

chorus = \lyricmode {
  He is my Sa -- viour!
  This same Je -- sus of whom I've heard,
  He is my Sa -- viour!
  I've found it in His Word.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  I have heard of Je -- sus in Beth -- le -- hem born,
  Of whom it hath been said,
  That a star the wise men fol -- low'd from far
  Till they reach'd His low -- ly bed.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I have heard of Je -- sus on Gal -- i -- lee's wave;
  The wind o -- bey'd His will.
  And the sea grew calm at hear -- ing His voice
  In the won -- drous "\"Peace," be "still!\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I have heard of Je -- sus at Beth -- a -- ny's home,
  When stand -- ing by the grave,
  How He cried, "\"Come" forth, O Laz -- a -- rus, "now!\""
  In His migh -- ty power to save.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I have heard of Je -- sus on Calv -- a -- ry's brow—
  He died a Sa -- viour true;
  And He said, "\"For" give them, Fath -- er, I pray,
  For they know not what they "do.\""
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  I have heard of Je -- sus in sep -- ul -- chre laid,
  In death's dark, sul -- len gloom;
  How He burst the bars, and ris -- ing, came  forth,
  Migh -- ty Vic -- tor from the tomb.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
}
  
wordsMidi = \lyricmode {
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
%    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice \RehearsalTrack
            \new Voice \partCombine { \soprano \bar "|." } \alto
            \new NullVoice = "aligner" { \soprano }
            \new Lyrics \lyricsto "aligner"   \wordsOne
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner" { \wordsThree \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
%            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
%                                              \wordsTwo   \chorus
%                                              \wordsThree \chorus
%                                              \wordsFour  \chorus
%                                              \wordsFive  \chorus
%                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice \partCombine \tenor \bass
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
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice { \RehearsalTrack \bar "||"
                         \RehearsalTrack \bar "||"
                         \RehearsalTrack \bar "||"
                         \RehearsalTrack \bar "||"
                         \RehearsalTrack \bar "|."
                       }
            \new Voice \partCombine { \soprano \soprano \soprano \soprano \soprano \bar "|." }
            { \alto \alto \alto \alto \alto }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice \partCombine {
              \tenor
              \tenor
              \tenor
              \tenor
              \tenor
            } {
              \bass
              \bass
              \bass
              \bass
              \bass
            }
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
  \bookOutputSuffix "midi"
  \score {
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice \partCombine { \soprano \soprano \soprano \soprano \soprano \bar "|." }
            { \alto \alto \alto \alto \alto }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice \partCombine {
              \tenor
              \tenor
              \tenor
              \tenor
              \tenor
            } {
              \bass
              \bass
              \bass
              \bass
              \bass
            }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
