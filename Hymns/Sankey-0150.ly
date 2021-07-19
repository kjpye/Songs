\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus Lives, and Jesus Leads"
  subtitle    = "Sankey No. 150"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Josiah Booth."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "F. Paxton Hood."
  meter       = \markup\smallCaps "7.6.7.6.7.7."
  piece       = \markup\smallCaps "Faverham."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4^\f 4 c4. b8
  a4 g e2
  e4^\mp  4 4 d8[e]
  f2 e
  g4^\f g c4. b8 % B
  a4 g e2
  d4^\ff d' b g
  a2 g
  d'8^\pp [e] d4 c8[d] c4 % C
  b4 a g2
  g4^\ff c e4.-> c8
  d4 b c2
}

alto = \relative {
  \autoBeamOff
  c'4^\f b c4. g'8
  f4 d c2
  c4^\mp d c c
  c4(b) c2
  e4^\f g e4. 8 % B
  f4 d c2
  b4^\ff g' g d
  fis2 g
  f8^\pp [g] f4 e8[f] e4 % C
  f4 4 2
  e4^\ff 4 g4.-> e8
  f4 4 e2
}

tenor = \relative {
  \autoBeamOff
  e4^\f f g4. c8
  c4 b c2
  g4^\mp gis a a
  a4(g) 2
  c4^\f e8[d] c4. 8 % B
  c4 b c2
  g4^\ff b d b
  c4(d8[c]) b2
  b8^\pp [a] b4 c8[b] c4 % C
  d4 c d2
  c4^\ff 4 4. g8
  b4 d c2
}

bass = \relative {
  \autoBeamOff
  c4^\f d e4. 8
  f4 g c,2
  c4^\mp b a f'8[e]
  d4(g,) c2
  c4^\f c'8[b] a4. g8 % B
  f4 g c,2
  d4^\ff 4 4 4
  d2 g
  g4^\pp 4 4 4 % C
  g4 a b2
  c4^\ff a g4. 8
  g4 4 c,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus lives, and Je -- sus leads,
  Tho' the way be drea -- ry;
  Morn to dark -- est night suc -- ceeds,
  Cour -- age, then, ye wea -- ry:
  Still the faith -- ful Shep -- herd feeds;
  Je -- sus lives, and Je -- sus leads.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  All the words He ev -- er spoke,
  Still to us He speak -- eth;
  All the bread He ev -- er broke,
  Still for us He break -- eth:
  Still the faith -- ful Shep -- herd feeds;
  Je -- sus lives, and Je -- sus leads.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Je -- sus lives, but Je -- sus died;
  Love to death con -- signed Him:
  Death the migh -- ty Love re -- signed,
  Could not hold or bind Him:
  There -- fore still He meets our needs;
  Je -- sus lives, and Je -- sus leads.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Je -- sus lives, and ev -- ery grace
  Comes be -- cause He giv -- eth;
  Life and love in ev -- ery place
  Live, for Je -- sus liv -- eth:
  All our thoughts His love ex -- ceeds;
  Je -- sus lives, and Je -- sus leads.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Yes, if Je -- sus lives, He leads—
  He will not for -- sake us;
  He will crown His gra -- cious deeds,
  And to glo -- ry take us:
  Till that hour the Shep -- herd feeds;
  Je -- sus lives, and Je -- sus leads.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus " "lives, " "and " Je "sus " "leads, "
  "\nTho' " "the " "way " "be " drea "ry; "
  "\nMorn " "to " dark "est " "night " suc "ceeds, "
  "\nCour" "age, " "then, " "ye " wea "ry: "
  "\nStill " "the " faith "ful " Shep "herd " "feeds; "
  "\nJe" "sus " "lives, " "and " Je "sus " "leads. "

  \set stanza = "2."
  "\nAll " "the " "words " "He " ev "er " "spoke, "
  "\nStill " "to " "us " "He " speak "eth; "
  "\nAll " "the " "bread " "He " ev "er " "broke, "
  "\nStill " "for " "us " "He " break "eth: "
  "\nStill " "the " faith "ful " Shep "herd " "feeds; "
  "\nJe" "sus " "lives, " "and " Je "sus " "leads. "

  \set stanza = "3."
  "\nJe" "sus " "lives, " "but " Je "sus " "died; "
  "\nLove " "to " "death " con "signed " "Him: "
  "\nDeath " "the " migh "ty " "Love " re "signed, "
  "\nCould " "not " "hold " "or " "bind " "Him: "
  "\nThere" "fore " "still " "He " "meets " "our " "needs; "
  "\nJe" "sus " "lives, " "and " Je "sus " "leads. "

  \set stanza = "4."
  "\nJe" "sus " "lives, " "and " ev "ery " "grace "
  "\nComes " be "cause " "He " giv "eth; "
  "\nLife " "and " "love " "in " ev "ery " "place "
  "\nLive, " "for " Je "sus " liv "eth: "
  "\nAll " "our " "thoughts " "His " "love " ex "ceeds; "
  "\nJe" "sus " "lives, " "and " Je "sus " "leads. "

  \set stanza = "5."
  "\nYes, " "if " Je "sus " "lives, " "He " "leads— "
  "\nHe " "will " "not " for "sake " "us; "
  "\nHe " "will " "crown " "His " gra "cious " "deeds, "
  "\nAnd " "to " glo "ry " "take " "us: "
  "\nTill " "that " "hour " "the " Shep "herd " "feeds; "
  "\nJe" "sus " "lives, " "and " Je "sus " "leads. "
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
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
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
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
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
              \TempoTrack
              \TempoTrack
            }
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
    \midi {}
  }
}
