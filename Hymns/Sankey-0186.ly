\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Coming."
  subtitle    = "Sankey No. 186"
  subsubtitle = "C.C. No. 69"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. O. Cushing."
  meter       = \markup\smallCaps "c.m."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key aes \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8  s2.*4 s4.
  \mark \markup { \box "B" } s4. s2.*4
  \mark \markup { \box "C" }     s2.*4 s4. s4
  \mark \markup { \box "D" } s8  s2.*4 s4.
  \mark \markup { \box "E" } s4. s2.*4 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8
  c'4 8 4 bes8
  aes4 8 4 8
  bes4 aes8 g4 f8
  ees4.~4 8
  ees4 aes8 \bar "|" \break aes4 bes8
  c4 8 4 aes8 % B
  des4 c8 bes4 aes8
  bes4.~4 r8 \bar "||"
  c8^\markup\smallCaps Chorus. 4 4 bes8
  aes8 4~4 8 % C
  bes4 aes8 g4 f8
  ees4.~4 r8
  ees8 aes4 4 bes8
  c8 4~4 \bar "|" \break 8
  ees4 8 c4 aes8 % D
  bes4.~4 r8
  c8 4 4 bes8
  aes8 4~4 8
  aes4 bes8 \bar "|" \break aes4 f8
  ees4.~4 8 % E
  f4 g8 aes4 bes8
  c4 d8 ees4\fermata aes,8
  c4 aes8 bes8 4
  aes4.~4
}

alto = \relative {
  \autoBeamOff
  c'8
  ees4 8 4 des8
  c4 8 4 ees8
  des4 8 ees4 des8
  c4.~4 8
  c4 8 ees4 8
  ees4 8 4 8 % B
  g4 aes8 ees4 d8
  ees4.~4 r8
  ees8 4 4 des8
  c8 4~4 ees8 % C
  f4 8 ees4 des8
  c4.~4 r8
  c8 4 ees4 8
  ees8 4~4 8
  ees4 8 4 d8 % D
  ees4.~4 r8
  ees8 4 4 des8
  c8 4~4 ees8
  f4 8 4 des8
  c4.~4 8
  des4 ees8 4 8
  ees4 aes8 g4\fermata ees8
  ees4 8 g8 4
  aes4.~4
}

tenor = \relative {
  \autoBeamOff
  aes8
  aes4 8 4 ees8
  ees4 8 4 aes8
  f4 8 aes4 8
  aes4.~4 8
  ees4 8 aes4 g8
  aes4 8 4 c8 % B
  ees4 8 4 bes8
  g4.~4 r8
  aes8 4 4 ees8
  ees8 4~4 aes8 % C
  aes4 8 4 8
  aes4.~4 r8
  aes8 4 4 g8
  aes8 4~4 8
  c4 8 aes4 bes8
  g4.~4 r8
  aes8 4 4 ees8
  ees8 4~4 aes8
  aes4 8 4 8
  aes4.~4 8
  aes4 bes8 aes4 g8
  aes4 bes8 4\fermata c8
  aes4 c8 des8 4
  c4.~4
}

bass = \relative {
  \autoBeamOff
  aes,8
  aes4 8 4 8
  aes4 8 4 c8
  des4 8 4 8
  aes4.~4 8
  aes4 8 c4 ees8
  aes4 8 4 8 % B
  bes4 aes8 g4 f8
  ees4.~4 r8
  aes,8 4 4 8
  aes8 4~4 c8 % C
  des4 8 4 8
  aes4.~4 r8
  aes8 4 c4 ees8
  aes8 4~4 8
  aes4 8 4 f8 % D
  ees4.~4 r8
  aes,8 4 4 8
  aes8 4~4 c8
  des4 8 4 8
  aes4.~4 8
  des4 8 c4 ees8
  aes4 f8 ees4\fermata aes8
  aes4 8 ees8 4
  aes,4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Com -- ing, yes, He's com -- ing,
  The Day -- spring from on high;
  Com -- ing, yes, He's com -- ing,
  The pro -- mised hour is nigh;
  Com -- ing, yes, He's com -- ing,
  Let all the ran -- somed sing;
  The hills are bright with shin -- ing light:
  All hail the com -- ing King!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  O watch -- man on the moun -- tain height,
  Pro -- claim the com -- ing day;
  Be -- hold the spires of gold -- en fires
  Point up -- ward far a -- way.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O watch -- man, bid the sleep -- ing Church
  A -- wake, a -- rise, and pray;
  The heav'n -- ly Bride -- groom soon will come,
  And now is on His way.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  All hail to Zi -- on's glo -- rious King,
  By proph -- ets long fore -- told;
  Praise Him in song, ye an -- gel -- throng,
  Strikes all your harps of gold.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " watch "man " "on " "the " moun "tain " "height, "
  "\nPro" "claim " "the " com "ing " "day; "
  "\nBe" "hold " "the " "spires " "of " gold "en " "fires "
  "\nPoint " up "ward " "far " a "way. "
  "\nCom" "ing, " "yes, " "He's " com "ing, "
  "\nThe " Day "spring " "from " "on " "high; "
  "\nCom" "ing, " "yes, " "He's " com "ing, "
  "\nThe " pro "mised " "hour " "is " "nigh; "
  "\nCom" "ing, " "yes, " "He's " com "ing, "
  "\nLet " "all " "the " ran "somed " "sing; "
  "\nThe " "hills " "are " "bright " "with " shin "ing " "light: "
  "\nAll " "hail " "the " com "ing " "King! "

  \set stanza = "2."
  "\nO " watch "man, " "bid " "the " sleep "ing " "Church "
  "\nA" "wake, " a "rise, " "and " "pray; "
  "\nThe " heav'n "ly " Bride "groom " "soon " "will " "come, "
  "\nAnd " "now " "is " "on " "His " "way. "
  "\nCom" "ing, " "yes, " "He's " com "ing, "
  "\nThe " Day "spring " "from " "on " "high; "
  "\nCom" "ing, " "yes, " "He's " com "ing, "
  "\nThe " pro "mised " "hour " "is " "nigh; "
  "\nCom" "ing, " "yes, " "He's " com "ing, "
  "\nLet " "all " "the " ran "somed " "sing; "
  "\nThe " "hills " "are " "bright " "with " shin "ing " "light: "
  "\nAll " "hail " "the " com "ing " "King! "

  \set stanza = "3."
  "\nAll " "hail " "to " Zi "on's " glo "rious " "King, "
  "\nBy " proph "ets " "long " fore "told; "
  "\nPraise " "Him " "in " "song, " "ye " an gel "throng, "
  "\nStrikes " "all " "your " "harps " "of " "gold. "
  "\nCom" "ing, " "yes, " "He's " com "ing, "
  "\nThe " Day "spring " "from " "on " "high; "
  "\nCom" "ing, " "yes, " "He's " com "ing, "
  "\nThe " pro "mised " "hour " "is " "nigh; "
  "\nCom" "ing, " "yes, " "He's " com "ing, "
  "\nLet " "all " "the " ran "somed " "sing; "
  "\nThe " "hills " "are " "bright " "with " shin "ing " "light: "
  "\nAll " "hail " "the " com "ing " "King! "
}

\book {
  \bookOutputSuffix "repeat"
  \score {
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
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
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
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
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
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
