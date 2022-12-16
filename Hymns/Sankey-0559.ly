\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Lord is my Refuge."
  subtitle    = "Sankey No. 559"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
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
  \key bes \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8  s2.*2 s4.
  \textMark \markup { \box \bold "B" } s4. s2.*3
  \textMark \markup { \box \bold "C" }     s2.*3
  \textMark \markup { \box \bold "D" }     s2.*3 s4.
  \textMark \markup { \box \bold "E" } s4. s2.*2 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'8 | 8. g16 f8 d f bes | 4 a8 4 ees8| 8. d16 ees8 \bar "|" \break
  f4 ees8 | d4.~4 f8 | 8. g16 f8 d f bes | 4 a8 4 bes8 |
  c8 8 bes d4 c8 | bes4.~4 \bar "||" d8^\markup\smallCaps Chorus. | 8. a16 8 8 bes c |
  bes4 8 4 f'8 | 8. c16 8 8[d] ees | d4.~4 f,8 | 8. g16 f8 \bar "|" \break
  d8 f bes | 4 a8 4 ees'8 | 8. d16 c8 g4 a8 | bes4.~4
}

alto = \relative {
  \autoBeamOff
  d'8 | 8. ees16 d8 bes d f | f4 ees8 4 c8 | 8. b16 c8
  c4 8 | bes4.~4 d8 | 8. ees16 d8 bes d f | 4 8 4 8 |
  g8 8 8 f4 ees8 | d4.~4 f8 | fis8. 16 8 8 g a |
  g4 8 4 f8 | a8. f16 8 4 8 | 4.~4 d8 | 8. ees16 d8
  bes8 d f | 4 8 4 8 | g8. f16 ees8 4 8 | d4.~4
}

tenor = \relative {
  \autoBeamOff
  bes8 | 8. 16 8 f bes d | 4 c8 4 a8 | 8. 16 8
  a4 f8 | 4.~4 bes8 | 8. 16 8 f bes d | 4 c8 4 bes8 |
  bes8 8 8 4 a8 | bes4.~4 8 | a8. d16 8 8 8 8 |
  d4 8 4 8 | c8. a16 8 8[bes] 8 | bes4.~4 8 | 8. 16 8
  f8 bes d | 4 c8 4 a8 | 8. 16 8 c4 f,8 | 4.~4
}

bass = \relative {
  \autoBeamOff
  bes,8 | 8. 16 8 8 8 8 | f'4 8 4 8 | 8. 16 8
  f4 8 | bes,4.~4 8 | 8. 16 8 8 8 8 | f'4 8 4 d8 |
  ees8 8 e f4 8 | bes,4.~4 8 | d8. 16 8 8 8 fis |
  g4 8 4 bes8 | f8. 16 8 4 8 | bes,4.~4 8 | 8. 16 8
  bes8 8 8 | f'4 8 4 8 | 8. 16 8 4 8 | bes,4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Though bright with the joys that no tongue can tell,
  E -- ter -- ni -- ty's years may be;
  Oh, nev -- er, no nev -- er, can I for -- get
  His won -- der -- ful love to me!
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  The Lord is my Re -- fuge, my Strength, and Shield,
  And this of a truth I know;
  His ten -- der pro -- tec -- tion is o'er me still,
  My com -- fort wher -- e'er I go. __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The Lord is my Re -- fuge, my Strength, and Shield,
  All glo -- ry to Him I'll give,
  And sing of His mer -- cy by night and day,
  For on -- ly in Him I live. __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The Lord is my Re -- fuge, my Strength, and Shield,
  My Sa -- viour, my Friend, and Guide!
  He makes me a child and an heir of grace:
  Oh, what can I ask be -- side? __
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " "Lord " "is " "my " Re "fuge, " "my " "Strength, " "and " "Shield, "
  "\nAnd " "this " "of " "a " "truth " "I " "know; "
  "\nHis " ten "der " pro tec "tion " "is " "o'er " "me " "still, "
  "\nMy " com "fort " wher "e'er " "I " "go. " 
  "\nThough " "bright " "with " "the " "joys " "that " "no " "tongue " "can " "tell, "
  "\nE" ter ni "ty's " "years " "may " "be; "
  "\nOh, " nev "er, " "no " nev "er, " "can " "I " for "get "
  "\nHis " won der "ful " "love " "to " "me!\n"

  \set stanza = "2."
  "\nThe " "Lord " "is " "my " Re "fuge, " "my " "Strength, " "and " "Shield, "
  "\nAll " glo "ry " "to " "Him " "I'll " "give, "
  "\nAnd " "sing " "of " "His " mer "cy " "by " "night " "and " "day, "
  "\nFor " on "ly " "in " "Him " "I " "live. " 
  "\nThough " "bright " "with " "the " "joys " "that " "no " "tongue " "can " "tell, "
  "\nE" ter ni "ty's " "years " "may " "be; "
  "\nOh, " nev "er, " "no " nev "er, " "can " "I " for "get "
  "\nHis " won der "ful " "love " "to " "me!\n"

  \set stanza = "3."
  "\nThe " "Lord " "is " "my " Re "fuge, " "my " "Strength, " "and " "Shield, "
  "\nMy " Sa "viour, " "my " "Friend, " "and " "Guide! "
  "\nHe " "makes " "me " "a " "child " "and " "an " "heir " "of " "grace: "
  "\nOh, " "what " "can " "I " "ask " be "side? " 
  "\nThough " "bright " "with " "the " "joys " "that " "no " "tongue " "can " "tell, "
  "\nE" ter ni "ty's " "years " "may " "be; "
  "\nOh, " nev "er, " "no " nev "er, " "can " "I " for "get "
  "\nHis " won der "ful " "love " "to " "me! "
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
