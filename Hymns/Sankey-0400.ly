\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Abundantly Able to Save."
  subtitle    = "Sankey No. 400"
  subsubtitle = "N. H. No. 115"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. A. Hoffman,"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key a \major
  \time 9/8
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2 s4.*6
  \mark \markup { \box "B" }    s4.*7 s4
  \mark \markup { \box "C" } s2 s4.*7 s4
  \mark \markup { \box "D" } s2 s4.*6
  \mark \markup { \box "E" }    s4.*6
  \mark \markup { \box "F" }    s4.*4 s4
  \mark \markup { \box "G" } s2 s4.*4 s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'8 16 8. 8
  cis'4.~8 8 8 8 b a
  b4.~4 e,8 16 8. 8
  b'4.~8 8 8 8 a gis % B
  a4.~4 e8 8 a cis
  e4.~8 cis \bar "|" \break cis8 8 b a
  fis4.~4 8 d' cis b % C
  a4.~8 8 8 b a gis
  a4.~4 \bar "|" \break e8^\markup\smallCaps Chorus. 16 8. 8
  a4.~8 8 8 8 gis a % D
  b4.~4 e,8 8 8 8
  b'4.~8 8 8 8 a b % D
  cis4.~4 e,8 8 a cis
  e4.~8 cis8 8 8 b a % E
  fis4.~4 \bar "|" \break 8 d' cis b
  a4.~8 8 8 b a gis
  a4.~4
}

alto = \relative {
  \autoBeamOff
  e'8 16 8. 8
  e4.~8 8 8 8 8 a
  g4.~4 e8 16 8. 8
  e4.~8 8 8 8 8 8 % B
  e4.~4 8 8 8 8
  a4.~8 e e e d cis
  d4.~4 8 fis fis fis % C
  e4.~8 8 8 8 8 8
  e4.~4 8 16 8. 8
  e4.~8 8 8 8 8 a % D
  g4.~4 e8 8 8 8
  e4.~8 8 8 8 8 8 % E
  e4.~4 cis8 8 8 e
  a4.~8 e e e d cis % F
  d4.~4 8 fis fis fis
  e4.~8 8 8 8 8 8 % G
  e4.~4
}

tenor = \relative {
  \autoBeamOff
  e8 16 8. 8
  a4.~8 8 cis e d cis
  e4.~4 e,8 16 8. 8
  d'4.~8 8 8 8 cis b % B
  cis4.~4 8 8 8 8
  cis4.~8 a8 8 8 8 8
  a4.~4 8 8 8 b % C
  cis4.~8 8 8 d cis b
  cis4.~4 r8 r4 r8 
  cis16 8. 8 8 8 8 e d cis % D
  e16 8. 8 4 r8 r4 r8
  fis,16 8. 8 8 8 8 8 a fis % E
  a8 8 8 4 r8 r4 r8
  cis16 8. 8 8 a a a a a % F
  a8 8 8 4 r8 r4 b8
  cis8 8 8 8 8 8 d cis b % G
  cis4.~4


}

bass = \relative {
  \autoBeamOff
  e8 16 8. 8
  a,4.~8 8 8 8 8 8e'4.~4 8 16 8. 8
  e4.~8 8 8 8 8 8
  a,4.~4 8 8 8 8 % B
  a'4.~8 8 8 8 8 8
  d,4.~4 8 8 8 8 % C
  e4.~8 8 8 8 8 8
  a,4.~4 r8 r4 r8
  a'16 8. 8 8 8 8 cis b a % D
  e16 8. 8 4 r8 r4 r8
  e16 8. 8 8 8 8 8 cis e % E
  a8 8 8 4 r8 r4 r8
  a16 8. 8 8 8 8 8 8 8 % F
  d,8 8 8 4 r8 r4 d8
  e8 8 8 8 8 8 8 8 8 % F
  a,4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  My bro -- ther, the Mas -- ter is call -- ing for thee: __
  His grace and His mer -- cy are won -- drous -- ly free! __
  His blood as a ran -- som for sin -- ners He gave __
  And He is a -- bun -- dant -- ly a -- ble to save. __
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  Bro -- ther, the Mas -- ter is come, and is call -- ing for thee:
  Bro -- ther, His grace and His mer -- cy are won -- drous -- ly free!
  Bro -- ther, His blood as a ran -- som for sin -- ners He gave __
  And He is a -- bun -- dant -- ly a -- ble to save. __
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Who -- ev -- er re -- ceiv -- eth the Cru -- ci -- fied One,
  Who -- ev -- er be -- liev -- eth on God's on -- ly Son.
  A free and a per -- fect sal -- va -- tion shall have:
  For He is a -- bun -- dant -- ly a -- ble to save.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Who -- ev -- er re -- ceiv -- eth the mes -- sage of God,
  And trusts in the power of the soul- -- clean -- sing blood,
  A full and e -- ter -- nal re -- demp -- tion shall have:
  For He is both a -- ble and wil -- ling to save.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Who -- ev -- er re -- pents and for -- sakes ev -- 'ry sin,
  And o -- pens his heart for the Lord to come in,
  A pre -- sent and per -- fect sal -- va -- tion shall have:
  For Je -- sus is rea -- dy this mo -- ment to save.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Who" ev "er " re ceiv "eth " "the " Cru ci "fied " "One, "
  "\nWho" ev "er " be liev "eth " "on " "God's " on "ly " "Son. "
  "\nA " "free " "and " "a " per "fect " sal va "tion " "shall " "have: "
  "\nFor " "He " "is " a bun dant "ly " a "ble " "to " "save. "
  "\nMy " bro "ther, " "the " Mas "ter " "is " call "ing " "for " "thee: " 
  "\nHis " "grace " "and " "His " mer "cy " "are " won drous "ly " "free! " 
  "\nHis " "blood " "as " "a " ran "som " "for " sin "ners " "He " "gave " 
  "\nAnd " "He " "is " a bun dant "ly " a "ble " "to " "save. " 

  \set stanza = "2."
  "\nWho" ev "er " re ceiv "eth " "the " mes "sage " "of " "God, "
  "\nAnd " "trusts " "in " "the " "power " "of " "the " soul- clean "sing " "blood, "
  "\nA " "full " "and " e ter "nal " re demp "tion " "shall " "have: "
  "\nFor " "He " "is " "both " a "ble " "and " wil "ling " "to " "save. "
  "\nMy " bro "ther, " "the " Mas "ter " "is " call "ing " "for " "thee: " 
  "\nHis " "grace " "and " "His " mer "cy " "are " won drous "ly " "free! " 
  "\nHis " "blood " "as " "a " ran "som " "for " sin "ners " "He " "gave " 
  "\nAnd " "He " "is " a bun dant "ly " a "ble " "to " "save. " 

  \set stanza = "3."
  "\nWho" ev "er " re "pents " "and " for "sakes " ev "'ry " "sin, "
  "\nAnd " o "pens " "his " "heart " "for " "the " "Lord " "to " "come " "in, "
  "\nA " pre "sent " "and " per "fect " sal va "tion " "shall " "have: "
  "\nFor " Je "sus " "is " rea "dy " "this " mo "ment " "to " "save. "
  "\nMy " bro "ther, " "the " Mas "ter " "is " call "ing " "for " "thee: " 
  "\nHis " "grace " "and " "His " mer "cy " "are " won drous "ly " "free! " 
  "\nHis " "blood " "as " "a " ran "som " "for " sin "ners " "He " "gave " 
  "\nAnd " "He " "is " a bun dant "ly " a "ble " "to " "save. " 
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Who" ev "er " re ceiv "eth " "the " Cru ci "fied " "One, "
  "\nWho" ev "er " be liev "eth " "on " "God's " on "ly " "Son. "
  "\nA " "free " "and " "a " per "fect " sal va "tion " "shall " "have: "
  "\nFor " "He " "is " a bun dant "ly " a "ble " "to " "save. "
  "\nBro" "ther, " "the " Mas "ter " "is " "come, " "and " "is " call "ing " "for " "thee: "
  "\nBro" "ther, " "His " "grace " "and " "His " mer "cy " "are " won drous "ly " "free! "
  "\nBro" "ther, " "His " "blood " "as " "a " ran "som " "for " sin "ners " "He " "gave " 
  "\nAnd " "He " "is " a bun dant "ly " a "ble " "to " "save. " 

  \set stanza = "2."
  "\nWho" ev "er " re ceiv "eth " "the " mes "sage " "of " "God, "
  "\nAnd " "trusts " "in " "the " "power " "of " "the " soul- clean "sing " "blood, "
  "\nA " "full " "and " e ter "nal " re demp "tion " "shall " "have: "
  "\nFor " "He " "is " "both " a "ble " "and " wil "ling " "to " "save. "
  "\nBro" "ther, " "the " Mas "ter " "is " "come, " "and " "is " call "ing " "for " "thee: "
  "\nBro" "ther, " "His " "grace " "and " "His " mer "cy " "are " won drous "ly " "free! "
  "\nBro" "ther, " "His " "blood " "as " "a " ran "som " "for " sin "ners " "He " "gave " 
  "\nAnd " "He " "is " a bun dant "ly " a "ble " "to " "save. " 

  \set stanza = "3."
  "\nWho" ev "er " re "pents " "and " for "sakes " ev "'ry " "sin, "
  "\nAnd " o "pens " "his " "heart " "for " "the " "Lord " "to " "come " "in, "
  "\nA " pre "sent " "and " per "fect " sal va "tion " "shall " "have: "
  "\nFor " Je "sus " "is " rea "dy " "this " mo "ment " "to " "save. "
  "\nBro" "ther, " "the " Mas "ter " "is " "come, " "and " "is " call "ing " "for " "thee: "
  "\nBro" "ther, " "His " "grace " "and " "His " mer "cy " "are " won drous "ly " "free! "
  "\nBro" "ther, " "His " "blood " "as " "a " ran "som " "for " sin "ners " "He " "gave " 
  "\nAnd " "He " "is " a bun dant "ly " a "ble " "to " "save. " 
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
  \bookOutputSuffix "midi-men"
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
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
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

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
