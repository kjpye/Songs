\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come on the Wings of the Morning."
  subtitle    = "Sankey No. 180"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "D. W. Whittle."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 9/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4.*9
  \mark \markup { \box "B" } s4.*11
  \mark \markup { \box "C" } s4.*10 s4. s4
  \mark \markup { \box "D" } s2 s4.*6
  \mark \markup { \box "E" } s4.*9
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4.=120
  s4.*42
  s4. s8 \tempo 4.=110 s8*5
  s4.*3
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4.\omit\mf^\markup\italic "Smooth and flowing." ~8 bes a g d e
  f4. c \teeny c8 f a \normalsize
  c4.~8 d c bes f g \break
  a2. r4. % B
  a4.^\< ~8 bes a\! a b cis
  d4. a \teeny a8 e f \normalsize
  g4.^\> ~8 a g\! \bar "|" \break g a b
  c2. \bar "||" d4.^\markup\smallCaps Chorus. % C
  c4.~8 d c bes f g
  a4. c d
  c4.~8 d \bar "|" \break c8 bes f g
  a2. f8^\< a c % D
  f4.^\f ~8 e d c bes a \break
  g4. bes d % E
  e4.~8 d^\markup\italic rit. c d c e,
  f2.~4.
}

alto = \relative {
  \autoBeamOff
  f'4.\omit\mf~8 8 8 e c c
  c4. 4. \partCombineApart r \partCombineAutomatic
  a'4.~8 bes a f d e
  f2. r4. % B
  f4.^\< ~8 g f\! e d e
  f4. f \partCombineApart r \partCombineAutomatic
  f4.^\> ~8 8 8 \! f f f
  e2. \bar "||" bes'4. % C
  a4.~8 bes a g d e
  f4. a bes
  a4.~8 bes a g d e % D
  f2. 8^\< a c
  a4.^\f ~8 c bes a g f
  d4. g bes % E
  bes4.~8 g g e e c
  c2.~4.
}

tenor = \relative {
  \autoBeamOff
  c'4.\omit\mf~8 d c bes f g
  a4. a r
  c4.~8 f, f e bes' bes
  a8(c2~8) r4. % B
  d4.^\<~8 e d\! cis a a
  a4. d r
  b4.^\> ~8 8 8\! 8 c d
  c2. \bar "||" r4. % C
  c4 r8 c4 r8 r4.
  c4 r8 c4 r8 r4.
  c4 r8 c4 r8 r4.
  c4 r8 f, a c a4.^\< % D
  c4^\f r8 c4 r8 r4.
  b8 8 8 d d d g, g g % E
  a4.~8 bes8 8 8 8 8
  a2.~4.
}

bass = \relative {
  \autoBeamOff
  f4.\omit\mf~8 f f c c c
  f4. 4. r
  f4.~8 8 8 c c c
  f2. r4. % B
  d4.~8 cis d a a a
  d4. d r
  g4.~8 8 8 8 8 8
  c,2. \bar "||" r4. % C
  f4 r8 f4 r8 r4.
  f4 r8 r4 r8 r4.
  f4 r8 f4 r8 r4.
  f4 r8 f a c f,4. % D
  f4 r8 f4 r8 r4.
  bes,8 8 8 8 8 8 8 8 8 % E
  c4.~8 8 8 8 8 8
  f2.~4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh, come on the wings of the morn -- ing;
  Oh, come to our hearts as we sing;
  Come as we sing, __ in the day that is dawn -- ing:
  Oh come; Thou Re -- deem -- er and King.
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  Come, come, come, come;
  Come, come, come, come as we sing;
  Come, come, come in the day that is dawn -- ing; Oh,
  _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Come on the wings of the morn -- ing; _ _ _
  Come, Thou Re -- deem -- er and King;
  Hail to the day that is dawn -- ing; _ _ _
  Hail to the Joy it will bring.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come on the wings of the morn -- ing; _ _ _
  Come with Thy glo -- ry and grace,
  All of Thy pro -- mise per -- form -- ing, _ _ _
  Show -- ing the light of Thy grace.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come on the wings of the morn -- ing; _ _ _
  Come with a joy -- ful sur -- prise;
  Lift -- ing the sad and the mourn -- ing, _ _ _
  Wip -- ing the tears from their eyes.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Come on the wings of the morn -- ing; _ _ _
  Come as the King to Thy throne
  Have we not sound -- ed Thy warn -- ing _ _ _
  Now let Thy glo -- ry be known.
}
  
wordsMidiWomen = \lyricmode {
  \set stanza = "1."
  "Come " "on " "the " "wings " "of " "the " morn "ing; " "" "" ""
  "\nCome, " "Thou " Re deem "er " "and " "King; "
  "\nHail " "to " "the " "day " "that " "is " dawn "ing; " "" "" ""
  "\nHail " "to " "the " "Joy " "it " "will " "bring. "
  "\nOh, " "come " "on " "the " "wings " "of " "the " morn "ing; "
  "\nOh, " "come " "to " "our " "hearts " "as " "we " "sing; "
  "\nCome " "as " "we " "sing, "  "in " "the " "day " "that " "is " dawn "ing: "
  "\nOh " "come; " "Thou " Re deem "er " "and " "King. "

  \set stanza = "2."
  "\nCome " "on " "the " "wings " "of " "the " morn "ing; " "" "" ""
  "\nCome " "with " "Thy " glo "ry " "and " "grace, "
  "\nAll " "of " "Thy " pro "mise " per form "ing, " "" "" ""
  "\nShow" "ing " "the " "light " "of " "Thy " "grace. "
  "\nOh, " "come " "on " "the " "wings " "of " "the " morn "ing; "
  "\nOh, " "come " "to " "our " "hearts " "as " "we " "sing; "
  "\nCome " "as " "we " "sing, "  "in " "the " "day " "that " "is " dawn "ing: "
  "\nOh " "come; " "Thou " Re deem "er " "and " "King. "

  \set stanza = "3."
  "\nCome " "on " "the " "wings " "of " "the " morn "ing; " "" "" ""
  "\nCome " "with " "a " joy "ful " sur "prise; "
  "\nLift" "ing " "the " "sad " "and " "the " mourn "ing, " "" "" ""
  "\nWip" "ing " "the " "tears " "from " "their " "eyes. "
  "\nOh, " "come " "on " "the " "wings " "of " "the " morn "ing; "
  "\nOh, " "come " "to " "our " "hearts " "as " "we " "sing; "
  "\nCome " "as " "we " "sing, "  "in " "the " "day " "that " "is " dawn "ing: "
  "\nOh " "come; " "Thou " Re deem "er " "and " "King. "

  \set stanza = "4."
  "\nCome " "on " "the " "wings " "of " "the " morn "ing; " "" "" ""
  "\nCome " "as " "the " "King " "to " "Thy " "throne "
  "\nHave " "we " "not " sound "ed " "Thy " warn "ing " "" "" ""
  "\nNow " "let " "Thy " glo "ry " "be " "known. "
  "\nOh, " "come " "on " "the " "wings " "of " "the " morn "ing; "
  "\nOh, " "come " "to " "our " "hearts " "as " "we " "sing; "
  "\nCome " "as " "we " "sing, "  "in " "the " "day " "that " "is " dawn "ing: "
  "\nOh " "come; " "Thou " Re deem "er " "and " "King. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Come " "on " "the " "wings " "of " "the " morn "ing; "
  "\nCome, " "Thou " Re deem "er " "and " "King; "
  "\nHail " "to " "the " "day " "that " "is " dawn "ing; "
  "\nHail " "to " "the " "Joy " "it " "will " "bring. "
  "\nCome, " "come, " "come, " "come; "
  "\nCome, " "come, " "come, " "come " "as " "we " "sing; "
  "\nCome, " "come, " "come " "in " "the " "day " "that " "is " dawn "ing; "
  "\nOh " "come; " "Thou " Re deem "er " "and " "King. "

  \set stanza = "2."
  "\nCome " "on " "the " "wings " "of " "the " morn "ing; "
  "\nCome " "with " "Thy " glo "ry " "and " "grace, "
  "\nAll " "of " "Thy " pro "mise " per form "ing, "
  "\nShow" "ing " "the " "light " "of " "Thy " "grace. "
  "\nCome, " "come, " "come, " "come; "
  "\nCome, " "come, " "come, " "come " "as " "we " "sing; "
  "\nCome, " "come, " "come " "in " "the " "day " "that " "is " dawn "ing; "
  "\nOh " "come; " "Thou " Re deem "er " "and " "King. "

  \set stanza = "3."
  "\nCome " "on " "the " "wings " "of " "the " morn "ing; "
  "\nCome " "with " "a " joy "ful " sur "prise; "
  "\nLift" "ing " "the " "sad " "and " "the " mourn "ing, "
  "\nWip" "ing " "the " "tears " "from " "their " "eyes. "
  "\nCome, " "come, " "come, " "come; "
  "\nCome, " "come, " "come, " "come " "as " "we " "sing; "
  "\nCome, " "come, " "come " "in " "the " "day " "that " "is " dawn "ing; "
  "\nOh " "come; " "Thou " Re deem "er " "and " "King. "

  \set stanza = "4."
  "\nCome " "on " "the " "wings " "of " "the " morn "ing; "
  "\nCome " "as " "the " "King " "to " "Thy " "throne "
  "\nHave " "we " "not " sound "ed " "Thy " warn "ing "
  "\nNow " "let " "Thy " glo "ry " "be " "known. "
  "\nCome, " "come, " "come, " "come; "
  "\nCome, " "come, " "come, " "come " "as " "we " "sing; "
  "\nCome, " "come, " "come " "in " "the " "day " "that " "is " dawn "ing; "
  "\nOh " "come; " "Thou " Re deem "er " "and " "King. "
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
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerMen { \tenor }
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerMen \chorusMen
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
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
            \new NullVoice = alignerMen { \tenor \tenor \tenor \tenor }
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerMen { \chorusMen \chorusMen \chorusMen \chorusMen }
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
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
            \new NullVoice = alignerMen { \tenor \tenor \tenor \tenor }
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerMen { \chorusMen \chorusMen \chorusMen \chorusMen }
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
  \bookOutputSuffix "midi-women"
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
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidiWomen
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
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-men"
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
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
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
            \addlyrics \wordsMidiMen
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
