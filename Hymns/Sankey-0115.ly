\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "When I Survey the Wondrous Cross."
  subtitle    = "Sankey No. 115"
  subsubtitle = "Sankey 880 No. 424"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "E. Miller."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "I. Watts."
  meter       = "L.M."
  piece       = \markup\smallCaps "Rockingham."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s2.*5
  \mark \markup { \box "B" } s2.*5
  \mark \markup { \box "C" } s2.*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  ees'4
  g4(aes) f
  ees2 g4
  bes2 c4
  bes2 4
  ees2 d4
  c2 bes4 % B
  bes4(aes) g
  g4(f) f
  bes2 c4
  d2 bes4
  ees4(g,) a % C
  bes2 ees,4
  aes2 g4
  f2 ees4
  ees8([f] <ees g>4) f
  ees2
}

alto = \relative {
  ees'4
  ees2 d4
  ees2 4
  ees2 aes4
  g2 f4
  ees4(f) g
  g4(f) g % B
  d4(f) ees
  ees4(d) d
  f2 4
  f2 d4
  ees2 4 % C
  d2 ees4
  ees4(d) ees
  d2 ees4
  ees2 d4 ees2
}

tenor = \relative {
  g4
  bes4(c) aes
  g2 bes4
  bes2 ees4
  ees2 bes4
  g4(aes) bes
  c4(d) ees % B
  bes2 4
  bes2 4
  bes2 a4
  bes2 4
  bes4(c) c
  bes2 4
  c4(aes) bes
  aes2 g4
  c4(bes) aes
  g2
}

bass= \relative {
  ees4
  ees4(aes,) bes
  ees2 4
  g2 aes4
  ees2 d4
  c2 bes4
  aes4(aes') g % B
  f4(d) ees
  bes2 4
  d2 f4
  bes2 aes4
  g4(ees) f % C
  bes,2 g'4
  f2 ees4
  bes2 c4
  aes4(bes) bes
  ees2
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  When I sur -- vey the won -- drous cross,
  On which the Prince of Glo -- ry died,
  My rich -- est gain I count but loss,
  And pour con -- tempt on all __ my pride.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  For -- bid it, Lord, that I should boast,
  Save in the death of Christ my God:
  All the vain things that charm me most,
  I sac -- ri -- fice them to __ His blood.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  See! from His head, His hands, His feet,
  Sor -- row and love flow min -- gled down!
  Did e'er such loev and sor -- row meet,
  Or thorns com -- pose so rich a crown?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Were the whole realm of na -- ture mine,
  That were an of -- fering far too small:
  Love so a -- maz -- ing, so Di -- vine,
  De -- mands my soul, my life, my all.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nWhen " "I " sur "vey " "the " won "drous " "cross, "
  "\nOn " "which " "the " "Prince " "of " Glo "ry " "died, "
  "\nMy " rich "est " "gain " "I " "count " "but " "loss, "
  "\nAnd " "pour " con "tempt " "on " "all "  "my " "pride. "

  \set stanza = "2."
  "\nFor" "bid " "it, " "Lord, " "that " "I " "should " "boast, "
  "\nSave " "in " "the " "death " "of " "Christ " "my " "God: "
  "\nAll " "the " "vain " "things " "that " "charm " "me " "most, "
  "\nI " sac ri "fice " "them " "to "  "His " "blood. "

  \set stanza = "3."
  "\nSee! " "from " "His " "head, " "His " "hands, " "His " "feet, "
  "\nSor" "row " "and " "love " "flow " min "gled " "down! "
  "\nDid " "e'er " "such " "loev " "and " sor "row " "meet, "
  "\nOr " "thorns " com "pose " "so " "rich " "a " "crown? "

  \set stanza = "4."
  "\nWere " "the " "whole " "realm " "of " na "ture " "mine, "
  "\nThat " "were " "an " of "fering " "far " "too " "small: "
  "\nLove " "so " a maz "ing, " "so " Di "vine, "
  "\nDe" "mands " "my " "soul, " "my " "life, " "my " "all. "
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
  }
}

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
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
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
