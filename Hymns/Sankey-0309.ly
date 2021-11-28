\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Revive Thy Work, I lord!"
  subtitle    = "Sankey No. 309"
  subsubtitle = "Sankey 880 No. 273"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{\smallCaps "Albert Midlane." arr. by \smallCaps "Fanny J. Crosby."}
  meter       = \markup\smallCaps "S.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'8^\markup\italic Spirited. [a]
  b4 a8[g] e4 d
  g2. 4
  a4 4 4 b
  a2. \bar "|" \break g8[a]
  b4 a8[g] e4 8[fis] % B
  g4 fis8[e] d4 g
  a4. g8 b4 a
  g2. \bar "|" \break b8^\markup\smallCaps Refrain. [c]
  d4. e8 d4 b % C
  g2. b8[c]
  d4. e8 d4 b
  a2. \bar "|" \break g8[a]
  b4 a8[g] e4 8[fis]
  g4 fis8[e] d4 g
  a4. g8 b4 a
  g2.
}

alto = \relative {
  \autoBeamOff
  d'4
  g4 d c  c
  b2. d4
  d4 fis4 4 g
  fis2. d8[a']
  d,4 4 c4 8[d] % B
  e4 d8[c] b4 d
  fis4. g8 4 fis
  d2. g8[a]
  b4. c8 b4 g % C
  d2. g8[a]
  b4. c8 b4 g
  fis2. d4
  d4 4 c c8[d] % D
  e4 d8[c] b4 d
  fis4. g8 4 fis
  d2.
}

tenor = \relative {
  \autoBeamOff
  b8[c]
  d4 c8[b] g4 f
  g2. 4
  fis4 a d d
  d2. b8[c]
  d4 c8[b] g4 4 % B
  g4 4 4 b
  c4. b8 d4 c
  b2. d4
  d4. 8 4 4 % C
  b4 4 4 d
  d4. 8 4 4
  d4 4 4  8[c]
  d4 c8[b] g4 4 % D
  g4 4 4 b
  c4. b8 d4 c
  b2.
}

bass = \relative {
  \autoBeamOff
  g4
  g4 4 c, d
  g,2. b4
  d4 4 4 g
  d2. g4
  g4 b, c c % B
  c4 c g g'
  d4. e8 d4 4
  g2. 4
  g4. 8 4 4 % C
  g4 4 4 4
  g4. 8 4 4
  d4 4 4 g
  g4 b, c c % D
  c4 4 g g'
  d4. e8 d4 4
  g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Re -- vive Thy work, O Lord! __
  While here to Thee we bow; __
  Des -- cend, O gra -- cious Lord, des -- cend!
  Oh, come and bless us now!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ O Lord!
  _ _ _ _ _ _ we bow;
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Re -- vive Thy work, O Lord!
  Now to Thy saints ap -- pear!
  Oh, speak with power to ev -- 'ry soul,
  And let Thy peo -- ple hear!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Re -- vive Thy work, O Lord!
  Ex -- alt Thy pre -- cious name!
  And may Thy love in ev -- 'ry heart
  Be kin -- dled to a flame!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Re -- vive Thy work, O Lord!
  And bless to all Thy word!
  And may its pure and sa -- cred truth
  In liv -- ing faith be heard!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Re -- vive Thy work, O Lord!
  Giev Pen -- te -- cos -- tal showers!
  Be Thine the glo -- ry, Thine a -- lone!
  The bless -- ing, Lord, be ours!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Re" "vive " "Thy " "work, " "O " "Lord! "
  "\nNow " "to " "Thy " "saints " ap "pear! "
  "\nOh, " "speak " "with " "power " "to " ev "'ry " "soul, "
  "\nAnd " "let " "Thy " peo "ple " "hear! "
  "\nRe" "vive " "Thy " "work, " "O " "Lord! " 
  "\nWhile " "here " "to " "Thee " "we " "bow; " 
  "\nDes" "cend, " "O " gra "cious " "Lord, " des "cend! "
  "\nOh, " "come " "and " "bless " "us " "now! "

  \set stanza = "2."
  "\nRe" "vive " "Thy " "work, " "O " "Lord! "
  "\nEx" "alt " "Thy " pre "cious " "name! "
  "\nAnd " "may " "Thy " "love " "in " ev "'ry " "heart "
  "\nBe " kin "dled " "to " "a " "flame! "
  "\nRe" "vive " "Thy " "work, " "O " "Lord! " 
  "\nWhile " "here " "to " "Thee " "we " "bow; " 
  "\nDes" "cend, " "O " gra "cious " "Lord, " des "cend! "
  "\nOh, " "come " "and " "bless " "us " "now! "

  \set stanza = "3."
  "\nRe" "vive " "Thy " "work, " "O " "Lord! "
  "\nAnd " "bless " "to " "all " "Thy " "word! "
  "\nAnd " "may " "its " "pure " "and " sa "cred " "truth "
  "\nIn " liv "ing " "faith " "be " "heard! "
  "\nRe" "vive " "Thy " "work, " "O " "Lord! " 
  "\nWhile " "here " "to " "Thee " "we " "bow; " 
  "\nDes" "cend, " "O " gra "cious " "Lord, " des "cend! "
  "\nOh, " "come " "and " "bless " "us " "now! "

  \set stanza = "4."
  "\nRe" "vive " "Thy " "work, " "O " "Lord! "
  "\nGiev " Pen te cos "tal " "showers! "
  "\nBe " "Thine " "the " glo "ry, " "Thine " a "lone! "
  "\nThe " bless "ing, " "Lord, " "be " "ours! "
  "\nRe" "vive " "Thy " "work, " "O " "Lord! " 
  "\nWhile " "here " "to " "Thee " "we " "bow; " 
  "\nDes" "cend, " "O " gra "cious " "Lord, " des "cend! "
  "\nOh, " "come " "and " "bless " "us " "now! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Re" "vive " "Thy " "work, " "O " "Lord! "
  "\nNow " "to " "Thy " "saints " ap "pear! "
  "\nOh, " "speak " "with " "power " "to " ev "'ry " "soul, "
  "\nAnd " "let " "Thy " peo "ple " "hear! "
  "\nRe" "vive " "Thy " "work, " "O " "Lord! " "O " "Lord! "
  "\nWhile " "here " "to " "Thee " "we " "bow; " "we " "bow; "
  "\nDes" "cend, " "O " gra "cious " "Lord, " des "cend! "
  "\nOh, " "come " "and " "bless " "us " "now! "

  \set stanza = "2."
  "\nRe" "vive " "Thy " "work, " "O " "Lord! "
  "\nEx" "alt " "Thy " pre "cious " "name! "
  "\nAnd " "may " "Thy " "love " "in " ev "'ry " "heart "
  "\nBe " kin "dled " "to " "a " "flame! "
  "\nRe" "vive " "Thy " "work, " "O " "Lord! " "O " "Lord! "
  "\nWhile " "here " "to " "Thee " "we " "bow; " "we " "bow; "
  "\nDes" "cend, " "O " gra "cious " "Lord, " des "cend! "
  "\nOh, " "come " "and " "bless " "us " "now! "

  \set stanza = "3."
  "\nRe" "vive " "Thy " "work, " "O " "Lord! "
  "\nAnd " "bless " "to " "all " "Thy " "word! "
  "\nAnd " "may " "its " "pure " "and " sa "cred " "truth "
  "\nIn " liv "ing " "faith " "be " "heard! "
  "\nRe" "vive " "Thy " "work, " "O " "Lord! " "O " "Lord! "
  "\nWhile " "here " "to " "Thee " "we " "bow; " "we " "bow; "
  "\nDes" "cend, " "O " gra "cious " "Lord, " des "cend! "
  "\nOh, " "come " "and " "bless " "us " "now! "

  \set stanza = "4."
  "\nRe" "vive " "Thy " "work, " "O " "Lord! "
  "\nGiev " Pen te cos "tal " "showers! "
  "\nBe " "Thine " "the " glo "ry, " "Thine " a "lone! "
  "\nThe " bless "ing, " "Lord, " "be " "ours! "
  "\nRe" "vive " "Thy " "work, " "O " "Lord! " "O " "Lord! "
  "\nWhile " "here " "to " "Thee " "we " "bow; " "we " "bow; "
  "\nDes" "cend, " "O " gra "cious " "Lord, " des "cend! "
  "\nOh, " "come " "and " "bless " "us " "now! "
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
  \bookOutputSuffix "midi-men"
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
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT \tenor
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
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
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT {\repeat unfold \verses \tenor}
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\repeat unfold \verses \chorusMen}
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
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT {\repeat unfold \verses \tenor}
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\repeat unfold \verses \chorusMen}
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
