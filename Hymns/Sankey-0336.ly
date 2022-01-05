\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, Sinner, Come!"
  subtitle    = "Sankey No. 336"
  subsubtitle = "Sankey 880 No. 286"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "H. R. Palmer."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. E. Witter."
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
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
  \mark \markup { \box "D" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4. f8[g] a
  bes4 d,8 a'4 g8
  f4. g8[f] g
  a4.~4 r8
  a4. f8[g] a % B
  bes4 d,8 aes'4 g8
  f4. e8[f] g
  f4.~4 r8
  c'4. bes4 a8 % C
  g8[a] bes a4 g8
  f4. g8[f] g
  a4.~4 r8
  c4. bes4 a8 % D
  g8[a] bes a4 g8
  f4. e8[f] g
  f4.~4.
}

alto = \relative {
  \autoBeamOff
  f'4. 4 8
  f4 d8 4 8
  c4. e8[d] e
  f4.~4 r8
  f4. 4 8 % B
  f4 d8 4 8
  c4. 4 8
  c4.~4 r8
  a'4. g4 f8 % C
  e8[f] g f4 d8
  c4. e8[d] e
  f4.~4 r8
  a4. g4 f8 % D
  e8[f] g f4 d8
  c4. 4 8
  c4.~4.
}

tenor = \relative {
  \autoBeamOff
  c'4. a8[bes] c
  d4 bes8 c4 bes8
  a4. c4 8
  c4.~4 r8
  c4. a8[bes] c % B
  d4 b8 c4 b8
  a4. g8[a] b
  a4.~4 r8
  c4. 4 8 % C
  c4 8 4 bes8
  a4. c4 8
  c4.~4 r8
  c4. 4 8 % D
  c4 8 4 bes8
  a4. g8[a] bes
  a4.~4.
}

bass = \relative {
  \autoBeamOff
  f4. 4 8
  bes,4 8 4 8
  c4. 4 8
  f4.~4 r8
  fis4. 4 8 % B
  bes,4 8 4 8
  c4. 4 8
  f4.~4 r8
  c4. 4 8 % C
  c4 8 f4 bes,8
  c4. 4 8
  f4.~4 r8
  c4. 4 8 % D
  c4 8 f4 bes,8
  c4. 4 8
  f4.~4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  While Je -- sus whis -- pers to you,
  Come, sin -- ner, come!
  While we are pray -- ing for you,
  Come, sin -- ner, come!
  Now is the time to own Him,
  Come, sin -- ner, come!
  Now is the time to know Him,
  Come, sin -- ner, come!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Are you too hea -- vy la -- den?
  Come, sin -- ner, come!
  Je -- sus will bear your bur -- den,
  Come, sin -- ner, come!
  Je -- sus will not de -- ceive you,
  Come, sin -- ner, come!
  Je -- sus will ow re -- ceive you,
  Come, sin -- ner, come!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, hear His te -- der plead -- ing:
  Come, sin -- ner, come!
  Come, and re -- ceive the bles -- sing,
  Come, sin -- ner, come!
  While Je -- sus whis -- pers to you,
  Come, sin -- ner, come!
  While we are pray -- ing for you,
  Come, sin -- ner, come!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "While " Je "sus " whis "pers " "to " "you, "
  "\nCome, " sin "ner, " "come! "
  "\nWhile " "we " "are " pray "ing " "for " "you, "
  "\nCome, " sin "ner, " "come! "
  "\nNow " "is " "the " "time " "to " "own " "Him, "
  "\nCome, " sin "ner, " "come! "
  "\nNow " "is " "the " "time " "to " "know " "Him, "
  "\nCome, " sin "ner, " "come!\n"

  \set stanza = "2."
  "\nAre " "you " "too " hea "vy " la "den? "
  "\nCome, " sin "ner, " "come! "
  "\nJe" "sus " "will " "bear " "your " bur "den, "
  "\nCome, " sin "ner, " "come! "
  "\nJe" "sus " "will " "not " de "ceive " "you, "
  "\nCome, " sin "ner, " "come! "
  "\nJe" "sus " "will " "ow " re "ceive " "you, "
  "\nCome, " sin "ner, " "come!\n"

  \set stanza = "3."
  "\nOh, " "hear " "His " te "der " plead "ing: "
  "\nCome, " sin "ner, " "come! "
  "\nCome, " "and " re "ceive " "the " bles "sing, "
  "\nCome, " sin "ner, " "come! "
  "\nWhile " Je "sus " whis "pers " "to " "you, "
  "\nCome, " sin "ner, " "come! "
  "\nWhile " "we " "are " pray "ing " "for " "you, "
  "\nCome, " sin "ner, " "come! "
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
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
