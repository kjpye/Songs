\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Leave me Not, O Gentle Saviour!"
  subtitle    = "Sankey No. 534"
  subsubtitle = "N. H. No. 151"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Harry J. Kurzenknabe."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "L. Ashbaugh."
  meter       = \markup\smallCaps "8.7."
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
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*4
  \textMark \markup { \box \bold "B" } s2.*4
  \textMark \markup { \box \bold "C" } s2.*4
  \textMark \markup { \box \bold "D" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d''4 8 4 c8 | 4 bes8 4 a8 | g4 8 f4 bes8 | d8[c] bes <c \tweak font-size #-2 f>4. |
  d4 8 4 c8 | 4 bes8 8[a] g | f[bes] d f4 d8 | 4 c8 bes4. \bar "||" |
  d4.^\markup\smallCaps Chorus. bes | ees g, | f4 bes8 d[c] bes | c4.~4. |
  d4 8 4 c8 | 4 bes8 8[a] g | f[bes] d f4^\markup\italic rit. d8 | 4 c8 bes4. |
}

alto = \relative {
  \autoBeamOff
  f'4 8 fis4 8 | g4 d8 c4 8 | bes4 8 4 d8 | e4 8 f4(ees8) |
  d4 f8 fis4 8 | g4 d8 cis4 8 | d4 f8 4 8 | 4 ees8 d4. |
  f4. d | g ees | d4 8 e4 8 | f4.(ees) |
  d4 f8 fis4 8 | g4 d8 cis4 8 | d4 f8 4 8 | 4 ees8 d4. |
  
}

tenor = \relative {
  \autoBeamOff
  bes4 8 a4 d8 | 4 g,8 fis4 8 | g4 8 bes4 8 | g4 c8 a4. |
  bes4 8 a4 d8 | 4 g,8 4 bes8 | 4 8 d4 bes8 | a4 8 bes4. |
  bes4 8 4 8 | 4 8 4 8 | 4 8 g4 c8 | a8 \partCombineApart r8 r8 r4 r8 \partCombineAutomatic |
  bes4 8 a4 d8 | 4 g,8 4 bes8 | 4 8 d4 bes8 | a4 f8 4. |
}

bass = \relative {
  \autoBeamOff
  bes,4 8 d4 8 | g4 8 d4 8 | ees4 8 d4 bes8 | c4 8 f4. |
  bes,4 8 d4 8 |g4 8 e4 8 | f4 8 4 8 | 4 8 bes,4. |
  bes'4 8 4 8 | ees,4 8 4 8 | bes4 8 c4 8 | f8(a) g f ees c |
  bes4 8 d4 8 | g4 8 e4 8 | f4 8 4 8 | 4 8 bes,4. |
  

}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Sa -- viour, Sa -- viour,
  Keep me near to Thee: __
  Lest I wan -- der in -- to dan -- ger,
  Keep me, Sa -- viour, near to Thee.
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  Leave me not, O gen -- tle Sa -- viour.
  Keep me near, oh, Keep me near to Thee;
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Leave me not, for I am lone -- ly,
  And the way I can -- not see;
  Lest I wan -- der in -- to dan -- ger,
  Keep me, Sa -- viour, near to Thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Leave me not, for dark -- ness gath -- ers
  Round a -- bout the path I tread;
  Leave me not, but let my foot -- steps
  Ev -- er by Thy hand be led.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Leave me not, for sin is near me;
  With temp -- ta -- tion life is fraught;
  The thro' all life's toll -- some jour -- ney,
  O my Sa -- viour, leave me not!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Leave " "me " "not, " "for " "I " "am " lone "ly, "
  "\nAnd " "the " "way " "I " can "not " "see; "
  "\nLest " "I " wan "der " in "to " dan "ger, "
  "\nKeep " "me, " Sa "viour, " "near " "to " "Thee. "
  "\nSa" "viour, " Sa "viour, "
  "\nKeep " "me " "near " "to " "Thee: " 
  "\nLest " "I " wan "der " in "to " dan "ger, "
  "\nKeep " "me, " Sa "viour, " "near " "to " "Thee.\n"

  \set stanza = "2."
  "\nLeave " "me " "not, " "for " dark "ness " gath "ers "
  "\nRound " a "bout " "the " "path " "I " "tread; "
  "\nLeave " "me " "not, " "but " "let " "my " foot "steps "
  "\nEv" "er " "by " "Thy " "hand " "be " "led. "
  "\nSa" "viour, " Sa "viour, "
  "\nKeep " "me " "near " "to " "Thee: " 
  "\nLest " "I " wan "der " in "to " dan "ger, "
  "\nKeep " "me, " Sa "viour, " "near " "to " "Thee.\n"

  \set stanza = "3."
  "\nLeave " "me " "not, " "for " "sin " "is " "near " "me; "
  "\nWith " temp ta "tion " "life " "is " "fraught; "
  "\nThe " "thro' " "all " "life's " toll "some " jour "ney, "
  "\nO " "my " Sa "viour, " "leave " "me " "not! "
  "\nSa" "viour, " Sa "viour, "
  "\nKeep " "me " "near " "to " "Thee: " 
  "\nLest " "I " wan "der " in "to " dan "ger, "
  "\nKeep " "me, " Sa "viour, " "near " "to " "Thee. "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "Leave " "me " "not, " "for " "I " "am " lone "ly, "
  "\nAnd " "the " "way " "I " can "not " "see; "
  "\nLest " "I " wan "der " in "to " dan "ger, "
  "\nKeep " "me, " Sa "viour, " "near " "to " "Thee. "
  "\nLeave " "me " "not, " "O " gen "tle " Sa "viour. "
  "\nKeep " "me " "near " "to " "Thee: "
  "\nLest " "I " wan "der " in "to " dan "ger, "
  "\nKeep " "me, " Sa "viour, " "near " "to " "Thee.\n"

  \set stanza = "2."
  "\nLeave " "me " "not, " "for " dark "ness " gath "ers "
  "\nRound " a "bout " "the " "path " "I " "tread; "
  "\nLeave " "me " "not, " "but " "let " "my " foot "steps "
  "\nEv" "er " "by " "Thy " "hand " "be " "led. "
  "\nLeave " "me " "not, " "O " gen "tle " Sa "viour. "
  "\nKeep " "me " "near " "to " "Thee: "
  "\nLest " "I " wan "der " in "to " dan "ger, "
  "\nKeep " "me, " Sa "viour, " "near " "to " "Thee.\n"

  \set stanza = "3."
  "\nLeave " "me " "not, " "for " "sin " "is " "near " "me; "
  "\nWith " temp ta "tion " "life " "is " "fraught; "
  "\nThe " "thro' " "all " "life's " toll "some " jour "ney, "
  "\nO " "my " Sa "viour, " "leave " "me " "not! "
  "\nLeave " "me " "not, " "O " gen "tle " Sa "viour. "
  "\nKeep " "me " "near " "to " "Thee: "
  "\nLest " "I " wan "der " in "to " dan "ger, "
  "\nKeep " "me, " Sa "viour, " "near " "to " "Thee. "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "Leave " "me " "not, " "for " "I " "am " lone "ly, "
  "\nAnd " "the " "way " "I " can "not " "see; "
  "\nLest " "I " wan "der " in "to " dan "ger, "
  "\nKeep " "me, " Sa "viour, " "near " "to " "Thee. "
  "\nLeave " "me " "not, " "O " gen "tle " Sa "viour. "
  "\nKeep " "me " "near, " "oh, " "Keep " "me " "near " "to " "Thee; "
  "\nLest " "I " wan "der " in "to " dan "ger, "
  "\nKeep " "me, " Sa "viour, " "near " "to " "Thee.\n"

  \set stanza = "2."
  "\nLeave " "me " "not, " "for " dark "ness " gath "ers "
  "\nRound " a "bout " "the " "path " "I " "tread; "
  "\nLeave " "me " "not, " "but " "let " "my " foot "steps "
  "\nEv" "er " "by " "Thy " "hand " "be " "led. "
  "\nLeave " "me " "not, " "O " gen "tle " Sa "viour. "
  "\nKeep " "me " "near, " "oh, " "Keep " "me " "near " "to " "Thee; "
  "\nLest " "I " wan "der " in "to " dan "ger, "
  "\nKeep " "me, " Sa "viour, " "near " "to " "Thee.\n"

  \set stanza = "3."
  "\nLeave " "me " "not, " "for " "sin " "is " "near " "me; "
  "\nWith " temp ta "tion " "life " "is " "fraught; "
  "\nThe " "thro' " "all " "life's " toll "some " jour "ney, "
  "\nO " "my " Sa "viour, " "leave " "me " "not! "
  "\nLeave " "me " "not, " "O " gen "tle " Sa "viour. "
  "\nKeep " "me " "near, " "oh, " "Keep " "me " "near " "to " "Thee; "
  "\nLest " "I " wan "der " in "to " dan "ger, "
  "\nKeep " "me, " Sa "viour, " "near " "to " "Thee. "
}

\book {
  \bookOutputSuffix "midi-women"
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
  \bookOutputSuffix "midi-tenor"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \addlyrics \wordsMidiTenor
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
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \addlyrics \wordsMidiBass
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
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerB { \bass }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerB \chorusMen
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
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerB { \repeat unfold \verses \bass }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerB { \repeat unfold \verses \chorusMen }
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
