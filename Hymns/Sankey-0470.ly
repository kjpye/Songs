\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Shall I let Him in?"
  subtitle    = "Sankey No. 470"
  subsubtitle = "Sankey 880 No. 508"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "H. R. Palmer."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
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
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
  \mark \markup { \box "D" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 8 8 g f | c'4 8 a4. | g4 8 f4 g8 | a4.~4. |
  a8 8 8 8 g f | c'4 8 a4 g8 | f4 8 a4 g8 | f4.~4. |
  g4 8 8 fis g | bes4 a8 g4. | a4 8 8 gis a | c4 bes8 a4. |
  c4 8 8 b c | d8 e f c4 a8 | f4 8 a4 g8 | f4.~4. |
}

alto = \relative {
  \autoBeamOff
  f'4 8 8 c c | e4 8 f4. | e4 8 d4 e8 | f4.~4. |
  f8 8 8 8 c c | e4 8 f4 e8 | d4 8 f4 c8 | c4.~4. |
  e4 8 8 dis e | g4 f8 e4. | f4 8 8 8 8 | f4 e8 f4. |
  f4 8 8 8 8 | f8 8 8 4 c8 | d4 8 f4 c8 | c4.~4. |
}

tenor = \relative {
  \autoBeamOff
  c'4 8 8 bes a | c4 8 4. | bes4 8 a4 c8 | c4.~4. |
  c8 8 8 8 bes a | c4 8 4 bes8 | a4 8 c4 bes8 | a4.~4. |
  c4 8 8 8 8 | c4 8 4. | c4 8 8 b c | f4 c8 4. |
  a4 8 8 gis a | bes8 c d a4 f8 | a4 8 c4 bes8 | a4.~4. |
}

bass = \relative {
  \autoBeamOff
  f4 8 8 g a | g4 c,8 f4. | c4 8 d4 c8 | f4.~4. |
  f8 8 8 8 g a | g4 c,8 f4 c8 | d4 8 c4 8 | f4.~4. |
  c4 8 8 8 8 | c4 8 4. | f4 8 8 8 8 | a4 g8 f4. |
  f4 8 8 8 8 | f8 8 8 4 8 | d4 8 c4 8 | f4.~4. |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Christ is knock -- ing at my sad heart;
  Shall I let Him in?
  Pa -- tient -- ly knock -- ing at my sad heart,
  Oh, shall I let Him in?
  Cold and proud is my heart with sin:
  Dark and cheer -- less is all with -- in:
  Christ is bid -- ding me turn un -- to Him;
  Oh, shall I let Him in?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Shall I send Him the lov -- ing word?
  Shall I let Him in?
  Meek -- ly ac -- cept -- ing my gra -- cious Lord,
  Oh, shall I let Him in?
  He can in -- fi -- nite love im -- part;
  He can par -- don this reb -- el heart:
  Shall I bid Him for ev -- er de -- part,—
  Or shall I let Him in?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Yes, I'll o -- pen this proud heart's door;
  I will let Him in!
  Glad -- ly I'll wel -- come Him ev -- er -- more,
  Oh yes, I'll let Him in!
  Bles -- sed Sa -- viour, a -- bide with me;
  Cares and tri -- als will light -- er be;
  I am safe if I'm on -- ly with Thee;
  Come in, O Lord, come in!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Christ " "is " knock "ing " "at " "my " "sad " "heart; "
  "\nShall " "I " "let " "Him " "in? "
  "\nPa" tient "ly " knock "ing " "at " "my " "sad " "heart, "
  "\nOh, " "shall " "I " "let " "Him " "in? "
  "\nCold " "and " "proud " "is " "my " "heart " "with " "sin: "
  "\nDark " "and " cheer "less " "is " "all " with "in: "
  "\nChrist " "is " bid "ding " "me " "turn " un "to " "Him; "
  "\nOh, " "shall " "I " "let " "Him " "in?\n"

  \set stanza = "2."
  "\nShall " "I " "send " "Him " "the " lov "ing " "word? "
  "\nShall " "I " "let " "Him " "in? "
  "\nMeek" "ly " ac cept "ing " "my " gra "cious " "Lord, "
  "\nOh, " "shall " "I " "let " "Him " "in? "
  "\nHe " "can " in fi "nite " "love " im "part; "
  "\nHe " "can " par "don " "this " reb "el " "heart: "
  "\nShall " "I " "bid " "Him " "for " ev "er " de "part,— "
  "\nOr " "shall " "I " "let " "Him " "in?\n"

  \set stanza = "3."
  "\nYes, " "I'll " o "pen " "this " "proud " "heart's " "door; "
  "\nI " "will " "let " "Him " "in! "
  "\nGlad" "ly " "I'll " wel "come " "Him " ev er "more, "
  "\nOh " "yes, " "I'll " "let " "Him " "in! "
  "\nBles" "sed " Sa "viour, " a "bide " "with " "me; "
  "\nCares " "and " tri "als " "will " light "er " "be; "
  "\nI " "am " "safe " "if " "I'm " on "ly " "with " "Thee; "
  "\nCome " "in, " "O " "Lord, " "come " "in! "
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
