\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Whoever Will!"
  subtitle    = "Sankey No. 383"
  subsubtitle = "Sankey 880 No. 530"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "A. Monteith."
  meter       = \markup\smallCaps "L.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key f \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*2 s4. s4
  \mark \markup { \box "B" } s8 s2.*2 s4. s4
  \mark \markup { \box "C" } s8 s2.*3
  \mark \markup { \box "D" }    s2.*3
  \mark \markup { \box "E" }    s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'8
  a'8.[f16] a8 c4 f,8
  a4 g8 f4 8
  bes8.[c16] d8 c4 \bar "|" \break a8
  a8.[g16] f8 g4 c,8 % B
  a'8.[g16] a8 c4 a8
  bes4 c8 d4 \bar "|" \break e8
  f8[c] d c4 f,8 % C
  a4 g8 f4 r8 \bar "||"
  c'8^\markup\smallCaps Refrain. 8 8 4 r8 \break
  d8 8 8 4 r8 % D
  g,8 8 a bes4 d8
  c4 bes8 a4 r8 \break
  a8 8 8 4 c8 % E
  c4 bes8 f4 g8
  a8 8 bes a16 8. g8
  f4.~4
}

alto = \relative {
  \autoBeamOff
  c'8
  f4 8 4 8
  f4 a8 f4 8
  f4 8 4 8
  f4 d8 e4 c8 % B
  f4 8 4 8
  f4 8 4 bes8
  a8[f] f8 4 8 % C
  f4 e8 f4 r8
  f8 8 8 4 r8
  f8 8 8 4 r8 % D
  e8 8 f e4 8
  f4 g8 f4 r8
  f8 8 8 4 ees8 % E
  d4 8 4 f8
  f8 8 8 16 8. e8
  f4.~4
}

tenor = \relative {
  \autoBeamOff
  a8
  c8.[bes16] c8 a4 c8
  c4 bes8 a4 8
  bes8.[a16] bes8 a4 c8
  b4 8 c4 a8 % B
  c8.[bes16] c8 a4 c8
  bes4 a8 bes4 c8
  c8[a] bes a4 8 % C
  c4 bes8 a4 r8
  a8 8 8 4 r8
  bes8 8 8 4 r8 % D
  bes8 8 a g4 bes8
  a4 c8 4 r8
  c8 8 8 4 a8 % E
  f4 8 <f bes>4 d'8
  c8 8 d c16 8. bes8
  a4.~4
}

bass = \relative {
  \autoBeamOff
  f8
  f4 8 4 a,8
  c4 8 f4 8
  d8.[c16] bes8 f'4 8
  d4 g,8 c4 f8 % B
  f4 8 4 ees8
  d4 f8 bes4 g8
  f4 8 4 d8 % C
  c4 8 f4 r8
  f8 8 8 4 r8
  bes,8 8 8 4 r8 % D
  c8 8 8 4 8
  c4 e8 f4 r8
  f8 8 8 4 8 % E
  bes,4 8 4 8
  c8 8 8 16 8. 8
  f4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"Who" -- ev -- er will! who -- ev -- er will!
  Who -- ev -- er will may come to -- day;
  Who -- ev -- er will may come to -- day,
  And drink of the wa -- ter of "life.\""
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  O wan -- d'ring souls, why will you roam
  A -- way from God, a -- way from Home?
  The Sa -- viour calls, oh, hear Him say—
  "\"Who" -- ev -- er "will\"" may come to -- day!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Be -- hold His hands ex -- tend -- ed now,
  The dews of night are on the brow;
  He knocks, He calls, He wait -- eth still:
  Oh, come to Him, "\"who" -- ev -- er "will!\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  In sim -- ple faith His word be -- lieve,
  And His a -- bun -- dant grace re -- ceive;
  No love like His the heart can fill:
  Oh, come to Him, "\"who" -- ev -- er "will!\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The "\"Spi" -- it and the Bride say, "Come!\""
  And find in Him sweet rest, and home;
  Let Him that hear -- eth e --cho still
  The bles -- sed  "\"who" -- so -- ev -- er "will!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " wan "d'ring " "souls, " "why " "will " "you " "roam "
  "\nA" "way " "from " "God, " a "way " "from " "Home? "
  "\nThe " Sa "viour " "calls, " "oh, " "hear " "Him " "say— "
  "\n\"Who" ev "er " "will\" " "may " "come " to "day! "
  "\nWho" ev "er " "will! " who ev "er " "will! "
  "\nWho" ev "er " "will " "may " "come " to "day; "
  "\nWho" ev "er " "will " "may " "come " to "day, "
  "\nAnd " "drink " "of " "the " wa "ter " "of " "life.\" "

  \set stanza = "2."
  "\nBe" "hold " "His " "hands " ex tend "ed " "now, "
  "\nThe " "dews " "of " "night " "are " "on " "the " "brow; "
  "\nHe " "knocks, " "He " "calls, " "He " wait "eth " "still: "
  "\nOh, " "come " "to " "Him, " "\"who" ev "er " "will!\" "
  "\n\"Who" ev "er " "will! " who ev "er " "will! "
  "\nWho" ev "er " "will " "may " "come " to "day; "
  "\nWho" ev "er " "will " "may " "come " to "day, "
  "\nAnd " "drink " "of " "the " wa "ter " "of " "life.\" "

  \set stanza = "3."
  "\nIn " sim "ple " "faith " "His " "word " be "lieve, "
  "\nAnd " "His " a bun "dant " "grace " re "ceive; "
  "\nNo " "love " "like " "His " "the " "heart " "can " "fill: "
  "\nOh, " "come " "to " "Him, " "\"who" ev "er " "will!\" "
  "\n\"Who" ev "er " "will! " who ev "er " "will! "
  "\nWho" ev "er " "will " "may " "come " to "day; "
  "\nWho" ev "er " "will " "may " "come " to "day, "
  "\nAnd " "drink " "of " "the " wa "ter " "of " "life.\" "

  \set stanza = "4."
  "\nThe " "\"Spi" "it " "and " "the " "Bride " "say, " "Come!\" "
  "\nAnd " "find " "in " "Him " "sweet " "rest, " "and " "home; "
  "\nLet " "Him " "that " hear "eth " e"cho " "still "
  "\nThe " bles "sed "  "\"who" so ev "er " "will!\" "
  "\n\"Who" ev "er " "will! " who ev "er " "will! "
  "\nWho" ev "er " "will " "may " "come " to "day; "
  "\nWho" ev "er " "will " "may " "come " to "day, "
  "\nAnd " "drink " "of " "the " wa "ter " "of " "life.\" "
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
