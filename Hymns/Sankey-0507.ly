\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Onward, Upwardm Homeward!"
  subtitle    = "Sankey No. 507"
  subsubtitle = "Sankey 880 No. 448"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Albert Midlane."
  meter       = \markup\smallCaps "6.5.D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*5
  \mark \markup { \box "B" } s1*5
  \mark \markup { \box "C" } s1*6
  \mark \markup { \box "D" } s1*4
  \mark \markup { \box "E" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'4 4 e e | g2 2 | 4 4 e g | c1 | 4 4 4 4 |
  b2 2 | a4 c b a | g1 | c4 g g gis | a2 2 |
  d4 a b c | b1 | c4 g a b | c2 2 | e4 d c b | c1 \bar "||" |
  d4^\markup\smallCaps Refrain. 4 4 e | f2 2 | c4 4 4 d | e1 |
  d4 c b a | g c c d | e2 d | c1 |
}

alto = \relative {
  \autoBeamOff
  c'4 4 e e | g2 2 | e4 e c d | c1 | e4 4 4 4 |
  e2 d | c4 c f f | e1 | 4 4 4 4 | f2 g |
  fis4 4 g a | g2(f) | e4 g f g | g2 e | g4 f e d | e1 |
  g4 4 4 bes | a2 2 | e4 4 4 a | gis1 |
  a4 4 g f | e4 g e a | g2 f | e1 |
}

tenor = \relative {
  \autoBeamOff
  c4 4 e e | g2 2 | c4 4 g g | e1 | a4 4 4 4 |
  gis2 2 | a4 4 b c | 1 | g4 c c c | 2 cis |
  d4 4 4 4 | 1 | c4 4 4 d | c2 2 | 4 a g g | g1 |
  b4 4 4 c | 2 2 | 4 4 4 a | b1 |
  a4 c c c | c c c c | 2 b | c1 |
}

bass = \relative {
  \autoBeamOff
  c4 4 e e | g2 2 | c,4 4 4 b | a1 | 4 4 4 c |
  e2 2 | f4 4 4 4 | c1 | 4 4 4 4 | f2 e |
  d4 4 4 4 | g1 | a4 e f f | e2 a | e4 f g g, | c1 |
  g'4 4 4 c | f,2 2 | a4 4 4 f | e1 |
  f4 4 4 4 | c e a f | g2 g, | c1 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  On -- ward to the glo -- ry!
  Up -- ward to the prize!
  Home -- ward to the man -- sions
  Far a -- bove the skies!
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  On -- ward, up -- ward, home -- ward!
  Joy -- ful -- ly I flee
  From this world of sor -- row,
  with my Lord to be.
  On -- ward to the glo -- ry;
  Up -- ward to the prize;
  Home -- ward to the man -- sions
  Far a -- bove the skies.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  On -- ward, up -- ward, home -- ward!
  have I had no rest;
  Tread -- ing o'er the de -- sert
  Which my Sa -- viour pressed.
  On -- ward, up -- ward, home -- ward!
  I shall soon be there;
  Soon its joys and plea -- sures
  I, thro' grace shall share.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  On -- ward, up -- ward, home -- ward!
  Come a -- long with me;
  Ye who love the Sa -- viour,
  Bear me com -- pan -- y,
  On -- ward, up -- ward, home -- ward!
  Press with vi -- gour on;
  Yet a lit -- tle mo -- ment,
  And the race is won.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "On" "ward, " up "ward, " home "ward! "
  "\nJoy" ful "ly " "I " "flee "
  "\nFrom " "this " "world " "of " sor "row, "
  "\nwith " "my " "Lord " "to " "be. "
  "\nOn" "ward " "to " "the " glo "ry; "
  "\nUp" "ward " "to " "the " "prize; "
  "\nHome" "ward " "to " "the " man "sions "
  "\nFar " a "bove " "the " "skies. "
  "\nOn" "ward " "to " "the " glo "ry! "
  "\nUp" "ward " "to " "the " "prize! "
  "\nHome" "ward " "to " "the " man "sions "
  "\nFar " a "bove " "the " "skies!\n"

  \set stanza = "2."
  "\nOn" "ward, " up "ward, " home "ward! "
  "\nhave " "I " "had " "no " "rest; "
  "\nTread" "ing " "o'er " "the " de "sert "
  "\nWhich " "my " Sa "viour " "pressed. "
  "\nOn" "ward, " up "ward, " home "ward! "
  "\nI " "shall " "soon " "be " "there; "
  "\nSoon " "its " "joys " "and " plea "sures "
  "\nI, " "thro' " "grace " "shall " "share. "
  "\nOn" "ward " "to " "the " glo "ry! "
  "\nUp" "ward " "to " "the " "prize! "
  "\nHome" "ward " "to " "the " man "sions "
  "\nFar " a "bove " "the " "skies!\n"

  \set stanza = "3."
  "\nOn" "ward, " up "ward, " home "ward! "
  "\nCome " a "long " "with " "me; "
  "\nYe " "who " "love " "the " Sa "viour, "
  "\nBear " "me " com pan "y, "
  "\nOn" "ward, " up "ward, " home "ward! "
  "\nPress " "with " vi "gour " "on; "
  "\nYet " "a " lit "tle " mo "ment, "
  "\nAnd " "the " "race " "is " "won. "
  "\nOn" "ward " "to " "the " glo "ry! "
  "\nUp" "ward " "to " "the " "prize! "
  "\nHome" "ward " "to " "the " man "sions "
  "\nFar " a "bove " "the " "skies! "
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
