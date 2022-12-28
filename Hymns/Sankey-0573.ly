\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Show me Thy Face."
  subtitle    = "Sankey No. 573"
  subsubtitle = "C. C. No. 87"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. P. barnett."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup "From \"Stockwell Gems\""
  meter       = \markup\smallCaps "D.C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }    s1*4 s2.
  \textMark \markup { \box \bold "B" } s4 s1*4
  \textMark \markup { \box \bold "C" }    s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

dynamicsPrint = {
  \override DynamicTextSpanner.style = #'none
  s1 | s2. s4\cresc | s1 | s\dim | s2.
  s4 | s1\cresc | s2.. s8\dim | s1 | s |
  s1\p | s | s | s2.
  s4 | s1\dim | s2.. s8\< s4 s\! s2\> | s2\! s |
}

dynamicsOmit = {
  \override DynamicTextSpanner.style = #'none
  s1 | s2. s4\omit\cresc | s1 | s\omit\dim | s2.
  s4 | s1\omit\cresc | s2.. s8\omit\dim | s1 | s |
  s1\omit\p | s | s | s2.
  s4 | s1\omit\dim | s2.. s8\omit\< s4 s\! s2\omit\> | s2\! s |
}

soprano = \relative {
  \autoBeamOff
  g'2 4 a | bes2 r4 g | bes4 c d4. c8 | bes4. a8 g4 fis | a2 r4 \bar "|" \break
  fis4 | g4. 8 a4. 8 | bes4. 8 c4. 8 | d4. c8 bes4 c | d2 r |
  f,4 8 8 bes4. f8 | g4 bes bes4. g8 | f4 bes c d | c2 r4 \bar "|" \break
  f,4 d'4. c8 bes4. a8 | g4 bes f4. 8 | g4 b c4. d8 | bes2 r |
}

alto = \relative {
  \autoBeamOff
  d'2 4 fis | g2 r4 d | g4 4 fis4. a8 | g4. fis8 g4 d | fis2 r4
  d4 | 4. 8 fis4. 8 | g4. 8 4. 8 | fis4. a8 g4 4 | fis2 r |
  f4 8 8 4. 8 | ees4 g g4. ees8 | d4 f f f | 2 r4
  f4 | fis4. 8 g4. f8 | g4 ees f4. 8 | ees4 4 4. 8 | d2 r |
}

tenor = \relative {
  \autoBeamOff
  bes2 4 d | d2 r4 bes | d4 c a4. d8 | 4. 8 g,4 a | d2 r4
  a4 | bes4. 8 d4. 8 | 4. 8 | ees4. 8 | a,4. d8 4 c | a2 r |
  d4 8 8 4. 8 | ees4 4 4. c8 | bes4 d a bes | a2 r4
  a4 | 4. 8 d4. 8 | bes4 ees d4. 8 | bes4 4 a4. 8 | bes2 r |
}

bass = \relative {
  \autoBeamOff
  g2 4 d | g,2 r4 g' | g ees d4. fis8 | g4. d8 ees4 d | 2 r4
  d4 | g4. 8 d4. 8 | g4. 8 ees4. 8 | d4. fis8 g4 ees | d2 r |
  bes'4 8 8 4. 8 | ees,4 4 4. 8 | bes4 4 f' f | 2 r4
  f8[ees] | d4. 8 4. 8 | ees4 g bes,4. 8 | ees4 g f4. 8 | bes,2 r |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Show me Thy face— one tran -- sient gleam
  Of love -- li -- ness Di -- vine,
  And I shall nev -- er think or dream
  Of o -- ther love save Thine:
  All less -- er light will dark -- en quite,
  All low -- er glo -- ries wane,
  The beau -- ti -- ful of earth will scarce
  Seem beau -- ti -- ful a  -- gain.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Show me Thy face— my faith and love
  Shall hence -- forth fix -- ed be,
  And no -- thing here have power to move
  My soul's se -- ren -- i -- ty.
  My life shall seem a trance, a dream,
  And all I feel and see,
  Il -- lu -- sive, vis -- ion -- a -- ry— Thou
  The one re -- al -- i -- ty!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Show me Thy face— I shall for -- get
  The wea -- ry days of yore,
  The fret -- ting ghosts of vain re -- gret
  Shall haunt my soul no more.
  All doubts and fears for fu -- ture years
  In qui -- et rest sub -- side,
  And naught but blest con -- tent and calm
  With -- in my breast re -- side.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Show me Thy face— the heav -- iest cross
  Will then seem light to bear;
  There will be gain in ev -- 'ry loss,
  And peace with ev -- 'ry care.
  With such light feet the years will fleet,
  Life seem as brief as blest,
  Till I have laid my bur -- den down,
  And en -- tered in -- to rest.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Show " "me " "Thy " "face— " "one " tran "sient " "gleam "
  "\nOf " love li "ness " Di "vine, "
  "\nAnd " "I " "shall " nev "er " "think " "or " "dream "
  "\nOf " o "ther " "love " "save " "Thine: "
  "\nAll " less "er " "light " "will " dark "en " "quite, "
  "\nAll " low "er " glo "ries " "wane, "
  "\nThe " beau ti "ful " "of " "earth " "will " "scarce "
  "\nSeem " beau ti "ful " a "gain.\n"

  \set stanza = "2."
  "\nShow " "me " "Thy " "face— " "my " "faith " "and " "love "
  "\nShall " hence "forth " fix "ed " "be, "
  "\nAnd " no "thing " "here " "have " "power " "to " "move "
  "\nMy " "soul's " se ren i "ty. "
  "\nMy " "life " "shall " "seem " "a " "trance, " "a " "dream, "
  "\nAnd " "all " "I " "feel " "and " "see, "
  "\nIl" lu "sive, " vis ion a "ry— " "Thou "
  "\nThe " "one " re al i "ty!\n"

  \set stanza = "3."
  "\nShow " "me " "Thy " "face— " "I " "shall " for "get "
  "\nThe " wea "ry " "days " "of " "yore, "
  "\nThe " fret "ting " "ghosts " "of " "vain " re "gret "
  "\nShall " "haunt " "my " "soul " "no " "more. "
  "\nAll " "doubts " "and " "fears " "for " fu "ture " "years "
  "\nIn " qui "et " "rest " sub "side, "
  "\nAnd " "naught " "but " "blest " con "tent " "and " "calm "
  "\nWith" "in " "my " "breast " re "side.\n"

  \set stanza = "4."
  "\nShow " "me " "Thy " "face— " "the " heav "iest " "cross "
  "\nWill " "then " "seem " "light " "to " "bear; "
  "\nThere " "will " "be " "gain " "in " ev "'ry " "loss, "
  "\nAnd " "peace " "with " ev "'ry " "care. "
  "\nWith " "such " "light " "feet " "the " "years " "will " "fleet, "
  "\nLife " "seem " "as " "brief " "as " "blest, "
  "\nTill " "I " "have " "laid " "my " bur "den " "down, "
  "\nAnd " en "tered " in "to " "rest. "
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
            \new Dynamics \with {alignAboveContext = soprano} \repeat unfold \verses \dynamicsPrint
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
                                              \wordsFour  \chorus
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
