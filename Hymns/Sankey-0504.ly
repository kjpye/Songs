\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Beloved, now are we the Sons of God."
  subtitle    = "Sankey No. 504"
  subsubtitle = "C. C. No. 52"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "El Nathan."
%  meter       = \markup\smallCaps "meter"
% piece       = \markup\smallCaps "piece"

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
  \mark \markup { \box "A" }     s1*2 s2
  \mark \markup { \box "B" } s2  s1*2
  \mark \markup { \box "C" }     s1*2 s2..
  \mark \markup { \box "D" } s8  s1.*2
  \mark \markup { \box "E" }     s1.*2
  \mark \markup { \box "F" }     s1. s2. s4.
  \mark \markup { \box "G" } s4. s1. s2. s4.
  \mark \markup { \box "H" } s4. s1. s2. s4.
  \mark \markup { \box "I" } s4. s1.*2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \time 4/4
  g'4^\markup\italic Moderato 4 4. c8 | e,8^\< [f g\!] a g4 c | a a \bar "|" \break 4. c8 |
  b8^\> [a g\!] fis g2 | 4 4 4. c8 |
  e,8^\< [f g\!] a g4 c | 4.^\f b8 a[b c] d | c4 b c4.\fermata \bar "||" \partial 8 \time 12/8
  g8^\markup\smallCaps Chorus.
  g4. e c'^\> (4\!) g8 | b4^\> a8 g4\! f8 e4.~8 f g |
  a4^\< 8\! 4 8 c4.~8 b a | a4.-> g2. 4 8 | % E
  d'2.~8 c b b a b | c2.~4. \bar "|" \break g4. |
  e'2.~8 d c c b c | d2.~4. \bar "|" \break 8 c d |
  e4. c2. 8 b c | d4. a2. \bar "|" \break a8^\< d f\! |
  e4.^\f ~4 c8 d4.^\markup\italic rit. ~4 8-> | c2.~4.~4 r8
}

alto = \relative {
  \autoBeamOff
  e'4 4 4. 8 | c8\omit\< [d e\!] f e4 e | f4 4 fis4. 8 |
  g8\omit\> [fis g\!] d8 4(f) | e4 4 4. 8 |
  c8\omit\< [d e\!] f e4 4 | g4.^\f 8 f[g as] f | e4 d8[f] e4.\fermata 8 |
  e4. c e\omit\> ~4\! 8 | g4\omit\> d8 e4\! d8 c4.~8 d e |
  f4\omit\< 8\! 4 8 a4.~8 g f | f4.-> e2. g4 8 | % E
  f4.^\< f^\> f\! f | e8^\< 8 8\! 8 8^\> 8 4.\! 4. |
  g2.~8 f e e d e | f2.~4. 8 e f |
  g4. 2. e8 f g | f4. 2. 8\omit\< f a\! |
  g4.^\f ~4 e8 f4.~4 8-> | e2.~4.~4 r8 |
  
}

tenor = \relative {
  \autoBeamOff
  c'4 4 4. g8 | 4. c8 4 4 | 4 4 4. a8 |
  g8[c b] a b2 | c4 4 4. g8 |
  g4. c8 4 g | c4.\omit\f 8 4. a8 | g4 4 4.\fermata c8 |
  c4. g g~4 8 | 4 8 c4 g8 4.~8 c8 8 |
  c4 8 4 8 4.~8 8 8 | 4. 2. g4 8 | % E
  b4. 4. 4.-> d | c8 g g g g g g4. c |
  c4. 4. 4.-> 4. | b8 8 8 8 8 8 4. 8 c b |
  c4. e2. g,8 8 8 | a4. d2. c8 8 8 |
  c4.\omit\f ~4 8 b4.~4 8 | c2.~4.~4 r8 |
}

bass = \relative {
  \autoBeamOff
  c4 4 4. 8 | 4. 8 4 4 | f f d4. 8 |
  d4. 8 g,2 | c4 4 4. 8 |
  c4. 8 4 4 | e4. 8 f4. 8 | g4 g, c4.\fermata 8 |
  c4. 4. 4.~4 8 | g4 8 4 8 c4.~8 8 8 |
  f4 8 4 8 4.~8 8 8 | c4. 2. g'4 8 | % E
  g4. 4. 4.-> <g, g'> | c8 8 8 8 8 8 4. 4. |
  c4. 4. 4.-> a' | g8 8 8 8 8 8 4. 8 a b |
  c4. c,2. 8 d e | g4. 2. d8 8 8 | g4.~4 8 4.~4 <g, g'>8 | <c g'>2.~4.~4 r8 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Be -- lov -- ed, now are we the sons of God,
  and it doth not yet ap -- pear what we shall be:
  but we know __ that when He shall ap -- pear, __
  we know __ that when He shall ap -- pear, __
  we shall be like Him;
  we shall be like Him,
  for we shall see Him as He is. __
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ know, we know,
  we know that when He shall ap -- pear,
  we know, we know, we know that when He shall ap -- pear,
  _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Sons of God, be -- loved in Je -- sus!
  Oh, the won -- drous word of grace!
  In His Son the Fas -- ther sees us,
  And as sons He gives us place.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Bless -- ed hope, now bright -- ly beam -- ing,
  On our God we soon shall gaze;
  And in light ce -- les -- tial gleam -- ing,
  We shall see our Sa -- viour's face.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  By the power of grace trans -- form -- ing,
  We shall then His im -- age bear;
  Christ Hi pro -- mised word per -- form -- ing,
  We shall then His glo -- ry share.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  Sons of God, be -- loved in Je -- sus!
  Oh, the won -- drous word of grace!
  In His Son the Fas -- ther sees us,
  And as sons He gives us place.
  Be -- lov -- ed, now are we the sons of God,
  and it doth not yet ap -- pear what we shall be:
  but we know __ that when He shall ap -- pear, __
  we know __ that when He shall ap -- pear, __
  we shall be like Him;
  we shall be like Him,
  for we shall see Him as He is. __

  \set stanza = "2."
  Bless -- ed hope, now bright -- ly beam -- ing,
  On our God we soon shall gaze;
  And in light ce -- les -- tial gleam -- ing,
  We shall see our Sa -- viour's face.
  Be -- lov -- ed, now are we the sons of God,
  and it doth not yet ap -- pear what we shall be:
  but we know __ that when He shall ap -- pear, __
  we know __ that when He shall ap -- pear, __
  we shall be like Him;
  we shall be like Him,
  for we shall see Him as He is. __

  \set stanza = "3."
  By the power of grace trans -- form -- ing,
  We shall then His im -- age bear;
  Christ Hi pro -- mised word per -- form -- ing,
  We shall then His glo -- ry share.
  Be -- lov -- ed, now are we the sons of God,
  and it doth not yet ap -- pear what we shall be:
  but we know __ that when He shall ap -- pear, __
  we know __ that when He shall ap -- pear, __
  we shall be like Him;
  we shall be like Him,
  for we shall see Him as He is. __
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  Sons of God, be -- loved in Je -- sus!
  Oh, the won -- drous word of grace!
  In His Son the Fas -- ther sees us,
  And as sons He gives us place.
  Be -- lov -- ed, now are we the sons of God,
  and it doth not yet ap -- pear what we shall be:
  but we know, we know, we know that when He shall ap -- pear,
  we know __ that when He shall ap -- pear,
  we shall be like Him;
  we shall be like Him,
  for we shall see Him as He is. __

  \set stanza = "2."
  Bless -- ed hope, now bright -- ly beam -- ing,
  On our God we soon shall gaze;
  And in light ce -- les -- tial gleam -- ing,
  We shall see our Sa -- viour's face.
  Be -- lov -- ed, now are we the sons of God,
  and it doth not yet ap -- pear what we shall be:
  but we know, we know, we know that when He shall ap -- pear,
  we know __ that when He shall ap -- pear,
  we shall be like Him;
  we shall be like Him,
  for we shall see Him as He is. __

  \set stanza = "3."
  By the power of grace trans -- form -- ing,
  We shall then His im -- age bear;
  Christ Hi pro -- mised word per -- form -- ing,
  We shall then His glo -- ry share.
  Be -- lov -- ed, now are we the sons of God,
  and it doth not yet ap -- pear what we shall be:
  but we know, we know, we know that when He shall ap -- pear,
  we know __ that when He shall ap -- pear,
  we shall be like Him;
  we shall be like Him,
  for we shall see Him as He is. __
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  Sons of God, be -- loved in Je -- sus!
  Oh, the won -- drous word of grace!
  In His Son the Fas -- ther sees us,
  And as sons He gives us place.
  Be -- lov -- ed, now are we the sons of God,
  and it doth not yet ap -- pear what we shall be:
  but we know, we know, we know that when He shall ap -- pear,
  we know, we know, we know that when He shall ap -- pear,
  we shall be like Him;
  we shall be like Him,
  for we shall see Him as He is. __

  \set stanza = "2."
  Bless -- ed hope, now bright -- ly beam -- ing,
  On our God we soon shall gaze;
  And in light ce -- les -- tial gleam -- ing,
  We shall see our Sa -- viour's face.
  Be -- lov -- ed, now are we the sons of God,
  and it doth not yet ap -- pear what we shall be:
  but we know, we know, we know that when He shall ap -- pear,
  we know, we know, we know that when He shall ap -- pear,
  we shall be like Him;
  we shall be like Him,
  for we shall see Him as He is. __

  \set stanza = "3."
  By the power of grace trans -- form -- ing,
  We shall then His im -- age bear;
  Christ Hi pro -- mised word per -- form -- ing,
  We shall then His glo -- ry share.
  Be -- lov -- ed, now are we the sons of God,
  and it doth not yet ap -- pear what we shall be:
  but we know, we know, we know that when He shall ap -- pear,
  we know, we know, we know that when He shall ap -- pear,
  we shall be like Him;
  we shall be like Him,
  for we shall see Him as He is. __
}

\book {
  \bookOutputSuffix "midi-sop"
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
  \bookOutputSuffix "midi-alto"
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
            \addlyrics \wordsMidiAlto
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
