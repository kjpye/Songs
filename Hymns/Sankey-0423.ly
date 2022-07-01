\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, Wanderer, Come!"
  subtitle    = "Sankey No. 423"
  subsubtitle = "Sankey 880 No. 325"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mary A. Baker."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key a \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8  s2.*2 s4.
  \mark \markup { \box "B" } s4. s2.*2 s4. s4
  \mark \markup { \box "C" } s8  s2.*3 s4.
  \mark \markup { \box "D" } s4. s2.*3
  \mark \markup { \box "E" }     s2.*2 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'8
  a8. 16 8 b a gis
  a4. e4 a8
  cis8. 16 8 \bar "|" \break 8 b a
  \tag #'dash    {b4.~4  \slurDashed e,16(16) \slurSolid} % B
  \tag #'(v2 v3) {b'4.~4             e,8                }
  \tag #'v1      {b'4.~4             e,16 16            }
  cis'8. 16 8
  a8 b cis
  \tag #'dash    {d4. fis,4 \bar "|" \break \slurDashed b16(16) \slurSolid}
  \tag #'(v2 v3) {d4. fis,4 \bar "|" \break             b8                }
  \tag #'v1      {d4. fis,4 \bar "|" \break             b16 16            }
  a8. gis16 a8 cis16 8. b8 % C
  a4.~4.
  cis4.^\markup\smallCaps Chorus. a
  fis8. gis16 a8 \bar "|" \break e4 8
  a8. 16 8 8 gis a % D
  cis4 b8 4.
  cis4. a
  fis8. gis16 a8 e4 8 % E
  fis8. gis16 a8 a gis a
  cis4 b8 a4
}

alto = \relative {
  \autoBeamOff
  cis'8
  cis8. 16 8 d cis b
  cis4. 4 8
  e8. 16 8 8 8 8
  \tag #'dash    {e4.~4 \slurDashed 16(16) \slurSolid}% B
  \tag #'(v2 v3) {e4.~4             8                }
  \tag #'v1      {e4.~4             16 16            }
  e8. a16 8 g8 8 8
  \tag #'dash    {fis4. d4 \slurDashed fis16(16) \slurSolid}
  \tag #'(v2 v3) {fis4. d4             fis8                }
  \tag #'v1      {fis4. d4             fis16 16            }
  e8. 16 8 16 8. d8 % C
  cis4.~4.
  e4. cis
  d8. e16 d8 cis4 8
  fis8. 16 e8 dis8 8 8 % D
  e4 8 4.
  e4. cis
  d8. e16 d8 cis4 8 % E
  d8. e16 fis8 e8 8 8
  a4 e8 4
}

tenor = \relative {
  \autoBeamOff
  a8
  e8. 16 8 gis a e
  e4. a4 e8
  a8. 16 8 8 gis a
  \tag #'dash    {gis4.~4 \slurDashed 16(16) \slurSolid} % B
  \tag #'(v2 v3) {gis4.~4             8                }
  \tag #'v1      {gis4.~4             16 16            }
  a8. e'16 8 cis d e
  \tag #'dash    {d4. a4 \slurDashed d16(16) \slurSolid}
  \tag #'(v2 v3) {d4. a4             d8                }
  \tag #'v1      {d4. a4             d16 16            }
  cis8. b16 cis8 a16 8. gis8 % C
  a4.~4.
  a4. 4.
  a8. 16 8 4 8
  cis8. 16 8 b8 8 a % D
  a4 gis8 4.
  a4. 4.
  a8. 16 8 4 8 % E
  a8. 16 8 8 b cis
  e4 d8 cis4
}

bass = \relative {
  \autoBeamOff
  a,8
  a8. 16 8 e' e e
  a,4. 4 8
  a8. 16 8 8 b cis
  \tag #'dash    {e4.~4 \slurDashed 16(16) \slurSolid} % B
  \tag #'(v2 v3) {e4.~4             8                }
  \tag #'v1      {e4.~4             16 16            }
  a8. 16 8 8 8 8
  \tag #'dash    {d,4. 4 \slurSolid b16(16) \slurSolid}
  \tag #'(v2 v3) {d4. 4             b8                }
  \tag #'v1      {d4. 4             b16 16            }
  e8. 16 8 16 8. 8 % C
  a,4.~4.
  a4. 4.
  d8. 16 fis8
  a4 8
  fis8. 16 8 b,8 8 8 % D
  e4 8 4.
  a,4. 4.
  d8. 16 fis8 a4 a,8 % E
  d8. 16 8 cis b a
  e'4 8 a,4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Come! come! wan -- der -- er, come!
  There's plen -- ty for thee in thy Fa -- ther's home;
  Come! come!
  wan -- der -- er, come!
  There's wel -- come and love in thy Fa -- ther's home.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Why per -- ish with cold and with hun -- ger?
  There's plen -- ty for all and to spare
  \nom In the \yesm beau -- ti -- ful home of thy Fa -- ther,
  \nom And a \yesm wel -- come a -- wait -- ing thee there.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come, wan -- d'rer, and say to thy Fa -- ther,
  "\"I've" sinned a -- gainst hea -- ven and Thee;
  Not wor -- thy a -- place with Thy chil -- dren,
  Thy ser -- vant I glad -- ly would "be.\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thy Fa -- ther is wait -- ing to greet thee,
  And watch -- ing for thee to re -- turn;
  His heart is so full of com -- pas -- sion:
  Oh, pro -- di -- gal, wilt thou not come?
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Why " per "ish " "with " "cold " "and " "with " hun "ger? "
  "\nThere's " plen "ty " "for " "all " "and " "to " "spare "
  \nom In the \yesm beau -- ti -- ful home of thy Fa -- ther,
  \nom And a \yesm wel -- come a -- wait -- ing thee there.
  "\nCome! " "come! " wan der "er, " "come! "
  "\nThere's " plen "ty " "for " "thee " "in " "thy " Fa "ther's " "home; "
  "\nCome! " "come! "
  "\nwan" der "er, " "come! "
  "\nThere's " wel "come " "and " "love " "in " "thy " Fa "ther's " "home. "

  \set stanza = "2."
  "\nCome, " wan "d'rer, " "and " "say " "to " "thy " Fa "ther, "
  "\n\"I've " "sinned " a "gainst " hea "ven " "and " "Thee; "
  "\nNot " wor "thy " a "place " "with " "Thy " chil "dren, "
  "\nThy " ser "vant " "I " glad "ly " "would " "be.\" "
  "\nCome! " "come! " wan der "er, " "come! "
  "\nThere's " plen "ty " "for " "thee " "in " "thy " Fa "ther's " "home; "
  "\nCome! " "come! "
  "\nwan" der "er, " "come! "
  "\nThere's " wel "come " "and " "love " "in " "thy " Fa "ther's " "home. "

  \set stanza = "3."
  "\nThy " Fa "ther " "is " wait "ing " "to " "greet " "thee, "
  "\nAnd " watch "ing " "for " "thee " "to " re "turn; "
  "\nHis " "heart " "is " "so " "full " "of " com pas "sion: "
  "\nOh, " pro di "gal, " "wilt " "thou " "not " "come? "
  "\nCome! " "come! " wan der "er, " "come! "
  "\nThere's " plen "ty " "for " "thee " "in " "thy " Fa "ther's " "home; "
  "\nCome! " "come! "
  "\nwan" der "er, " "come! "
  "\nThere's " wel "come " "and " "love " "in " "thy " Fa "ther's " "home. "
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                       }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                       }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
                                       }
            \new Voice \partCombine { \global
                                      \keepWithTag #'v1 \soprano
                                      \keepWithTag #'v2 \soprano
                                      \keepWithTag #'v3 \soprano
                                      \bar "|." }
            { \global
              \keepWithTag #'v1 \alto \nl
              \keepWithTag #'v2 \alto \nl
              \keepWithTag #'v3 \alto \nl
              \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global
                                      \keepWithTag #'v1 \tenor
                                      \keepWithTag #'v2 \tenor
                                      \keepWithTag #'v3 \tenor
                                    }
            { \global
              \keepWithTag #'v1 \bass
              \keepWithTag #'v2 \bass
              \keepWithTag #'v3 \bass
            }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
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
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
                                       }
            \new Voice \partCombine { \global
                                      \keepWithTag #'v1 \soprano
                                      \keepWithTag #'v2 \soprano
                                      \keepWithTag #'v3 \soprano
                                      \bar "|." }
            { \global
              \keepWithTag #'v1 \alto \nl
              \keepWithTag #'v2 \alto \nl
              \keepWithTag #'v3 \alto \nl
              \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global
                                      \keepWithTag #'v1 \tenor
                                      \keepWithTag #'v2 \tenor
                                      \keepWithTag #'v3 \tenor
                                    }
            { \global
              \keepWithTag #'v1 \bass
              \keepWithTag #'v2 \bass
              \keepWithTag #'v3 \bass
            }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
