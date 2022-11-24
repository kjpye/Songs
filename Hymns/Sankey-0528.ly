\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus Leads!"
  subtitle    = "Sankey No. 528"
  subsubtitle = "C. C. No. 257"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "John R. Clements."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*4
  \textMark \markup { \box \bold "B" }    s2.*4
  \textMark \markup { \box \bold "C" }    s2.*3
  \textMark \markup { \box \bold "D" }    s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'8^\markup\italic Andante. c | b4. a8 d, a' | g2 8 a | g4(fis) a8 b | a4(g) b8 c |
  b4. a8 d, a' | g2 8 8 | fis4(c') b8. a16 | g2 8 8 |
  a4. gis8 a ais | b2 8 8 | c4. b8 c cis |
  d2 8 8 | 4. 8 8 c | 4(b) g8 8 | a4(d,^\markup\italic rit. ) b'8. a16 | g2
}

auto  = { \partCombineAutomatic }
apart = { \partCombineApart     }
pcc   = { \partCombineChords    }
  
alto = \relative {
  \autoBeamOff
  \apart r4 | R2. | R2. | d'8 8 4 r4 | 8 8 4 r4 |
  R2. | R2. | d8 8 fis4 r4 | d8 8 4 r |
  f8 8 8 r fis r | g8 8 4 r4 | f8 8 8 r fis r |
  \auto g8 8 4 8 8 | 4. 8 8 8 | 2 \apart r4 | fis8 (fis d4) \auto d8. 16 | 2
}

tenor = \relative {
  \autoBeamOff
  d'8 e | d4. c8 8 8 | b2 8 c | b4(a) c8 d | c4(b) d8 e |
  d4. 8 8 8 | b2 8 8 | a4(e') d8. c16 | b2 8 8 |
  c4. b8 c cis | d2 g,8 8 | a4. gis8 a ais |
  b2 8 8 | f'4. 8 8 e | 4(d) b8 8 | c2 d8. c16 | b2
}

bass = \relative {
  \autoBeamOff
  \apart r4 | R2. | R2. | d8 8 4 r | g8 8 4 r |
  R2. | R2. | d8 8 4 r | g8 8 4 r |
  d8 8 8 r d r | g g g4 r | d8 8 8 r d r |
  g8 8 4 \auto 8 8 | b4. 8 8 g | g2 \apart r4 | \auto d8 8 4 8. 16 | \pcc <g, g'>2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
  Je -- sus leads, Je -- sus leads!
  Je -- sus leads, Je -- sus leads!
  Though the mists hang o'er the way,
  Or the flock 'mid dan -- ger feeds,
  _ _ _ _ _ _ _
  Je -- sus leads, _ _ _
}

chorusMenSingle = \lyricmode {
  Je -- sus leads, Je -- sus leads!
  Je -- sus leads, Je -- sus leads!
  Though the mists hang o'er the way,
  Or the flock 'mid dan -- ger feeds,
  _ _ _ _ _ _ _
  Je -- sus leads, _ _ _
  Je -- sus leads, Je -- sus leads!
  Je -- sus leads, Je -- sus leads!
  All the way, __ be -- fore, He's trod --
  And he now __ the flock pre -- cedes;
  _ _ _ _ _ _ _
  Je -- sus leads, _ _ _
  Je -- sus leads, Je -- sus leads!
  Je -- sus leads, Je -- sus leads!
  When we reach __ the Jor -- dan's tide, __
  Where life's boun -- d'ry- line re -- cedes,
  _ _ _ _ _ _ _
  Je -- sus leads, _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Like a shep -- herd, ten -- der, true,
  Je -- sus leads, __ Je -- sus leads! __
  Dai -- ly finds us pas -- tures new,
  Je -- sus leads, __ Je -- sus leads! __
  Tho' the mists __ hang o'er the way, __
  Or the flock __ 'mid dan -- ger feeds, __
  He will watch them lest they stray—
  Je -- sus leads, __ Je -- sus leads! __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  All a -- long life's rug -- ged road
  Je -- sus leads, __ Je -- sus leads! __
  Till we reach yon blest a -- bode,
  Je -- sus leads, __ Je -- sus leads! __
  All the way, __ be -- fore, He's trod --
  And he now __ the flock pre -- cedes; __
  Safe in -- to the fold of God __
  Je -- sus leads, __ Je -- sus leads! __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thro' the sun -- lit ways of life
  Je -- sus leads, __ Je -- sus leads! __
  Thro' the war -- rings and the strife
  Je -- sus leads, __ Je -- sus leads! __
  When we reach __ the Jor -- dan's tide, __
  Where life's boun -- d'ry- line re -- cedes, __
  He will turn the waves a -- side—
  Je -- sus leads, __ Je -- sus leads! __
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  Like a shep -- herd, ten -- der, true,
  Je -- sus leads, __ Je -- sus leads! __
  Dai -- ly finds us pas -- tures new,
  Je -- sus leads, __ Je -- sus leads! __
  Tho' the mists __ hang o'er the way, __
  Or the flock __ 'mid dan -- ger feeds, __
  He will watch them lest they stray—
  Je -- sus leads, __ Je -- sus leads! __

  \set stanza = "2."
  All a -- long life's rug -- ged road
  Je -- sus leads, __ Je -- sus leads! __
  Till we reach yon blest a -- bode,
  Je -- sus leads, __ Je -- sus leads! __
  All the way, __ be -- fore, He's trod --
  And he now __ the flock pre -- cedes; __
  Safe in -- to the fold of God __
  Je -- sus leads, __ Je -- sus leads! __

  \set stanza = "3."
  Thro' the sun -- lit ways of life
  Je -- sus leads, __ Je -- sus leads! __
  Thro' the war -- rings and the strife
  Je -- sus leads, __ Je -- sus leads! __
  When we reach __ the Jor -- dan's tide, __
  Where life's boun -- d'ry- line re -- cedes, __
  He will turn the waves a -- side—
  Je -- sus leads, __ Je -- sus leads! __
}

wordsMidiMen = \lyricmode {
  Je -- sus leads, Je -- sus leads!
  Je -- sus leads, Je -- sus leads!
  Though the mists hang o'er the way,
  Or the flock 'mid dan -- ger feeds,
  He will watch them lest they stray—
  Je -- sus leads, Je -- sus leads.
  
  Je -- sus leads, Je -- sus leads!
  Je -- sus leads, Je -- sus leads!
  All the way, __ be -- fore, He's trod --
  And he now __ the flock pre -- cedes;
  Safe in -- to the fold of God
  Je -- sus leads, Je -- sus leads,

  Je -- sus leads, Je -- sus leads!
  Je -- sus leads, Je -- sus leads!
  When we reach __ the Jor -- dan's tide, __
  Where life's boun -- d'ry- line re -- cedes,
  He will turn the waves a -- side—
  Je -- sus leads, Je -- sus leads.
}

\book {
  \bookOutputSuffix "midi-st"
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
  \bookOutputSuffix "midi-ab"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
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
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
            \addlyrics \wordsMidiMen
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
            \new NullVoice = alignerB { \bass }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerB \chorusMen
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
            \new NullVoice = alignerB { \repeat unfold \verses \bass }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerB { \repeat unfold \verses \chorusMenSingle }
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
