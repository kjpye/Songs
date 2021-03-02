\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, it is Wonderful"
  subtitle    = "Sankey No. 58"
  subsubtitle = "(A popular Rescue Song)"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "E. A. Hoffman."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. C. Green"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s1*3
  \mark \markup { \box "B" } s1*3 s2
  \mark \markup { \box "C" } s2 s1*2
  \mark \markup { \box "D" } s1*3 s2
  \mark \markup { \box "E" } s2 s1*3
}

TempoTrack = {
}

soprano = \relative {
  aes'4 aes f ees
  aes4 aes f e
  aes4 aes8 bes c c aes aes
  bes4 c bes2 % B
  c4 ees c aes
  c4 bes aes f
  ees4 aes8 bes \bar "|" \break \partial 2 c8 c aes aes
  bes4 c aes2 \bar "||"
  aes4^\markup \smallCaps Chorus. aes8 aes f ees ees4 \break
  aes8 aes aes aes f ees ees4 % D
  aes4 aes c aes
  bes4 ees ees2
  ees4 8 8 \bar "|" \break \partial 2 c8 bes aes4
  aes8 aes aes aes f ees ees4 % E
  aes4 c ees aes,
  c4 bes aes2
}

alto = \relative {
  c'4 c des c
  c4 c des c
  c4 ees8 8 8 8 8 8
  ees4 4 2 % B
  ees4 aes ees ees
  ees4 des c des
  c4 ees8 ees ees ees ees ees
  des4 ees c2 % C
  c4 8 8 des c c4
  c8 8 8 8 des c c4 % D
  c4 c ees ees
  ees4 g g2
  aes4 8 8 ees des c4
  c8 c c c des c c4 % E
  c4 ees aes ees
  ees4 des c2
}

tenor = \relative {
  ees4 ees aes aes
  ees4 ees aes aes
  aes4 8 g aes aes aes aes
  g4 aes g2 % B
  aes4 c aes c
  aes4 g aes aes
  aes4 aes8 g aes aes aes aes
  g4 g ees2 % C
  ees4 ees8 ees aes aes aes4
  ees8 ees ees ees aes aes aes4 % D
  ees4 ees aes aes
  g4 bes bes2
  c4 c8 c aes aes aes4
  ees8 ees ees ees aes aes aes4 % E
  ees4 aes c aes
  aes4 g aes2
}

bass= \relative {
  aes,4 aes aes aes
  aes4 aes aes aes
  aes4 c8 ees aes aes c, c
  ees4 ees ees2 % B
  aes4 aes aes aes
  aes4 ees f des
  aes4 c8 ees aes aes c, c % C
  ees4 ees aes,2
  aes4 8 8 8 8 4
  aes8 8 8 8 8 8 4 % D
  aes4 aes aes c
  ees4 4 2
  aes4 8 8 aes, aes aes4
  aes8 8 8 8 8 8 4 % E
  aes4 aes aes c
  ees4 ees aes,2
}

chorus = \lyricmode {
  Oh, it is won -- der -- ful,
  Ve -- ry, ve -- ry won -- der -- ful,
  All His grace so rich and free!
  Oh, it is won -- der -- ful,
  Ve -- ry, ve -- ry won -- der -- ful,
  All His love and grace to me!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Can it be that Je -- sus bought me,
  And on the shame -- ful cross a -- toned for me,
  Loved me, chose me ere I knew Him?
  Oh, what a pre -- cious, pre -- cious Friend is He!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Praise His name, He sought and found me,
  Saved me from wan -- der -- ing and brought me near;
  Free -- ly now His grace be -- stow -- ing,
  Je -- sus is grow -- ing un -- to me more dear.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, how long had we been wait -- ing,
  Wait -- ing the dawn -- ing of the pre -- cious hour.
  When I should at least be yield -- ing,
  Yield -- ing to Je -- sus ev -- 'ry ran -- somed power.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  From that hour He has been seek -- ing
  How He may fill me with His pre -- cious love;
  How He may through grace trans -- form me,
  Meet for the fel -- low -- ship of saints a -- bove.
}
  
wordsMidi = \lyricmode {
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
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
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
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
    \midi {}
  }
}
