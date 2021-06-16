\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Lily of the Valley."
  subtitle    = "Sankey No. 104"
  subsubtitle = "Sankey 880 No. 545"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup { \smallCaps "Ira D. Sankey" \italic "(arr.)" }
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup { \smallCaps "C. W. Fry" \italic "(by per.)" }

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 6/8
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s2.*4
  \mark \markup { \box "B" } s2.*6
  \mark \markup { \box "C" } s2.*5 s2
  \repeat unfold 2 {
    \mark \markup { \box "D" } s4 s2.*4
    \mark \markup { \box "E" } s2.*6
    \mark \markup { \box "F" } s2.*5 s4. s8
  }
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  \autoBeamOff
  r8 f'16[a]
  c4 8 d4 c8
  c8 a4~4 f8
  g4 f8 4 d8
  c4. f4 g8
  a4 8 4 8 % B
  d4 c8 a4 f8
  g4.~4.~
  g4. f4(a8)
  c4 8 d4 c8
  c16 a8.~4. f8
  g4 f8 4 d8 % C
  c4. f4 g8
  a4 8 g4 f8
  g4 8 f4 e8
  f4.~4.~
  4. r8 \bar "|" \break \partial 4
  \repeat unfold 2 {
    f4
    f8 bes4 4 8 % D
    bes16 d8.~4. 8
    d8 c4 4 a8
    c4. a4(g8)
    f4 8 4 8 % E
    d'4 c8 a4 f8
    g4.~4.~
    g4. f4 a8
    c8 4 d d8
    d8 a4~4 f8
    g4 f8 4 d8 % F
    c4. f4 g8
    a4 8 g4 f8
    g4 8 f4 e8
    f4.~4.~
    f4. r8
  }
}

alto = \relative {
  \autoBeamOff
  r8 f'8
  f4 8 4 8
  f8 4~4 8
  d4 8 4 bes8
  a4. c4 8
  f4 8 4 8 % B
  f4 8 4 8
  e4.~4.~
  e4. f4.
  f4 8 4 8
  f16 8.~4. c8
  d4 8 4 bes8 % C
  a4. c4 8
  f4 8 e4 f8
  d4 8 c4 8
  c4.~4.~
  c4. r8
  \repeat unfold 2 {
    ees4
    d8 4 4 8 % D
    d16 f8.~4. 8
    f8 4 4 8
    f4. f4(c8)
    c4 8 4 f8 % E
    f4 8 4 8
    e4.~4.~
    e4. f4 8
    f8 4 4 8
    f8 4~4 8
    d4 8 4 bes8 % F
    a4. c4 8
    f4 8 e4 f8
    d4 8 c4 8
    c4.~4.~
    c4. r8
  }
}

tenor = \relative {
  \autoBeamOff
  r8 a16[c]
  a4 8 bes4 a8
  a8 c4~4 8
  bes4 8 4 f8
  f4. a4 bes8
  c4 8 4 8 % B
  bes4 c8 4 8
  c4.~4.~
  c4. a4(c8)
  a4 8 bes 4 a8
  a16 c8.~4. a8
  bes4 8 4 f8 % C
  f4. a4 bes8
  c4 8 bes4 a8
  bes4 8 a4 g8
  a4.~4.~
  a4. r8
  \repeat unfold 2 {
    a4
    bes8 f4 4 8 % D
    g16 bes8.~4. 8
    bes8 a4 4 c8
    a4. c4(bes8)
    a4 bes8 c4 a8 % E
    bes4 c8 4 8
    c4.~4.~
    c4. a4 c8
    a8 4 bes4 a8
    a8 c4~4 8
    bes4 8 4 f8 % F
    f4. a4 bes8
    c4 8 bes4 a8
    bes4 8 a4 g8
    a4.~4.~
    a4. r8
  }
}

bass= \relative {
  \autoBeamOff
  r8 f8
  f4 8 4 8
  f8 4~4 a,8
  bes4 8 4 d8f4. 4 8
  f4 8 4 8 % B
  bes4 a8 f4 a,8
  c4.~4.~
  c4. f
  f4 8 4 8
  f16 8.~4. 8
  bes,4 8 4 d8 % C
  f4. 4 8
  f4 8 c4 d8
  bes4 8 c4 8
  f4.~4.~
  f4. r8
  \repeat unfold 2 {
    f4
    bes,8 4 4 8 % D
    bes16 8.~4. 8
    f'8 4 4 8
    f4. f
    f4 g8 a4 f8 % E
    bes4 a8 f4 a,8
    c4.~4.~
    c4. f4 8
    f8 4 4 8
    f8 4~4 a,8
    bes4 8 4 d8 % F
    f4. 4 8
    f4 8 c4 d8
    bes4 8 c4 8
    f4.~4.~
    f4. r8
  }
}

chorus = \lyricmode {
  He's the "\"Li" -- ly of the Val -- "ley\""
  the Bright and Morn -- ing Star;
  He's the fair -- est of ten thou -- sand to my soul!
  In sor -- row He's my com -- fort,
  in trou -- ble He's my stay;
  He tells me ev -- 'ry care on Him to roll.
  He's the "\"Li" -- ly of the Val -- "ley\""
  the Bright and Morn -- ing Star;
  He's the fair -- est of ten thou -- sand to my soul!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  I've found a friend in Je -- sus—
  He's ev -- 'ry -- thing to me;
  He's the fair -- est of ten thou -- sand to my soul!
  The "\"Li" -- ly of the Val -- "ley,\""
  in Him a -- lone I see
  All I need to cleanse and make me ful -- ly whole:
  In sor -- row He's my com -- fort,
  in trou -- ble He's my stay,
  He tells me ev -- 'ry care on Him to roll.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He all my grief has ta -- ken,
  and all my sir -- rows borne;
  In temp -- ta -- tion He's my strong and migh -- ty tower;
  I've all for Him for -- sa -- ken,
  I've all my i -- dols torn
  From my heart, and now He keeps me by His power.
  Tho' all the world for -- sake me,
  and Sa -- tan tempt me sore,
  Thro' Je -- sus I shall safe -- ly reach the goal.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He'll nev -- er, nev -- er leave me,
  nor yet for -- sake me here,
  While I live by faith, and do His bless -- ed will;
  A wall of fire a -- bout me,
  I've no -- thing now to fear:
  With His man -- na He my hun -- gry soul shall fill.
  When crowned at last in glo -- ry,
  I'll see His bless -- ed face,
  Where riv -- ers of de -- light shall ev -- er roll.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I've " "found " "a " "friend " "in " Je "sus— "
  "\nHe's " ev 'ry "thing " "to " "me; "
  "\nHe's " "the " fair "est " "of " "ten " thou "sand " "to " "my " "soul! "
  "\nThe " "\"Li" "ly " "of " "the " Val "ley,\" "
  "\nin " "Him " a "lone " "I " "see "
  "\nAll " "I " "need " "to " "cleanse " "and " "make " "me " ful "ly " "whole: "
  "\nIn " sor "row " "He's " "my " com "fort, "
  "\nin " trou "ble " "He's " "my " "stay, "
  "\nHe " "tells " "me " ev "'ry " "care " "on " "Him " "to " "roll. "
  "\nHe's " "the " "\"Li" "ly " "of " "the " Val "ley\" "
  "\nthe " "Bright " "and " Morn "ing " "Star; "
  "\nHe's " "the " fair "est " "of " "ten " thou "sand " "to " "my " "soul! "
  "\nIn " sor "row " "He's " "my " com "fort, "
  "\nin " trou "ble " "He's " "my " "stay; "
  "\nHe " "tells " "me " ev "'ry " "care " "on " "Him " "to " "roll. "
  "\nHe's " "the " "\"Li" "ly " "of " "the " Val "ley\" "
  "\nthe " "Bright " "and " Morn "ing " "Star; "
  "\nHe's " "the " fair "est " "of " "ten " thou "sand " "to " "my " "soul! "

  \set stanza = "2."
  "\nHe " "all " "my " "grief " "has " ta "ken, "
  "\nand " "all " "my " sir "rows " "borne; "
  "\nIn " temp ta "tion " "He's " "my " "strong " "and " migh "ty " "tower; "
  "\nI've " "all " "for " "Him " for sa "ken, "
  "\nI've " "all " "my " i "dols " "torn "
  "\nFrom " "my " "heart, " "and " "now " "He " "keeps " "me " "by " "His " "power. "
  "\nTho' " "all " "the " "world " for "sake " "me, "
  "\nand " Sa "tan " "tempt " "me " "sore, "
  "\nThro' " Je "sus " "I " "shall " safe "ly " "reach " "the " "goal. "
  "\nHe's " "the " "\"Li" "ly " "of " "the " Val "ley\" "
  "\nthe " "Bright " "and " Morn "ing " "Star; "
  "\nHe's " "the " fair "est " "of " "ten " thou "sand " "to " "my " "soul! "
  "\nIn " sor "row " "He's " "my " com "fort, "
  "\nin " trou "ble " "He's " "my " "stay; "
  "\nHe " "tells " "me " ev "'ry " "care " "on " "Him " "to " "roll. "
  "\nHe's " "the " "\"Li" "ly " "of " "the " Val "ley\" "
  "\nthe " "Bright " "and " Morn "ing " "Star; "
  "\nHe's " "the " fair "est " "of " "ten " thou "sand " "to " "my " "soul! "

  \set stanza = "3."
  "\nHe'll " nev "er, " nev "er " "leave " "me, "
  "\nnor " "yet " for "sake " "me " "here, "
  "\nWhile " "I " "live " "by " "faith, " "and " "do " "His " bless "ed " "will; "
  "\nA " "wall " "of " "fire " a "bout " "me, "
  "\nI've " no "thing " "now " "to " "fear: "
  "\nWith " "His " man "na " "He " "my " hun "gry " "soul " "shall " "fill. "
  "\nWhen " "crowned " "at " "last " "in " glo "ry, "
  "\nI'll " "see " "His " bless "ed " "face, "
  "\nWhere " riv "ers " "of " de "light " "shall " ev "er " "roll. "
  "\nHe's " "the " "\"Li" "ly " "of " "the " Val "ley\" "
  "\nthe " "Bright " "and " Morn "ing " "Star; "
  "\nHe's " "the " fair "est " "of " "ten " thou "sand " "to " "my " "soul! "
  "\nIn " sor "row " "He's " "my " com "fort, "
  "\nin " trou "ble " "He's " "my " "stay; "
  "\nHe " "tells " "me " ev "'ry " "care " "on " "Him " "to " "roll. "
  "\nHe's " "the " "\"Li" "ly " "of " "the " Val "ley\" "
  "\nthe " "Bright " "and " Morn "ing " "Star; "
  "\nHe's " "the " fair "est " "of " "ten " thou "sand " "to " "my " "soul! "
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
            }
           \new Voice \TempoTrack
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
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
            }
           \new Voice \TempoTrack
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
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
           \new Voice \TempoTrack
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff =alto
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
      >>
    >>
    \midi {}
  }
}
