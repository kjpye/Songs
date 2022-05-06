\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus Calls thee."
  subtitle    = "Sankey No. 386"
  subsubtitle = "Sankey 880 No. 334"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. S. A. Collins."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
  \mark \markup { \box "D" } s2.*4
  \mark \markup { \box "E" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''4 des8 c bes aes
  aes4 bes8 aes g f
  ees4 aes8 c4 aes8
  bes4.~4.
  c4 des8 c8 bes aes % B
  aes4 bes8 aes g f
  ees4 aes8 4 g8
  aes4.~4.
  bes4 8 8[aes] g % C
  aes4(bes8) c4.
  c4 8 8[bes] aes
  bes4(c8) des4.
  c8^\markup\smallCaps Refrain. 8 8 4 8 % D
  des4. d
  ees4. c4 aes8
  bes4.(b)
  c4 des8 c bes aes % E
  aes4 bes8 aes g f
  ees4 aes8 4 g8
  aes4.~4.
}

alto = \relative {
  \autoBeamOff
  ees'4 f8 ees des c
  f4 g8 f ees des
  c4 8 ees4 8
  ees4.~4.
  ees4 f8 ees des c % B
  f4 g8 f ees des
  c4 ees8 4 8
  ees4.~4.
  ees4 8 4 8 % C
  ees4. aes
  ees4 8 4 8
  ees4. 4.
  ees8 8 8 aes4 8 % D
  aes4. 4.
  aes4. ees4 c8
  ees4.~4.
  ees4 f8 ees des c % E
  f4 g8 f ees des
  c4 ees8 4 8
  ees4.~4.
}

tenor = \relative {
  \autoBeamOff
  aes4 8 8 8 8
  aes4 8 8 8 8
  aes4 ees8 aes4 8
  g4.~4.
  aes4 8 8 8 8 % B
  aes4 8 8 8 8
  aes4 c8 4 des8
  c4.~4.
  des4 8 8[c] bes % C
  c4(des8) ees4.
  aes,4 8 8[g] aes
  g4(aes8) bes4.
  aes8 8 8 ees'4 8 % D
  des4. b
  c4. aes4 8
  g4.~4.
  aes4 8 8 8 8 % E
  aes4 8 8 8 8
  aes4 c8 4 des8
  c4.~4.
}

bass = \relative {
  \autoBeamOff
  aes,4 8 8 8 8
  des4 8 8 8 8
  aes4 8 4 c8
  ees4.~4.
  aes,4 8 8 8 8 % B
  des4 8 8 8 8
  ees4 8 4 8
  aes,4.~4.
  ees'4 8 4 8 % C
  aes4. 4.
  aes4 8 aes,8[bes] c
  ees4. 4.
  aes8 8 8 4 8 % D
  f4. fes
  ees4. 4 8
  ees4.~4.
  aes,4 8 8 8 8 % E
  des4 8 8 8 8
  ees4 8 4 8
  aes,4.~4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Hear the sweet voice of Je -- sus,
  Full, full of love;
  Call -- ing ten -- der -- ly,
  call -- ing lov -- ing -- ly,
  "\"Come," O sin -- ner, "come!\""
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus, Gra -- cious One, call -- eth now to thee,
  "\"Come," O sin -- ner. "come!\""
  Calls so  ten -- der -- ly, calls so lov -- ing -- ly,
  \markup\italic "\"Now," O sin -- ber, "come!\""
  Words of peace and bles -- sing,
  Christ's own love con -- fes -- sing!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Still He waits for thee, plead -- ing pa -- tient -- ly,
  "\"Come," oh come, to "Me!\""
  "\"Hea" -- vy- -- la -- den one, I thy grief have borne,
  Come and rest in "Me.\""
  Words with love o'er -- flow -- ing,
  Life and bliss be -- stow -- ing!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Wea -- ry. sin- -- sick soul, called so gra -- cious -- ly,
  Canst thou dare re -- fuse?
  Mer -- cy of -- fered thee, free -- ly, ten -- der -- ley,
  Wilt thou still a -- buse?
  Come, for time is fly -- ing!
  Haste, thy lamp is dy -- ing!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus, " Gra "cious " "One, " call "eth " "now " "to " "thee, "
  "\n\"Come, " "O " sin "ner. " "come!\" "
  "\nCalls " "so "  ten der "ly, " "calls " "so " lov ing "ly, "
  \markup\italic "\"Now," O sin -- ber, "come!\""
  "\nWords " "of " "peace " "and " bles "sing, "
  "\nChrist's " "own " "love " con fes "sing! "
  "\nHear " "the " "sweet " "voice " "of " Je "sus, "
  "\nFull, " "full " "of " "love; "
  "\nCall" "ing " ten der "ly, "
  "\ncall" "ing " lov ing "ly, "
  "\n\"Come, " "O " sin "ner, " "come!\" "

  \set stanza = "2."
  "\nStill " "He " "waits " "for " "thee, " plead "ing " pa tient "ly, "
  "\n\"Come, " "oh " "come, " "to " "Me!\" "
  "\n\"Hea" vy- la "den " "one, " "I " "thy " "grief " "have " "borne, "
  "\nCome " "and " "rest " "in " "Me.\" "
  "\nWords " "with " "love " o'er flow "ing, "
  "\nLife " "and " "bliss " be stow "ing! "
  "\nHear " "the " "sweet " "voice " "of " Je "sus, "
  "\nFull, " "full " "of " "love; "
  "\nCall" "ing " ten der "ly, "
  "\ncall" "ing " lov ing "ly, "
  "\n\"Come, " "O " sin "ner, " "come!\" "

  \set stanza = "3."
  "\nWea" "ry. " sin- "sick " "soul, " "called " "so " gra cious "ly, "
  "\nCanst " "thou " "dare " re "fuse? "
  "\nMer" "cy " of "fered " "thee, " free "ly, " ten der "ley, "
  "\nWilt " "thou " "still " a "buse? "
  "\nCome, " "for " "time " "is " fly "ing! "
  "\nHaste, " "thy " "lamp " "is " dy "ing! "
  "\nHear " "the " "sweet " "voice " "of " Je "sus, "
  "\nFull, " "full " "of " "love; "
  "\nCall" "ing " ten der "ly, "
  "\ncall" "ing " lov ing "ly, "
  "\n\"Come, " "O " sin "ner, " "come!\" "
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
