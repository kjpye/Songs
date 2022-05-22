\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Look Unto Me!"
  subtitle    = "Sankey No. 397"
  subsubtitle = "Sankey 880 No. 493"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. P. Mackay."
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
  \mark \markup { \box "C" } s4 s2.*3 s2
  \mark \markup { \box "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4
  c'8. 16 4 bes
  aes8. f16 ees4 aes
  bes4. 8 aes8. bes16
  c2 \bar "|" \break ees,4
  c'8. 16 4 bes % B
  aes8. f16 ees4 aes
  bes4. aes8 bes8. c16
  aes2 \bar "|" \break ees4^\markup\smallCaps Refrain.
  des'8. 16 4 ees, % C
  c'8. 16 4 4
  bes4. 8 c8. d16
  ees2 \bar "|" \break 4
  f8. ees16 c4 aes % D
  bes8. aes16 f4 aes
  ees4. aes8 8 bes
  aes2
}

alto = \relative {
  \autoBeamOff
  c'4
  ees8. 16 4 e
  f8. des16 c4 ees
  g4. 8 f8. g16
  aes2 ees4
  ees8. 16 4 e % B
  f8. des16 c4 ees
  g4. aes8 g8. 16
  aes2 c,4
  ees8. 16 4 des % C
  c8. ees16 4 4
  ees4. 8 aes8. 16
  g2 4
  aes8. 16 4 ges % D
  f8. 16 des4 4
  c4. 8 8 des
  c2
}

tenor = \relative {
  \autoBeamOff
  aes4
  aes8. 16 4 g
  f8. aes16 4 c
  ees4. 8 c8. ees16
  ees2 c4
  aes8. 16 4 g % B
  f8. aes16 4 c
  des4. c8 des8. ees16
  c2 aes4
  g8. 16 4 4 % C
  aes8. 16 4 4
  g4. 8 f8. bes16
  bes2 des4
  c8. 16 ees4 4 % D
  des8. 16 aes4 f
  aes4. ees8 8 g
  aes2
}

bass = \relative {
  \autoBeamOff
  aes,4
  aes8. 16 4 c
  des8. f16 aes4 4
  ees4. 8 f8. ees16
  aes2 aes,4
  aes8. 16 4 c % B
  des8. f16 aes4 4
  ees4. 8 8. 16
  aes2 4
  ees8. 16 4 4 % C
  aes,8. 16 4 4
  bes4. 8 8. 16
  ees2 4
  aes8. 16 4 c, % D
  des8. 16 4 4
  ees4. 8 8 8
  aes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Look un -- to Him, and be ye saved!
  O wea -- ry, trou -- bled soul;
  Oh, look to Je -- sus while you may:
  One look will make thee whole!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  "\"Look" un -- to Me, and be ye "saved!\""
  Look, men of na -- tions all;
  Look, rich and poor; look, old and youngl
  Look, sin -- ners, great and small!
  
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"Look" un -- to Me, and be ye "saved!\""
  Look now, nor dare de -- lay;
  Look as you are,— lost, guilt -- y, dead;
  Look while 'tis called to -- day.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"Look" un -- to Me, and be ye "saved!\""
  Look from your doubts and fears;
  Look from your sins of crim -- son dye,
  Look from your prayers and tears.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  "\"Look" un -- to Me, and be ye "saved!\""
  Look to the work all done;
  Look to the pierc -- ed Son of Man;
  Look, and your sins are gone!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\"Look " un "to " "Me, " "and " "be " "ye " "saved!\" "
  "\nLook, " "men " "of " na "tions " "all; "
  "\nLook, " "rich " "and " "poor; " "look, " "old " "and " "youngl "
  "\nLook, " sin "ners, " "great " "and " "small! "
  "\nLook " un "to " "Him, " "and " "be " "ye " "saved! "
  "\nO " wea "ry, " trou "bled " "soul; "
  "\nOh, " "look " "to " Je "sus " "while " "you " "may: "
  "\nOne " "look " "will " "make " "thee " "whole! "

  \set stanza = "2."
  "\n\"Look " un "to " "Me, " "and " "be " "ye " "saved!\" "
  "\nLook " "now, " "nor " "dare " de "lay; "
  "\nLook " "as " "you " "are,— " "lost, " guilt "y, " "dead; "
  "\nLook " "while " "'tis " "called " to "day. "
  "\nLook " un "to " "Him, " "and " "be " "ye " "saved! "
  "\nO " wea "ry, " trou "bled " "soul; "
  "\nOh, " "look " "to " Je "sus " "while " "you " "may: "
  "\nOne " "look " "will " "make " "thee " "whole! "

  \set stanza = "3."
  "\n\"Look " un "to " "Me, " "and " "be " "ye " "saved!\" "
  "\nLook " "from " "your " "doubts " "and " "fears; "
  "\nLook " "from " "your " "sins " "of " crim "son " "dye, "
  "\nLook " "from " "your " "prayers " "and " "tears. "
  "\nLook " un "to " "Him, " "and " "be " "ye " "saved! "
  "\nO " wea "ry, " trou "bled " "soul; "
  "\nOh, " "look " "to " Je "sus " "while " "you " "may: "
  "\nOne " "look " "will " "make " "thee " "whole! "

  \set stanza = "4."
  "\n\"Look " un "to " "Me, " "and " "be " "ye " "saved!\" "
  "\nLook " "to " "the " "work " "all " "done; "
  "\nLook " "to " "the " pierc "ed " "Son " "of " "Man; "
  "\nLook, " "and " "your " "sins " "are " "gone! "
  "\nLook " un "to " "Him, " "and " "be " "ye " "saved! "
  "\nO " wea "ry, " trou "bled " "soul; "
  "\nOh, " "look " "to " Je "sus " "while " "you " "may: "
  "\nOne " "look " "will " "make " "thee " "whole! "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
                                              \wordsFour  \chorus
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
                                              \wordsFour  \chorus
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
