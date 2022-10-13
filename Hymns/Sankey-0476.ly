\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Take Me as I Am."
  subtitle    = "Sankey No. 476"
  subsubtitle = "Sankey 880 No. 237"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Eliza H. Hamilton."
  meter       = \markup\smallCaps "8.8.8.6."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key e \major
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
  \autoBeamOff \partial 8
  e'8^\markup\italic Moderato. | gis4 8 4 a8 | gis4 fis8 e4 gis8 | b4 8 4 cis8 | b4 fis8 gis4 \bar "|" \break b8 |
  cis4 8 8[dis] e8 | b4 8 gis4 e8 | gis4 a8 gis4 fis8 | e4.~4 \bar "||" \break 8^\markup\smallCaps Chorus.
  gis4 8 4 fis8 | e4.~4 gis8 | b4 8 4 a8 | gis4.~4 \bar "|" \break b8 |
  cis4 8 8[dis] e | b4 8 gis4 e8 | gis4 a8 gis4 fis8 | e4.~4
}

alto = \relative {
  \autoBeamOff \partial 8
  e'8 | 4 8 4 8 | 4 dis8 e4 8 | dis4 8 4 8 | e4 dis8 e4 8 |
  e4 8 4 8 | 4 8 4 8 | 4 fis8 e4 dis8 | e4.~4 8 |
  e4 8 dis4 8 | b4.~4 e8 | dis4 8 4 8 | e4.~4 8 |
  e4 8 4 8 | 4 8 4 8 | 4 fis8 e4 dis8 | e4.~4
}

tenor = \relative {
  \autoBeamOff \partial 8
  gis8 | a4 8 4 cis8 | b4 a8 gis4 b8 | b4 fis8 4 a8 | gis4 b8 4 gis8 |
  a4 8 4 8 | gis4 8 b4 8 | 4 8 4 a8 | gis4.~4 8 |
  b4 8 4 a8 | gis4.~4 e8 | fis4 8 4 b8 | 4.~4 gis8 |
  a4 8 cis[b] a | gis4 8 b4 8 | b4 cis8 b4 a8 | gis4.~4
}

bass = \relative {
  \autoBeamOff \partial 8
  e8 | 4 8 4 a,8 | b4 8 e4 8 | b4 8 4 8 | 4 8 e4 8 |
  a,4 8 4 cis8 | e4 8 4 gis,8 | b4 8 4 8 | e4.~4 8 |
  e4 8 b4 8 | e4.~4 8 | b4 8 4 8 | e4.~4 8 |
  a,4 8 4 cis8 | e4 8 4 gis,8 | b4 8 4 8 | e4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  And take me as I am!
  And take me as I am!
  My on -- ly plea— Christ died for me!
  Oh, take me as I am!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus my Lord, to Thee I cry;
  Un -- less Thou help me, I must die:
  Oh, bring Thy free sal -- va -- tion nigh,
  And take me as I am!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Help -- less I am, and full of guilt;
  But yet for me Thy blood was spilt,
  And Thou canst make me what Thou wilt,
  And take me as I am!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  No pre -- pa -- ra -- tion can I make,
  My best re -- solves I on -- ly break,
  Yet save me for Thine own name's sake,
  And take me as I am!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Be -- hold me, Sa -- viour, at Thy feet,
  Deal with me as Thou se -- est meet;
  Thy work be -- gin, Thy work com -- plete,
  But take me as I am!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus " "my " "Lord, " "to " "Thee " "I " "cry; "
  "\nUn" "less " "Thou " "help " "me, " "I " "must " "die: "
  "\nOh, " "bring " "Thy " "free " sal va "tion " "nigh, "
  "\nAnd " "take " "me " "as " "I " "am! "
  "\nAnd " "take " "me " "as " "I " "am! "
  "\nAnd " "take " "me " "as " "I " "am! "
  "\nMy " on "ly " "plea— " "Christ " "died " "for " "me! "
  "\nOh, " "take " "me " "as " "I " "am!\n"

  \set stanza = "2."
  "\nHelp" "less " "I " "am, " "and " "full " "of " "guilt; "
  "\nBut " "yet " "for " "me " "Thy " "blood " "was " "spilt, "
  "\nAnd " "Thou " "canst " "make " "me " "what " "Thou " "wilt, "
  "\nAnd " "take " "me " "as " "I " "am! "
  "\nAnd " "take " "me " "as " "I " "am! "
  "\nAnd " "take " "me " "as " "I " "am! "
  "\nMy " on "ly " "plea— " "Christ " "died " "for " "me! "
  "\nOh, " "take " "me " "as " "I " "am!\n"

  \set stanza = "3."
  "\nNo " pre pa ra "tion " "can " "I " "make, "
  "\nMy " "best " re "solves " "I " on "ly " "break, "
  "\nYet " "save " "me " "for " "Thine " "own " "name's " "sake, "
  "\nAnd " "take " "me " "as " "I " "am! "
  "\nAnd " "take " "me " "as " "I " "am! "
  "\nAnd " "take " "me " "as " "I " "am! "
  "\nMy " on "ly " "plea— " "Christ " "died " "for " "me! "
  "\nOh, " "take " "me " "as " "I " "am!\n"

  \set stanza = "4."
  "\nBe" "hold " "me, " Sa "viour, " "at " "Thy " "feet, "
  "\nDeal " "with " "me " "as " "Thou " se "est " "meet; "
  "\nThy " "work " be "gin, " "Thy " "work " com "plete, "
  "\nBut " "take " "me " "as " "I " "am! "
  "\nAnd " "take " "me " "as " "I " "am! "
  "\nAnd " "take " "me " "as " "I " "am! "
  "\nMy " on "ly " "plea— " "Christ " "died " "for " "me! "
  "\nOh, " "take " "me " "as " "I " "am! "
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
