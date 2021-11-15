\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus, Saviour, on Thy Breast."
  subtitle    = "Sankey No. 299"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Hubert P. Main."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Grace J. Frances."
  meter       = \markup\smallCaps "7s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 6/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1.*4
  \mark \markup { \box "B" } s1.*4
  \mark \markup { \box "C" } s1.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'2 e4 g(c) a
  g2 e4 g2.
  a2 c4 g(e) c
  d2 e4 d2.
  e2 f4 g(c) a % B
  g2 e4 g2.
  d4(g) b b(a) g
  g2 fis4 g2.
  g2^\markup\smallCaps Refrain. a4 g2 c4 % C
  g2 a4 g2.
  e'4(c) a g(e) c
  e2 d4 c2.
}

alto = \relative {
  \autoBeamOff
  c'2 4 e2 f4
  e2 c4 2.
  c2 f4 e(c) c
  b2 c4 b2.
  c2 d4 e2 f4 % B
  e2 c4 2.
  d2 f4 e2 4
  d2 c4 b2(d4) \bar "||"
  c4(e) dis e2 4 % C
  c4(e) dis e2(f4)
  e4(g) f e(c) c
  c4(a) b c2.
}

tenor = \relative {
  \autoBeamOff
  e2 g4 c(g) a8[b]
  c2 g4 e2.
  f2 a4 c(g) g
  g2 4 2.
  g2 4 c(g) a % B
  c2 g4 e2.
  g2 d'4 c2 ais4
  b4(a) a g2(f4)
  e4(g) fis g4(c) g % C
  e4(g) fis g4(b2)
  c2 4 4(g) e
  g2 f4 e2.
}

bass = \relative {
  \autoBeamOff
  c2 4 2 4
  c2 4 2.
  f,2 4 c'2 e4
  g2 4 2.
  c,2 4 2 4 % B
  c2 4 2.
  b2 g4 c2 cis4
  d2 4 g,2.
  c2 4 2 4 % C
  c2(b4) e2(d4)
  c4(e) f c2 8[a]
  g2 4 c2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  May Thine an -- gels si -- gil keep
  While I lay me down to sleep.
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus, Sa -- viour, on Thy breast
  I would lay me down to rest;
  While mine eye -- lids gent -- ly close,
  Thou wilt grant me calm re -- pose.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Lord, this way -- ward heart for -- give,
  Teach me more like You to live;
  Ev -- 'ry e -- vil thought sub -- due;
  May Thy grace my strength re -- new.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When the day of life is past,
  And the twi -- light comes at last,
  When I cross the nar -- row sea,
  I shall still a -- bide in Thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus, " Sa "viour, " "on " "Thy " "breast "
  "\nI " "would " "lay " "me " "down " "to " "rest; "
  "\nWhile " "mine " eye "lids " gent "ly " "close, "
  "\nThou " "wilt " "grant " "me " "calm " re "pose. "
  "\nMay " "Thine " an "gels " si "gil " "keep "
  "\nWhile " "I " "lay " "me " "down " "to " "sleep. "

  \set stanza = "2."
  "\nLord, " "this " way "ward " "heart " for "give, "
  "\nTeach " "me " "more " "like " "You " "to " "live; "
  "\nEv" "'ry " e "vil " "thought " sub "due; "
  "\nMay " "Thy " "grace " "my " "strength " re "new. "
  "\nMay " "Thine " an "gels " si "gil " "keep "
  "\nWhile " "I " "lay " "me " "down " "to " "sleep. "

  \set stanza = "3."
  "\nWhen " "the " "day " "of " "life " "is " "past, "
  "\nAnd " "the " twi "light " "comes " "at " "last, "
  "\nWhen " "I " "cross " "the " nar "row " "sea, "
  "\nI " "shall " "still " a "bide " "in " "Thee. "
  "\nMay " "Thine " an "gels " si "gil " "keep "
  "\nWhile " "I " "lay " "me " "down " "to " "sleep. "
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
