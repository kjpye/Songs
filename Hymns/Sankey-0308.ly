\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, Welcome, Hour of Prayer!"
  subtitle    = "Sankey No. 308"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "John H. Yates."
  meter       = \markup\smallCaps "D.S.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*3 s4. s4
  \mark \markup { \box "C" } s8 s2.*3 s4. s4
  \mark \markup { \box "D" } s8 s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8
  c'4 aes8 ees4 d8
  ees4.~4 8
  des'4 c8 bes4 ees,8
  c'4.~4 \bar "|" \break 8
  c4 g8 aes4 8 % B
  bes4 f8 g4 8
  aes4 c8 4 bes8
  aes4.~4 \bar "|" \break ees8
  bes'4 a8 bes4 c8 % C
  aes4.~4 8
  aes4 8 g4 f8
  ees4.~4 \bar "|" \break 8
  f4 aes8 g4 bes8 % D
  aes4 bes8 c4 des8
  c4 aes8 4 g8
  aes4.~4
}

alto = \relative {
  \autoBeamOff
  c'8
  ees4 c8 4 b8
  c4.~4 ees8
  ees4 8 4 8
  ees4.~4 8
  e4 8 f4 ees8 % B
  d4 8 ees4 8
  ees4 8 8[d] des
  c4.~4 ees8
  des4 c8 ees4 8 % C
  c4.~4 ges'8
  f4 8 ees4 des8
  c4.~4 8
  des4 d8 ees4 8 % D
  ees4 8 4 f8
  ees4 8 4 des8
  c4.~4
}

tenor = \relative {
  \autoBeamOff
  aes8
  aes4 ees8 aes4 f8
  aes4.~4 c8
  bes4 aes8 g4 bes8
  aes4.~4 8
  g4 c8 4 8 % B
  bes4 8 4 8
  aes4 8 8[f] g
  aes4.~4 ees8
  g4 8 4 8 % C
  aes4.~4 8
  aes4 8 4 8
  aes4.~4 8
  aes4 bes8 4 g8 % D
  aes4 g8 aes4 8
  aes4 c8 4 bes8
  aes4.~4
}

bass = \relative {
  \autoBeamOff
  aes,8
  aes4 8 4 8
  aes4.~4 8
  ees'4 8 4 g8
  aes4.~4 aes,8
  c4 8 f4 8 % B
  bes,4 8 ees4 des8
  c4 aes8 ees'4 8
  aes,4.~4 ees'8
  ees4 8 4 8 % C
  f4.~4 c8
  des4 8 4 8
  aes4.~4 8
  des4 bes8 ees4 des8 % D
  c4 ees8 aes4 des,8
  ees4 8 4 8
  aes,4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, wel -- come, hour of prayer!
  So full of peace and rest!
  Here we may cast our ev -- 'ry care
  Up -- on the Sa -- viour's breast;
  We leave the world with -- out,
  To sit at Je -- sus feet;
  His love can ban -- ish ev -- 'ry doubt,
  And make our joys com -- plete.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  We see each oth -- er's face,
  And take each oth -- er's hand;
  We sing our hymns of sa -- viong grace,
  And of the Bet -- ter Land;
  And while we feast with Him
  Who is the Truth, the Light,
  May we a -- gain our lamps re -- trim,
  To shine forth in the night.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thrice wel -- come, pre -- cious hour,
  Of faith, and hope, and love,
  When we may feel the Spi -- rit's power
  Des -- cend -- ing from a -- bove!
  He dries the fall -- ing tears
  That will, un -- bid -- den start;
  He scat -- ters all our an -- xious fears,
  And fills each wait -- ing heart.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O Thou that hear -- est prayer,
  How sad this life would be—
  How hard each hea -- vy cross to bear,
  Could we not come to Thee!
  When faith seems lost in fear,
  And hopes are dimmed by care,
  In thee we find re -- fresh -- ing cheer,
  Thou bles -- sed hour of prayer!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " wel "come, " "hour " "of " "prayer! "
  "\nSo " "full " "of " "peace " "and " "rest! "
  "\nHere " "we " "may " "cast " "our " ev "'ry " "care "
  "\nUp" "on " "the " Sa "viour's " "breast; "
  "\nWe " "leave " "the " "world " with "out, "
  "\nTo " "sit " "at " Je "sus " "feet; "
  "\nHis " "love " "can " ban "ish " ev "'ry " "doubt, "
  "\nAnd " "make " "our " "joys " com "plete. "

  \set stanza = "2."
  "\nWe " "see " "each " oth "er's " "face, "
  "\nAnd " "take " "each " oth "er's " "hand; "
  "\nWe " "sing " "our " "hymns " "of " sa "viong " "grace, "
  "\nAnd " "of " "the " Bet "ter " "Land; "
  "\nAnd " "while " "we " "feast " "with " "Him "
  "\nWho " "is " "the " "Truth, " "the " "Light, "
  "\nMay " "we " a "gain " "our " "lamps " re "trim, "
  "\nTo " "shine " "forth " "in " "the " "night. "

  \set stanza = "3."
  "\nThrice " wel "come, " pre "cious " "hour, "
  "\nOf " "faith, " "and " "hope, " "and " "love, "
  "\nWhen " "we " "may " "feel " "the " Spi "rit's " "power "
  "\nDes" cend "ing " "from " a "bove! "
  "\nHe " "dries " "the " fall "ing " "tears "
  "\nThat " "will, " un bid "den " "start; "
  "\nHe " scat "ters " "all " "our " an "xious " "fears, "
  "\nAnd " "fills " "each " wait "ing " "heart. "

  \set stanza = "4."
  "\nO " "Thou " "that " hear "est " "prayer, "
  "\nHow " "sad " "this " "life " "would " "be— "
  "\nHow " "hard " "each " hea "vy " "cross " "to " "bear, "
  "\nCould " "we " "not " "come " "to " "Thee! "
  "\nWhen " "faith " "seems " "lost " "in " "fear, "
  "\nAnd " "hopes " "are " "dimmed " "by " "care, "
  "\nIn " "thee " "we " "find " re fresh "ing " "cheer, "
  "\nThou " bles "sed " "hour " "of " "prayer! "
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
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
