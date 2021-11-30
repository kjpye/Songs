\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sweet Hour of Prayer."
  subtitle    = "Sankey No. 318"
  subsubtitle = "Sankey 880 No. 48"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. B. Bradbury."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. W. Walford."
  meter       = \markup\smallCaps "D.L.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

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
  \mark \markup { \box "E" } s8 s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'8^\markup\italic Slow.
  fis4 g8 a4 8
  b4 cis8 d4\fermata b8
  a4 fis8 8[e] d
  e4 fis8 e4 \bar "|" \break d8
  fis4 g8 a4 8 % B
  b4 cis8 d4\fermata b8
  a4 fis8 4 d8
  fis4 e8 d4\fermata \bar "|" \break a'8
  d4 cis8 d4 b8 % C
  a4 fis8 a4 8
  d4 cis8 d4 b8
  a4 fis8 e4\fermata \bar "|" \break d8
  fis4 g8 a4 8 % D
  b4 cis8 d4\fermata b8
  a4 fis8 8[e] d
  e4 fis8 e4 \bar "|" \break d8
  fis4 g8 a4 8 % E
  b4 cis8 d4\fermata b8
  a4 fis8 4 d8
  fis4 e8 d4\fermata
}

alto = \relative {
  \autoBeamOff
  \once\partCombineApart d'8
  d4 e8 fis4 8
  g4 a8 b4\fermata g8
  fis4 d8 d[cis] d
  cis4 d8 c4 \once\partCombineApart d8
  d4 e8 fis4 8 % B
  g4 a8 b4\fermata g8
  fis4 d8 4 \once\partCombineApart 8
  d4 cis8 \once\partCombineApart d4\fermata fis8
  fis4 g8 a4 g8 % C
  fis4 d8 fis4 8
  fis4 g8 a4 g8
  fis4 d8 cis4\fermata \once\partCombineApart d8
  d4 e8 fis4 8 % D
  g4 a8 b4\fermata g8
  fis4 d8 8[cis] \once\partCombineApart d8
  cis4 d8 cis4 \once\partCombineApart d8
  d4 e8 fis4 8 % E
  g4 a8 b4\fermata g8
  fis4 d8 4 \once\partCombineApart d8
  d4 cis8 \once\partCombineApart d4\fermata
}

tenor = \relative {
  \autoBeamOff
  fis8
  a4 8 4 d8
  r4 8 4\fermata 8
  d4 a8 8[g] fis
  a4 8 4 fis8
  a4 8 4 d8 % B
  d4 8 4\fermata 8
  d4 a8 4 8
  a4 g8 fis4\fermata a8
  a4 8 4 d8 % C
  d4 a8 4 8
  a4 8 4 d8
  d4 a8 4\fermata fis8
  a4 8 4 d8 % D
  d4 8 4\fermata 8
  d4 a8 a[g] fis
  a4 8 4 fis8
  a4 8 4 d8 % E
  d4 8 4\fermata 8
  d4 a8 4 8
  a4 g8 fis4\fermata
}

bass = \relative {
  \autoBeamOff
  d8
  d4 8 4 8
  g4 8 4\fermata 8
  d4 8 4 8
  a4 8 4 d8
  d4 8 4 8 % B
  g4 8 4\fermata 8
  d4 8 4 fis8
  \once\partCombineApart a4 a,8 d4\fermata 8
  d4 e8 fis4 g8 % C
  d4 8 4 8
  d4 e8 fis4 g8
  d4 8 a4\fermata d8
  d4 8 4 8 % D
  g4 8 4\fermata 8
  d4 8 4 8
  a4 8 4 d8
  d4 8 4 8 % E
  g4 8 4\fermata 8
  d4 8 4 fis8
  \once\partCombineApart a4 a,8 d4\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Sweet hour of prayer! sweet hour of prayer!
  That calls me from a world of care,
  And bids me at my Fa -- ther's throne
  Make all my wants and wish -- es known.
  In sea -- sons of dis -- tress and grief
  My soul has oft -- en found re -- lief,
  And oft es -- caped the temp -- ter's snare,
  By thy re -- turn, sweet hour of prayer!
  And oft es -- caped the temp -- ter's snare,
  By thy re -- turn, sweet hour of prayer!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Sweet hour of prayer! sweet hour of prayer!
  Thy wings shall my pe -- ti -- tion bear
  To Him whose truth and faith -- ful -- ness
  En -- gage the wait -- ing soul to bless;
  And since He bids me seek His face,
  Be -- lieve His Word, and trust His grace,
  I'll cast on Him my ev -- 'ry care,
  And wait for thee, sweet hour of prayer!
  I'll cast on Him my ev -- 'ry care,
  And wait for thee, sweet hour of prayer!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Sweet hour of prayer! sweet hour of prayer!
  May I thy con -- so -- la -- tion share,
  Till, from Mount Pis -- gah's lof -- ty height,
  I view my home and take my flight.
  This robe of flesh I'll drio, and rise
  To seize the ev -- er -- last -- ing prize.
  And shout, while pass -- ing thro' the air,
  "\"Fare" -- well, fare -- well, sweet hour of "prayer!\""
  And shout, while pass -- ing thro' the air,
  "\"Fare" -- well, fare -- well, sweet hour of "prayer!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sweet " "hour " "of " "prayer! " "sweet " "hour " "of " "prayer! "
  "\nThat " "calls " "me " "from " "a " "world " "of " "care, "
  "\nAnd " "bids " "me " "at " "my " Fa "ther's " "throne "
  "\nMake " "all " "my " "wants " "and " wish "es " "known. "
  "\nIn " sea "sons " "of " dis "tress " "and " "grief "
  "\nMy " "soul " "has " oft "en " "found " re "lief, "
  "\nAnd " "oft " es "caped " "the " temp "ter's " "snare, "
  "\nBy " "thy " re "turn, " "sweet " "hour " "of " "prayer! "
  "\nAnd " "oft " es "caped " "the " temp "ter's " "snare, "
  "\nBy " "thy " re "turn, " "sweet " "hour " "of " "prayer! "

  \set stanza = "2."
  "\nSweet " "hour " "of " "prayer! " "sweet " "hour " "of " "prayer! "
  "\nThy " "wings " "shall " "my " pe ti "tion " "bear "
  "\nTo " "Him " "whose " "truth " "and " faith ful "ness "
  "\nEn" "gage " "the " wait "ing " "soul " "to " "bless; "
  "\nAnd " "since " "He " "bids " "me " "seek " "His " "face, "
  "\nBe" "lieve " "His " "Word, " "and " "trust " "His " "grace, "
  "\nI'll " "cast " "on " "Him " "my " ev "'ry " "care, "
  "\nAnd " "wait " "for " "thee, " "sweet " "hour " "of " "prayer! "
  "\nI'll " "cast " "on " "Him " "my " ev "'ry " "care, "
  "\nAnd " "wait " "for " "thee, " "sweet " "hour " "of " "prayer! "

  \set stanza = "3."
  "\nSweet " "hour " "of " "prayer! " "sweet " "hour " "of " "prayer! "
  "\nMay " "I " "thy " con so la "tion " "share, "
  "\nTill, " "from " "Mount " Pis "gah's " lof "ty " "height, "
  "\nI " "view " "my " "home " "and " "take " "my " "flight. "
  "\nThis " "robe " "of " "flesh " "I'll " "drio, " "and " "rise "
  "\nTo " "seize " "the " ev er last "ing " "prize. "
  "\nAnd " "shout, " "while " pass "ing " "thro' " "the " "air, "
  "\n"\"Fare"" "well, " fare "well, " "sweet " "hour " "of " "prayer!\" "
  "\nAnd " "shout, " "while " pass "ing " "thro' " "the " "air, "
  "\n"\"Fare"" "well, " fare "well, " "sweet " "hour " "of " "prayer!\" "
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
