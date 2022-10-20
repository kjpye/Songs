\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Coming To-Day!"
  subtitle    = "Sankey No. 479"
  subsubtitle = "N. H. No. 3"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*3
  \mark \markup { \box "B" } s2.*3
  \mark \markup { \box "C" } s2.*3
  \mark \markup { \box "D" } s2.*3
  \mark \markup { \box "E" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'8 d c e g4 | a8 c4 g8 e4 | 8 d c e g4 |
  a8 g e d4. | e8 d c e g4 | a8 c4 g8 e4 |
  g8 c d e c\fermata e, | g f e c4. \bar "||" | g'8^\markup\smallCaps Refrain. c c c b4 |
  g8 d' d d c4 | 8 8 8 8 b a | e'8. 16 8 4. |
  e8 d e d c4 | d8 c a a g4 | e8 f g a c4 | b8 a b c4. |
}

alto = \relative {
  \autoBeamOff
  c'8 8 8 8 e4 | c8 4 8 4 | 8 8 8 8 e4 |
  f8 e c b4. | c8 8 8 8 e4 | c8 4 8 4 |
  e8 8 f g e\omit\fermata c | e d b c4. | e8 8 c e d4 |
  f8 8 8 e8 4 | 8 8 8 8 8 a | gis8. 16 8 4. |
  g8 f g f e4 | f8 8 8 8 e4 | c8 d e f8 4 | 8 8 8 e4. |
}

tenor = \relative {
  \autoBeamOff
  g8 f e g c4 | 8 e4 c8 g4 | 8 f e g c4 |
  c8 8 g8 4. | 8 f e g c4 | 8 e4 c8 g4 |
  c8 g g g g\fermata g | g g f e4. | c'8 g g g g4 |
  b8 8 8 c8 4 | a8 8 8 8 d c | b8. 16 8 4. |
  b8 8 8 c8 4 | a8 8 c c c4 | g8 8 c c a4 | g8 8 8 4. |
}

bass = \relative {
  \autoBeamOff
  c8 8 8 8 4 | f8 4 e8 c4 | 8 8 8 8 4 |
  c8 8 8 g4. | c8 8 8 8 4 | f8 4 e8 c4 |
  c8 8 8 8 8\omit\fermata 8 | g8 8 8 c4. | 8 8 e g8 4 |
  g8 8 8 c,8 4 | a'8 8 8 8 gis a | e8. 16 8 4. |
  g8 8 8 c,8 4 | f8 8 8 c8 4 | 8 8 8 f8 4 | g8 8 g, c4. |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Je -- sus is call -- ing,
  Je -- sus is call -- ing,
  Why dost thou lin -- ger?
  why tar -- ry a -- way?
  Come to Him quick -- ly,
  say to Him glad -- ly,
  "\"Lord," I am com -- ing, com -- ing to -- "day!\""
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Out in the des -- ert, seek -- ing, seek -- ing.
  Sin -- ner, 'tis Je -- sus seek -- ing for thee;
  Ten -- der -- ly call -- ing, call -- ing, call -- ing.
  Hith -- er, thou lost one, oh, come un -- to Me!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Still He is wait -- ing, wait -- ing, wait -- ing;
  Oh, what com -- pas -- sion beams in His eye!
  Hear Him re -- peat -- ing, gen -- tly, gen -- tly,
  Come to thy Sa -- viour, oh, why wilt thou die?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Lov -- ing -- ly, plead -- ing, plead -- ing, plead -- ing,
  Mer -- cy, though slight -- ed, bears with thee yet;
  Thou canst be hap -- py, hap -- py, hap -- py,
  Come ere the life -- star for ev -- er shall set.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Out " "in " "the " des "ert, " seek "ing, " seek "ing. "
  "\nSin" "ner, " "'tis " Je "sus " seek "ing " "for " "thee; "
  "\nTen" der "ly " call "ing, " call "ing, " call "ing. "
  "\nHith" "er, " "thou " "lost " "one, " "oh, " "come " un "to " "Me! "
  "\nJe" "sus " "is " call "ing, "
  "\nJe" "sus " "is " call "ing, "
  "\nWhy " "dost " "thou " lin "ger? "
  "\nwhy " tar "ry " a "way? "
  "\nCome " "to " "Him " quick "ly, "
  "\nsay " "to " "Him " glad "ly, "
  "\n\"Lord, " "I " "am " com "ing, " com "ing " to "day!\"\n"

  \set stanza = "2."
  "\nStill " "He " "is " wait "ing, " wait "ing, " wait "ing; "
  "\nOh, " "what " com pas "sion " "beams " "in " "His " "eye! "
  "\nHear " "Him " re peat "ing, " gen "tly, " gen "tly, "
  "\nCome " "to " "thy " Sa "viour, " "oh, " "why " "wilt " "thou " "die? "
  "\nJe" "sus " "is " call "ing, "
  "\nJe" "sus " "is " call "ing, "
  "\nWhy " "dost " "thou " lin "ger? "
  "\nwhy " tar "ry " a "way? "
  "\nCome " "to " "Him " quick "ly, "
  "\nsay " "to " "Him " glad "ly, "
  "\n\"Lord, " "I " "am " com "ing, " com "ing " to "day!\"\n"

  \set stanza = "3."
  "\nLov" ing "ly, " plead "ing, " plead "ing, " plead "ing, "
  "\nMer" "cy, " "though " slight "ed, " "bears " "with " "thee " "yet; "
  "\nThou " "canst " "be " hap "py, " hap "py, " hap "py, "
  "\nCome " "ere " "the " life "star " "for " ev "er " "shall " "set. "
  "\nJe" "sus " "is " call "ing, "
  "\nJe" "sus " "is " call "ing, "
  "\nWhy " "dost " "thou " lin "ger? "
  "\nwhy " tar "ry " a "way? "
  "\nCome " "to " "Him " quick "ly, "
  "\nsay " "to " "Him " glad "ly, "
  "\n\"Lord, " "I " "am " com "ing, " com "ing " to "day!\" "
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
