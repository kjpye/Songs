\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Welcome! Wanderer, Welcome!"
  subtitle    = "Sankey No. 447"
  subsubtitle = "N. H. No. 101"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. Bonar, D. D."
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
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4.\omit\mf 8 4 4
  c2 4 r
  f,4. 8 4 4
  a2. r4
  d,4 f e d % B
  c2 f4 a
  c2. 4
  c2.\fermata r4 \bar "||"
  a4-.^\p^\markup\smallCaps Chorus. 4-. 4-. 4-. % C
  c4(bes) a2
  d4 c bes^\markup\italic m a
  bes2. r4
  bes4 g a bes % D
  c4 f f\fermata f,
  a2. g4
  f2. r4
}

alto = \relative {
  \autoBeamOff
  f'4.\omit\mf 8 4 4
  e2 4 r
  d4. 8 4 4
  cis2. r4
  bes4 d c bes % B
  a2 4 f'4
  e2. 4
  f2.\fermata r4
  f4-.^\p 4-. 4-. 4-. % C
  f2 2
  fis4 a g fis
  g2. r4
  e4 4 f g % D
  a4 c bes\fermata f
  f2. e4
  f2. r4
}

tenor = \relative {
  \autoBeamOff
  c'4.\omit\mf 8 4 4
  c2 bes4 r
  a4. 8 4 4
  a2. r4
  f4 4 4 4 % B
  f2 4 4
  g2. <g bes>4
  a2.\fermata r4
  c4-.\omit\p 4-. 4-. 4-.
  e4(d) c2
  d4 4 4 4
  d2. r4
  c4 4 4 4 % D
  ees4 4 d\fermata d
  c2. bes4
  a2. r4
}

bass = \relative {
  \autoBeamOff
  f4. 8 4 4
  c2 4 r
  d4. 8 4 4
  a2. r4
  bes4 4 4 4 % B
  f2 4 f'
  c2. 4
  f2.\fermata r4
  d4-.\omit\p 4-. 4-. 4-. % C
  f2 2
  d4 4 4 4
  g2. r4
  c4 bes a g % D
  f4 a, bes\fermata bes
  c2. 4
  f2. r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Wel -- come! wan -- d'rer, wel -- come!
  Wel -- come back to home!
  Thou hast wan -- dered far a -- way:
  Come home! come "home!\""
}

chorusMen = \lyricmode {
}

verses = 7

wordsOne = \lyricmode {
  \set stanza = "1."
  In the land of stran -- gers,
  Whi -- ther thou art gone,
  Hear a far voice call -- ing,
  My son! my son!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"From" the land of hun -- ger,
  Faint -- ing, fam -- ished, lone,
  Come to love and glad -- ness,
  My son my son!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"Quit" the haunts of ri -- ot,
  Wast -- ed, woe -- be -- gone;
  Sick at heart and wea -- ry,
  My son! my son!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  "\"See" the door still o -- pen!
  Thou art still my own;
  Eyes of love are on thee,
  My son! my son!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  "\"Far" off thou hast wan -- dered:
  Wilt thou fur -- ther roam?
  Come: and all is par -- doned,
  My son! my son!
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  "\"See" the well -- spread ta -- ble,
  Un -- for -- got -- ten one!
  Here is rest and plen -- ty,
  My son! my son!
}
  
wordsSeven = \lyricmode {
  \set stanza = "7."
  "\"Thou" art friend -- less, home -- less,
  Hope -- less, and un -- done;
  Mine is love un -- chang -- ing,
  My son! my "son!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "In " "the " "land " "of " stran "gers, "
  "\nWhi" "ther " "thou " "art " "gone, "
  "\nHear " "a " "far " "voice " call "ing, "
  "\nMy " "son! " "my " "son! "
  "\nWel" "come! " wan "d'rer, " wel "come! "
  "\nWel" "come " "back " "to " "home! "
  "\nThou " "hast " wan "dered " "far " a "way: "
  "\nCome " "home! " "come " "home!\"\n"

  \set stanza = "2."
  "\n\"From " "the " "land " "of " hun "ger, "
  "\nFaint" "ing, " fam "ished, " "lone, "
  "\nCome " "to " "love " "and " glad "ness, "
  "\nMy " "son " "my " "son! "
  "\nWel" "come! " wan "d'rer, " wel "come! "
  "\nWel" "come " "back " "to " "home! "
  "\nThou " "hast " wan "dered " "far " a "way: "
  "\nCome " "home! " "come " "home!\"\n"

  \set stanza = "3."
  "\n\"Quit " "the " "haunts " "of " ri "ot, "
  "\nWast" "ed, " woe be "gone; "
  "\nSick " "at " "heart " "and " wea "ry, "
  "\nMy " "son! " "my " "son! "
  "\nWel" "come! " wan "d'rer, " wel "come! "
  "\nWel" "come " "back " "to " "home! "
  "\nThou " "hast " wan "dered " "far " a "way: "
  "\nCome " "home! " "come " "home!\"\n"

  \set stanza = "4."
  "\n\"See " "the " "door " "still " o "pen! "
  "\nThou " "art " "still " "my " "own; "
  "\nEyes " "of " "love " "are " "on " "thee, "
  "\nMy " "son! " "my " "son! "
  "\nWel" "come! " wan "d'rer, " wel "come! "
  "\nWel" "come " "back " "to " "home! "
  "\nThou " "hast " wan "dered " "far " a "way: "
  "\nCome " "home! " "come " "home!\"\n"

  \set stanza = "5."
  "\n\"Far " "off " "thou " "hast " wan "dered: "
  "\nWilt " "thou " fur "ther " "roam? "
  "\nCome: " "and " "all " "is " par "doned, "
  "\nMy " "son! " "my " "son! "
  "\nWel" "come! " wan "d'rer, " wel "come! "
  "\nWel" "come " "back " "to " "home! "
  "\nThou " "hast " wan "dered " "far " a "way: "
  "\nCome " "home! " "come " "home!\"\n"

  \set stanza = "6."
  "\n\"See " "the " well "spread " ta "ble, "
  "\nUn" for got "ten " "one! "
  "\nHere " "is " "rest " "and " plen "ty, "
  "\nMy " "son! " "my " "son! "
  "\nWel" "come! " wan "d'rer, " wel "come! "
  "\nWel" "come " "back " "to " "home! "
  "\nThou " "hast " wan "dered " "far " a "way: "
  "\nCome " "home! " "come " "home!\"\n"

  \set stanza = "7."
  "\n\"Thou " "art " friend "less, " home "less, "
  "\nHope" "less, " "and " un "done; "
  "\nMine " "is " "love " un chang "ing, "
  "\nMy " "son! " "my " "son!\" "
  "\nWel" "come! " wan "d'rer, " wel "come! "
  "\nWel" "come " "back " "to " "home! "
  "\nThou " "hast " wan "dered " "far " a "way: "
  "\nCome " "home! " "come " "home!\" "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
            \new Lyrics \lyricsto "aligner"   \wordsSeven
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

singlescore = {
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
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                              \wordsSeven   \chorus
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
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
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
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
