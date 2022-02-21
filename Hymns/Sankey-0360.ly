\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Spirit and the Bride say, Come."
  subtitle    = "Sankey No. 360"
  subsubtitle = "N. H. No. 67"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Burke."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key ees \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*2
  \mark \markup { \box "D" }    s1*3
  \mark \markup { \box "E" }    s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'4
  bes4 g ees'4. bes8
  c4 4 bes g8[f]
  ees4. f8 g4 f8[ees]
  f2. \bar "|" \break bes4
  bes4 g ees'4. g,8 % B
  aes4 bes c c
  bes4. 8 d4 c
  bes2. \bar "||" \break bes4^\markup\smallCaps Chorus.
  bes8 8 ees,8. f16 g4 f % C
  ees2. g8 aes \break
  bes4. 8 c bes g4 % D
  f2. 8 g
  aes8. g16 aes8 bes c4 bes8 8 \break
  ees8. 16 8 d c4 8 8 % E
  bes4 ees, \tuplet 3/2 {aes8 8 8} g4
  f2 ees4
}

alto = \relative {
  \autoBeamOff
  ees'4
  ees4 4 g4. ees8
  ees4 4 4 d
  ees4. d8 ees4 bes8[c]
  d2. 4
  ees4 4 g4. ees8 % B
  ees4 4 4 4
  ees4. 8 f4 ees
  d2. aes'4
  g8 8 ees8. 16 4 d % C
  ees4 c bes ees8 f
  g4. 8 aes g ees4 % D
  d4 ees d d8 ees
  ees8. 16 8 8 4 d8 f
  ees8. 16 8 8 4 8 8 % E
  g4 ees \tuplet 3/2 {ees8 8 8} 4
  d2 ees4
}

tenor = \relative {
  \autoBeamOff
  g4
  g4 bes4 4. g8
  aes4 4 g bes8[aes]
  g4. bes8 4 8[a]
  bes2. aes4
  g4 bes4 4. 8 % B
  aes4 g aes aes
  g4. bes8 4 a
  bes2. 4
  ees8 8 bes8. c16 bes4 aes % C
  g4 aes g bes8 8
  ees4. 8 8 8 bes4 % D
  bes4 a bes4 8 8
  aes8. bes16 aes8 f aes4 bes8 8
  bes8. 16 8 8 aes4 f8 fis % E
  g4 4 \tuplet 3/2 {c8 8 8} bes4
  aes2 g4
}

bass = \relative {
  \autoBeamOff
  ees4
  ees4 4 4. 8
  aes,4 c ees bes
  c4. bes8 ees4 d8[c]
  bes2. 4
  ees4 4 4. des8 % B
  c4 ees aes aes
  g4. 8 f4 4
  bes,2. 4
  ees8 8 g8. aes16 bes4 bes, % C
  ees4 aes, ees'4 8 8
  ees4. 8 8 8 4 % D
  bes4 f' bes,4 8 ees
  c8. des16 c8 ees aes4 8 8
  g8. 16 g,8 8 aes4 8 a % E
  bes4 4 \tuplet 3/2 {bes8 8 8} 4
  bes2 ees4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"The" Spi -- rit and the Bride say, Come!
  And let him that hear -- eth say, Come!
  And let him that is a -- thirst come,
  And who -- so -- ev -- er will,
  let him take the wa -- ter of life free -- "ly.\""
}

chorusAlt = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  Come! come! come!
  _ _ _ _ _ _ _
  Come! come! come!
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _  
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  O wan -- d'rer from they Fa -- ther's house,
  Why wilt thou long -- er roam?
  Re -- turn! oh, hear the gen -- tle voice
  That bids thee now come home.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  To Je -- sus come— oh, trust His word,
  And on His name be -- lieve;
  For -- sake thy sins, and thro' His blood
  E -- ter -- nal life re -- ceive.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The gra -- cious Sa -- viour calls thee now
  To feast up -- on His love;
  And of the liv -- ing wa -- ter drink,
  And all His mer -- cy prove.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The Church, His Bride, in -- vites thee now,
  To own her ris -- en Lord;
  For, "\"Who" -- so -- ev -- er will may "come,\""
  Is God's e -- ter -- nal word.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " wan "d'rer " "from " "they " Fa "ther's " "house, "
  "\nWhy " "wilt " "thou " long "er " "roam? "
  "\nRe" "turn! " "oh, " "hear " "the " gen "tle " "voice "
  "\nThat " "bids " "thee " "now " "come " "home. "
  "\n\"The " Spi "rit " "and " "the " "Bride " "say, " "Come! " "come! " "come! "
  "\nAnd " "let " "him " "that " hear "eth " "say, " "Come! " "come! " "come! "
  "\nAnd " "let " "him " "that " "is " a "thirst " "come, "
  "\nAnd " who so ev "er " "will, "
  "\nlet " "him " "take " "the " wa "ter " "of " "life " free "ly.\" "

  \set stanza = "2."
  "\nTo " Je "sus " "come— " "oh, " "trust " "His " "word, "
  "\nAnd " "on " "His " "name " be "lieve; "
  "\nFor" "sake " "thy " "sins, " "and " "thro' " "His " "blood "
  "\nE" ter "nal " "life " re "ceive. "
  "\n\"The " Spi "rit " "and " "the " "Bride " "say, " "Come! " "come! " "come! "
  "\nAnd " "let " "him " "that " hear "eth " "say, " "Come! " "come! " "come! "
  "\nAnd " "let " "him " "that " "is " a "thirst " "come, "
  "\nAnd " who so ev "er " "will, "
  "\nlet " "him " "take " "the " wa "ter " "of " "life " free "ly.\" "

  \set stanza = "3."
  "\nThe " gra "cious " Sa "viour " "calls " "thee " "now "
  "\nTo " "feast " up "on " "His " "love; "
  "\nAnd " "of " "the " liv "ing " wa "ter " "drink, "
  "\nAnd " "all " "His " mer "cy " "prove. "
  "\n\"The " Spi "rit " "and " "the " "Bride " "say, " "Come! " "come! " "come! "
  "\nAnd " "let " "him " "that " hear "eth " "say, " "Come! " "come! " "come! "
  "\nAnd " "let " "him " "that " "is " a "thirst " "come, "
  "\nAnd " who so ev "er " "will, "
  "\nlet " "him " "take " "the " wa "ter " "of " "life " free "ly.\" "

  \set stanza = "4."
  "\nThe " "Church, " "His " "Bride, " in "vites " "thee " "now, "
  "\nTo " "own " "her " ris "en " "Lord; "
  "\nFor, " "\"Who" so ev "er " "will " "may " "come,\" "
  "\nIs " "God's " e ter "nal " "word. "
  "\n\"The " Spi "rit " "and " "the " "Bride " "say, " "Come! " "come! " "come! "
  "\nAnd " "let " "him " "that " hear "eth " "say, " "Come! " "come! " "come! "
  "\nAnd " "let " "him " "that " "is " a "thirst " "come, "
  "\nAnd " who so ev "er " "will, "
  "\nlet " "him " "take " "the " wa "ter " "of " "life " free "ly.\" "
}

wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "O " wan "d'rer " "from " "they " Fa "ther's " "house, "
  "\nWhy " "wilt " "thou " long "er " "roam? "
  "\nRe" "turn! " "oh, " "hear " "the " gen "tle " "voice "
  "\nThat " "bids " "thee " "now " "come " "home. "
  "\n\"The " Spi "rit " "and " "the " "Bride " "say, " "Come! "
  "\nAnd " "let " "him " "that " hear "eth " "say, " "Come! "
  "\nAnd " "let " "him " "that " "is " a "thirst " "come, "
  "\nAnd " who so ev "er " "will, "
  "\nlet " "him " "take " "the " wa "ter " "of " "life " free "ly.\" "

  \set stanza = "2."
  "\nTo " Je "sus " "come— " "oh, " "trust " "His " "word, "
  "\nAnd " "on " "His " "name " be "lieve; "
  "\nFor" "sake " "thy " "sins, " "and " "thro' " "His " "blood "
  "\nE" ter "nal " "life " re "ceive. "
  "\n\"The " Spi "rit " "and " "the " "Bride " "say, " "Come! "
  "\nAnd " "let " "him " "that " hear "eth " "say, " "Come! "
  "\nAnd " "let " "him " "that " "is " a "thirst " "come, "
  "\nAnd " who so ev "er " "will, "
  "\nlet " "him " "take " "the " wa "ter " "of " "life " free "ly.\" "

  \set stanza = "3."
  "\nThe " gra "cious " Sa "viour " "calls " "thee " "now "
  "\nTo " "feast " up "on " "His " "love; "
  "\nAnd " "of " "the " liv "ing " wa "ter " "drink, "
  "\nAnd " "all " "His " mer "cy " "prove. "
  "\n\"The " Spi "rit " "and " "the " "Bride " "say, " "Come! "
  "\nAnd " "let " "him " "that " hear "eth " "say, " "Come! "
  "\nAnd " "let " "him " "that " "is " a "thirst " "come, "
  "\nAnd " who so ev "er " "will, "
  "\nlet " "him " "take " "the " wa "ter " "of " "life " free "ly.\" "

  \set stanza = "4."
  "\nThe " "Church, " "His " "Bride, " in "vites " "thee " "now, "
  "\nTo " "own " "her " ris "en " "Lord; "
  "\nFor, " "\"Who" so ev "er " "will " "may " "come,\" "
  "\nIs " "God's " e ter "nal " "word. "
  "\n\"The " Spi "rit " "and " "the " "Bride " "say, " "Come! "
  "\nAnd " "let " "him " "that " hear "eth " "say, " "Come! "
  "\nAnd " "let " "him " "that " "is " a "thirst " "come, "
  "\nAnd " who so ev "er " "will, "
  "\nlet " "him " "take " "the " wa "ter " "of " "life " free "ly.\" "
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidi
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
            \new NullVoice = "alignerA" \alto
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "alignerA"  \chorusAlt
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
            \new NullVoice = "alignerA" { \repeat unfold \verses \alto }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
            \new Lyrics \lyricsto alignerA {\repeat unfold \verses \chorusAlt}
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
            \new NullVoice = "alignerA" { \repeat unfold \verses \alto }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
            \new Lyrics \lyricsto alignerA {\repeat unfold 4 \chorusAlt}
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
