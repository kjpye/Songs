\version "2.25.13"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "As Torrents in Summer"
  subtitle    = "From the cantata \"King Olaf\""
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Edward Elgar"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Longfellow"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
  tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

TempoTrack = {
  \tempo "Andantino" 4=76
  s4
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "1a" } s4 s2.*4
  \mark \markup { \circle "1b" } s2.*5
  \mark \markup { \circle "2a" } s2.*5
  \mark \markup { \circle "2b" } s2.*5 s2 \partial 4
  \mark \markup { \circle "3a" } s4 s2.*5
  \mark \markup { \circle "3b" } s2.*5
  \mark \markup { \circle "4a" } s2.*6
  \mark \markup { \circle "4b" } s2.*6 s2
}

soprano = \relative {
  \global
  r8 g'
  c4 bes r8 g
  c4 bes r8 bes
  ees4 aes,4. g8
  g4 f~f8 r
  \tuplet 3/2 {f8^\markup ten. g aes} g4(bes) % 1b
  \tuplet 3/2 {g8^\markup ten. aes bes} aes4 c8 c
  f2 ees8 ees
  ees4 d c
  bes4. c8 aes4
  aes4 g r % 2a
  r4 r g
  bes2.(
  aes4) r c
  ees2 d8 c
  bes4(aes) g % 2b
  c4(f,) bes
  bes4(c g)
  aes2 g8 f
  f2 ees4~
  ees4~8 r \bar "||" \break \partial 4 r8 g
  c4(bes) g8 g % 3a
  c4 bes r8 bes
  ees4 aes,4. g8
  g4 f r8 f
  \tuplet 3/2 {f8 g aes} g4 bes
  \tuplet 3/2 {g8 aes bes} aes4 c % 3b
  f2 ees8 ees
  ees4(d) c
  bes4. c8 aes4
  aes4 g r
  r4 r g % 4a
  bes2.(
  aes4) r c
  ees2 d8 c
  bes4 aes g
  c4(f,) bes
  bes4(c g) % 4b
  bes2.
  bes4(c g)
  aes2 g8 f
  f2.
  ees2.~
  ees2
  \bar "|."
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s8 s\p
  s2.
  s2\< s4\!
  s2.
  s2.
  s2 s4\< % 1b
  s2 s4\!
  s2.
  s2 s4\dim
  s2 s4\>
  s2\> s4\! % 2a
  s4 s\pp s4\<
  s4 s\! s\>
  s4\! s s\mf
  s2.
  s4 s2\> % 2b
  s4 s\! s
  s4\pp^\markup \italic express. s2\<
  s2\> s4\pp
  s2.-\markup \italic "poco rit."
  s2 \partial 4 s8^\markup \italic "a tempo" s\mf
  s2. % 3a
  s2 s4\<
  s4\!-\markup \italic "ten" s2\>
  s2.\!
  s2 s4\cresc
  s2. % 3b
  s2.\f
  s2.\dim
  s2\p s4\>
  s4 s2\!
  s2 s4\< % 4a
  s2.\>
  s2\! s4\mf
  s2.
  s2 s4\dim
  s2.
  s4\pp^\markup \italic express. s2\> % 4b
  s2.\!
  s2\< s4\!
  s2-\markup \italic "poco rit." s4\>
  s2.\>
  s2.
  s2\!
}


wordsSop = \lyricmode {
  As tor -- rents in sum -- mer,
  Half dried in their chan -- nels __
  Sud -- den -- ly rise, __ sud -- den -- ly rise, tho' the
  Sky is still cloud -- less, the sky is still cloud -- less,
  For rain, __ for rain has been fall -- ing, fall -- ing
  Far off at their foun -- tains: __
  So hearts that are faint -- ing
  Grow full to o'er -- flow -- ing,
  And they that be -- hold it,
  they that be -- hold it
  Mar -- vel, and know not,
  mar -- vel, and know not
  That God, __ that God at their foun -- tains, their foun -- tains
  Far __ off, far __ off has been rain -- ing! __
}

wordsSopMidi = \lyricmode {
  "As " tor "rents " "in " sum "mer, "
  "\nHalf " "dried " "in " "their " chan "nels " 
  "\nSud" den "ly " "rise, "  sud den "ly " "rise, " "tho' " "the "
  "\nSky " "is " "still " cloud "less, " "the " "sky " "is " "still " cloud "less, "
  "\nFor " "rain, "  "for " "rain " "has " "been " fall "ing, " fall "ing "
  "\nFar " "off " "at " "their " foun "tains: " 
  "\nSo " "hearts " "that " "are " faint "ing "
  "\nGrow " "full " "to " o'er flow "ing, "
  "\nAnd " "they " "that " be "hold " "it, "
  "\nthey " "that " be "hold " "it "
  "\nMar" "vel, " "and " "know " "not, "
  "\nmar" "vel, " "and " "know " "not "
  "\nThat " "God, "  "that " "God " "at " "their " foun "tains, " "their " foun "tains "
  "\nFar "  "off, " "far "  "off " "has " "been " rain "ing! " 
}

alto = \relative {
  \global
  r8 ees'
  d4 ees r8 ees
  d4 ees r8 f
  ees4 ees4. ees8
  ees4 ees4~8 r
  \tuplet 3/2 {d8^\markup ten. ees d} ees2 % 1b
  \tuplet 3/2 {e8 f e} f4 g8 g
  f2 f8 f
  f4 f d
  ees4. ees8 d4
  d4 ees r % 2a
  r4 r f
  e2.(
  f4) r aes
  c2 bes8 aes
  g4(ees) ees % 2b
  ees4(d) ees8 f
  ees2 ees4
  d4 c bes8 bes
  bes2 bes4~
  bes4~8 r \partial 4 r8 ees
  d4(ees) ees8 ees % 3a
  d4 ees r8 f
  ees4 ees4. ees8
  ees4 ees r8 ees
  \tuplet 3/2 {d8 ees d} ees4 ees
  \tuplet 3/2 {e8 f e} f4 g % 3b
  f2 f8 f
  f2 d4
  ees4. ees8 d4
  d4 ees r
  r4 r f % 4a
  e2.(
  f4) r aes
  c2 bes8 aes
  g4 ees ees
  ees4(d) ees8 f
  ees2 ees4 % 4b
  ees4(f d)
  ees2 ees4
  c2 d8 d
  bes2.
  bes2.~
  bes2
  \bar "|."
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s8 s\p
  s2.
  s2\< s4\!
  s2.
  s2.
  s2 s4\< % 1b
  s4 s2\!
  s2.
  s2 s4\dim
  s2 s4\>
  s2\> s4\! % 2a
  s4 s\pp s4\<
  s4 s\! s\>
  s4\! s s\mf
  s2.
  s4 s2\> % 2b
  s4 s\! s
  s4\pp s2
  s2\> s4\pp
  s2.-\markup \italic "poco rit."
  s2 \partial 4 s8^\markup \italic "a tempo" s\mf
  s2. % 3a
  s2 s4\<
  s4\!-\markup \italic "ten" s2\>
  s2.\!
  s2 s4\cresc
  s2. % 3b
  s2.\f
  s2.\dim
  s2\p s4\>
  s4 s2\!
  s2 s4\< % 4a
  s2.\>
  s2\! s4\mf
  s2.
  s2 s4\dim
  s2.
  s4\pp s2 % 4b
  s2\> s4\!
  s4 s\< s4\!
  s2-\markup \italic "poco rit." s4\>
  s2.\>
  s2.
  s2\!
}

wordsAlto = \lyricmode {
  As tor -- rents in sum -- mer,
  Half dried in their chan -- nels __
  Sud -- den -- ly rise, __ sud -- den -- ly rise, tho' the
  Sky is still cloud -- less, the sky is still cloud -- less,
  For rain, __ for rain has been fall -- ing,
  rain has been fall -- ing
  Far off at their foun -- tains: __
  So hearts that are faint -- ing
  Grow full to o'er -- flow -- ing,
  And they that be -- hold it,
  they that be -- hold it
  Mar -- vel, and know not,
  mar -- vel, and know not
  That God, __ that God at their foun -- tains,
  Far off __ has been rain -- ing,
  Far __ off, far off has been rain -- ing! __
}

wordsAltoMidi = \lyricmode {
  "As " tor "rents " "in " sum "mer, "
  "\nHalf " "dried " "in " "their " chan "nels " 
  "\nSud" den "ly " "rise, "  sud den "ly " "rise, " "tho' " "the "
  "\nSky " "is " "still " cloud "less, " "the " "sky " "is " "still " cloud "less, "
  "\nFor " "rain, "  "for " "rain " "has " "been " fall "ing, "
  "\nrain " "has " "been " fall "ing "
  "\nFar " "off " "at " "their " foun "tains: " 
  "\nSo " "hearts " "that " "are " faint "ing "
  "\nGrow " "full " "to " o'er flow "ing, "
  "\nAnd " "they " "that " be "hold " "it, "
  "\nthey " "that " be "hold " "it "
  "\nMar" "vel, " "and " "know " "not, "
  "\nmar" "vel, " "and " "know " "not "
  "\nThat " "God, "  "that " "God " "at " "their " foun "tains, "
  "\nFar " "off "  "has " "been " rain "ing, "
  "\nFar "  "off, " "far " "off " "has " "been " rain "ing! " 
}

tenor = \relative {
  \global
  r8 bes
  aes4 g r8 bes
  aes4 g r8 f
  g4 aes4. bes8
  c4 c~8 r
  \tuplet 3/2 {bes8 bes bes} bes2 % 1b
  c8. c16 c2~(
  c4 bes) a8 a
  bes4 bes aes
  g4. g8 f4
  bes4 bes bes % 2a
  des2.(
  c4) r c
  f2.~(
  f4 f,) g8 aes
  bes4(c) bes % 2b
  a4(aes) g8 aes
  g2 g4
  f4 ees d8 aes'
  aes2 g4~
  g4~8 r \partial 4 r8 bes
  aes4(g) bes8 bes % 3a
  aes4 g r8 f
  g4 aes4. bes8
  c4 c r8 c
  \tuplet 3/2 {bes8 bes bes} bes4 bes
  \tuplet 3/2 {c8 c c} c2~( % 3b
  c4 bes) a
  bes2 aes4
  g4. g8 f4
  bes4 bes bes
  d2.( % 4a
  c4) r c
  f2.~(
  f4 f,) g8 aes
  bes4 c bes
  a4(aes) g8 aes
  g2 g4 % 4b
  g4(aes f)
  ees4(g) bes~
  bes4 aes aes8 aes
  aes2.
  aes2.~
  aes2
  \bar "|."
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s8 s\p
  s2.
  s2\< s4\!
  s2.
  s2.
  s2 s4\< % 1b
  s2 s4\!
  s2.
  s2 s4\dim
  s2 s4\>
  s2\> s4\p\< % 2a
  s4\! s s\>
  s4\! s s\cresc
  s2.
  s2.
  s4 s2\> % 2b
  s4 s\! s
  s4\pp s2
  s2\> s4\pp
  s2.-\markup \italic "poco rit."
  s2 \partial 4 s8^\markup \italic "a tempo" s\mf
  s2. % 3a
  s2 s4\<
  s4\!-\markup \italic "ten" s2\>
  s2.\!
  s2 s4\cresc
  s2. % 3b
  s2.\f
  s2.\dim
  s2\p s4\>
  s4 s\! s\<
  s2.\> % 4a
  s2\! s4\cresc
  s2.
  s2.
  s2 s4\dim
  s2.
  s4\pp s2 % 4b
  s2\> s4\!
  s2\< s4\!
  s2-\markup \italic "poco rit." s4\>
  s2.\>
  s2.
  s2\!
}

wordsTenor = \lyricmode {
  As tor -- rents in sum -- mer,
  Half dried in their chan -- nels __
  Sud -- den -- ly rise, tho' the
  Sky is still cloud -- less, the sky is still cloud -- less,
  For rain, __ for rain has been fall -- ing,
  rain has been fall -- ing
  Far off at their foun -- tains: __
  So hearts that are faint -- ing
  Grow full to o'er -- flow -- ing,
  And they that be -- hold it,
  they that be -- hold it
  Mar -- vel, mar -- vel, and know not,
  That God, __ that God at their foun -- tains,
  Far __ off has been rain -- ing! __
  Far __ off, far __ off has been rain -- ing! __
}

wordsTenorMidi = \lyricmode {
  "As " tor "rents " "in " sum "mer, "
  "\nHalf " "dried " "in " "their " chan "nels " 
  "\nSud" den "ly " "rise, " "tho' " "the "
  "\nSky " "is " "still " cloud "less, " "the " "sky " "is " "still " cloud "less, "
  "\nFor " "rain, "  "for " "rain " "has " "been " fall "ing, "
  "\nrain " "has " "been " fall "ing "
  "\nFar " "off " "at " "their " foun "tains: " 
  "\nSo " "hearts " "that " "are " faint "ing "
  "\nGrow " "full " "to " o'er flow "ing, "
  "\nAnd " "they " "that " be "hold " "it, "
  "\nthey " "that " be "hold " "it "
  "\nMar" "vel, " mar "vel, " "and " "know " "not, "
  "\nThat " "God, "  "that " "God " "at " "their " foun "tains, "
  "\nFar "  "off " "has " "been " rain "ing! " 
  "\nFar "  "off, " "far "  "off " "has " "been " rain "ing! " 
}

bass= \relative {
  \global
  r8 ees
  ees4 ees r8 ees
  ees4 ees r8 d
  c4 c4. bes8 aes4 aes~8 r
  \tuplet 3/2 {aes'8 g f} ees4(g) % 1b
  \tuplet 3/2 {bes8 aes g} f4 ees8 ees
  d2 c8 c
  bes4 bes bes
  bes4. bes8 bes4
  bes4 ees r % 2a
  R2.*5
  r4 r bes % 2b+
  bes2 bes8 bes
  bes4 bes bes8 bes
  ees2 ees4~
  ees4~8 r \partial 4 r8 ees
  ees2 ees8 ees % 3a
  ees4 ees r8 d
  c4 c4. bes8
  aes4 aes r8 aes'
  \tuplet 3/2 {aes8 g f} ees4 g
  \tuplet 3/2 {bes8 aes g} f4 ees % 3b
  d2 c8 c
  bes2 bes4
  bes4. bes8 bes4
  bes4 ees r
  R2.*5 % 4a
  r4 r bes
  bes2 bes4 % 4b
  bes2(aes4)
  g2.
  f2 bes8 bes
  <ees, bes'>2.
  q2.~
  q2
  \bar "|."
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s8 s\p
  s2.
  s2\< s4\!
  s2.
  s2.
  s2 s4\< % 1b
  s2 s4\!
  s2.
  s2 s4\dim
  s2 s4\>
  s2\> s4\p % 2a
  s2.
  s2.
  s2.
  s2.
  s2. % 2b
  s2 s4\pp
  s2.
  s2\> s4\pp
  s2.-\markup \italic "poco rit."
  s2 \partial 4 s8^\markup \italic "a tempo" s\mf
  s2. % 3a
  s2 s4\<
  s4\!-\markup \italic "ten" s2\>
  s2.\!
  s2 s4\cresc
  s2. % 3b
  s2.\f
  s2.\dim
  s2\p s4\>
  s4 s2\!
  s2. % 4a
  s2.
  s2.
  s2.
  s2.
  s2 s4\pp
  s4\pp s2 % 4b
  s2 s4\dim
  s2.
  s2-\markup \italic "poco rit." s4\>
  s2.\>
  s2.
  s2\!
}

wordsBass = \lyricmode {
  As tor -- rents in sum -- mer,
  Half dried in their chan -- nels __
  Sud -- den -- ly rise, __ sud -- den -- ly rise, tho' the
  Sky is still cloud -- less, the sky is still cloud -- less,
  For rain has been fall -- ing at their foun -- tains; __
  So hearts that are faint -- ing
  Grow full to o'er -- flow -- ing,
  And they that be -- hold it,
  they that be -- hold it
  Mar -- vel, and know not,
  mar -- vel, and know not
  Far __ off, far off, __ far __ off has been rain -- ing! __
}

wordsBassMidi = \lyricmode {
  "As " tor "rents " "in " sum "mer, "
  "\nHalf " "dried " "in " "their " chan "nels " 
  "\nSud" den "ly " "rise, "  sud den "ly " "rise, " "tho' " "the "
  "\nSky " "is " "still " cloud "less, " "the " "sky " "is " "still " cloud "less, "
  "\nFor " "rain " "has " "been " fall "ing " "at " "their " foun "tains; " 
  "\nSo " "hearts " "that " "are " faint "ing "
  "\nGrow " "full " "to " o'er flow "ing, "
  "\nAnd " "they " "that " be "hold " "it, "
  "\nthey " "that " be "hold " "it "
  "\nMar" "vel, " "and " "know " "not, "
  "\nmar" "vel, " "and " "know " "not "
  "\nFar "  "off, " "far " "off, "  "far "  "off " "has " "been " rain "ing! " 
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s8 s\p
  s2.
  s2\< s4\!
  s2.
  s2.
  s2 s4\< % 1b
  s4 s2\!
  s2.
  s2 s4\dim
  s2 s4\>
  s2\> s4\p\< % 2a
  s4\! s s4\>
  s2\! s4\cresc
  s4\! s s\mf
  s2.
  s4 s2\> % 2b
  s4 s\! s
  s4\pp s2
  s2\> s4\pp
  s2.-\markup \italic "poco rit."
  s2 \partial 4 s8^\markup \italic "a tempo" s\mf
  s2. % 3a
  s2 s4\<
  s4\!-\markup \italic "ten" s2\>
  s2.\!
  s2 s4\cresc
  s2. % 3b
  s2.\f
  s2.\dim
  s2\p s4\>
  s4 s2\<
  s4\! s2\> % 4a
  s2\! s4\cresc
  s2\! s4\mf
  s2.
  s2 s4\dim
  s2.
  s2.\pp % 4b
  s2.
  s2.
  s2.-\markup \italic "poco rit."
  s2.
  s2.
  s2
}

dynamicsPianoAbove = {
  \override DynamicTextSpanner.style = #'none
  \partial 4 s4
  s2.*10
  s2 s4\< % 2a+
  s2\! s4\>
  s2.\!
  s2.*17
  s2 s4\< % 4a
  s4\! s2\>
  s2.\!
  s2.*9
}

#(set-global-staff-size 18)

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
          } <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = "alto" \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice = "tenor" \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice = "bass" \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Dynamics \dynamicsPianoAbove
          \new Staff <<
            \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \set Staff.soloText = #""
            \clef "bass"
            \partCombine \tenor \bass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
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

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "single-noacc"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          } <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = "alto" \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice = "tenor" \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice = "bass" \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
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

#(set-global-staff-size 20)

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
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = "alto" \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice = "tenor" \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice = "bass" \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Dynamics \dynamicsPianoAbove
          \new Staff <<
            \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \set Staff.soloText = #""
            \clef "bass"
            \partCombine \tenor \bass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
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

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-noacc"
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
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = "alto" \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice = "tenor" \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice = "bass" \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
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

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-sop"
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
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice = "alto" \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice = "tenor" \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice = "bass" \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
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

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-alto"
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
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice = "alto" \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice = "tenor" \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice = "bass" \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
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

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-tenor"
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
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice = "alto" \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice = "tenor" \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice = "bass" \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
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

#(set-global-staff-size 20)

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
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice = "alto" \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice = "tenor" \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice = "bass" \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
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
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSopMidi
          >>
                                % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
%            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
%            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
%            \new Lyrics \lyricsto "bass" \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Dynamics \dynamicsPianoAbove
          \new Staff <<
            \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \set Staff.soloText = #""
            \clef "bass"
            \partCombine \tenor \bass
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
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
%            \new Lyrics \lyricsto "soprano" \wordsSopMidi
          >>
                                % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
%            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
%            \new Lyrics \lyricsto "bass" \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Dynamics \dynamicsPianoAbove
          \new Staff <<
            \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \set Staff.soloText = #""
            \clef "bass"
            \partCombine \tenor \bass
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
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
%            \new Lyrics \lyricsto "soprano" \wordsSopMidi
          >>
                                % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
%            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
%            \new Lyrics \lyricsto "bass" \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Dynamics \dynamicsPianoAbove
          \new Staff <<
            \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \set Staff.soloText = #""
            \clef "bass"
            \partCombine \tenor \bass
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
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
%            \new Lyrics \lyricsto "soprano" \wordsSopMidi
          >>
                                % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
%            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
%            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Dynamics \dynamicsPianoAbove
          \new Staff <<
            \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \set Staff.soloText = #""
            \clef "bass"
            \partCombine \tenor \bass
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
