\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Whosoever Calleth!"
  subtitle    = "Sankey No. 419"
  subsubtitle = "Sankey 880 No. 541"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Julia Sterling."
  meter       = \markup\smallCaps "7.6.d."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 18)

global = {
  \key f \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*3 s4. s4
  \mark \markup { \box "C" } s8 s2.*3 s4. s4
  \mark \markup { \box "D" } s8 s2.*4
  \mark \markup { \box "E" }    s2.*4
  \mark \markup { \box "F" }    s2.*4
  \mark \markup { \box "G" }    s2.*4
  \mark \markup { \box "H" }    s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''8
  c4 bes8 c4 d8
  c4. a4 g8
  f4 e8 f4 g8
  a4. r4 \bar "|" \break a8
  bes4 a8 bes4 d8 % B
  c4. a4 bes8
  c4 8 bes4 a8
  g4. r4 \bar "|" \break c8
  c4 b8 c4 d8 % C
  c4. a4 g8
  f4 e8 f4 g8
  a4. r4 \bar "|" \break a8
  b4 8 d4 8 % D
  c4. f,4\fermata g8
  a4 bes8 a4 g8
  f4.~4 r8
  c'4^\markup\smallCaps Chorus. b8 c4 d8 % E
  c4. a4 r8
  a4 gis8 a4 bes8
  a4. f4 r8
  g4 8 4 a8 % F
  bes4 8 a4 g8
  a4. b4 8
  c4.~4 r8
  c4 b8 c4 d8 % G
  c4. a4 r8
  a4 gis8 a4 bes8
  a4. f4 r8
  g4 8 4 a8 % H
  bes4 a8 g4 f8
  f4. e4 8
  f4.~4
}

alto = \relative {
  \autoBeamOff
  f'8
  f4 8 4 8
  f4. 4 c8
  c4 8 4 e8
  f4. r4 f8
  d4 8 4 8 % B
  f4. 4 e8
  f4 8 e4 f8
  d4. r4 e8
  f4 8 4 8 % C
  f4. 4 c8
  c4 8 4 e8
  f4. r4 f8
  f4 8 4 8 % D
  f4. 4\fermata 8
  f4 8 4 e8
  f4.~4 r8
  f4 8 4 8 % E
  f4. 4 r8
  f4 8 4 8
  f4. c4 r8
  e4 8 4 f8 % F
  g4 8 f4 e8
  f4. 4 8
  e4.~4 r8
  f4 8 4 8 % G
  f4. 4 r8
  f4 8 4 8
  f4. c4 r8
  e4 8 d4 8 % H
  d4 8 4 8
  c4. 4 8
  c4.~4
}

tenor = \relative {
  \autoBeamOff
  a8
  a4 g8 a4 bes8
  a4. c4 bes8
  a4 g8 c4 8
  c4. r4 8
  bes4 c8 d4 bes8 % B
  a4. c4 8
  c4 8 4 8
  c4. r4 bes8
  a4 gis8 a4 bes8 % C
  a4. c4 bes8
  a4 g8 c4 8
  c4. r4 c8
  bes4 8 4 8 % D
  a4. c4\fermata d8
  c4 d8 c4 bes8
  a4.~4 r8
  a4 gis8 a4 bes8 % E
  a4. c4 r8
  c4 b8 c4 d8
  c4. a4 r8
  c4 8 4 8 % F
  c4 8 4 8
  c4. g4 8
  g4.~4 r8
  a4 gis8 a4 bes8 % G
  a4. c4 r8
  c4 b8 c4 d8
  c4. a4 r8
  bes4 8 d4 c8 % H
  bes4 c8 d4 g,8
  a4. g4 bes8
  a4.~4
}

bass = \relative {
  \autoBeamOff
  g8
  f4 8 4 8
  f4. 4 e8
  f4 c8 a4 c8
  f4. r4 ees8
  d4 c8 bes4 8 % B
  f'4. 4 g8
  a4 8 g4 f8
  c4. r4 8
  f4 8 4 8 % C
  f4. 4 e8
  f4 c8 a4 c8
  f4. r4 ees8
  d4 8 bes4 8 % D
  f'4. a,4\fermata bes8
  c4 8 4 8
  f4.~4 r8
  f4 8 4 8 % E
  f4. 4 r8
  f4 8 4 8
  f4. 4 r8
  c4 8 4 8 % F
  c4 8 4 8
  f4. d4 8
  c4.~4 r8
  f4 8 4 8 % G
  f4. 4 r8
  f4 8 4 8
  f4. 4 r8
  bes,4 8 4 a8 % H
  g4 a8 bes4 b8
  c4. 4 8
  f4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"Who" -- so -- ev -- er call -- eth,
  Who -- so -- ev -- er call -- eth,
  Who -- so -- ev -- er call -- eth on His name sall be saved!
  "\"Who" -- so -- ev -- er call -- eth,
  Who -- so -- ev -- er call -- eth,
  Who -- so -- ev -- er call -- eth on the Lord shall be "saved!\""
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, hear the joy -- ful mes -- sage,
  'Tis sound -- ing far and wide:
  Good news of full sal -- va -- tion,
  Thro' Him, the Cru -- ci -- fied:
  God's Word is truth e -- ter -- nal;
  Its prom -- ise all may claim,
  Who look by faith to Je -- sus,
  And call up -- on His name.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Ye souls that long in dark -- nessm
  The path of sin have trod,
  Be -- hold the light of mer -- cy!
  Be -- hold the Lamb of God!
  With all your heart be -- lieve Him,
  And now the prom -- ise claim—
  That none shall ev -- er per -- ish
  Who call up -- on His name.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Ye wea -- ry, hea -- vy la -- den,
  Op -- pressed with toil and care:
  He waits to bid you wel -- come,
  And all your bur -- dens bear;
  A pre -- cious gift He of -- fers,
  A gift that all may claim,
  Who look to Him be -- liev -- ing,
  And call up -- on His name.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "hear " "the " joy "ful " mes "sage, "
  "\n'Tis " sound "ing " "far " "and " "wide: "
  "\nGood " "news " "of " "full " sal va "tion, "
  "\nThro' " "Him, " "the " Cru ci "fied: "
  "\nGod's " "Word " "is " "truth " e ter "nal; "
  "\nIts " prom "ise " "all " "may " "claim, "
  "\nWho " "look " "by " "faith " "to " Je "sus, "
  "\nAnd " "call " up "on " "His " "name. "
  "\n\"Who" so ev "er " call "eth, "
  "\nWho" so ev "er " call "eth, "
  "\nWho" so ev "er " call "eth " "on " "His " "name " "sall " "be " "saved! "
  "\n\"Who" so ev "er " call "eth, "
  "\nWho" so ev "er " call "eth, "
  "\nWho" so ev "er " call "eth " "on " "the " "Lord " "shall " "be " "saved!\" "

  \set stanza = "2."
  "\nYe " "souls " "that " "long " "in " dark "nessm "
  "\nThe " "path " "of " "sin " "have " "trod, "
  "\nBe" "hold " "the " "light " "of " mer "cy! "
  "\nBe" "hold " "the " "Lamb " "of " "God! "
  "\nWith " "all " "your " "heart " be "lieve " "Him, "
  "\nAnd " "now " "the " prom "ise " "claim— "
  "\nThat " "none " "shall " ev "er " per "ish "
  "\nWho " "call " up "on " "His " "name. "
  "\n\"Who" so ev "er " call "eth, "
  "\nWho" so ev "er " call "eth, "
  "\nWho" so ev "er " call "eth " "on " "His " "name " "sall " "be " "saved! "
  "\n\"Who" so ev "er " call "eth, "
  "\nWho" so ev "er " call "eth, "
  "\nWho" so ev "er " call "eth " "on " "the " "Lord " "shall " "be " "saved!\" "

  \set stanza = "3."
  "\nYe " wea "ry, " hea "vy " la "den, "
  "\nOp" "pressed " "with " "toil " "and " "care: "
  "\nHe " "waits " "to " "bid " "you " wel "come, "
  "\nAnd " "all " "your " bur "dens " "bear; "
  "\nA " pre "cious " "gift " "He " of "fers, "
  "\nA " "gift " "that " "all " "may " "claim, "
  "\nWho " "look " "to " "Him " be liev "ing, "
  "\nAnd " "call " up "on " "His " "name. "
  "\n\"Who" so ev "er " call "eth, "
  "\nWho" so ev "er " call "eth, "
  "\nWho" so ev "er " call "eth " "on " "His " "name " "sall " "be " "saved! "
  "\n\"Who" so ev "er " call "eth, "
  "\nWho" so ev "er " call "eth, "
  "\nWho" so ev "er " call "eth " "on " "the " "Lord " "shall " "be " "saved!\" "
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
