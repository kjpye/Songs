\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus will not Cast you Out!"
  subtitle    = "Sankey No. 406"
  subsubtitle = "N. H. No. 108"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup {Arr. \smallCaps "H. Millard."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup {Arr. \smallCaps "poet"}
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
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*4
  \mark \markup { \box "C" }    s1*4
  \mark \markup { \box "D" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'8. 16
  bes4. 8 a4 g
  f2. r4
  d'4 bes8. d16 c4 bes8. a16
  bes2. \bar "|" \break f8. 16
  bes4. 8 a4 g % B
  f2. r4
  d'4 bes8. d16 c4 bes8. a16
  bes2. r4
  c4 4 4 bes8[c] % C
  d4 4 bes r
  bes4 4 4 a8[g]
  g4 f f r
  bes4 4 f f % D
  g4 a bes(c)
  d4 bes8. d16 c4 bes8. a16
  bes2.
}

alto = \relative {
  \autoBeamOff
  f'8. 16
  d4. 8 f4 ees
  d2. r4
  f4 d8. f16 ees4 d8. ees16
  d2. f8. 16
  d4. 8 f4 ees % B
  d2. r4
  f4 d8. f16 ees4 d8. ees16
  d2. r4
  f4 4 4 4 % C
  f4 4 d r
  d4 4 g f8[ees]
  ees4 d d r
  f4 4 d d % D
  ees4 4 d(e)
  f4 d8. f16 ees4 d8. ees16
  d2.
}

tenor = \relative {
  \autoBeamOff
  f8. 16
  f4. 8 bes4 4
  bes2. r4
  bes4 8. 16 a4 8. c16
  bes2. f8. 16
  f4. 8 bes4 4 % B
  bes2. r4
  bes4 8. 16 a4 bes8. c16
  bes2. r4
  a4 4 4 d8[a] % C
  bes4 4 f r
  g4 4 bes bes
  bes4 4 4 r
  bes4 4 4 4 % D
  bes4 c bes2
  bes4 8. 16 a4 bes8. c16
  bes2.
}

bass = \relative {
  \autoBeamOff
  f8. 16
  bes,4. 8 bes4 bes
  bes2. r4
  bes4 8. 16 f'4 8. 16
  bes,2. f'8. 16
  bes,4. 8 4 4 % B
  bes2. r4
  bes4 8. 16 f'4 8. 16
  bes,2. r4
  f'4 4 4 4 % C
  bes,4 4 4 r
  g'4 4 e e
  bes4 4 4 r
  d4 4 bes bes % D
  ees4 c g'(ges)
  f4 8. 16 4 8. 16
  bes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Tho' your sins are man -- i -- fold,
  Je -- sus will not cast you out!
  He's a Friend, of love un -- told—
  Je -- sus will not cast you out!
  He will cleanse and make you whole;
  Waves of sin may o'er you roll;
  He will save your death -- less soul—
  Je -- sus will not cast you out!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Tho' you've spurned Him day by day,
  Je -- sus will not cast you out!
  Come to Him— the Light, the Way—
  Je -- sus will not cast you out!
  He will cleanse and make you whole;
  Waves of sin may o'er you roll;
  He will save your death -- less soul—
  Je -- sus will not cast you out!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Grace is free -- ly of -- fered now—
  Je -- sus will not cast you out!
  At the cross, O wan -- d'rer, bow—
  Je -- sus will not cast you out!
  Come, nor turn a -- gain to sin!
  Come, He bods you en -- ter in!
  Come, and life e -- ter -- nal win!
  Je -- sus will not cast you out!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Tho' " "your " "sins " "are " man i "fold, "
  "\nJe" "sus " "will " "not " "cast " "you " "out! "
  "\nHe's " "a " "Friend, " "of " "love " un "told— "
  "\nJe" "sus " "will " "not " "cast " "you " "out! "
  "\nHe " "will " "cleanse " "and " "make " "you " "whole; "
  "\nWaves " "of " "sin " "may " "o'er " "you " "roll; "
  "\nHe " "will " "save " "your " death "less " "soul— "
  "\nJe" "sus " "will " "not " "cast " "you " "out! "

  \set stanza = "2."
  "\nTho' " "you've " "spurned " "Him " "day " "by " "day, "
  "\nJe" "sus " "will " "not " "cast " "you " "out! "
  "\nCome " "to " "Him— " "the " "Light, " "the " "Way— "
  "\nJe" "sus " "will " "not " "cast " "you " "out! "
  "\nHe " "will " "cleanse " "and " "make " "you " "whole; "
  "\nWaves " "of " "sin " "may " "o'er " "you " "roll; "
  "\nHe " "will " "save " "your " death "less " "soul— "
  "\nJe" "sus " "will " "not " "cast " "you " "out! "

  \set stanza = "3."
  "\nGrace " "is " free "ly " of "fered " "now— "
  "\nJe" "sus " "will " "not " "cast " "you " "out! "
  "\nAt " "the " "cross, " "O " wan "d'rer, " "bow— "
  "\nJe" "sus " "will " "not " "cast " "you " "out! "
  "\nCome, " "nor " "turn " a "gain " "to " "sin! "
  "\nCome, " "He " "bods " "you " en "ter " "in! "
  "\nCome, " "and " "life " e ter "nal " "win! "
  "\nJe" "sus " "will " "not " "cast " "you " "out! "
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
