\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Lord Bless thee and Keep thee."
  subtitle    = "Sankey No. 295"
  subsubtitle = "B.H. No. 137"
  instrument  = "(Written for Mr. Moody's Schools at Northfield.)"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Lucy Rider Meyer."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup "Numbers vi. 24-26."
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
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*4
  \mark \markup { \box "B" }    s2.*5
  \mark \markup { \box "C" }    s2.*6 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'8
  f4. 8 g a
  bes4. a4 f8
  f8 8 8 8 g a
  bes4. a4 16 bes
  c4 8 4 bes8 % B
  a4.~4 f16 g
  a4 c,8 a'4 g8
  f4.~4 c8
  c4. 8 8 8
  d4 c8 4 8 % C
  d4 c8 4 f8
  f4. c4 f8
  a4. 4.
  f4.~4.~
  f4.\omit\dim ~4.~
  f4.~4\omit\p
}

alto = \relative {
  \autoBeamOff
  c'8
  c4. 8 8 f
  f4. 4 c8
  c8 8 8 8 8 f
  f4. 4 16 16
  a4 8 4 f8 % B
  f4.~4 16 16
  f4 c8 e4 8
  f4.~4 a,8
  a4. 8 8 c
  b4 c8 4 8 % C
  b4 c8 4 8
  c4. 4 \partCombineApart  r8
  R2.
  r4 r8 r4 ees8
  d4.\omit\dim des \partCombineAutomatic
  c4.~4\omit\p
}

tenor = \relative {
  \autoBeamOff
  a8
  a4. 8 bes c
  d4. c4 a8
  a8 8 8 8 bes c
  d4. c4 16 d
  ees4 8 4 d8 % B
  c4.~4  a16 b
  c4 a8 c4 bes8
  a4.~4 f8
  f4. 8 8 a
  gis4 a8 4 8 % C
  gis4 a8 4 8
  a4. 4 r8
  R2.
  r4 r8 r4 c8
  bes4._\dim g
  a4.~4\omit\p
}

bass = \relative {
  \autoBeamOff
  f8
  f4. 8 8 8
  f4. 4 8
  f8 8 8 8 8 8
  bes,4. f'4 16 16
  f4 8 4 8 % B
  f4.~4 16 d
  c4 8 4 8
  f4.~4 8
  f4. 8 8 8
  f4 8 4 8 % C
  f4 8 4 8
  f4. 4 r8
  R2.
  r4 r8 r4 a,8
  bes4._\dim 4. f'4.~4\omit\p
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 1

wordsSop = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  and give thee "peace.\"" __
}
  
words = \lyricmode {
  "\"The" Lord bless thee and keep thee:
  the Lord make His face shine up -- on thee,
  and be gra -- cious un -- to thee,
  And be gra -- cious un -- to thee:
  The Lord lift up His coun -- ten -- ance,
  His coun -- ten -- ance up -- on thee,
  and give thee "peace.\""
}
  
wordsMidi = \lyricmode {
  "\"The " "Lord " "bless " "thee " "and " "keep " "thee: "
  "\nthe " "Lord " "make " "His " "face " "shine " up "on " "thee, "
  "\nand " "be " gra "cious " un "to " "thee, "
  "\nAnd " "be " gra "cious " un "to " "thee: "
  "\nThe " "Lord " "lift " "up " "His " coun ten "ance, "
  "\nHis " coun ten "ance " up "on " "thee, "
  "\nand " "give " "thee " "peace.\" "
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
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "alignerS" { \repeat unfold \verses \soprano }
            \new NullVoice = "alignerA" { \repeat unfold \verses \alto }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "alignerA" \words
            \new Lyrics \with {alignAboveContext = women} \lyricsto "alignerS" \wordsSop
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
