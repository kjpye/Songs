\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "God is Love!"
  subtitle    = "Sankey No. 233"
  subsubtitle = "Sankey 880 No. 520"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Julia Stirling."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key des \major
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
  f'4 bes8 aes4 8
  aes8[bes] c des4 8
  ees4 des8 c4 bes8
  aes4 ees8 f4.
  f4 ges8 aes4 8 % B
  aes8[bes] c des4 8
  ees8[des] bes aes4 des8
  c8[des] ees des4. \bar "||"
  ees4^\markup\smallCaps Chorus. des8 c[bes] c % C
  des4 bes8 aes4 des8
  ees4 des8 c[bes] c
  des4 g,8 aes4(g8)
  f4 ges8 aes4 f'8 % D
  ees4 des8 ees[c] des
  aes4 8 bes4 des8
  c8[des] ees des4.
}

alto = \relative {
  \autoBeamOff
  des'4 ees8 f4 8
  ges4 aes8 4 8
  ges4 8 4 8
  f4 c8 des4.
  des4 ees8 f4 8 % B
  ges4 aes8 4 f8
  ges4 8 f4 8
  ees8[f] ges f4.
  ges4 f8 ges4 ees8 % C
  f4 ges8 f4 8
  ges4 f8 ges4 ees8
  f4 ees8 4.
  des4 ees8 f4 aes8 % D
  ges4 8 4 8
  aes4 f8 des4 ees8
  ees8[f] ges f4.
}

tenor = \relative {
  \autoBeamOff
  aes4 8 des4 8
  c8[des] ees des4 8
  bes4 8 4 des8
  aes4 8 4.
  aes4 8 des4 8 % B
  c8[des] ees des4 8
  bes4 des8 4 aes8
  aes4 8 4.
  c4 des8 ees[des] aes % C
  aes4 des8 4 aes8
  c4 des8 ees[des] aes
  aes4 des8 c4.
  aes4 8 des4 ces8 % D
  bes4 8 des[a] bes
  des4 8 4 bes8
  aes4 c8 des4.
}

bass = \relative {
  \autoBeamOff
  des4 8 4 8
  aes'4 ges8 f4 8
  ges4 8 4 8
  aes4 aes,8 des4.
  des4 8 4 8 % B
  aes'4 ges8 f4 des8
  ges4 8 des4 8
  aes'4 aes,8 des4.
  aes'4 8 4 8 % C
  des,4 8 4 8
  aes'4 8 4 8
  des,4 ees8 aes,4.
  des4 8 4 8 % D
  ges4 8 4 8
  f4 des8 ges4 ees8
  aes4 aes,8 des4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Hal -- le -- lu -- jah! tell the sto -- ry,
  Sung by an -- gel choirs a -- bove;
  Sound -- ing forth the migh -- ty cho -- rus—
  "\"God" is Light, and God is "Love!\""
}

wordsOne = \lyricmode {
  \set stanza = "1."
  "\"God" is "Love!\"—" His word pro -- claims it,
  Day by day the truth we prove;
  Heaven and earth with joy are tell -- ing,
  Ev -- er tell -- ing, "\"God" is "Love!\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"God" is "Love!\"—" oh, tell it glad -- ly,
  How the Sa -- viour from a -- bove
  Came to seek and save the lost ones,
  Show -- ing thus the Fath -- er's love.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"God" is "Love!\"—" oh, bound -- less mer -- cy—
  May we all its ful -- ness prove!
  Tell -- ing those who sit in dark -- ness,
  "\"God" is Light, and God is "Love!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\"God " "is " "Love!\"— " "His " "word " pro "claims " "it, "
  "\nDay " "by " "day " "the " "truth " "we " "prove; "
  "\nHeaven " "and " "earth " "with " "joy " "are " tell "ing, "
  "\nEv" "er " tell "ing, " "\"God " "is " "Love!\" "
  "\nHal" le lu "jah! " "tell " "the " sto "ry, "
  "\nSung " "by " an "gel " "choirs " a "bove; "
  "\nSound" "ing " "forth " "the " migh "ty " cho "rus— "
  "\n\"God " "is " "Light, " "and " "God " "is " "Love!\" "

  \set stanza = "2."
  "\n\"God " "is " "Love!\"— " "oh, " "tell " "it " glad "ly, "
  "\nHow " "the " Sa "viour " "from " a "bove "
  "\nCame " "to " "seek " "and " "save " "the " "lost " "ones, "
  "\nShow" "ing " "thus " "the " Fath "er's " "love. "
  "\nHal" le lu "jah! " "tell " "the " sto "ry, "
  "\nSung " "by " an "gel " "choirs " a "bove; "
  "\nSound" "ing " "forth " "the " migh "ty " cho "rus— "
  "\n\"God " "is " "Light, " "and " "God " "is " "Love!\" "

  \set stanza = "3."
  "\n\"God " "is " "Love!\"— " "oh, " bound "less " mer "cy— "
  "\nMay " "we " "all " "its " ful "ness " "prove! "
  "\nTell" "ing " "those " "who " "sit " "in " dark "ness, "
  "\n\"God " "is " "Light, " "and " "God " "is " "Love!\" "
  "\nHal" le lu "jah! " "tell " "the " sto "ry, "
  "\nSung " "by " an "gel " "choirs " a "bove; "
  "\nSound" "ing " "forth " "the " migh "ty " cho "rus— "
  "\n\"God " "is " "Light, " "and " "God " "is " "Love!\" "
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
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    paper-height = 2000\mm
%    ragged-bottom = true
%    system-system-spacing.basic-distance = #22
%    system-separator-markup = \slashSeparator
%  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
%    \midi {}
  }
}

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
