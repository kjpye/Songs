\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O my Saviour, Hear Me!"
  subtitle    = "Sankey No. 497"
  subsubtitle = "Sankey 880 No. 202"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Hubert P. Main."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
  \mark \markup { \box "D" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 g8 bes4 a8 | a4(g8) f4. | f4 8 4 g8 | a4.~4. |
  a4 g8 bes4 a8 | a4(g8) f4. | bes4 g8 f4 e8 | f4.~4. |
  g4 8 8[f] g | a4 bes8 c4. | c4 8 8[b] c | d4 b8 c4(bes8) |
  a4 g8 bes4 a8 | d4. c | f,4 8 a4\fermata g8 |
  f4.~4. |
}

alto = \relative {
  \autoBeamOff
  f'4 8 4 8 | e4. f | d4 8 c4 e8 | f4.~4. |
  f4 8 4 8 | e4. f | f4 d8 c4 8 | c4.~4. |
  e4 8 8[f] e | f4 g8 a4. | g4 8 8[f] e | f4 8 e4(g8) |
  f4 8 4 8 | 4. 4. | 4 8 4\fermata c8 | c4.~4. |
}

tenor = \relative {
  \autoBeamOff
  c'4 bes8 d4 c8 | c4{bes8} a4. | bes4 8 a4 c8 | c4.~4. |
  c4 bes8 d4 c8 | c4(bes8) a4. | d4 bes8 a4 g8 | a4.~4. |
  c4 8 bes8[a] c | 4 8 f4. | e4 8 8[d] c | b4 d8 c4. |
  c4 bes8 d4 c8 | bes4. a | c4 d8 c4\fermata bes8 | a4.~4. |
}

bass = \relative {
  \autoBeamOff
  f4 8 4 8 | c4. d | bes4 8 c4 8 | f,4.~4. |
  f'4 8 4 8 | c4. d | bes4 8 c4 8 | f,4.~4. |
  c'4 8 4 8 | f4 8 4. | g4 8 4 8 | 4 8 c,4. |
  f4 8 4 8 | bes,4. f' | a,4 bes8 c4\fermata 8 | f4.~4. |
  
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  O my Sa -- viour, hear me,
  Draw me close to Thee;
  Thou hast paid my ran -- som,
  Thou hast died for me;
  Now by sim -- ple faith I claim
  Par -- don thro' Thy gra -- cious name;
  Thou, my Ark of safe -- ty,
  Let me fly to Thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O my Sa -- viour, bless me,
  Bless me while I pray;
  Grant Thy grace to help me,
  Take my fear a -- way;
  I be -- lieve Thy pro -- mise, Lord;
  I will trust Thy ho -- ly Word;
  Thou, my soul's Re -- deem -- er,
  Bless me while I pray.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O my Sa -- viour, love me,
  Make me all Thine own;
  Leave me not to wan -- der
  In this world a -- lone;
  Bless my way with light Di -- vine,
  Let Thy glo -- ry round me shine;
  Thou, my Rock, my Re -- fuge,
  Make me all Thine own.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O my Sa -- viour, guard me,
  Keep me ev -- er -- more;
  Bless me, love me, guide me,
  Till my work is o'er;
  May I then, with glad sur -- prise,
  Chant Thy praise be -- yond the skies;
  There with Thee, my Sqa -- viour,
  Dwell for ev -- er -- more.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " "my " Sa "viour, " "hear " "me, "
  "\nDraw " "me " "close " "to " "Thee; "
  "\nThou " "hast " "paid " "my " ran "som, "
  "\nThou " "hast " "died " "for " "me; "
  "\nNow " "by " sim "ple " "faith " "I " "claim "
  "\nPar" "don " "thro' " "Thy " gra "cious " "name; "
  "\nThou, " "my " "Ark " "of " safe "ty, "
  "\nLet " "me " "fly " "to " "Thee.\n"

  \set stanza = "2."
  "\nO " "my " Sa "viour, " "bless " "me, "
  "\nBless " "me " "while " "I " "pray; "
  "\nGrant " "Thy " "grace " "to " "help " "me, "
  "\nTake " "my " "fear " a "way; "
  "\nI " be "lieve " "Thy " pro "mise, " "Lord; "
  "\nI " "will " "trust " "Thy " ho "ly " "Word; "
  "\nThou, " "my " "soul's " Re deem "er, "
  "\nBless " "me " "while " "I " "pray.\n"

  \set stanza = "3."
  "\nO " "my " Sa "viour, " "love " "me, "
  "\nMake " "me " "all " "Thine " "own; "
  "\nLeave " "me " "not " "to " wan "der "
  "\nIn " "this " "world " a "lone; "
  "\nBless " "my " "way " "with " "light " Di "vine, "
  "\nLet " "Thy " glo "ry " "round " "me " "shine; "
  "\nThou, " "my " "Rock, " "my " Re "fuge, "
  "\nMake " "me " "all " "Thine " "own.\n"

  \set stanza = "4."
  "\nO " "my " Sa "viour, " "guard " "me, "
  "\nKeep " "me " ev er "more; "
  "\nBless " "me, " "love " "me, " "guide " "me, "
  "\nTill " "my " "work " "is " "o'er; "
  "\nMay " "I " "then, " "with " "glad " sur "prise, "
  "\nChant " "Thy " "praise " be "yond " "the " "skies; "
  "\nThere " "with " "Thee, " "my " Sqa "viour, "
  "\nDwell " "for " ev er "more. "
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
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
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
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
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

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
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
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
