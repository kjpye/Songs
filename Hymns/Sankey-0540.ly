\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "He Hideth my Soul."
  subtitle    = "Sankey No. 540"
%  subsubtitle = "Sankey 880 No. "
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
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
  \textMark \markup { \box \bold "A" } s8  s2.*3
  \textMark \markup { \box \bold "B" }     s2.*3 s4.
  \textMark \markup { \box \bold "C" } s4. s2.*3
  \textMark \markup { \box \bold "D" }     s2.*3 s4. s4
  \textMark \markup { \box \bold "E" } s8  s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'8^\markup\italic Allegretto. | 8. g16 fis8 8 e d | b'8. 16 8 a4 8 | 8. g16 fis8 8 g fis |
  e4.~4 a8 | 8. g16 fis8 8 e d | b'8. 16 8 d4 b8 | a8. 16 8 \bar "|" \break
  a8 g e | d4.~4 \bar "||" a'8^\markup\smallCaps Chorus. | cis8. 16 8 4 b16 cis | d8. cis16 b8 a4 8 |
  g8 fis g e b' a | fis4.~4 a8 | d8. 16 8 4 16 16 | e8. d16 8 4\fermata \bar "|" \break
  b8 | a8. 16 8 8 8 8 | 4.~4 b8 | a8. fis16 d8 g8. cis,16 8 | d4.~4
}

alto = \relative {
  \autoBeamOff
  fis'8 | 8. e16 d8 8 8 8 | g8. 16 8 fis4 8 | 8. e16 d8 8 e d |
  cis4.~4 g'8 | fis8. e16 d8 8 8 8 | g8. 16 8 4 8 | fis8. 16 d8
  cis8 8 8 | d4.~4 a'8 | g8. 16 8 4 16 16 | fis8. a16 g8 fis4 8 |
  e8 dis e cis cis cis | d4.~4 fis8 | 8. 16 8 4 16 16 | g8. 16 8 4\fermata
  g8 | fis8. 16 8 e fis g | fis4(g8 a4) g8 | fis8. d16 8 cis8. a16 8 | 4.~4
}

tenor = \relative {
  \autoBeamOff
  a8 | 8. 16 8 8 g fis | d'8. 16 8 4 a8 | 8. 16 8 8 8 8 |
  a4.~4 cis8 | d8. a16 8 8 g fis | d'8. 16 8 b4 d8 | 8. a16 fis8
  e8 8 g | fis4.~4 a8 | e'8. 16 8 4 a,16 16 | 8. 16 d8 4 a8 |
  a8 8 8 8 8 8 | 4.~4 8 | 8. 16 8 4 16 16 | b8. 16 8 4\fermata
  d8 | 8. 16 8 cis d e | d4(cis8 d4) 8 | 8. a16 fis8 e8. g16 8 | fis4.~4
}

bass = \relative {
  \autoBeamOff
  d8 | 8. 16 8 8 8 8 | g,8. 16 8 d'4 8 | 8. 16 8 8 cis d |
  a4.~4 8 | d8. 16 8 8 8 8 | g,8. 16 8 4 8 | a8. 16 8
  a8 8 8 | d4.~4 a'8 | 8. 16 8 4 16 16 | d,8. 16 8 4 8 |
  a8 8 8 8 8 8 | d4.~4 8 | 8. 16 8 4 16 16 | g8. 16 8 4\fermata
  g8 | 8. 16 8 a,8 8 8 | d4(e8 fis4) g,8 | a8. 16 8 8. 16 8 | d4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  He hid -- eth my soul in the cleft of the rock,
  That sha -- dows a dry, thir -- sty land;
  He hid -- eth my life in the depths of His love,
  And co -- vers me there with His hand,
  And co -- vers me there with His hand.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  A won -- der -- ful Sa -- viour is Je -- sus, my Lord,
  A won -- der -- ful Sa -- viour to me;
  He hid -- eth my soul in the cleft of the rock,
  Where riv -- ers of plea -- sure I see.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  A won -- der -- ful Sa -- viour is Je -- sus, my Lord,
  He ta -- keth my bur -- den a -- way;
  He hold -- eth me p, and I shall not be moved,
  He giv -- eth me strength as my day.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  With num -- ber -- less bless -- ings each mo -- ment He crowns,
  And, filled with His good -- ness Di -- vine,
  I sing in my rap -- ture, oh, glo -- ry to God
  For such a re -- deem -- er as mine!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  When clothed in His bright -- ness, trans -- port -- ed I rise,
  To meet Him in clouds of the sky,
  His per -- fect sal -- va -- tion, His won -- der -- ful love,
  I'll shout with the mil -- lions on high.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "A " won der "ful " Sa "viour " "is " Je "sus, " "my " "Lord, "
  "\nA " won der "ful " Sa "viour " "to " "me; "
  "\nHe " hid "eth " "my " "soul " "in " "the " "cleft " "of " "the " "rock, "
  "\nWhere " riv "ers " "of " plea "sure " "I " "see. "
  "\nHe " hid "eth " "my " "soul " "in " "the " "cleft " "of " "the " "rock, "
  "\nThat " sha "dows " "a " "dry, " thir "sty " "land; "
  "\nHe " hid "eth " "my " "life " "in " "the " "depths " "of " "His " "love, "
  "\nAnd " co "vers " "me " "there " "with " "His " "hand, "
  "\nAnd " co "vers " "me " "there " "with " "His " "hand.\n"

  \set stanza = "2."
  "\nA " won der "ful " Sa "viour " "is " Je "sus, " "my " "Lord, "
  "\nHe " ta "keth " "my " bur "den " a "way; "
  "\nHe " hold "eth " "me " "p, " "and " "I " "shall " "not " "be " "moved, "
  "\nHe " giv "eth " "me " "strength " "as " "my " "day. "
  "\nHe " hid "eth " "my " "soul " "in " "the " "cleft " "of " "the " "rock, "
  "\nThat " sha "dows " "a " "dry, " thir "sty " "land; "
  "\nHe " hid "eth " "my " "life " "in " "the " "depths " "of " "His " "love, "
  "\nAnd " co "vers " "me " "there " "with " "His " "hand, "
  "\nAnd " co "vers " "me " "there " "with " "His " "hand.\n"

  \set stanza = "3."
  "\nWith " num ber "less " bless "ings " "each " mo "ment " "He " "crowns, "
  "\nAnd, " "filled " "with " "His " good "ness " Di "vine, "
  "\nI " "sing " "in " "my " rap "ture, " "oh, " glo "ry " "to " "God "
  "\nFor " "such " "a " re deem "er " "as " "mine! "
  "\nHe " hid "eth " "my " "soul " "in " "the " "cleft " "of " "the " "rock, "
  "\nThat " sha "dows " "a " "dry, " thir "sty " "land; "
  "\nHe " hid "eth " "my " "life " "in " "the " "depths " "of " "His " "love, "
  "\nAnd " co "vers " "me " "there " "with " "His " "hand, "
  "\nAnd " co "vers " "me " "there " "with " "His " "hand.\n"

  \set stanza = "4."
  "\nWhen " "clothed " "in " "His " bright "ness, " trans port "ed " "I " "rise, "
  "\nTo " "meet " "Him " "in " "clouds " "of " "the " "sky, "
  "\nHis " per "fect " sal va "tion, " "His " won der "ful " "love, "
  "\nI'll " "shout " "with " "the " mil "lions " "on " "high. "
  "\nHe " hid "eth " "my " "soul " "in " "the " "cleft " "of " "the " "rock, "
  "\nThat " sha "dows " "a " "dry, " thir "sty " "land; "
  "\nHe " hid "eth " "my " "life " "in " "the " "depths " "of " "His " "love, "
  "\nAnd " co "vers " "me " "there " "with " "His " "hand, "
  "\nAnd " co "vers " "me " "there " "with " "His " "hand. "
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
