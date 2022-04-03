\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Over the Threshold."
  subtitle    = "Sankey No. 377"
%  subsubtitle = "Sankey 880 No. "
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Frank Gould."
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
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8  s2.*2 s4.
  \mark \markup { \box "B" } s4. s2.*2 s4. s4
  \mark \markup { \box "C" } s8  s2.*3
  \mark \markup { \box "D" }     s2.*3 s4.
  \mark \markup { \box "E" } s4. s2.*2 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''8
  c8. bes16 a8 8 g f
  g8. f16 d8 f4 d8
  c8 f f \bar "|" \break a8. g16 f8
  g4.~4 c8 % B
  c8. bes16 a8 8 g f
  g8. f16 d8 bes'4 \bar "|" \break d8
  c8 f, a g8. f16 e8 % C
  f4.~4 \bar "||" 8^\markup\smallCaps Chorus.
  f8. 16 8 bes4 d8
  c8. a16 bes8 c4 a8 % D
  g8 8 8 b8. a16 b8
  c4.~4 8
  c8. bes16 a8 \bar "|" \break a8 g f
  g8. f16 d8 bes'4 d8 % E
  c8 f, a g8. f16 e8
  f4.~4
}

alto = \relative {
  \autoBeamOff
  f'8
  f8. 16 8 8 c c
  d8. 16 8 4 bes8
  a8 c c f8. c16 d8
  e4.~4 8 % B
  f8. 16 8 8 c c
  d8. 16 8 4 f8
  f8 c f c8. 16 8 % C
  c4.~4 8
  d8. 16 8 4 f8
  f8. 16 g8 a4 f8 % D
  e8 8 8 f8. 16 8
  e4.~4 8
  f8. 16 8 8 c c
  d8. 16 8 4 f8 % E
  f8 c f c8. 16 8
  c4.~4
}

tenor = \relative {
  \autoBeamOff
  a8
  a8. d16 c8 8 bes a
  bes8. 16 f8 bes4 f8
  f8 a a c8. 16 b8
  c4.~4 bes8 % B
  a8. d16 c8 8 bes a
  bes8. 16 f8 4 bes8
  a8 8 c bes8. a16 g8 % C
  a4.~4 8
  bes8. 16 8 4 8
  a8. c16 8 f4 c8 % D
  c8 8 8 d8. 16 8
  c4.~4 bes8
  a8. d16 c8 c8 bes a
  bes8. 16 f8 4 bes8 % E
  a8 8 c bes8. a16 g8
  a4.~4
}

bass = \relative {
  \autoBeamOff
  f8
  f8. 16 8 8 8 8
  bes,8. 16 8 4 8
  f8 f'8 8 8. e16 d8
  c4.~4 8 % B
  f8. 16 8 8 8 8
  bes,8. 16 8 4 8
  c8 8 8 8. 16 8 % C
  f4.~4 8
  bes8. 16 8 4 bes,8
  f'8. 16 8 4 8 % D
  g8 8 8 <g, g'>8. 16 8
  c4.~4 8
  f8. 16 8 8 8 8
  bes,8. 16 8 4 8 % E
  c8 8 8 8. 16 8
  f4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Then come as thou art; thy poor bro -- ken heart
  Re -- newed by His Spi -- rit shall be:
  Stop o -- ver the thresh -- old: why stand at the door?
  Come in, there is mer -- cy for thee.
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Step o -- ver the thresh -- old, and wan -- der no more,
  Op -- pressed with the bur -- den of sin;
  Step o -- ver the thresh -- old: why stand at the door?
  The Heal -- er is wait -- ing with -- in. __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Step o -- ver the thresh -- old, let faith be thy guide
  To Him, thy Phy -- si -- cian so kind;
  Go wash in the foun -- tain that flows from His side,
  And health to thy soul thou shalt find. __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Step o -- ver the thresh -- old, re -- oent and be -- lieve,
  And quick -- ly thy bur -- den will fall;
  Oh, touvh but His gar -- ment, and thou shalt re -- ceive
  The par -- don He of -- fers to all. __
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Step o -- ver the thresh -- old, no shel -- ter hast thou:
  Thy ref -- uge He of -- fers to be:
  Stop o -- ver the thresh -- old, and come to Him now;
  O lost one, He tar -- ries for thee! __
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Step " o "ver " "the " thresh "old, " "and " wan "der " "no " "more, "
  "\nOp" "pressed " "with " "the " bur "den " "of " "sin; "
  "\nStep " o "ver " "the " thresh "old: " "why " "stand " "at " "the " "door? "
  "\nThe " Heal "er " "is " wait "ing " with "in. " 
  "\nThen " "come " "as " "thou " "art; " "thy " "poor " bro "ken " "heart "
  "\nRe" "newed " "by " "His " Spi "rit " "shall " "be: "
  "\nStop " o "ver " "the " thresh "old: " "why " "stand " "at " "the " "door? "
  "\nCome " "in, " "there " "is " mer "cy " "for " "thee. "

  \set stanza = "2."
  "\nStep " o "ver " "the " thresh "old, " "let " "faith " "be " "thy " "guide "
  "\nTo " "Him, " "thy " Phy si "cian " "so " "kind; "
  "\nGo " "wash " "in " "the " foun "tain " "that " "flows " "from " "His " "side, "
  "\nAnd " "health " "to " "thy " "soul " "thou " "shalt " "find. " 
  "\nThen " "come " "as " "thou " "art; " "thy " "poor " bro "ken " "heart "
  "\nRe" "newed " "by " "His " Spi "rit " "shall " "be: "
  "\nStop " o "ver " "the " thresh "old: " "why " "stand " "at " "the " "door? "
  "\nCome " "in, " "there " "is " mer "cy " "for " "thee. "

  \set stanza = "3."
  "\nStep " o "ver " "the " thresh "old, " re "oent " "and " be "lieve, "
  "\nAnd " quick "ly " "thy " bur "den " "will " "fall; "
  "\nOh, " "touvh " "but " "His " gar "ment, " "and " "thou " "shalt " re "ceive "
  "\nThe " par "don " "He " of "fers " "to " "all. " 
  "\nThen " "come " "as " "thou " "art; " "thy " "poor " bro "ken " "heart "
  "\nRe" "newed " "by " "His " Spi "rit " "shall " "be: "
  "\nStop " o "ver " "the " thresh "old: " "why " "stand " "at " "the " "door? "
  "\nCome " "in, " "there " "is " mer "cy " "for " "thee. "

  \set stanza = "4."
  "\nStep " o "ver " "the " thresh "old, " "no " shel "ter " "hast " "thou: "
  "\nThy " ref "uge " "He " of "fers " "to " "be: "
  "\nStop " o "ver " "the " thresh "old, " "and " "come " "to " "Him " "now; "
  "\nO " "lost " "one, " "He " tar "ries " "for " "thee! " 
  "\nThen " "come " "as " "thou " "art; " "thy " "poor " bro "ken " "heart "
  "\nRe" "newed " "by " "His " Spi "rit " "shall " "be: "
  "\nStop " o "ver " "the " thresh "old: " "why " "stand " "at " "the " "door? "
  "\nCome " "in, " "there " "is " mer "cy " "for " "thee. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
      \pointAndClickOff
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
                                              \wordsFour  \chorus
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
                                              \wordsFour  \chorus
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
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
