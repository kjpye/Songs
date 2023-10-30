\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Many Mansions."
  subtitle    = "Sankey No. 722"
  subsubtitle = "N. H. No. 38"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Charles Bruce."
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*6 s2
  \textMark \markup { \box \bold "B" } s4 s2.*6 s2
  \textMark \markup { \box \bold "C" } s4 s1*2
  \textMark \markup { \box \bold "D" }    s1*2 s2
  \textMark \markup { \box \bold "E" } s2 s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \time 3/4 \partial 4
  d'4 | d(b') a | g(fis) e | d(e) fis | g2 4 | c2 b4 | b(a) e | a2 \bar "|" \break
  d,4 | b'(a) b | d2 b4 | a(g) a | b2 d4 | d(b) g | a(b) a | g2
  \section \sectionLabel \markup{\smallCaps "Chorus." "(John xiv. 2)."} \break
  \time 4/4 \partial 4
  g8 a | b4. 8 8 8  a8. fis16 | g4 fis2 8 8 |
  g4. 8 a a g8. a16 | b4 2 8 8 | c4. 8 \bar "|" \break
  c8 cis d8. a16 | c4 b2 a4 | g4 8. 16 8 a g a | g2.
}

alto = \relative {
  \autoBeamOff
  b4 | b(d) d | 2 c4 | 2 4 | b2 d4 | e2 d4 | cis2 4 | d2
  b4 | d2 4 | 2 4 | c(b) d | 2 4 | 4(g) d | fis2 d4 | 2 \section
  \time 4/4 \partial 4
  e8 fis | g4. 8 8 8 fis8. e16 | 4 dis2 8 8 |
  e4. 8 8 8 8. 16 | dis4 2 e8 8 | 4. 8
  e8 8 d8. 16 | e4 d2 e4 | d4 8. 16 c8 c c c | b2.
}

tenor = \relative {
  \autoBeamOff
  g4 | 2 fis4 | g2 4 | fis(g) a | g2 b4 | g2 4 | g(a) a | fis2
  g4 | g(c) b | a2 g4 | fis(g) fis | g2 b4 | b(d) d | c(d) c | b2 \section
  b8 8 | 4. 8 8 8 c8. 16 | b4 2 8 8 |
  b4. 8 c c g8. e16 | fis4 2 g8 8 | a4. 8
  a8 8 8. fis16 | g4 2 c4 | b4 8. 16 a8 a g a | g2.
}

bass = \relative {
  \autoBeamOff
  g,4 | 2 a4 | b2 c4 | d2 4 | g2 4 | 2 4 | e2 a4 | d,2
  g4 | 2 4 | fis2 g4 | d(e) d | g2 4 | 2 b,4 | d2 4 | g2 \section
  e8 8 | 4. 8 8 g, a8. 16 | b4 2 8 8 |
  e4. 8 c8 8 8. 16 | b4 2 e8 8 | a,4. 8 |
  a'8 g fis8. d16 | g4 2 c,4 | d4 8. 16 8 8 8 8 | g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  “In my Fa -- ther's house are ma -- ny man -- sions;
  If it were not so I would have told you;
  In my Fa -- ther's house are ma -- ny man -- sions,
  I go to pre -- pare a place for you!”
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  How oft our souls are lift -- ed up,
  When clouds are dark and drear;
  For Je -- sus comes, and kind -- ly speaks
  These lov -- ing words of cheer:
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  How oft a -- mid our dai -- ly toil,
  With anx -- ious care op -- prest.
  We hear a -- gain the pre -- cious word
  That tells of joy and rest:
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, may our faith in Him be strong,
  Who feels our ev -- 'ry care,
  And will for us— as He hath said—
  A place in heav'n pre -- pare!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Then let us work, and watch, and pray,
  Re -- ly -- ing on the love
  Of Him who now pre -- pares a place
  For us in heav'n a -- bove.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "How " "oft " "our " "souls " "are " lift "ed " "up, "
  "\nWhen " "clouds " "are " "dark " "and " "drear; "
  "\nFor " Je "sus " "comes, " "and " kind "ly " "speaks "
  "\nThese " lov "ing " "words " "of " "cheer: "
  "\n“In " "my " Fa "ther's " "house " "are " ma "ny " man "sions; "
  "\nIf " "it " "were " "not " "so " "I " "would " "have " "told " "you; "
  "\nIn " "my " Fa "ther's " "house " "are " ma "ny " man "sions, "
  "\nI " "go " "to " pre "pare " "a " "place " "for " "you!”\n"

  \set stanza = "2."
  "\nHow " "oft " a "mid " "our " dai "ly " "toil, "
  "\nWith " anx "ious " "care " op "prest. "
  "\nWe " "hear " a "gain " "the " pre "cious " "word "
  "\nThat " "tells " "of " "joy " "and " "rest: "
  "\n“In " "my " Fa "ther's " "house " "are " ma "ny " man "sions; "
  "\nIf " "it " "were " "not " "so " "I " "would " "have " "told " "you; "
  "\nIn " "my " Fa "ther's " "house " "are " ma "ny " man "sions, "
  "\nI " "go " "to " pre "pare " "a " "place " "for " "you!”\n"

  \set stanza = "3."
  "\nOh, " "may " "our " "faith " "in " "Him " "be " "strong, "
  "\nWho " "feels " "our " ev "'ry " "care, "
  "\nAnd " "will " "for " "us— " "as " "He " "hath " "said— "
  "\nA " "place " "in " "heav'n " pre "pare! "
  "\n“In " "my " Fa "ther's " "house " "are " ma "ny " man "sions; "
  "\nIf " "it " "were " "not " "so " "I " "would " "have " "told " "you; "
  "\nIn " "my " Fa "ther's " "house " "are " ma "ny " man "sions, "
  "\nI " "go " "to " pre "pare " "a " "place " "for " "you!”\n"

  \set stanza = "4."
  "\nThen " "let " "us " "work, " "and " "watch, " "and " "pray, "
  "\nRe" ly "ing " "on " "the " "love "
  "\nOf " "Him " "who " "now " pre "pares " "a " "place "
  "\nFor " "us " "in " "heav'n " a "bove. "
  "\n“In " "my " Fa "ther's " "house " "are " ma "ny " man "sions; "
  "\nIf " "it " "were " "not " "so " "I " "would " "have " "told " "you; "
  "\nIn " "my " Fa "ther's " "house " "are " ma "ny " man "sions, "
  "\nI " "go " "to " pre "pare " "a " "place " "for " "you!” "
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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

#(set-global-staff-size 20)

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
