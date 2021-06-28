\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Cleansing Fountain."
  subtitle    = "Sankey No. 125"
  subsubtitle = "Sankey 880 No. 509"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  meter       = "C.M."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s8 s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*5
  \mark \markup { \box "D" } s2.*4 s4. s4
}

TempoTrack = {
%  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s8 s2.*16
  s4. \tempo 4=22 s4 \tempo 4=120 s8
  s4. s4
}

soprano = \relative {
  \autoBeamOff
  ees'8
  ees4 8 8[f] g
  aes4 8 8[g] aes
  bes4 8 aes4 bes8
  c4.~4 8
  des4 c8 bes4 aes8 % B
  g4 aes8 bes4 8
  c4 8 d[c] d
  ees4.~4 des8
  c4 aes8 bes[aes] g % C
  aes4.~4 r8 \bar "||"
  c4.^\markup\smallCaps Chorus. aes4 f8
  ees4(d8) ees4 aes8
  c4. bes4 aes8
  ees'4.~4 des8 % D
  c4 des8 c4 bes8
  aes4 g8 bes[aes] f
  ees8[d] ees c'4\fermata bes8
  aes4.~4
}

alto = \relative {
  \autoBeamOff
  c'8
  c4 8 des4 8
  c4 8 ees4 8
  ees4 des8 c4 ees8
  ees4.~4 aes8
  g4 aes8 ees4 d8 % B
  ees4 d8 ees4 8
  ees4 8 aes4 8
  g4.~4 ees8
  ees4 8 des4 8 % C
  c4.~4 r8
  ees4. c4 des8
  c4(b8) c4 8
  ees4. 4 8
  aes4.~4 ees8 % D
  ees4 f8 ees4 8
  ees4 e8 f4 des8
  c8[b] c ees4\fermata des8
  c4.~4
}

tenor = \relative {
  \autoBeamOff
  aes8
  aes4 8 g[aes] bes
  aes4 8 c[bes] aes
  g4 8 aes4 g8
  aes4.~4 ees'8
  ees4 8 bes4 8 % B
  bes4 8 4 g8
  aes4 8 bes4 8
  bes4.~4 8
  aes4 8 g[aes] bes
  aes4.~4 r8
  aes4. 4 8
  aes4(f8) aes4 8
  aes4. des4 c8
  bes4.~4 8
  aes4 8 4 g8
  aes4 bes8 aes4 8
  aes4 8 g4\fermata 8
  aes4.~4
}

bass= \relative {
  \autoBeamOff
  aes,8
  aes4 8 ees'4 8
  aes,4 8 8[bes] c
  ees4 8 f4 ees8
  aes4.~4 8
  bes4 aes8 g4 f8 % B
  ees4 f8 g4 ees8
  aes4 8 f4 bes8
  ees,4.~4 g8
  aes4 c,8 ees4 8 % C
  aes,4.~4 r8
  aes4. 4 8
  aes4. 4 aes'8
  aes4. g4 aes8
  ees4.~4 g8 % D
  aes4 8 aes,4 bes8
  c4 8 des4 8
  ees8[f] ees ees4\fermata 8
  aes,4.~4
}

chorus = \lyricmode {
  Come to this Foun -- tain!
  'Tis flow -- ing to -- day;
  And all who will may free -- ly come,
  And wash their sins a -- way.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Be -- hold a foun -- tain deep and wide,
  Be -- hold its on -- ward flow;
  'Twas o -- pened in the Sa -- viour's side,
  And clean -- seth white as snow,
  And clean -- seth white as snow!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  From Cal -- v'ry's cross, where Je -- sus died
  In sor -- row, pain, and woe,
  Burst forth the won -- drous crom -- son tide
  That clean -- seth whit as snow,
  That clean -- seth whit as snow!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, may we all the heal -- ing power
  Of that blest Foun -- tain know!
  Trust on -- ly in the pre -- cious blood
  That clean -- seth whit as snow,
  That clean -- seth whit as snow!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  And when at last the mes -- sage comes,
  And we are called to go,
  Our trust shall still be in the blood
  That clean -- seth whit as snow,
  That clean -- seth whit as snow!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Be" "hold " "a " foun "tain " "deep " "and " "wide, "
  "\nBe" "hold " "its " on "ward " "flow; "
  "\n'Twas " o "pened " "in " "the " Sa "viour's " "side, "
  "\nAnd " clean "seth " "white " "as " "snow, "
  "\nAnd " clean "seth " "white " "as " "snow! "
  "\nCome " "to " "this " Foun "tain! "
  "\n'Tis " flow "ing " to "day; "
  "\nAnd " "all " "who " "will " "may " free "ly " "come, "
  "\nAnd " "wash " "their " "sins " a "way. "

  \set stanza = "2."
  "\nFrom " Cal "v'ry's " "cross, " "where " Je "sus " "died "
  "\nIn " sor "row, " "pain, " "and " "woe, "
  "\nBurst " "forth " "the " won "drous " crom "son " "tide "
  "\nThat " clean "seth " "whit " "as " "snow, "
  "\nThat " clean "seth " "whit " "as " "snow! "
  "\nCome " "to " "this " Foun "tain! "
  "\n'Tis " flow "ing " to "day; "
  "\nAnd " "all " "who " "will " "may " free "ly " "come, "
  "\nAnd " "wash " "their " "sins " a "way. "

  \set stanza = "3."
  "\nOh, " "may " "we " "all " "the " heal "ing " "power "
  "\nOf " "that " "blest " Foun "tain " "know! "
  "\nTrust " on "ly " "in " "the " pre "cious " "blood "
  "\nThat " clean "seth " "whit " "as " "snow, "
  "\nThat " clean "seth " "whit " "as " "snow! "
  "\nCome " "to " "this " Foun "tain! "
  "\n'Tis " flow "ing " to "day; "
  "\nAnd " "all " "who " "will " "may " free "ly " "come, "
  "\nAnd " "wash " "their " "sins " a "way. "

  \set stanza = "4."
  "\nAnd " "when " "at " "last " "the " mes "sage " "comes, "
  "\nAnd " "we " "are " "called " "to " "go, "
  "\nOur " "trust " "shall " "still " "be " "in " "the " "blood "
  "\nThat " clean "seth " "whit " "as " "snow, "
  "\nThat " clean "seth " "whit " "as " "snow! "
  "\nCome " "to " "this " Foun "tain! "
  "\n'Tis " flow "ing " to "day; "
  "\nAnd " "all " "who " "will " "may " free "ly " "come, "
  "\nAnd " "wash " "their " "sins " a "way. "
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
            \clef "tenor_8"
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
