\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Once more, O Lord!"
  subtitle    = "Sankey No. 312"
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
  meter       = \markup\smallCaps "S.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*3 s4. s4
  \mark \markup { \box "C" } s8 s2.*3 s4. s4
  \mark \markup { \box "D" } s8 s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'8
  f4 bes8 4 a8
  bes4.~4 8
  bes4 8 a4 g8
  f4.~4 \bar "|" \break f8
  g4 8 a4 8 % B
  bes4 8 4 ees8
  d4 bes8 4 a8
  bes4.~4 \bar "|" \break f8^\markup\smallCaps Chorus.
  f8[a] bes c4 f,8 % C
  d'4.~4 8
  d4 a8 bes4 c8 d4.~4 \bar "|" \break f,8
  g4 8 a4 8 % D
  d4 c8 d4 ees8
  d4 bes8 4 a8
  bes4.~4
}

alto = \relative {
  \autoBeamOff
  d'8
  d4 f8 4 ees8
  d4.~4 8
  g4 8 f4 ees8
  d4.~4 8
  ees4 e8 f4 ees8 % B
  d4 8 ees4 g8
  f4 8 ees4 8
  d4.~4 8
  \once\partCombineApart f4 8 4 \once\partCombineApart 8 % C
  f4.~4 8
  fis4 8 g4 8
  fis4.~4 d8
  ees4 8 f4 8 % D
  d4 8 4 g8
  f4 8 ees4 8
  d4.~4
}

tenor = \relative {
  \autoBeamOff
  bes8
  bes4 8 d4 c8
  bes4.~4 8
  bes4 8 4 8
  bes4.~4 8
  bes4 c8 4 8 % B
  bes4 aes8 g4 bes8
  bes4 d8 c4 f,8
  f4.~4 bes8
  a8[c] bes a4 8 % C
  bes4.~4 8 a4 d8 4 g,8
  a4.~4 bes8
  bes4 c8 4 8 % D
  bes4 a8 bes4 8
  bes4 c8 c4 f,8
  f4.~4
}

bass = \relative {
  \autoBeamOff
  bes,8
  bes4 d8 f4 8
  bes,4.~4 8
  ees4 8 4 8
  bes4.~4 8 ees4 c8 f4 fis8 % B
  g4 f8 ees4 c8
  f4 8 4 \once\partCombineApart 8
  bes,4.~4 8
  f'8[ees] d f4 8 % C
  bes,4.~4 8
  d4 8 g4 ees8
  d4.~4 bes8
  ees4 c8 f4 ees8 % D
  d4 f8 bes4 ees,8
  f4 8 4 \once\partCombineApart 8
  bes,4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Once more, O Lord, once more
  Thy bless -- ing we im -- plore;
  In Thy great name let vic -- t'ry sweep
  Thro' Zi -- on's gates once more.
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Once more, O Lord, we pray,
  Put Thy strong ar -- mour on;
  Strike down the shield of Sa -- tan's power;
  Let vic -- to -- ry be won!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Lord Je -- sus, come to -- day!
  Let souls be -- fore Thee bow;
  Be this Thine hour of tri -- umph, Lord;
  Oh, send sal -- va -- tion now!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Lord Je -- sus, come and reign!
  Let er -- ror's em -- pire fall;
  We long to see Thy glo -- ry shine,
  And crown Thee Lord of all!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Once " "more, " "O " "Lord, " "we " "pray, "
  "\nPut " "Thy " "strong " ar "mour " "on; "
  "\nStrike " "down " "the " "shield " "of " Sa "tan's " "power; "
  "\nLet " vic to "ry " "be " "won! "
  "\nOnce " "more, " "O " "Lord, " "once " "more "
  "\nThy " bless "ing " "we " im "plore; "
  "\nIn " "Thy " "great " "name " "let " vic "t'ry " "sweep "
  "\nThro' " Zi "on's " "gates " "once " "more. "

  \set stanza = "2."
  "\nLord " Je "sus, " "come " to "day! "
  "\nLet " "souls " be "fore " "Thee " "bow; "
  "\nBe " "this " "Thine " "hour " "of " tri "umph, " "Lord; "
  "\nOh, " "send " sal va "tion " "now! "
  "\nOnce " "more, " "O " "Lord, " "once " "more "
  "\nThy " bless "ing " "we " im "plore; "
  "\nIn " "Thy " "great " "name " "let " vic "t'ry " "sweep "
  "\nThro' " Zi "on's " "gates " "once " "more. "

  \set stanza = "3."
  "\nLord " Je "sus, " "come " "and " "reign! "
  "\nLet " er "ror's " em "pire " "fall; "
  "\nWe " "long " "to " "see " "Thy " glo "ry " "shine, "
  "\nAnd " "crown " "Thee " "Lord " "of " "all! "
  "\nOnce " "more, " "O " "Lord, " "once " "more "
  "\nThy " bless "ing " "we " im "plore; "
  "\nIn " "Thy " "great " "name " "let " vic "t'ry " "sweep "
  "\nThro' " Zi "on's " "gates " "once " "more. "
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
