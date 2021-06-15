\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hallelujah! What a Saviour!"
  subtitle    = "Sankey No. 102"
  subsubtitle = "Sankey 880 No. 190"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"


% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  g'4\omit\p^\markup\bold\italic {\dynamic p Moderato.} g g e
  c'4 c b2
  a4^\mf a g c
  b4 a g2
  g4 g g e % V
  c'4 c c c8.^\ff d16
  e2 d4-! c8. a16
  a2 g
}

alto = \relative {
  e'4\omit\p e e c
  e4 e e(d)
  c4^\mf d e g
  g4 fis g2
  e4^\f e e c % B
  e4 f e g8.^\ff 16
  g2 f4-! e8. 16
  d2 e
}

tenor = \relative {
  c'4\omit\p c c g
  a4 a gis2
  a4\omit\mf b c e
  d4 c b2
  c4\omit\f c c g % B
  bes4 a g c8.\omit\ff b16
  c2 b4-! c8. 16
  c2 c
}

bass= \relative {
  c4\omit\p c c c
  a4 a e'2
  f4\omit\mf f e c
  d4 d g,2
  c4\omit\f c c c % B
  c4 c c e8.\omit\ff g16
  c2 g4-! a8. 16
  f2 c
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  "\"Man" of Sor -- "rows!\"" what a name
  For the Son of God, who came
  Ru -- in'd sin -- ners to re -- claim!
  Hal -- le -- lu -- jah!
  What a Sa -- viour!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Bear -- ing shame and scoff -- ing rude,
  In my place con -- demn'd He stood;
  Seal'd my par -- don with His blood:
  Hal -- le -- lu -- jah!
  What a Sa -- viour!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Guil -- ty, vile, and help -- less, we;
  Spot -- less Lamb of God was He:
  "\"Full" a -- tone -- "ment!—\"" can it be?
  Hal -- le -- lu -- jah!
  What a Sa -- viour!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  "\"Lift" -- ed "up\"" was He to die,
  "\"It" is fin -- "ished!\"" was His cry;
  Now in heaven ex -- al -- ted high:
  Hal -- le -- lu -- jah!
  What a Sa -- viour!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  When He comes, our glo -- rious King,
  All His ran -- somed home to bring,
  Then a -- new this song we'll sing:
  Hal -- le -- lu -- jah!
  What a Sa -- viour!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\"Man " "of " Sor "rows!\" " "what " "a " "name "
  "\nFor " "the " "Son " "of " "God, " "who " "came "
  "\nRu" "in'd " sin "ners " "to " re "claim! "
  "\nHal" le lu "jah! "
  "\nWhat " "a " Sa "viour! "

  \set stanza = "2."
  "\nBear" "ing " "shame " "and " scoff "ing " "rude, "
  "\nIn " "my " "place " con "demn'd " "He " "stood; "
  "\nSeal'd " "my " par "don " "with " "His " "blood: "
  "\nHal" le lu "jah! "
  "\nWhat " "a " Sa "viour! "

  \set stanza = "3."
  "\nGuil" "ty, " "vile, " "and " help "less, " "we; "
  "\nSpot" "less " "Lamb " "of " "God " "was " "He: "
  "\n\"Full " a tone "ment!—\" " "can " "it " "be? "
  "\nHal" le lu "jah! "
  "\nWhat " "a " Sa "viour! "

  \set stanza = "4."
  "\n\"Lift" "ed " "up\" " "was " "He " "to " "die, "
  "\n\"It " "is " fin "ished!\" " "was " "His " "cry; "
  "\nNow " "in " "heaven " ex al "ted " "high: "
  "\nHal" le lu "jah! "
  "\nWhat " "a " Sa "viour! "

  \set stanza = "5."
  "\nWhen " "He " "comes, " "our " glo "rious " "King, "
  "\nAll " "His " ran "somed " "home " "to " "bring, "
  "\nThen " a "new " "this " "song " "we'll " "sing: "
  "\nHal" le lu "jah! "
  "\nWhat " "a " Sa "viour! "
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
%            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }

            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
