\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Once for All."
  subtitle    = "Sankey No. 143"
  subsubtitle = "Sankey 880 No. 11"
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
  \key ees \major
  \time 9/8
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4.*7
  \mark \markup { \box "B" } s4.*9
  \mark \markup { \box "C" } s4.*9
  \mark \markup { \box "D" } s4.*11
  \mark \markup { \box "E" } s4.*12
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8 g c
  bes4. g g8 f ees
  g4. f f8 e f
  aes4. c c8 bes aes % B
  aes4. g ees8 g bes
  ees4. bes bes8 aes g
  c4.~4. 8 aes c % C
  bes4. g g4 f8

  ees4.~4. \bar "||" bes'8^\markup\smallCaps Chorus. [c] d
  ees4. 4. 8 d c % D
  c4. bes bes8[c] d
  ees4. 4. 8 d c
  c4. bes \bar "|" \break ees,8 g c
  bes4. g g8 f ees % E
  c'4.~4. 8 aes c
  bes4. g g4 f8
  ees4.~4.
}

alto = \relative {
  \autoBeamOff
  ees'8 8 8
  ees4. 4. 8 8 8
  ees4. d d8 cis d
  f4. aes aes8 g f % B
  f4. ees ees8 8 g
  g4. 4. 8 f ees
  ees4.~4. 8 8 8 % C
  g4. ees d4 8
  ees4.~4. bes'8[a] aes
  g4. 4. 8 b aes % D
  aes4. g bes8[a] aes
  g4. 4. f8 f ees
  ees4. d ees8 8 8
  ees4. 4. 8 8 8
  ees4.~4. 8 8 8
  ees4. 4. d4 8
  ees4.~4.
}

tenor = \relative {
  \autoBeamOff
  g8 8 8
  g4. bes4. 8 aes g
  bes4. 4. 8 8 8
  bes4. 4. 8 8 8 % B
  bes4. 4. g8 bes bes
  bes4. ees ees8 bes bes
  aes4.~4. 8 c ees % C
  ees4. bes4. 4 aes8
  g4.~4. bes4 8
  bes4. 4. 8 8 c16[d] % D
  ees4. 4. bes4 8
  bes4. 4. a8 8 8
  bes4. 4. g8 8 8 % E
  g4. bes4. 8 aes g
  aes4.~4. 8 c aes
  g4. bes bes4 aes8
  g4.~4.
}

bass = \relative {
  \autoBeamOff
  ees8 8 8
  ees4. 4. 8 8 8
  bes4. 4. 8 8 8
  bes4. 4. 8 8 8 % B
  ees4. 4. 8 8 8
  ees4. 4. 8 8 8
  aes4.~4. 8 8 8 % C
  bes4. 4. bes,4 8
  ees4.~4. bes'4 8
  ees,4. 4. 8 8 8 % D
  ees4. 4. bes'4 8
  ees,4. 4. f8 8 8
  bes,4. 4. ees8 8 8
  ees4. 4. 8 8 8 % E
  aes,4.~4. 8 8 8
  bes4. 4. 4 8
  ees4.~4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Once for all, O sin -- ner, re -- ceive it;
  Once for all, O bro -- ther, be -- lieve it;
  Cling to the Cross, the bur -- den will fall,
  Christ hath re -- deemed us once for all.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Free from the law, oh, hap -- py con -- di -- tion!
  Je -- sus hath led, and \markup\italic there is re -- mis -- sion!
  Cursed by the law, and bruised by the Fall,
  Grace hath re -- deemed us once for all. __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Now are we free— there's no con- dem -- na -- tion;
  Je -- sus pro -- vides a per -- fect sal -- va -- tion:
  "\"Come" un -- to \markup\italic "Me!\"—" oh, hear His sweet call!
  Come— and He saves us once for all. __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"Chil" -- dren of "God!\"" oh, glo -- ri -- ous call -- ing!
  Sure -- ly His grace will keep us from fall -- ing;
  Pass -- ing from death to life at His call,
  Bles -- sed sal -- va -- tion once for all. __
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Free " "from " "the " "law, " "oh, " hap "py " con di "tion! "
  "\nJe" "sus " "hath " "led, " "and " "there " "is " re mis "sion! "
  "\nCursed " "by " "the " "law, " "and " "bruised " "by " "the " "Fall, "
  "\nGrace " "hath " re "deemed " "us " "once " "for " "all. " 
  "\nOnce " "for " "all, " "O " sin "ner, " re "ceive " "it; "
  "\nOnce " "for " "all, " "O " bro "ther, " be "lieve " "it; "
  "\nCling " "to " "the " "Cross, " "the " bur "den " "will " "fall, "
  "\nChrist " "hath " re "deemed " "us " "once " "for " "all. "

  \set stanza = "2."
  "\nNow " "are " "we " "free— " "there's " "no " con dem na "tion; "
  "\nJe" "sus " pro "vides " "a " per "fect " sal va "tion: "
  "\n\"Come " un "to " "Me!\"— " "oh, " "hear " "His " "sweet " "call! "
  "\nCome— " "and " "He " "saves " "us " "once " "for " "all. " 
  "\nOnce " "for " "all, " "O " sin "ner, " re "ceive " "it; "
  "\nOnce " "for " "all, " "O " bro "ther, " be "lieve " "it; "
  "\nCling " "to " "the " "Cross, " "the " bur "den " "will " "fall, "
  "\nChrist " "hath " re "deemed " "us " "once " "for " "all. "

  \set stanza = "3."
  "\n\"Chil" "dren " "of " "God!\" " "oh, " glo ri "ous " call "ing! "
  "\nSure" "ly " "His " "grace " "will " "keep " "us " "from " fall "ing; "
  "\nPass" "ing " "from " "death " "to " "life " "at " "His " "call, "
  "\nBles" "sed " sal va "tion " "once " "for " "all. " 
  "\nOnce " "for " "all, " "O " sin "ner, " re "ceive " "it; "
  "\nOnce " "for " "all, " "O " bro "ther, " be "lieve " "it; "
  "\nCling " "to " "the " "Cross, " "the " bur "den " "will " "fall, "
  "\nChrist " "hath " re "deemed " "us " "once " "for " "all. "
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
    system-system-spacing.basic-distance = #22
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
