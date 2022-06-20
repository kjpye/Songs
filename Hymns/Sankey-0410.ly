\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "There is Pardon for You."
  subtitle    = "Sankey No. 410"
  subsubtitle = "Sankey 880 No. 136"
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
  meter       = \markup\smallCaps "11.8."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

 #(set-global-staff-size 19)

global = {
  \key aes \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*2
  \mark \markup { \box "B" }    s2.*3
  \mark \markup { \box "C" }    s2.*3
  \mark \markup { \box "D" }    s2.*3 s4. s4
  \mark \markup { \box "E" } s8 s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Slowly 4=100
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8
  ees8 c des ees c' aes
  g8 aes bes a4 ees8 \break
  f8 8 8 des' c bes % B
  aes4.(g4) bes8
  bes8 c bes bes g aes \break
  bes8 c bes bes4 8 % C
  c8 8 8 d c d
  ees4.(des\fermata) \bar "||" \break
  c8.^\markup\smallCaps Chorus. bes16 aes8 8. g16 aes8 % D
  bes4.~4.
  des8. c16 bes8 8 aes bes
  c4.~4 \bar "|" \break ees8
  ees8. des16 c8 8 bes aes % E
  f4. des'4\fermata 8
  c8. bes16 aes8 8. bes16 g8
  aes4.~4
}

alto = \relative {
  \autoBeamOff
  c'8
  c8 aes bes c ees ees
  des8 c des c4 ees8
  des8 8 ees f f f % B
  ees4.~4 8
  ees8 8 8 8 8 8
  ees8 8 8 4 8 % C
  ees8 8 8 aes aes f
  g4.(bes\fermata)
  aes8. ees16 8 8. 16 8 % D
  ees4.~4.
  ees8. 16 8 des c ees
  ees4.~4 aes8
  aes8. ees16 8 8 8 8 % E
  des4. f4\fermata 8
  ees8. des16 c8 8. des16 bes8
  c4.~4
}

tenor = \relative {
  \autoBeamOff
  aes8
  aes8 ees ees aes aes aes
  bes8 aes g aes4 8
  aes8 8 a bes a bes % B
  c4.(bes4) g8
  g8 aes g g ees f
  g8 aes g g4 8 % C
  aes8 8 8 bes bes bes
  bes4.(ees\fermata)
  ees8. des16 c8 8. bes16 aes8 % D
  g4 8 4.
  bes8. aes16 g8 8 aes g
  aes4 8 4 c8
  c8. bes16 aes8 8 g aes % E
  aes4. 4\fermata 8
  aes8. ees16 8 8. 16 8
  ees4.~4
}

bass = \relative {
  \autoBeamOff
  aes,8
  aes8 8 8 8 8 c
  ees8 8 8 aes,4 c8
  des8 8 c bes c des % B
  ees4.~4 8
  ees8 8 8 8 8 8
  ees8 8 8 4 8 % C
  aes8 8 8 f f f
  ees4.~4.\fermata
  aes,8. 16 8 8. bes16 c8 % D
  ees4 8 4.
  ees8. 16 8 8 8 8
  aes4 8 4 8
  aes8. 16 8 a, bes c % E
  des4. 4\fermata 8
  ees8. 16 8 8. 16 8
  aes,4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Yes, there is par -- don for you: __
  Yes, there is par -- don for you: __
  For Je -- sus has died to re -- deem you,
  And of -- fers full par -- don to you. __
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ for you!
  _ _ _ _ _ _ _ for you!
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, come to the Sa -- viour, be -- lieve in His name,
  And ask Him your heart to re -- new:
  He waits to be gra -- cious, oh, turn not a -- way,
  For now there is par -- don for you. __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The way of trans -- gres -- sion that leads un -- to death,
  Oh, why will you long -- er pur -- sue?
  How can you re -- ject the sweet mes -- sage of love,
  That of -- fers full par -- don to you! __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Be warned of your dan -- ger, es -- cape to the cross;
  Your on -- ly sal -- va -- tion is there:
  Be -- lieve, and that mo -- ment the Spi -- rit of Grace
  Will an -- swer your pen -- i -- tent prayer. __
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "come " "to " "the " Sa "viour, " be "lieve " "in " "His " "name, "
  "\nAnd " "ask " "Him " "your " "heart " "to " re "new: "
  "\nHe " "waits " "to " "be " gra "cious, " "oh, " "turn " "not " a "way, "
  "\nFor " "now " "there " "is " par "don " "for " "you. " 
  "\nYes, " "there " "is " par "don " "for " "you: " 
  "\nYes, " "there " "is " par "don " "for " "you: " 
  "\nFor " Je "sus " "has " "died " "to " re "deem " "you, "
  "\nAnd " of "fers " "full " par "don " "to " "you. " 

  \set stanza = "2."
  "\nThe " "way " "of " trans gres "sion " "that " "leads " un "to " "death, "
  "\nOh, " "why " "will " "you " long "er " pur "sue? "
  "\nHow " "can " "you " re "ject " "the " "sweet " mes "sage " "of " "love, "
  "\nThat " of "fers " "full " par "don " "to " "you! " 
  "\nYes, " "there " "is " par "don " "for " "you: " 
  "\nYes, " "there " "is " par "don " "for " "you: " 
  "\nFor " Je "sus " "has " "died " "to " re "deem " "you, "
  "\nAnd " of "fers " "full " par "don " "to " "you. " 

  \set stanza = "3."
  "\nBe " "warned " "of " "your " dan "ger, " es "cape " "to " "the " "cross; "
  "\nYour " on "ly " sal va "tion " "is " "there: "
  "\nBe" "lieve, " "and " "that " mo "ment " "the " Spi "rit " "of " "Grace "
  "\nWill " an "swer " "your " pen i "tent " "prayer. " 
  "\nYes, " "there " "is " par "don " "for " "you: " 
  "\nYes, " "there " "is " par "don " "for " "you: " 
  "\nFor " Je "sus " "has " "died " "to " re "deem " "you, "
  "\nAnd " of "fers " "full " par "don " "to " "you. " 
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Oh, " "come " "to " "the " Sa "viour, " be "lieve " "in " "His " "name, "
  "\nAnd " "ask " "Him " "your " "heart " "to " re "new: "
  "\nHe " "waits " "to " "be " gra "cious, " "oh, " "turn " "not " a "way, "
  "\nFor " "now " "there " "is " par "don " "for " "you. " 
  "\nYes, " "there " "is " par "don " "for " "you, " "for " "you: " 
  "\nYes, " "there " "is " par "don " "for " "you, " "for " "you: " 
  "\nFor " Je "sus " "has " "died " "to " re "deem " "you, "
  "\nAnd " of "fers " "full " par "don " "to " "you. " 

  \set stanza = "2."
  "\nThe " "way " "of " trans gres "sion " "that " "leads " un "to " "death, "
  "\nOh, " "why " "will " "you " long "er " pur "sue? "
  "\nHow " "can " "you " re "ject " "the " "sweet " mes "sage " "of " "love, "
  "\nThat " of "fers " "full " par "don " "to " "you! " 
  "\nYes, " "there " "is " par "don " "for " "you, " "for " "you: " 
  "\nYes, " "there " "is " par "don " "for " "you, " "for " "you: " 
  "\nFor " Je "sus " "has " "died " "to " re "deem " "you, "
  "\nAnd " of "fers " "full " par "don " "to " "you. " 

  \set stanza = "3."
  "\nBe " "warned " "of " "your " dan "ger, " es "cape " "to " "the " "cross; "
  "\nYour " on "ly " sal va "tion " "is " "there: "
  "\nBe" "lieve, " "and " "that " mo "ment " "the " Spi "rit " "of " "Grace "
  "\nWill " an "swer " "your " pen i "tent " "prayer. " 
  "\nYes, " "there " "is " par "don " "for " "you, " "for " "you: " 
  "\nYes, " "there " "is " par "don " "for " "you, " "for " "you: " 
  "\nFor " Je "sus " "has " "died " "to " re "deem " "you, "
  "\nAnd " of "fers " "full " par "don " "to " "you. " 
}

\book {
  \bookOutputSuffix "midi-women"
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
