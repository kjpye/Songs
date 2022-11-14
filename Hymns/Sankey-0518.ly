\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "He Leadeth His Own."
  subtitle    = "Sankey No. 518"
%  subsubtitle = "Sankey 880 No. "
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "L. Edwards."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8  s2.*3
  \mark \markup { \box "B" }     s2.*3 s4.
  \mark \markup { \box "C" } s4. s2.*3 s2
  \mark \markup { \box "D" } s4  s2.*4
  \mark \markup { \box "E" }     s2.*4 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'8 | 8. b16 a8 fis e d | fis4 e8 d4 a'8 | d8. e16 d8 a g fis |
  a4.~4 8 | e fis g g fis e | fis fis g a4 d8 | cis8. b16 c8 \bar "|" \break e d b |
  a4.~4. \bar "||" | d4.^\markup\smallCaps Chorus. ~8 a fis | a4. g | cis4.~8 \bar "|" \break b g |
  b4. a | fis8 8 8 8 e d | fis4. e | g8 8 8 8 fis e |
  g4. fis | a d | b e4 d8 | cis4. 4 8 | d4.~4
}

alto = \relative {
  \autoBeamOff
  fis'8 | 8. g16 fis8 d d d | cis4 8 d4 8 | fis8. g16 fis8 d cis d |
  cis4.~4 8 | 8 d e e d cis | d d cis d4 fis8 | e8. 16 8 8 8 8 |
  e4(fis8 g4.) | fis8. 16 8 8 8 d | fis4. e | g8. 16 8 8 8 e |
  eis4. fis | d8 8 8 8 a a | d4. cis | 8 8 8 e d cis |
  e4. d | fis8 8 8 4. | g8 8 8 4. | 8 8 8 8 8 8 | fis4.~4
}

tenor = \relative {
  \autoBeamOff
  d'8 | 8. 16 8 a g fis | a4 g8 fis4 8 | a8. 16 8 8 8 8 |
  a4.~4 8 | 8 8 8 8 8 8 | 8 8 8 4 8 | 8. gis16 a8  cis b d |
  cis4(d8 e4.) | a,8. 16 8 8 d a | d4. cis | e8. 16 8 8 cis8 8 |
  d4. 4. | a8 8 8 8 g fis | a4. 4. | e8 8 8 a a a |
  a4. 4. | d8 8 8 a4(d8) | 8 8 8 b4(e8) | 8 8 8 8 8 a, | 4.~4
}

bass = \relative {
  \autoBeamOff
  d8 | 8. 16 8 8 8 8 | a4 8 d4 8 | 8. 16 8 fis e d |
  a4.~4 8 | 8 8 8 8 8 8 | d d e fis4 d8 | e8. 16 8 8 8 8 |
  a4.~4. | d,8. 16 8 8 8 8 | a'4. 4. | 8. 16 8 a,8 8 8 |
  d4. 4. | 8 8 8 8 8 8 | a4. 4. | 8 8 8 8 8 8 |
  d4. 4. | 8 8 8 4. | g8 8 8 4. | a8 8 8 8 8 8 | d,4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Won -- der -- ful Sa -- viour,
  won -- der -- ful Sa -- viour,
  Watch -- ing so ten -- der -- ley o'er us!
  Shed -- ding bright sun -- shine be -- fore us;
  Glo -- ry, hon -- our, and praise __ to __ His name!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ - _
  _ _ _ - _ _ _ _
  Won -- der -- ful, won -- der -- ful _ _
  won -- der -- ful, won -- der ful _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  Glo -- ry and praise, glo -- ry and praise,
  Glo -- ry and praise to His name!
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  He lead -- eth His own with a gen -- tle hand,
  A won -- der -- ful Sa -- viour have we!
  Oh, where is the friend that on earth we can find
  So full of com -- pas -- sion as He? __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He lead -- eth His own with a gen -- tle hand,
  When -- ev -- er we faint by the way;
  How pre -- cious the bless -- ings that fall from His throne,
  Like dew at the close of the day! __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He lead -- eth His own with a gen -- tle hand,
  And when we are sor -- row- -- o -- pressed
  He ga -- thers us un -- der the shade of His love,
  And there on His bo -- som we rest.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  He lead -- eth His own with a gen -- tle hand;
  Amd oh, when our jour -- ney is o'er,
  What rap -- ture in E -- den to sit at His feet,
  And praise Him when time is no more!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "He " lead "eth " "His " "own " "with " "a " gen "tle " "hand, "
  "\nA " won der "ful " Sa "viour " "have " "we! "
  "\nOh, " "where " "is " "the " "friend " "that " "on " "earth " "we " "can " "find "
  "\nSo " "full " "of " com pas "sion " "as " "He? " 
  "\nWon" der "ful " Sa "viour, "
  "\nwon" der "ful " Sa "viour, "
  "\nWatch" "ing " "so " ten der "ley " "o'er " "us! "
  "\nShed" "ding " "bright " sun "shine " be "fore " "us; "
  "\nGlo" "ry, " hon "our, " "and " "praise "  "to "  "His " "name!\n"

  \set stanza = "2."
  "\nHe " lead "eth " "His " "own " "with " "a " gen "tle " "hand, "
  "\nWhen" ev "er " "we " "faint " "by " "the " "way; "
  "\nHow " pre "cious " "the " bless "ings " "that " "fall " "from " "His " "throne, "
  "\nLike " "dew " "at " "the " "close " "of " "the " "day! " 
  "\nWon" der "ful " Sa "viour, "
  "\nwon" der "ful " Sa "viour, "
  "\nWatch" "ing " "so " ten der "ley " "o'er " "us! "
  "\nShed" "ding " "bright " sun "shine " be "fore " "us; "
  "\nGlo" "ry, " hon "our, " "and " "praise "  "to "  "His " "name!\n"

  \set stanza = "3."
  "\nHe " lead "eth " "His " "own " "with " "a " gen "tle " "hand, "
  "\nAnd " "when " "we " "are " sor row- o "pressed "
  "\nHe " ga "thers " "us " un "der " "the " "shade " "of " "His " "love, "
  "\nAnd " "there " "on " "His " bo "som " "we " "rest. "
  "\nWon" der "ful " Sa "viour, "
  "\nwon" der "ful " Sa "viour, "
  "\nWatch" "ing " "so " ten der "ley " "o'er " "us! "
  "\nShed" "ding " "bright " sun "shine " be "fore " "us; "
  "\nGlo" "ry, " hon "our, " "and " "praise "  "to "  "His " "name!\n"

  \set stanza = "4."
  "\nHe " lead "eth " "His " "own " "with " "a " gen "tle " "hand; "
  "\nAmd " "oh, " "when " "our " jour "ney " "is " "o'er, "
  "\nWhat " rap "ture " "in " E "den " "to " "sit " "at " "His " "feet, "
  "\nAnd " "praise " "Him " "when " "time " "is " "no " "more! "
  "\nWon" der "ful " Sa "viour, "
  "\nwon" der "ful " Sa "viour, "
  "\nWatch" "ing " "so " ten der "ley " "o'er " "us! "
  "\nShed" "ding " "bright " sun "shine " be "fore " "us; "
  "\nGlo" "ry, " hon "our, " "and " "praise "  "to "  "His " "name! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "He " lead "eth " "His " "own " "with " "a " gen "tle " "hand, "
  "\nA " won der "ful " Sa "viour " "have " "we! "
  "\nOh, " "where " "is " "the " "friend " "that " "on " "earth " "we " "can " "find "
  "\nSo " "full " "of " com pas "sion " "as " "He? " 
  "\nWon" der "ful, " won der "ful " Sa "viour, "
  "\nwon" der "ful, " won der "ful " Sa "viour, "
  "\nWatch" "ing " "so " ten der "ley " "o'er " "us! "
  "\nShed" "ding " "bright " sun "shine " be "fore " "us; "
  "\nGlo" "ry, " "and " "praise, " glo "ry, " "and " "praise, "
  "\nGlo" "ry " "and " "praise " "to " "His " "name!\n"

  \set stanza = "2."
  "\nHe " lead "eth " "His " "own " "with " "a " gen "tle " "hand, "
  "\nWhen" ev "er " "we " "faint " "by " "the " "way; "
  "\nHow " pre "cious " "the " bless "ings " "that " "fall " "from " "His " "throne, "
  "\nLike " "dew " "at " "the " "close " "of " "the " "day! " 
  "\nWon" der "ful, " won der "ful " Sa "viour, "
  "\nwon" der "ful, " won der "ful " Sa "viour, "
  "\nWatch" "ing " "so " ten der "ley " "o'er " "us! "
  "\nShed" "ding " "bright " sun "shine " be "fore " "us; "
  "\nGlo" "ry, " "and " "praise, " glo "ry, " "and " "praise, "
  "\nGlo" "ry " "and " "praise " "to " "His " "name!\n"

  \set stanza = "3."
  "\nHe " lead "eth " "His " "own " "with " "a " gen "tle " "hand, "
  "\nAnd " "when " "we " "are " sor row- o "pressed "
  "\nHe " ga "thers " "us " un "der " "the " "shade " "of " "His " "love, "
  "\nAnd " "there " "on " "His " bo "som " "we " "rest. "
  "\nWon" der "ful, " won der "ful " Sa "viour, "
  "\nwon" der "ful, " won der "ful " Sa "viour, "
  "\nWatch" "ing " "so " ten der "ley " "o'er " "us! "
  "\nShed" "ding " "bright " sun "shine " be "fore " "us; "
  "\nGlo" "ry, " "and " "praise, " glo "ry, " "and " "praise, "
  "\nGlo" "ry " "and " "praise " "to " "His " "name!\n"

  \set stanza = "4."
  "\nHe " lead "eth " "His " "own " "with " "a " gen "tle " "hand; "
  "\nAmd " "oh, " "when " "our " jour "ney " "is " "o'er, "
  "\nWhat " rap "ture " "in " E "den " "to " "sit " "at " "His " "feet, "
  "\nAnd " "praise " "Him " "when " "time " "is " "no " "more! "
  "\nWon" der "ful, " won der "ful " Sa "viour, "
  "\nwon" der "ful, " won der "ful " Sa "viour, "
  "\nWatch" "ing " "so " ten der "ley " "o'er " "us! "
  "\nShed" "ding " "bright " sun "shine " be "fore " "us; "
  "\nGlo" "ry, " "and " "praise, " glo "ry, " "and " "praise, "
  "\nGlo" "ry " "and " "praise " "to " "His " "name! "
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

#(set-global-staff-size 18)

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
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
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

#(set-global-staff-size 20)

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
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
