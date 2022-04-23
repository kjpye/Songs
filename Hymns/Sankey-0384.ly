\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hear, and Live!"
  subtitle    = "Sankey No. 384"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Hubert P. Main."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Grace J. Frances."
  meter       = \markup\smallCaps "8.8.8.6."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
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
  a'8
  a4 d8 fis,4 a8
  a4 g8 e4 fis8
  g4 e'8 b4 cis8
  b4 a8 4 \bar "|" \break fis8
  fis4 a8 4 d8 % B
  d4 b8 4 g8
  fis4 a8 e4 a8
  d,4.~4 \bar "|" \break e8^\markup\smallCaps Chorus.
  e8[a] b cis4 e8 % C
  d4 cis8 b4 e,8
  e8[gis] b d4 b8
  e4 d8 cis4 \bar "|" \break a8
  d4 cis8 b4 a8 % D
  g4 fis8 e4 b'8
  a8[b] d fis,4 e8
  d4.~4
}

alto = \relative {
  \autoBeamOff
  d'8
  d4 fis8 d4 8
  cis4 8 4 d8
  e4 g8 4 8
  fis4 8 4 d8
  d4 8 8[fis] a
  g4 d8 4 8
  d4 8 cis4 8
  d4.~4 cis8
  cis4 e8 4 8 % C
  e4 8 4 8
  e8[gis] 8 4 e8
  e4 8 4 8
  a4 d,8 4 dis8 % D
  e4 dis8 e4 eis8
  fis4 8 d4 cis8
  d4.~4
}

tenor = \relative {
  \autoBeamOff
  fis8
  fis4 a8 4 8
  a4 8 4 8
  cis4 8 e4 8
  d4 8 4 a8
  a4 fis8 8[a] c % B
  b4 g8 4 b8
  a4 fis8 g4 8
  fis4.~4 a8
  a4 gis8 a4 cis8 % C
  b4 a8 gis4 8
  gis8[b] d b4 gis8
  a4 gis8 a4 cis8
  d4 a8 b4 8 % D
  b4 a8 b4 d8
  d4 a8 a4 g8
  fis4.~4
}

bass = \relative {
  \autoBeamOff
  d8
  d4 8 4 fis8
  e4 8 a4 8
  a4 8 4 8
  d,4 8 4 8
  d4 8 4 fis8 % B
  g4 8 4 e8
  a4 a,8 4 8
  d4.~4 a8
  a4 e'8 a4 8 % C
  gis4 a8 e4 8
  e4 8 4 d8
  cis4 e8 a4 g8
  fis4 8 g4 fis8 % D
  e4 fis8 g4 gis8
  a4 8 a,4 8
  d4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  A -- wake, a -- rise! no more de -- lay;
  He calls you now, His voice o -- bey;
  The lov -- ing words He speaks to -- day,
  Oh, hear, and you shall live! __
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  O wea -- ry heart, why seek in vain
  The balm of rest from earth to gain,
  While Je -- sus waits your King to reign,
  And all your sins for -- give?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He calls a -- gain; on Him be -- lieve,
  His gift of grace thro' faith re -- ceive;
  Your tru -- est Friend no lon -- ger grieve,
  But haste your heart to give.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  To Je -- sus come, and at His feet
  That pre -- cious name with praise re -- peat;
  Oh, trust Him now, and learn how sweet
  The peace His love will give.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " wea "ry " "heart, " "why " "seek " "in " "vain "
  "\nThe " "balm " "of " "rest " "from " "earth " "to " "gain, "
  "\nWhile " Je "sus " "waits " "your " "King " "to " "reign, "
  "\nAnd " "all " "your " "sins " for "give? "
  "\nA" "wake, " a "rise! " "no " "more " de "lay; "
  "\nHe " "calls " "you " "now, " "His " "voice " o "bey; "
  "\nThe " lov "ing " "words " "He " "speaks " to "day, "
  "\nOh, " "hear, " "and " "you " "shall " "live! " 

  \set stanza = "2."
  "\nHe " "calls " a "gain; " "on " "Him " be "lieve, "
  "\nHis " "gift " "of " "grace " "thro' " "faith " re "ceive; "
  "\nYour " tru "est " "Friend " "no " lon "ger " "grieve, "
  "\nBut " "haste " "your " "heart " "to " "give. "
  "\nA" "wake, " a "rise! " "no " "more " de "lay; "
  "\nHe " "calls " "you " "now, " "His " "voice " o "bey; "
  "\nThe " lov "ing " "words " "He " "speaks " to "day, "
  "\nOh, " "hear, " "and " "you " "shall " "live! " 

  \set stanza = "3."
  "\nTo " Je "sus " "come, " "and " "at " "His " "feet "
  "\nThat " pre "cious " "name " "with " "praise " re "peat; "
  "\nOh, " "trust " "Him " "now, " "and " "learn " "how " "sweet "
  "\nThe " "peace " "His " "love " "will " "give. "
  "\nA" "wake, " a "rise! " "no " "more " de "lay; "
  "\nHe " "calls " "you " "now, " "His " "voice " o "bey; "
  "\nThe " lov "ing " "words " "He " "speaks " to "day, "
  "\nOh, " "hear, " "and " "you " "shall " "live! " 
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
