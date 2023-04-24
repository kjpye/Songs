\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "All to Jesus I Surrender."
  subtitle    = "Sankey No. 601"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. S. Weeden."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. W. van de Venter."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps ""

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \textMark \markup { \box \bold "C" } s1*4
  \textMark \markup { \box \bold "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \sectionLabel \markup\smallCaps Duet.
  \repeat unfold 2 {fis'4. 8 g4 fis | e4. 8 fis4 e | d4. 8 g4 fis | e fis d2 |}
  \section \sectionLabel \markup\smallCaps "Chorus."
  d'4. cis8 b4 a | g2. r4 | cis4. b8 a4 g | fis2. r4 |
  fis4. g8 b4 a | d4. cis8 4 b | a4. g8 fis4 e | d2~4 r |
  
}

alto = \relative {
  \autoBeamOff
  s1*8 \section
  fis'4. a8 g4 fis | e2. r4 | a4. g8 fis4 e | d2. r4 |
  d4. e8 g4 fis | 4. a8 4 g | fis4. e8 d4 cis | d8 a b b cis4 r |
}

tenor = \relative {
  \autoBeamOff
  \repeat unfold 2 {a4. 8 b4 a | g4. 8 a4 g | fis4. 8 b4 a | g a fis2 |}
  \section
  s1 | cis'8 8 8 8 4 r | s1 | a8 8 8 8 4 r |
  a4. 8 d4 4 | a4. d8 4 4 | 4. a8 4 g | fis8 8 g g fis4 r |
}

bass = \relative {
  \autoBeamOff \partCombineApart \tiny
  \repeat unfold 2 {<d, d'>4 4 4 r | <a a'>4 4 4 r | <d d'>4 4 4 r | <a a'>2 <d d'> |}
  \section
  <d' a'>4 r q r  | \normalsize \partCombineAutomatic a8 8 8 8 4 r | \tiny <a a'>4 r q r | \normalsize d8 8 8 8 4 r |
  d4. 8 4 4 | 4. fis8 g4 4 | a4. 8 a,4 4 | d8 8 8 8 4 r |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  I sur -- ren -- der all,
  I sur -- ren -- der all;
  All to Thee, my bles -- sed Sa -- viour,
  I sur -- ren -- der all. __
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  I sur -- ren -- der all,
  I sur -- ren -- der all;
  _ _ _ _ _ _ _ _ _ _ _ _ _
  sur -- ren -- der all.
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  All to Je -- sus I sur -- ren -- der,
  All to Him I free -- ly give;
  I will ev -- er love and trust Him.
  In His pre -- sence dai -- ly live.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  All to Je -- sus I sur -- ren -- der,
  Hum -- bly at His feet I bow;
  World -- ly plea -- sures all for -- sa -- ken,
  Take me, Je -- sus. take me now.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  All to Je -- sus I sur -- ren -- der,
  Make me, Sa -- viour, whol -- ly Thine;
  Let the Ho -- ly Spi -- rit wit -- ness,
  I am Thine and Thou art mine.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  All to Je -- sus I sur -- ren -- der:
  Lord, I give my -- self to Thee;
  Fill me with Thy love and pow -- er,
  Let Thy bles -- sing rest on me.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  All to Je -- sus I sur -- ren -- der:
  Now I feel the sa -- cred flame;
  Oh, the joy of full sal -- va -- tion!
  Glo -- ry, glo -- ry to His name!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "All " "to " Je "sus " "I " sur ren "der, "
  "\nAll " "to " "Him " "I " free "ly " "give; "
  "\nI " "will " ev "er " "love " "and " "trust " "Him. "
  "\nIn " "His " pre "sence " dai "ly " "live. "
  "\nI " sur ren "der " "all, "
  "\nI " sur ren "der " "all; "
  "\nAll " "to " "Thee, " "my " bles "sed " Sa "viour, "
  "\nI " sur ren "der " "all.\n" 

  \set stanza = "2."
  "\nAll " "to " Je "sus " "I " sur ren "der, "
  "\nHum" "bly " "at " "His " "feet " "I " "bow; "
  "\nWorld" "ly " plea "sures " "all " for sa "ken, "
  "\nTake " "me, " Je "sus. " "take " "me " "now. "
  "\nI " sur ren "der " "all, "
  "\nI " sur ren "der " "all; "
  "\nAll " "to " "Thee, " "my " bles "sed " Sa "viour, "
  "\nI " sur ren "der " "all.\n" 

  \set stanza = "3."
  "\nAll " "to " Je "sus " "I " sur ren "der, "
  "\nMake " "me, " Sa "viour, " whol "ly " "Thine; "
  "\nLet " "the " Ho "ly " Spi "rit " wit "ness, "
  "\nI " "am " "Thine " "and " "Thou " "art " "mine. "
  "\nI " sur ren "der " "all, "
  "\nI " sur ren "der " "all; "
  "\nAll " "to " "Thee, " "my " bles "sed " Sa "viour, "
  "\nI " sur ren "der " "all.\n" 

  \set stanza = "4."
  "\nAll " "to " Je "sus " "I " sur ren "der: "
  "\nLord, " "I " "give " my "self " "to " "Thee; "
  "\nFill " "me " "with " "Thy " "love " "and " pow "er, "
  "\nLet " "Thy " bles "sing " "rest " "on " "me. "
  "\nI " sur ren "der " "all, "
  "\nI " sur ren "der " "all; "
  "\nAll " "to " "Thee, " "my " bles "sed " Sa "viour, "
  "\nI " sur ren "der " "all.\n" 

  \set stanza = "5."
  "\nAll " "to " Je "sus " "I " sur ren "der: "
  "\nNow " "I " "feel " "the " sa "cred " "flame; "
  "\nOh, " "the " "joy " "of " "full " sal va "tion! "
  "\nGlo" "ry, " glo "ry " "to " "His " "name! "
  "\nI " sur ren "der " "all, "
  "\nI " sur ren "der " "all; "
  "\nAll " "to " "Thee, " "my " bles "sed " Sa "viour, "
  "\nI " sur ren "der " "all.\n" 
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
      #(layout-set-staff-size 20)
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
                                              \wordsFive  \chorus
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
