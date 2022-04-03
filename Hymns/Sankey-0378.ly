\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Behold Me Standing at the Door!"
  subtitle    = "Sankey No. 378"
  subsubtitle = "Sankey 880 No. 319"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Mrs. J. F. Knapp."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "L.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3
  \mark \markup { \box "B" }    s1*3
  \mark \markup { \box "C" }    s1*3
  \mark \markup { \box "D" }    s1*3 s2
  \mark \markup { \box "E" } s2 s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4^\markup\italic "With feeling. (May be sung as a Solo.)"
  ees2~8 aes g aes
  bes8. f16 bes2 aes4
  g4. aes8 bes a bes c
  aes2~8 ees aes c % B
  ees2~8 c aes ees
  g4(f) r8 ees' c bes
  aes4. c8 bes4. ees,8 % C
  aes2 r4 \bar "||" ees^\markup\smallCaps Refrain.
  g4. aes8 bes a bes c
  aes2(ees4) aes % D
  c4. des8 ees c bes aes
  bes2. ees,4
  c'4. des8 \bar "|" \break
  c bes aes ees
  g4(f) r8 d' c bes
  aes4. c8 bes4. ees,8 aes2 r4
}

alto = \relative {
  \autoBeamOff
  c'4
  c2~8 ees8 8 8
  f8. 16 2 4
  ees4. 8 8 8 g g
  aes2(ees8) 8 8 8 % B
  aes2~8 ees8 8 8
  des2 r8 f f f
  ees4. 8 des4. 8 % C
  c2 r4 ees
  ees4. 8 8 c des ees
  c2~4 ees % D
  aes4. 8 8 ees8 8 d
  ees2. 4
  ees4. f8 ees8 8 8 8
  ees4(des) r8 f f f
  ees4. 8 des4. 8
  c2 r4
}

tenor = \relative {
  \autoBeamOff
  aes4
  aes2~8 c bes aes
  f8. des'16 2 4
  bes4. c8 des c des ees
  e2~8 8 8 8 % B
  c2~8 aes aes aes
  aes2 r8 bes ees des
  c4. aes8 g4. 8 % C
  aes2 r4 g
  bes4. c8 g ges g ees
  ees2(aes4) c % D
  ees4. 8 8 aes, bes bes
  g2. 4
  aes4. 8 8 g aes aes % E
  aes2 r8 bes ees des
  c4. aes8 g4. 8
  aes2 r4
}

bass = \relative {
  \autoBeamOff
  aes,4
  aes2~8 8 ees' c
  des8. 16 2 4
  ees4. 8 8 8 8 8
  aes2~8 8 8 8 % B
  aes2~8 aes, c c
  des2 r8 bes c des
  ees4. 8 4. 8 % C
  aes,2 r4 ees'
  ees4. 8 8 8 8 8
  aes,2(aes'4) 4 % D
  aes4. bes8 c aes g f
  ees2. 4
  aes,4. 8 8 bes c c
  des2 r8 bes c des
  ees4. 8 4. 8
  aes2 r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Be -- hold Me stand -- ing at the door,
  And hear Me plead -- ing e -- ver -- more:
  Say, wea -- ry heart, op -- pressed with sin,
  May I come in? may I come in?
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Be -- hold me stand -- ing at the door,
  And hear Me plead -- ing e -- ver -- more,
  With gen -- tle voice; Oh, heart of sin,
  May I come in? may I come in?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I bore the cru -- el thorns for thee,
  I wait -- ed long and pa -- tient -- ly:
  Say, wea -- ry heart, op -- pressed with sin,
  May I come in? may I come in?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I would not plead with thee in vain;
  Re -- mem -- ber all My grief and pain:
  I died to ran -- som thee from sin:
  May I come in? may I come in?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I bring thee joy from heaven a -- bove,
  I bring thee par -- don, peace, and love:
  Say, wea -- ry heart, op -- pressed with sin,
  May I come in? may I come in?
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Be" "hold " "me " stand "ing " "at " "the " "door, "
  "\nAnd " "hear " "Me " plead "ing " e ver "more, "
  "\nWith " gen "tle " "voice; " "Oh, " "heart " "of " "sin, "
  "\nMay " "I " "come " "in? " "may " "I " "come " "in? "
  "\nBe" "hold " "Me " stand "ing " "at " "the " "door, "
  "\nAnd " "hear " "Me " plead "ing " e ver "more: "
  "\nSay, " wea "ry " "heart, " op "pressed " "with " "sin, "
  "\nMay " "I " "come " "in? " "may " "I " "come " "in? "

  \set stanza = "2."
  "\nI " "bore " "the " cru "el " "thorns " "for " "thee, "
  "\nI " wait "ed " "long " "and " pa tient "ly: "
  "\nSay, " wea "ry " "heart, " op "pressed " "with " "sin, "
  "\nMay " "I " "come " "in? " "may " "I " "come " "in? "
  "\nBe" "hold " "Me " stand "ing " "at " "the " "door, "
  "\nAnd " "hear " "Me " plead "ing " e ver "more: "
  "\nSay, " wea "ry " "heart, " op "pressed " "with " "sin, "
  "\nMay " "I " "come " "in? " "may " "I " "come " "in? "

  \set stanza = "3."
  "\nI " "would " "not " "plead " "with " "thee " "in " "vain; "
  "\nRe" mem "ber " "all " "My " "grief " "and " "pain: "
  "\nI " "died " "to " ran "som " "thee " "from " "sin: "
  "\nMay " "I " "come " "in? " "may " "I " "come " "in? "
  "\nBe" "hold " "Me " stand "ing " "at " "the " "door, "
  "\nAnd " "hear " "Me " plead "ing " e ver "more: "
  "\nSay, " wea "ry " "heart, " op "pressed " "with " "sin, "
  "\nMay " "I " "come " "in? " "may " "I " "come " "in? "

  \set stanza = "4."
  "\nI " "bring " "thee " "joy " "from " "heaven " a "bove, "
  "\nI " "bring " "thee " par "don, " "peace, " "and " "love: "
  "\nSay, " wea "ry " "heart, " op "pressed " "with " "sin, "
  "\nMay " "I " "come " "in? " "may " "I " "come " "in? "
  "\nBe" "hold " "Me " stand "ing " "at " "the " "door, "
  "\nAnd " "hear " "Me " plead "ing " e ver "more: "
  "\nSay, " wea "ry " "heart, " op "pressed " "with " "sin, "
  "\nMay " "I " "come " "in? " "may " "I " "come " "in? "
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
