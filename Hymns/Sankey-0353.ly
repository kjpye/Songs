\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

#(set-global-staff-size 19)

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Story Must be Told."
  subtitle    = "Sankey No. 353"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "8.7. D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}


global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*4
  \mark \markup { \box "B" }    s1*5
  \mark \markup { \box "C" }    s1*4 s2.
  \mark \markup { \box "D" } s4 s1*4
  \mark \markup { \box "E" }    s1*5 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'8. c16
  b4 a e fis
  e4 d2 g8. a16
  b4 d a d
  d2. b8. c16
  b4 a e fis % B
  e4 d2 g8. a16
  b4 d b4. a8
  g2. 8. 16
  g4 c c e
  e4 d2 8. 16 % C
  d4 a b cis
  d2. b8. c16
  b4 a e fis
  e4 d2 \bar "|" \break g8 a
  b8 d4. b a8 % D
  g2. \bar "||" b4^\markup\italic Chorus.
  d8 4. b4 c
  d2. b4
  c8 4. b4 a % E
  b2. d,4
  e4 fis g a
  b4 cis d\fermata g,
  b8 g4. 4 fis
  g2.
}

alto = \relative {
  \autoBeamOff
  d'8. e16
  d4 c c c
  b4 2 d8. 16
  d4 g fis fis
  g2. d8. e16
  d4 c c c % B
  b4 2 d8. e16
  d4 4 g4. fis8
  g2. d8. 16
  e4 4 4 g
  g4 2 8. 16 % C
  fis4 4 g g
  fis2. d8. 16
  d4 c c c
  b4 2 d8 e
  d8 g4. 4. fis8 % D
  g2. d4
  g8 4. d4 4
  g4 fis g d
  d8 4. g4 fis % E
  g2. b,4
  c4 4 b d
  d4 g fis\fermata g
  g8 d4. e4 d
  d2.
}

tenor = \relative {
  \autoBeamOff
  g8. 16
  fis4 4 4 a
  g4 2 b8. c16
  d4 4 4 c
  b2. g8. 16
  fis4 4 4 a % B
  g4 2 8. 16
  g4 b d4. c8
  b2. 8. 16
  c4 fis fis c
  c4 b2 8. 16 % C
  a4 d cis a
  a2. fis8. 16
  fis4 4 4 a
  g4 2 8 8
  g8 b4. d c8 % D
  b2. g4
  b8 4. g4 a
  b4 c d g,
  a8 4. d4 4 % E
  d2. g,4
  g4 a b a
  g4 a a\fermata d
  d8 b4. a4 c
  b2.
}

bass = \relative {
  \autoBeamOff
  g8. 16
  d4 4 4 4
  g,4 2 g'8. 16
  g4 b, d d
  g2. 8. 16
  d4 4 4 4 % B
  g,4 2 b8. c16
  d4 4 4. 8
  g2. 8. 16
  c,4 4 4 4
  g'4 2 8. 16
  a4 4 a, a
  d2. 8. 16
  d4 4 4 4
  g,4 2 b8 c
  d8 4. 4. 8
  g2. 4
  g8 4. 4 4
  g4 a b g
  d8 4. 4 4 % E
  g2. g,4
  c4 a e' fis
  g4 e d\fermata b
  d8 4. 4 4
  g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  The sto -- ry must be told,
  The sto -- ry must be told,
  That Je -- sus died for sin -- ners lost,
  The sto -- ry must be told.
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  be told
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, the pre -- cious gos -- pel sto -- ry,
  How it tells of love to all!
  How the Sa -- viour in com -- pas -- sion
  Died to save us from the Fall;
  How He came to seek the lost ones,
  And to bring them to His fold:
  Let is hast -- en to pro -- claim it,
  For the sto -- ry \markup\italic must be told.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, the bless -- ed gos -- pel sto -- ry
  Of His meek and low -- ly birth,
  And the wel -- come of the an -- gels
  When they sang good -- will to earth—
  Of the cross on which He suf -- fered,
  As by pro -- phets seen of old;
  Of His death and res -- ur -- rec -- tion,
  Let the sto -- ry \markup\italic now be told.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, the won -- drous gos -- pel sto -- ry!
  There is life in ev -- 'ry word;
  There is hope and con -- so -- la -- tion
  Where the mes -- sage sweet is heard;
  Let us tell it to the wea -- ry,
  And its beau -- ties all un -- fold;
  'Tis the on -- ly guide to hea -- ven,
  And the sto -- ry \markup\italic must be told.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Oh, " "the " pre "cious " gos "pel " sto "ry, "
  "\nHow " "it " "tells " "of " "love " "to " "all! "
  "\nHow " "the " Sa "viour " "in " com pas "sion "
  "\nDied " "to " "save " "us " "from " "the " "Fall; "
  "\nHow " "He " "came " "to " "seek " "the " "lost " "ones, "
  "\nAnd " "to " "bring " "them " "to " "His " "fold: "
  "\nLet " "is " hast "en " "to " pro "claim " "it, "
  "\nFor " "the " sto "ry " "must " "be " "told. "
  "\nThe " sto "ry " "must " "be " "told, "
  "\nThe " sto "ry " "must " "be " "told, "
  "\nThat " Je "sus " "died " "for " sin "ners " "lost, "
  "\nThe " sto "ry " "must " "be " "told. "

  \set stanza = "2."
  "\nOh, " "the " bless "ed " gos "pel " sto "ry "
  "\nOf " "His " "meek " "and " low "ly " "birth, "
  "\nAnd " "the " wel "come " "of " "the " an "gels "
  "\nWhen " "they " "sang " good "will " "to " "earth— "
  "\nOf " "the " "cross " "on " "which " "He " suf "fered, "
  "\nAs " "by " pro "phets " "seen " "of " "old; "
  "\nOf " "His " "death " "and " res ur rec "tion, "
  "\nLet " "the " sto "ry " "now " "be " "told. "
  "\nThe " sto "ry " "must " "be " "told, "
  "\nThe " sto "ry " "must " "be " "told, "
  "\nThat " Je "sus " "died " "for " sin "ners " "lost, "
  "\nThe " sto "ry " "must " "be " "told. "

  \set stanza = "3."
  "\nOh, " "the " won "drous " gos "pel " sto "ry! "
  "\nThere " "is " "life " "in " ev "'ry " "word; "
  "\nThere " "is " "hope " "and " con so la "tion "
  "\nWhere " "the " mes "sage " "sweet " "is " "heard; "
  "\nLet " "us " "tell " "it " "to " "the " wea "ry, "
  "\nAnd " "its " beau "ties " "all " un "fold; "
  "\n'Tis " "the " on "ly " "guide " "to " hea "ven, "
  "\nAnd " "the " sto "ry " "must " "be " "told. "
  "\nThe " sto "ry " "must " "be " "told, "
  "\nThe " sto "ry " "must " "be " "told, "
  "\nThat " Je "sus " "died " "for " sin "ners " "lost, "
  "\nThe " sto "ry " "must " "be " "told. "
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "the " pre "cious " gos "pel " sto "ry, "
  "\nHow " "it " "tells " "of " "love " "to " "all! "
  "\nHow " "the " Sa "viour " "in " com pas "sion "
  "\nDied " "to " "save " "us " "from " "the " "Fall; "
  "\nHow " "He " "came " "to " "seek " "the " "lost " "ones, "
  "\nAnd " "to " "bring " "them " "to " "His " "fold: "
  "\nLet " "is " hast "en " "to " pro "claim " "it, "
  "\nFor " "the " sto "ry " "must " "be " "told. "
  "\nThe " sto "ry " "must " "be " "told, " "be " "told, "
  "\nThe " sto "ry " "must " "be " "told, "
  "\nThat " Je "sus " "died " "for " sin "ners " "lost, "
  "\nThe " sto "ry " "must " "be " "told. "

  \set stanza = "2."
  "\nOh, " "the " bless "ed " gos "pel " sto "ry "
  "\nOf " "His " "meek " "and " low "ly " "birth, "
  "\nAnd " "the " wel "come " "of " "the " an "gels "
  "\nWhen " "they " "sang " good "will " "to " "earth— "
  "\nOf " "the " "cross " "on " "which " "He " suf "fered, "
  "\nAs " "by " pro "phets " "seen " "of " "old; "
  "\nOf " "His " "death " "and " res ur rec "tion, "
  "\nLet " "the " sto "ry " "now " "be " "told. "
  "\nThe " sto "ry " "must " "be " "told, " "be " "told, "
  "\nThe " sto "ry " "must " "be " "told, "
  "\nThat " Je "sus " "died " "for " sin "ners " "lost, "
  "\nThe " sto "ry " "must " "be " "told. "

  \set stanza = "3."
  "\nOh, " "the " won "drous " gos "pel " sto "ry! "
  "\nThere " "is " "life " "in " ev "'ry " "word; "
  "\nThere " "is " "hope " "and " con so la "tion "
  "\nWhere " "the " mes "sage " "sweet " "is " "heard; "
  "\nLet " "us " "tell " "it " "to " "the " wea "ry, "
  "\nAnd " "its " beau "ties " "all " un "fold; "
  "\n'Tis " "the " on "ly " "guide " "to " hea "ven, "
  "\nAnd " "the " sto "ry " "must " "be " "told. "
  "\nThe " sto "ry " "must " "be " "told, " "be " "told, "
  "\nThe " sto "ry " "must " "be " "told, "
  "\nThat " Je "sus " "died " "for " sin "ners " "lost, "
  "\nThe " sto "ry " "must " "be " "told. "
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
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT \tenor
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
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
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\repeat unfold \verses \chorusMen}
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
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\repeat unfold \verses \chorusMen}
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
