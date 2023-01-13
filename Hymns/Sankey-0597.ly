\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus, I my Cross have Taken."
  subtitle    = "Sankey No. 597"
  subsubtitle = "Sankey 880 No. 265"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "H. Smart."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. F. Lyte."
  meter       = \markup\smallCaps "8.7.D"
  piece       = \markup\smallCaps "Bethany."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \textMark \markup { \box \bold "C" } s1*4
  \textMark \markup { \box \bold "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

dynamicsPrint = {
}

dynamicsOmit = {
}

soprano = \relative {
  \autoBeamOff
  a'4 d c a | f4. g8 f4 e | d c f a | c bes8[a] g2 |
  a4 d c a | f4. g8 f4 e | d c f bes | a g f2 |
  g4 c c b | a a a g | g e' d a | c b c2 |
  e4 c f c | bes4. c8 bes4 a | d4 c bes a | g4 4 f2 |
}

alto = \relative {
  \autoBeamOff
  f'4 4 4 e | f4 d c c | g g c f | f g8[f] e2 |
  c4 f g e | d b c c | g g c f | f e f2 |
  e4 g g g | f f f e | g g f d | e d e2 |
  g4 e f f | f g f f | f fis g f | f e f2 |
}

tenor = \relative {
  \autoBeamOff
  c'4 bes c c | a bes a g | e e f c' | c d g,(c) |
  a4 a g c | a g g g | e e f f | c'4 8[bes] a2 |
  c4 c d d | c d c c | c bes a a | g d' c2 |
  c4 c c a | d c c c | bes a bes c | d c8[bes] a2 |
}

bass = \relative {
  \autoBeamOff
  f4 bes, a c | d bes c c | bes bes a f | a bes c2 |
  f4 d e c | d g, c c | bes bes a d | c c f2 |
  c4 e g g, | a b c c | e c f f | g g c,2 |
  c'4 bes a f | d e f f | bes, d g, a | bes c f2 |
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
  Je -- sus, I my cross have ta -- ken,
  All to leave and fol -- low Thee;
  Na -- ked, poor, des -- pised, for -- sa -- ken,
  Thou, from hence, my all, shalt be.
  Per -- ish ev -- 'ry fond am -- bi -- tion,
  All I've sought, or hoped, or known.
  Yet how rich is my con -- di -- tion!
  God and heaven are still my own.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Let the world des -- pise and leave me,
  They have left my Sa -- viour too;
  Hu -- man hearts and looks de -- ceive me;
  Thou art not like them, un -- true.
  Amd while Thou shalt smile up -- on me,
  God of wis -- dom, love and might,
  Foes may hate, and friends may scorn me:
  Show Thy face, and all is bright.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Man may trou -- ble and dis -- tress me,
  'Twill but drive me to Thy breast;
  Life with tri -- als hard may press mem
  Heaven will bring me sweet -- er rest.
  Oh, 'tis not in grief to harm me,
  While Thy love is left to me:
  Oh, 'twere not in joy to charm em,
  Were that joy un -- blest by Thee!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus, " "I " "my " "cross " "have " ta "ken, "
  "\nAll " "to " "leave " "and " fol "low " "Thee; "
  "\nNa" "ked, " "poor, " des "pised, " for sa "ken, "
  "\nThou, " "from " "hence, " "my " "all, " "shalt " "be. "
  "\nPer" "ish " ev "'ry " "fond " am bi "tion, "
  "\nAll " "I've " "sought, " "or " "hoped, " "or " "known. "
  "\nYet " "how " "rich " "is " "my " con di "tion! "
  "\nGod " "and " "heaven " "are " "still " "my " "own.\n"

  \set stanza = "2."
  "\nLet " "the " "world " des "pise " "and " "leave " "me, "
  "\nThey " "have " "left " "my " Sa "viour " "too; "
  "\nHu" "man " "hearts " "and " "looks " de "ceive " "me; "
  "\nThou " "art " "not " "like " "them, " un "true. "
  "\nAmd " "while " "Thou " "shalt " "smile " up "on " "me, "
  "\nGod " "of " wis "dom, " "love " "and " "might, "
  "\nFoes " "may " "hate, " "and " "friends " "may " "scorn " "me: "
  "\nShow " "Thy " "face, " "and " "all " "is " "bright.\n"

  \set stanza = "3."
  "\nMan " "may " trou "ble " "and " dis "tress " "me, "
  "\n'Twill " "but " "drive " "me " "to " "Thy " "breast; "
  "\nLife " "with " tri "als " "hard " "may " "press " "mem "
  "\nHeaven " "will " "bring " "me " sweet "er " "rest. "
  "\nOh, " "'tis " "not " "in " "grief " "to " "harm " "me, "
  "\nWhile " "Thy " "love " "is " "left " "to " "me: "
  "\nOh, " "'twere " "not " "in " "joy " "to " "charm " "em, "
  "\nWere " "that " "joy " un "blest " "by " "Thee! "
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
            \new Dynamics \with {alignAboveContext = women} \dynamicsPrint
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
            \new Dynamics \dynamicsOmit
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      #(layout-set-staff-size 20)
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
            \new Dynamics \with {alignAboveContext = women} \repeat unfold \verses \dynamicsPrint
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
      #(layout-set-staff-size 20)
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
