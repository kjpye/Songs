\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Only an Armour-Bearer."
  subtitle    = "Sankey No. 696"
  subsubtitle = "Sankey 880 No. 33"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*2
  \textMark \markup { \box \bold "B" } s1*2
  \textMark \markup { \box \bold "C" } s1*2
  \textMark \markup { \box \bold "D" } s1*2
  \textMark \markup { \box \bold "E" } s1*2 s2
  \textMark \markup { \box \bold "F" } s2 s1*2
  \textMark \markup { \box \bold "G" } s1*2
  \textMark \markup { \box \bold "H" } s1*2
  \textMark \markup { \box \bold "I" } s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 8. 16 g8 f d f | bes4 8. c16 bes2 |
  a4 g8. 16 8 fis g g | c4 bes a2 |
  f4 8. 16 g8 f d f | bes4 c d2 |
  ees8 8 8 8 d4 c | bes8 a g a bes2 |
  \section \sectionLabel \markup\smallCaps Chorus. \break
  c4 8. 16 8 8 4 | d4 8. 16 c2 | a4 8. g16 \bar "|" \break
  a4 bes8 c | bes4 a8. g16 f2 | f4 d'8. 16 c8 bes a g |
  f4 d f2 | g4 8. 16 c8 bes a g |
  f4 c' c2 | d4 8. 16 c8 bes a g |
  f4 d f2 | g4 8. 16 c8 bes a g | f4 a bes2
}

alto = \relative {
  \autoBeamOff
  R1*8 |
  f'4 8. 16 8 8 4 | bes4 8. 16 f2 | 4 8. 16
  f4 g8 a | g4 f8. e16 f2 | d4 f8. 16 ees8 d f ees |
  d4 bes d2 | ees4 8. 16 8 8 8 8 |
  d4 f4 2 | 4 8. 16 ees8 d f ees |
  d4 bes d2 | ees4 8. 16 8 8 8 8 | d4 ees d2 |
}

tenor = \relative {
  \autoBeamOff
  R1*8 |
  f4 8. 16 8 8 4 | bes4 8. 16 a2 | c4 8. 16
  c4 8 8 | 4 8. bes16 a2 | bes4 8. 16 8 8 8 8 |
  bes4 f bes2 | 4 8. 16 8 8 8 8 |
  bes4 a4 2 | bes4 8. 16 8 8 8 8 |
  bes4 f bes2 | 4 8. 16 8 8 8 8 | 4 c bes2 |
}

bass = \relative {
  \autoBeamOff
  R1*8 |
  f4 8. 16 8 8 4 | bes4 8. 16 f2 | 4 8. 16
  f4 8 8 | c4 8. 16 <<{f2} \new Voice {f8 ees d c}>> | bes4 8. 16 8 8 8 8 |
%  f4 8 8 | c4 8. 16 f2 | bes,4 8. 16 8 8 8 8 |
  bes4 4 2 | ees4 8. 16 8 8 8 8 |
  f4 4 2 | bes,4 8. 16 8 8 8 8 |
  bes4 4 2 | ees4 8. 16 8 8 8 8 | f4 4 bes,2 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Hear ye the bat -- tle cry! “For -- ward!” the call;
  See, see, the fal -- t'ring ones, back -- ward they fell.
  Sure -- ly my Cap -- tain may de -- pend on me,
  Though but an ar -- mour- bear -- er I may be;
  Sure -- ly my Cap -- tain may de -- pend on me.
  Though but an ar -- mour- bear -- er I may be.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  On -- ly an ar -- mour- bear -- er, firm -- ly I stand,
  Wait -- ing to fol -- low ar the King's com -- mand;
  March -- ing, if “On -- ward!” shall the or -- der be.
  Stand -- ing by my Cap -- tain, serv -- ing faith -- ful -- ly.
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  On -- ly an ar -- mour- bear -- er, now in the field,
  Guard -- ing a shi -- ning hel -- met, sword, and shield;
  Wait -- ing to hear the thrill -- ing bat -- tle -- cry;
  Rea -- dy then to an -- swer, “Mas -- ter, here am I!”
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  On -- ly an ar -- mour- bear -- er, yet may I share
  Glo -- ry im -- mor -- tal, and a bright crown wear:
  If in the bat -- tle to my trust I'm true,
  Mine shall be the hon -- ours in the Grand Re -- view.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "On" "ly " "an " ar mour bear "er, " firm "ly " "I " "stand, "
  "\nWait" "ing " "to " fol "low " "ar " "the " "King's " com "mand; "
  "\nMarch" "ing, " "if " “On "ward!” " "shall " "the " or "der " "be. "
  "\nStand" "ing " "by " "my " Cap "tain, " serv "ing " faith ful "ly. "
  "\nHear " "ye " "the " bat "tle " "cry! " “For "ward!” " "the " "call; "
  "\nSee, " "see, " "the " fal "t'ring " "ones, " back "ward " "they " "fell. "
  "\nSure" "ly " "my " Cap "tain " "may " de "pend " "on " "me, "
  "\nThough " "but " "an " ar mour bear "er " "I " "may " "be; "
  "\nSure" "ly " "my " Cap "tain " "may " de "pend " "on " "me. "
  "\nThough " "but " "an " ar mour bear "er " "I " "may " "be.\n"

  \set stanza = "2."
  "\nOn" "ly " "an " ar mour bear "er, " "now " "in " "the " "field, "
  "\nGuard" "ing " "a " shi "ning " hel "met, " "sword, " "and " "shield; "
  "\nWait" "ing " "to " "hear " "the " thrill "ing " bat tle "cry; "
  "\nRea" "dy " "then " "to " an "swer, " “Mas "ter, " "here " "am " "I!” "
  "\nHear " "ye " "the " bat "tle " "cry! " “For "ward!” " "the " "call; "
  "\nSee, " "see, " "the " fal "t'ring " "ones, " back "ward " "they " "fell. "
  "\nSure" "ly " "my " Cap "tain " "may " de "pend " "on " "me, "
  "\nThough " "but " "an " ar mour bear "er " "I " "may " "be; "
  "\nSure" "ly " "my " Cap "tain " "may " de "pend " "on " "me. "
  "\nThough " "but " "an " ar mour bear "er " "I " "may " "be.\n"

  \set stanza = "3."
  "\nOn" "ly " "an " ar mour bear "er, " "yet " "may " "I " "share "
  "\nGlo" "ry " im mor "tal, " "and " "a " "bright " "crown " "wear: "
  "\nIf " "in " "the " bat "tle " "to " "my " "trust " "I'm " "true, "
  "\nMine " "shall " "be " "the " hon "ours " "in " "the " "Grand " Re "view. "
  "\nHear " "ye " "the " bat "tle " "cry! " “For "ward!” " "the " "call; "
  "\nSee, " "see, " "the " fal "t'ring " "ones, " back "ward " "they " "fell. "
  "\nSure" "ly " "my " Cap "tain " "may " de "pend " "on " "me, "
  "\nThough " "but " "an " ar mour bear "er " "I " "may " "be; "
  "\nSure" "ly " "my " Cap "tain " "may " de "pend " "on " "me. "
  "\nThough " "but " "an " ar mour bear "er " "I " "may " "be. "
}

wordsMidiMen = \lyricmode {
}

pianoRH = \relative {
  \global
  r4 <bes d f> r q | r q r q |
  r4 <bes ees g> r q | r <c e g> <<{<a c f>2} \new Voice {f'8 ees d c}>> |
  r4 <bes d f> r q | r q r q |
  <a ees'>2 <bes d>4 <bes c> | <bes d> <a ees'> <bes d>2 \section |
  R1*12 |
}

pianoLH = \relative {
  \global
  bes,4 r bes r | bes r bes r |
  ees4 r ees r | c r <f, f'>2 |
  bes4 r bes r | bes r bes r |
  c2 d4 ees | <f, f'>2 <bes f'>2 \section |
  R1*12 |
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano
        <<
          \new Voice { \repeat unfold \verses \RehearsalTrack }
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
    >>
    \midi {}
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
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
      \new PianoStaff <<
        \new Staff <<
          \new Voice \pianoRH
        >>
        \new Staff <<
          \clef bass
          \new Voice \pianoLH
        >>
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

singlescore = {
  <<
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
                                        }
      >>
                                % Joint tenor/bass staff
      \new Staff = men \with { printPartCombineTexts = ##f }
      <<
        \clef "bass"
        \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
        { \global \repeat unfold \verses \bass }
      >>
    >>
    \new PianoStaff <<
      \new Staff <<
        \new Voice {\repeat unfold \verses \pianoRH}
      >>
      \new Staff <<
        \clef bass
        \new Voice {\repeat unfold \verses \pianoLH}
      >>
    >>
  >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
