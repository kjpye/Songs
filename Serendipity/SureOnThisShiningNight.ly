\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
  dedication  = "To Sara"
  title       = "Sure on this shining night"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Samual Barber"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "James Agee"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 3/4
}

TempoTrack = {
  \tempo Andante 4=50
  s2.*3 |
  \set Score.tempoHideNote = ##t
  s2.*3 |
  s2. | s | s2 | % 4a
  s2.*3 |
  s2.*4 | % 5a
  s1 | s2. | s2. \tempo 4=45 s4^\markup\italic rit.
  s2. | \tempo 4=50 s2.^\markup\italic "a tempo" | s2. | % 6a
  s2.*4 |
  s2. | s | \tempo 4=45 s^\markup\italic rall. | s8 \tempo 4=50 s^\markup\italic "a tempo" s2 | % 7a
  s2. | s | \tempo 4=45 s^\markup\italic "morendo e rall." | \tempo 4=22 s2. |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "3a" } s2.*3
  \textMark \markup { \box "3b" } s2.*3
  \textMark \markup { \box "4a" } s2.*2 s2
  \textMark \markup { \box "4b" } s2.*3
  \textMark \markup { \box "5a" } s2.*4
  \textMark \markup { \box "5b" } s1 s2. s1
  \textMark \markup { \box "6a" } s2.*3
  \textMark \markup { \box "6b" } s2.*4
  \textMark \markup { \box "7a" } s2.*4
  \textMark \markup { \box "7b" } s2.*4
}

dynamicsSop = {
  s2. | s\omit\mp-\markup{\dynamic mp \italic espr. } | s |
  s2.*3 |
  s2. | s | s2 | % 4a
  s2 s4\mf | s2. | s4 s4.\< s8\! |
  s2.\omit\f-\markup{\italic più \dynamic f} | s | s\< | s\! | % 5a
  s4 s2.\omit\p-\markup{\dynamic p \italic sub. } | \after 2 \mf s2.\< | s4\! s2\p\< s4\! |
  s2.\> | s\omit\pp | s\omit\mf-\markup{\dynamic mf \italic espr. } | % 6a
  s2. | s4.\> s\! | s2 s4\p | s2. |
  s2.\omit\dim-\markup\italic "dim. poco a poco" | s4.\< s8\! s4\> | s4 s2\! | s2. | % 7a
  s2. | s4 s2\pp | s2 s8 s\> | s2.\! |
}

soprano = \relative {
  \global
  R2. | d''4 c8 d bes a | c4. bes8 a bes |
  g8 f a2 | r4 r bes~ | 4 a8 bes g f |
  a2 g4 | ees4. f8 d4~ \time 2/4 | 2 \time 3/4 | % 4a
  r4 r d' | f e8 f d c | e2. |
  g2~8 e | 2. | 2 d4 | f2. \time 4/4 | % 5a
  r4 f e8 d c d \time 3/4 | bes2. \time 4/4 | r4 d2~8 g,-- \time 3/4 |
  g2. | R | f'4 ees8 f d c | % 6a
  e4. d8 c-- d | b--(a) c2~ | 4 r d~ | d c8(d) bes a |
  c2 bes4 | g4. a8 f4~ | f g2 | d2. | % 7a
  R2. | r4 d2~ | 8 c ees4. d8 | f2.\fermata |
  \bar "|."
}

wordsSop = \lyricmode {
  Sure on this shin -- ing night
  Of star -- made shad -- ows round,
  Kind -- ness must watch for me
  This side the ground. __

  The late year lies down the north.
  All __ is healed, all is health.
  High sum -- mer holds the earth.
  Hearts __ all whole.

  Sure on this shin -- ing night
  I weep for won -- der __ wan -- d'ring far a -- lone
  Of shad -- ows on __ the stars.
  On __ this shin -- ing night.
}

wordsSopMidi = \lyricmode {
  "Sure " "on " "this " shin "ing " "night "
  "\nOf " star "made " shad "ows " "round, "
  "\nKind" "ness " "must " "watch " "for " "me "
  "\nThis " "side " "the " "ground. " 

  "\nThe " "late " "year " "lies " "down " "the " "north. "
  "\nAll "  "is " "healed, " "all " "is " "health. "
  "\nHigh " sum "mer " "holds " "the " "earth. "
  "\nHearts "  "all " "whole. "

  "\nSure " "on " "this " shin "ing " "night "
  "\nI " "weep " "for " won "der "  wan "d'ring " "far " a "lone "
  "\nOf " shad "ows " "on "  "the " "stars. "
  "\nOn "  "this " shin "ing " "night. "
}

dynamicsAlto = {
  s2. | s\p | s |
  s2.*3 |
  s2. | s | s2 | % 4a
  s2. | s2\< s4\omit\mf-\markup{\dynamic mf \italic espr. } | s4 s2\< |
  s2.\omit\f-\markup{\italic più \dynamic f} | s | s\< | s\! | % 5a
  s1\omit\p-\markup{\dynamic p \italic sub. } | s2\< s8 s\mf | s2\p s\< |
  s2.\> | s\! | s\mf | % 6a
  s2. | s2\> s4\omit\p-\markup{\dynamic p \italic espr. } | s2. | s4 s2\> |
  s2.\omit\p-\markup{\dynamic p \italic "sempre marc." } | s4\< s\! s\> | s4 s2\! | s2. | % 7a
  s2. | s4 s2\pp | s2 s8 s\> | s2.\! |
}

alto = \relative {
  \global
  R2. | f'2(d4) | a'(g) f |
  bes,4 f'2 | g2~8 r | 4 f a, |
  a2 bes8(d) | g,2~8 r | bes2 | % 4a
  a4 2 | d4(f) a | c b8 c a g |
  b2 g4 | a2. | 2 e4 | a4 4. 8 | % 5a
  bes2~8 f4 8 | g2 4 | d2~8 4 c8--
  ees2. | R | a4 g8 8 d d | % 6a
  g4(f8) f a-- f | d4 c bes'--~ | 4 a8(bes) g f | a2 g4 |
  ees4. f8 d4~ | 2 ees4 | bes2.~ | 2. | % 7a
  R2. | r4 bes2~ | 8 8 4. d8 | d2.\fermata |
  \bar "|."
}

wordsAlto = \lyricmode {
  Sure __ on __ this shin -- ing night, __
  Kind -- ness must watch for __ me __
  This side the ground. __

  The late year lies down the north.
  All healed, all is health, all is health. __
  Sum -- mer holds the earth. __
  Hearts __ all whole.

  Sure on this shin -- ing night __
  I weep for won -- der wan -- d'ring far a -- lone
  Of shad -- ows on __ the stars. __
  On __ this shin -- ing night.
}

wordsAltoMidi = \lyricmode {
  "Sure "  "on "  "this " shin "ing " "night, " 
  "\nKind" "ness " "must " "watch " "for "  "me " 
  "\nThis " "side " "the " "ground. " 

  "\nThe " "late " "year " "lies " "down " "the " "north. "
  "\nAll " "healed, " "all " "is " "health, " "all " "is " "health. " 
  "\nSum" "mer " "holds " "the " "earth. " 
  "\nHearts "  "all " "whole. "

  "\nSure " "on " "this " shin "ing " "night " 
  "\nI " "weep " "for " won "der " wan "d'ring " "far " a "lone "
  "\nOf " shad "ows " "on "  "the " "stars. " 
  "\nOn "  "this " shin "ing " "night. "
}

dynamicsTenor = {
  s2. | s | s\omit\mp-\markup{\dynamic mp \italic espr. } |
  s2.*3 |
  s2. | s | s2 | % 4a
  s2. | s4 s2\< | s4\mf s2\< |
  s2.\omit\f-\markup{\italic più \dynamic f} | s | s\< | s\! | % 5a
  s1\omit\p-\markup{\dynamic p \italic sub.} | s2\< s8 s\mf | s1\p |
  s2.\< | s\omit\mf-\markup{\dynamic mf \italic espr. } | s | % 6a
  s2. | s2\> s8 s\p | s2 s4\> | s2.\pp |
  s2.\omit\dim^\markup\italic "dim. poco a poco" | s2\< s4\! | s2.\> | s\! | % 7a
  s2. | s4 s2\pp | s2 s8 s\> | s2.\! |
}

tenor = \relative {
  \global
  R2. | R | f'4 ees8 d d c |
  ees4. d8 c d | bes a c2~ | 8 r r4 d~ |
  d4 c8 d bes a | c2 bes4 | g4. a8 | % 4a
  f2 4 | a d f | e4 8 8 c e |
  b4 4. 8 | cis2. | 2 b4 | d2.~ | % 5a
  d2~8 4 8 | 4. c8 ees4 | a,4.(g8) bes2 |
  bes2. | d4 c8 d bes a | c4. bes8 a-- bes | % 6a
  g8-- (f) a2 | g2.~ | 2 bes4 | f'2 ees4 |
  g,2 4 | 4 2~ | 4 4 4 | f2. | % 7a
  R2. | r4 g2~ | 8 8 4. bes8 | 2.\fermata |
  \bar "|."
}

wordsTenor = \lyricmode {
  Sure __ on __ this shin -- ing night,
  Of star -- made shad -- ows round, __
  Kind -- ness must watch for me
  This side the ground.

  The late year, the late year lies down the north.
  All is healed, all is health. __
  Sum -- mer holds the earth.
  Hearts __ all whole.

  Sure on this shin -- ing night
  I weep for won -- der wan -- d'ring far a -- lone
  Of shad -- ows __ on the stars.
  On __ this shin -- ing night.
}

wordsTenorMidi = \lyricmode {
  "Sure "  "on "  "this " shin "ing " "night, "
  "\nOf " star "made " shad "ows " "round, " 
  "\nKind" "ness " "must " "watch " "for " "me "
  "\nThis " "side " "the " "ground. "

  "\nThe " "late " "year, " "the " "late " "year " "lies " "down " "the " "north. "
  "\nAll " "is " "healed, " "all " "is " "health. " 
  "\nSum" "mer " "holds " "the " "earth. "
  "\nHearts "  "all " "whole. "

  "\nSure " "on " "this " shin "ing " "night "
  "\nI " "weep " "for " won "der " wan "d'ring " "far " a "lone "
  "\nOf " shad "ows "  "on " "the " "stars. "
  "\nOn "  "this " shin "ing " "night. "
}

dynamicsBass = {
  s2. | s\p | s |
  s2.*3 |
  s2. | s | s2 | % 4a
  s2. | s4 s2\< | s4\mf s2\< |
  s2.\omit\f-\markup{\italic più \dynamic f} | s | s\< | s\! | % 5a
  s1\omit\p-\markup{\dynamic f \italic sub. } | s2\< s8 s\mf | s1\p |
  s2.\< | s\mf | s | % 6a
  s2. | s2\> s8 s\p | s2. | s |
  s2.\omit\dim-\markup\italic "dim. poco a poco" | s4\< s2\! | s2\> s4\! | s2. |
  s2. | s4 s2\pp | s2 s8 s\> | s2.\! |
}

bass = \relative {
  \global
  R2. | bes2(g4) | ees2 f4 |
  g4 d2 | ees2. | 4 f f |
  g2 4 | c,2 g4 | d' ees | % 4a
  d2.~ | 2 d'4 | a2 8 8 |
  e2 4 | a,4 4. 8 | a'2. | d,2 4 | % 5a
  bes2.~8 r | ees2. | g,1 |
  ees'2. | bes2 g'4 | ees2 f4 | % 6a
  bes4 d,2 | ees2. | 2 g4 | d2 ees4 |
  c2 d4 | ees4 2 | f4(ees) ees | bes2. | % 7a
  R2. | r4 g2~ | 8 8 ees'4. 8 | bes2.\fermata |
  \bar "|."
}

wordsBass = \lyricmode {
  Sure __ on this shin -- ing night,
  Kind -- ness must watch for me
  This side the ground. __

  The late year lies down the north.
  All is healed, all is health. __
  all, all, is whole.

  Sure on this shin -- ing night
  wan -- d'ring far a -- lone
  Of shad -- ows __ on the stars.
  On __ this shin -- ing night.
}

wordsBassMidi = \lyricmode {
  "Sure "  "on " "this " shin "ing " "night, "
  "\nKind" "ness " "must " "watch " "for " "me "
  "\nThis " "side " "the " "ground. " 

  "\nThe " "late " "year " "lies " "down " "the " "north. "
  "\nAll " "is " "healed, " "all " "is " "health. " 
  "\nall, " "all, " "is " "whole. "

  "\nSure " "on " "this " shin "ing " "night "
  "\nwan" "d'ring " "far " a "lone "
  "\nOf " shad "ows "  "on " "the " "stars. "
  "\nOn "  "this " shin "ing " "night. "
}

lh = {\change Staff = pianolh}
rh = {\change Staff = pianorh}

pianoRHone = \relative {
  \global \voiceOne
  <d' f bes d>4.\arpeggio _(<bes d>8 8 8 | q2.) | <c f a>8(q <c ees g> q <d f> q |
  \voiceTwo <bes ees>8 8 \lh \voiceOne <f a d> <f a> q q) \rh \oneVoice | R2. | R |
  \voiceFour \lh s4. \showStaffSwitch \oneVoice a8 \rh bes([d] | ees2) \hideStaffSwitch <d bes'>4( \time 2/4 g4. 8 \time 3/4 | % 4a
  f4~<a, d f>8) q( q q | q q q q q q | <a c e>8 8 8 8 8 8) |
  <b e g b>8(8 8 8 8 8 | <cis e a cis>8 8 8 8 8 8) | q(q q q <b e a b>-- q | <d f a d>-- 8 8 8 8 8) \time 4/4 | % 5a
  <d f bes d>8(8 8 8 8 8 8 8 \time 3/4 | <d g bes d>8 8 8 <c g' bes c>-- <ees g bes ees>-- q) \time 4/4 | <g, a d>8(8 8 <g d'> <g bes d> q q <g bes c>-- \time 3/4 |
  <g bes ees>8-- q q q q q) | \voiceOne <d' f>8 8 8 8 <bes d> q | a'4(g f | % 6a
  ees2 d4 | d c2) | \oneVoice <g c>8^(8 8 8 <g bes d> q | <a d f>8 8 8 8 <bes ees> q |
  <g c ees>8^\markup\italic "dim. poco a poco" 8 8 8 \voiceOne d'4~ | 2 ees4-- | bes2.-- | \lh \voiceOne <d, f>8) \rh \oneVoice <d' f bes d>(8 8 8 8 | % 7a
  <d g bes d>8 8 8 <c g' bes c>-- <ees g bes ees>-- q) | r4 <g, bes d>8(8 8 8 | q <g bes c>-- <g bes ees>-- q q <bes d>-- | <bes d f>2.\fermata) |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s2.*3 |
  s2.*3 |
  s2. | s | <bes d>2 | % 4a
  <a d>8 8 s2 | s2. | s |
  s2.*4 |
  s1 | s2. | s1 |
  s2. | f2. | <c' f>8 q <c ees> q <a d> q | % 6a
  bes8 <bes ees> <a ees'> q a <a d> | <g bes> <g bes d> g <g c> q q | s2. | s |
  s2 <g bes>8 8 | q q q q q q | \showStaffSwitch \lh \voiceOne <f g>8 q <ees g> q q q | s2. \rh | % 7a
  s2.*4 
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\omit\p-\markup{\dynamic p \italic "molto legato"} | s | s |
  s2.*3 |
  s2. | s | s2 | % 4a
  s4 s2\< | s2. | s8\mf s2\< s8\! |
  s2.\omit\f-\markup{\italic più \dynamic f} | s | s\< | s\! | % 5a
  s1\omit\p-\markup{\dynamic p \italic sub.} | s2\< s8 s\mf | s1\p\< |
  s2.\< | s\mf | s | % 6a
  s2.*4 |
  s2. | s | s2\> s4\! | s2. | % 7a
  s2\< s8 s\mf | s4 s2\pp | s2 s8 s\> | s4 s2\! |
}

pianoLHone = \relative {
  \global
  <bes, f'>2.~ | 8 8_( 8 8 <g d'> q | <ees ees'>2 <f f'>4 |
  <g ees'>4 d'2) | <ees g>8(8 8 8 8 8 | 8 8 <f a> q q q |
  \voiceTwo <g a>8 8 8) g_( g g | \voiceOne g g g g g g \time 2/4 | d d ees ees \time 3/4 | % 4a
  <d, d'>2.~ | 2.) | <a' e'>2. |
  <e e'>2. | <a e'> | q | <d, a' f'>\arpeggio \time 4/4 | % 5a
  <bes' f'>1 \time 3/4 | <ees g>2. \time 4/4 | <g, d'>1 \time 3/4 |
  <ees bes'>2. | <bes bes'>2 <g' d'>4 | <ees c'>2 <f d'>4 | % 6a
  <g ees'>4 <d a' f'>2\arpeggio | bes'4 c2~ | 2 <g d'>4 | <d a' d>2 <ees bes' ees>4 |
  <c c'>2 <d d'>4 | <ees bes'>2.~ | \voiceTwo q | <bes f' bes>2. | % 7a
  \oneVoice <ees' g>2. | r4 <g, d'>2~ | 4 <ees bes'>2 | r4 \voiceOne d'2\fermata^\markup\tiny\italic r.h. |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  s2.*3 |
  s2.*3 |
  s2. | c2 g4~ \time 2/4 | 2 \time 3/4 | % 4a
  s2.*3 |
  s2.*4 | % 5a
  s1 | s2. | s1 |
  s2.*3 | % 6a
  s2. | ees2.~ | 2 s4 | s2. |
  s2.*4 | % 7a
  s2.*3 | s4 bes2\fermata |
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 18)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
        \remove Staff_collecting_engraver
        \remove Bar_number_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Bar_number_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
        \remove Staff_collecting_engraver
        \remove Bar_number_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Bar_number_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-bass"
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
        \remove Staff_collecting_engraver
        \remove Bar_number_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Bar_number_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass

          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-alto"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-bass"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}
