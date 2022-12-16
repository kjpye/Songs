\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Rock of Ages!"
  subtitle    = "Sankey No. 558"
  subsubtitle = "N. H. No. 17"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Hubert P Main."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. L. Hastings."
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 3/4
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s2.*3 s2 s8
  \textMark \markup { \box \bold "B" } s8 s2.*3 s2
  \textMark \markup { \box \bold "C" } s4 s2.*3 s2 s8
  \textMark \markup { \box \bold "D" } s8 s2.*3 s2 s8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'8 | 8 c bes4. g8 | aes8 f g4. ees8 | aes c ees4. c8 | bes2 r8 \bar "|" \break
  c8 | 8 g aes4. bes8 | 8 f g4 ees' | d4. bes8 g a | bes2 \bar "||" \break
  bes4^\markup\smallCaps Chorus. | aes4. c8 bes aes | g aes bes4 ees, | c'4. ees8 d c | bes ees bes4 r8 \bar "|" \break
  g8 | aes bes g4. ees'8 | d des c4. ees8 | 4. bes8 aes f | ees2 r8
}

alto = \relative {
  \autoBeamOff
  ees'8 | 8 8 4. 8 | f d ees4. 8 | 8 8 4. 8 | ees2 r8
  ees8 | e8 8 f4. 8 | 8 d ees4 g | f4. d8 ees ees | d2
  g4 | f4. aes8 g f | ees8 f g4 ees | 4. 8 8 8 | 8 g8 4 r8
  ees8 | f g ees4. g8 | f ees8 4. f8 | g4. 8 f d | ees2 r8
}

tenor = \relative {
  \autoBeamOff
  g8 | 8 aes g4. bes8 | 8 8 4. g8 | aes8 8 c4. aes8 | g2 r8
  g8 | 8 c8 4. bes8 | 8 8 4 4 | 4. 8 c c | bes2
  r4 | r8 bes8 8 8 8 8 | 8 8 ees4 r | r8 aes,8 8 c bes aes | g bes ees4 r8
  bes8 | 8 8 4. 8 | 8 8 aes4. c8 | bes4. 8 8 aes | g2 r8
}

bass = \relative {
  \autoBeamOff
  ees8 | 8 8 4. 8 | bes8 8 ees4. 8 | c aes8 4. c8 | ees2 r8
  c8 | 8 8 f4. d8 | d bes ees4 4 | f4. 8 8 8 | bes,2
  r4 | r8 bes8 8 8 d d | ees8 8 4 r | r8 aes8 8 8 aes,8 8 | ees'8 8 4 r8
  ees8 bes8 8 ees4. 8 | f8 g aes4. a8 | bes4. 8 bes,8 8 | ees2 r8
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  O Rock of A -- ges cleft for me.
  In Thee my soul se -- cure -- ly hide!
  My tower of strength, I fly to Thee,
  And safe -- ly there a -- bide.
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  O Rock _ _ _ _ _ _
  In Thee _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  My soul at last a rest hath found,
  A rest that will not fail;
  A sure and cer -- tain anch -- 'rage ground
  In Christ with -- in the vail.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I'll hide me in this re -- fuge strong,
  From ev -- 'ry stor -- my blast;
  And sit and sing un -- til the waves
  Of wrath are o -- ver -- past.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Ye com -- fort -- less and tem -- pest- tost,
  By sins and woes op -- prest:
  Ye temp -- ted, trou -- bled, ru -- ined, lost,
  Come, find in Christ your rest!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Ye thirs -- ty, from this smit -- ten Rock
  Life's crys -- tal wa -- ters spring;
  There hide from ev -- 'ry stor -- my shock,
  And rest, and drink, and sing!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "My " "soul " "at " "last " "a " "rest " "hath " "found, "
  "\nA " "rest " "that " "will " "not " "fail; "
  "\nA " "sure " "and " cer "tain " anch "'rage " "ground "
  "\nIn " "Christ " with "in " "the " "vail. "
  "\nO " "Rock " "of " A "ges " "cleft " "for " "me. "
  "\nIn " "Thee " "my " "soul " se cure "ly " "hide! "
  "\nMy " "tower " "of " "strength, " "I " "fly " "to " "Thee, "
  "\nAnd " safe "ly " "there " a "bide.\n"

  \set stanza = "2."
  "\nI'll " "hide " "me " "in " "this " re "fuge " "strong, "
  "\nFrom " ev "'ry " stor "my " "blast; "
  "\nAnd " "sit " "and " "sing " un "til " "the " "waves "
  "\nOf " "wrath " "are " o ver "past. "
  "\nO " "Rock " "of " A "ges " "cleft " "for " "me. "
  "\nIn " "Thee " "my " "soul " se cure "ly " "hide! "
  "\nMy " "tower " "of " "strength, " "I " "fly " "to " "Thee, "
  "\nAnd " safe "ly " "there " a "bide.\n"

  \set stanza = "3."
  "\nYe " com fort "less " "and " tem pest "tost, "
  "\nBy " "sins " "and " "woes " op "prest: "
  "\nYe " temp "ted, " trou "bled, " ru "ined, " "lost, "
  "\nCome, " "find " "in " "Christ " "your " "rest! "
  "\nO " "Rock " "of " A "ges " "cleft " "for " "me. "
  "\nIn " "Thee " "my " "soul " se cure "ly " "hide! "
  "\nMy " "tower " "of " "strength, " "I " "fly " "to " "Thee, "
  "\nAnd " safe "ly " "there " a "bide.\n"

  \set stanza = "4."
  "\nYe " thirs "ty, " "from " "this " smit "ten " "Rock "
  "\nLife's " crys "tal " wa "ters " "spring; "
  "\nThere " "hide " "from " ev "'ry " stor "my " "shock, "
  "\nAnd " "rest, " "and " "drink, " "and " "sing! "
  "\nO " "Rock " "of " A "ges " "cleft " "for " "me. "
  "\nIn " "Thee " "my " "soul " se cure "ly " "hide! "
  "\nMy " "tower " "of " "strength, " "I " "fly " "to " "Thee, "
  "\nAnd " safe "ly " "there " a "bide. "
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
