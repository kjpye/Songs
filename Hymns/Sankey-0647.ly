\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Resting in the Everlasting Arms!"
  subtitle    = "Sankey No. 647"
  subsubtitle = "C. C. No. 264"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "A. J. Showalter."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. A. Hoffman."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key a \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }    s1*3
  \textMark \markup { \box \bold "B" }    s1*3 s2
  \textMark \markup { \box \bold "C" } s2 s1*3
  \textMark \markup { \box \bold "D" }    s1*3
  \textMark \markup { \box \bold "E" }    s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  cis''4 4 8. b16 a4 | b4 4 8. a16 fis4 | e4 4 a8. gis16 a8 b |
  cis4 4 b2 | cis4 4 8. b16 a4 | b b b8. a16 fis4 | e4 4 \bar "|"
  a8. gis16 a8 b | cis4 b a2 |
  \section \sectionLabel \markup\smallCaps Refrain.
  cis2 a | a fis |
  e4 a8. gis16 a4 b | cis4 4 b2 | cis2 a |
  a2 fis | e4 4 a8. gis16 a8 b | cis4 b a2 |
}

alto = \relative {
  \autoBeamOff
  e'4 4 8. d16 cis4 | d4 4 8. 16 4 | cis4 4 8. b16 cis8 d |
  e4 4 2 | 4 4 8. d16 cis4 | d4 4 8. 16 4 | cis4 4
  cis8. b16 cis8 d | e4 d cis2 \section | e2 cis | fis d |
  cis4 8. d16 e4 4 | 4 4 2 | 2 cis |
  fis2 d | cis4 4 8. b16 cis8 d | e4 d cis2 |
}

tenor = \relative {
  \autoBeamOff
  a4 4 8. 16 4 | fis4 4 8. 16 a4 | 4 4 8. 16 8 8 |
  a4 4 gis2 | a4 4 8. 16 4 | fis4 4 8. 16 a4 | 4 4
  e8. 16 8 8 | a4 gis a2 \section 4 8. 16 4 4 | 4 8. 16 4 4 |
  a4 e8. 16 a4 gis | a a gis2 | a4 8. 16 4 4 |
  a4 8. 16 4 4 | 4 4 e8. 16 8 8 | a4 gis a2 |
}

bass = \relative {
  \autoBeamOff
  a,4 4 8. 16 4 | d4 4 8. 16 4 | a4 4 8. 16 8 8 |
  a'4 4 e2 | a,4 4 8. 16 4 | d4 4 8. 16 4 | e4 4
  e8. 16 8 8 | 4 4 a,2 \section | a'4 8. 16 4 4 | d,4 8. 16 4 4 |
  a4 8. b16 cis4 e | a4 4 e2 | a4 8. 16 4 4 |
  d,4 8. 16 4 4 | e4 4 8. 16 8 8 | 4 4 a,2 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Rest -- ing, rest -- ing,
  Safe and se -- cure from all a -- larms;
  Rest -- ing, rest -- ing,
  Rest -- ing in the ev -- er -- last -- ing arms!
}

chorusMen = \lyricmode {
  \small
  \repeat unfold 38 _
  Rest -- ing in Je -- sus. rest -- ing in Je -- sus,
  _ _ _ _ _ _ _ _
  Rest -- ing in Je -- sus. rest -- ing in Je -- sus,
  _ _ _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, what fel -- low -- ship; oh, what joy is mine,
  Rest -- ing in the ev -- er -- last -- ing arms!
  Oh, what bled -- sed -- ness; oh, what peace Di -- vine,
  Rest -- ing in the ev -- er  -- last -- ing arms!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, how safe am I in this pil -- grim way,
  Rest -- ing in the ev -- er -- last -- ing arms!
  Oh, how bright the path grows from day to day,
  Rest -- ing in the ev -- er -- last -- ing arms!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  What have I to dread, what have I to fear,
  Rest -- ing in the ev -- er -- last -- ing arms!
  I have per -- fect peace with my Sa -- viour near,
  Rest -- ing in the ev -- er -- last -- ing arms!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  Oh, what fel -- low -- ship; oh, what joy is mine,
  Rest -- ing in the ev -- er -- last -- ing arms!
  Oh, what bled -- sed -- ness; oh, what peace Di -- vine,
  Rest -- ing in the ev -- er  -- last -- ing arms!
  Rest -- ing, rest -- ing,
  Safe and se -- cure from all a -- larms;
  Rest -- ing, rest -- ing,
  Rest -- ing in the ev -- er -- last -- ing arms!

  \set stanza = "2."
  Oh, how safe am I in this pil -- grim way,
  Rest -- ing in the ev -- er -- last -- ing arms!
  Oh, how bright the path grows from day to day,
  Rest -- ing in the ev -- er -- last -- ing arms!
  Rest -- ing, rest -- ing,
  Safe and se -- cure from all a -- larms;
  Rest -- ing, rest -- ing,
  Rest -- ing in the ev -- er -- last -- ing arms!

  \set stanza = "3."
  What have I to dread, what have I to fear,
  Rest -- ing in the ev -- er -- last -- ing arms!
  I have per -- fect peace with my Sa -- viour near,
  Rest -- ing in the ev -- er -- last -- ing arms!
  Rest -- ing, rest -- ing,
  Safe and se -- cure from all a -- larms;
  Rest -- ing, rest -- ing,
  Rest -- ing in the ev -- er -- last -- ing arms!
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  Oh, what fel -- low -- ship; oh, what joy is mine,
  Rest -- ing in the ev -- er -- last -- ing arms!
  Oh, what bled -- sed -- ness; oh, what peace Di -- vine,
  Rest -- ing in the ev -- er  -- last -- ing arms!
  Rest -- ing in Je -- sus, rest -- ing in Je -- sus,
  Safe and se -- cure from all a -- larms;
  Rest -- ing in Je -- sus, rest -- ing in Je -- sus,
  Rest -- ing in the ev -- er -- last -- ing arms!

  \set stanza = "2."
  Oh, how safe am I in this pil -- grim way,
  Rest -- ing in the ev -- er -- last -- ing arms!
  Oh, how bright the path grows from day to day,
  Rest -- ing in the ev -- er -- last -- ing arms!
  Rest -- ing in Je -- sus, rest -- ing in Je -- sus,
  Safe and se -- cure from all a -- larms;
  Rest -- ing in Je -- sus, rest -- ing in Je -- sus,
  Rest -- ing in the ev -- er -- last -- ing arms!

  \set stanza = "3."
  What have I to dread, what have I to fear,
  Rest -- ing in the ev -- er -- last -- ing arms!
  I have per -- fect peace with my Sa -- viour near,
  Rest -- ing in the ev -- er -- last -- ing arms!
  Rest -- ing in Je -- sus, rest -- ing in Je -- sus,
  Safe and se -- cure from all a -- larms;
  Rest -- ing in Je -- sus, rest -- ing in Je -- sus,
  Rest -- ing in the ev -- er -- last -- ing arms!
}

\book {
  \bookOutputSuffix "midi-women"
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
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
