\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Dido's lament"
  subtitle    = "With Drooping Wings"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Purcell"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key bes \major
  \time 4/4
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "D" } s1
  \repeat volta 2 {
    s1*3
    \mark \markup { \box "191d" } s1*4
    \mark \markup { \box "192a" } s1*4
    \mark \markup { \box "192b" } s1*4
    \mark \markup { \box "193a" } s1*4
    \mark \markup { \box "193b" } s1*3
    \mark \markup { \box "194a" } s1*4
    \mark \markup { \box "194b" } s1*2
    \alternative {{s1}{s1}}
  }
}

soprano = \relative {
  \global
  r4^\markup\bold "Legato and light" d'' c( bes
  \repeat volta 2 {
    a4) g d g
    a8(bes) c(a) bes4 d
    c4(bes a g
    f8 e) f(d) g4 g' % 191d
    f4(ees d c
    bes4) a g r
    r4 d' c(bes
    a) g fis g % 192a
    a8(bes) c(a) bes4 r8 a
    bes8(a) bes(c) d8.(ees16) d4
    d8(c) d(ees) f(ees) d(c)
    bes8(g) a(bes) c(d) bes4 % 192b
    a2 r
    R1
    r2 d4(c)
    ees4(d cis) d % 193a
    d8(a) a4 d(cis)
    f(e) d(cis)
    f4(ees d) ees
    cis4 d d8.(e16) d8(c) % 193b
    d4 r8 d bes4 r
    ees4. 8 c4 r8 c
    f4 r g g8(f) % 194a
    ees8(d) c(bes) bes4 r8 8
    bes8 8 r4 b8 8 r4
    c4(a8.) bes16 a4 r8 a
    d8 8 r4 d8 c r4 % 194b
    c8(a bes8.) c16 bes4. a16(g)
    \alternative {
      {<<{g4 d' c bes} \new Voice {s2 \hideNotes c4..(16)}>>}
      {g1}
    }
  }
  \bar "|."
}

wordsSop = \lyricmode {
  With droop -- ing wings you Cu -- pids __ come,
  with droop -- ing __ wings,
  with droop -- ing __ wings,
  with droop -- ing __ wings you Cu -- pids come,
  To scat -- ter __ ro -- ses,
  scat -- ter, __ scat -- ter __ ro -- ses __ on __ her tomb.

  Soft, __ soft __ and gen -- tle,
  soft, __ soft, __ soft, __ soft __
  and gen -- tle as __ her heart;
  Keep here, here your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver __ part.

  With droop -- _
  part.
}

wordsSopSingle = \lyricmode {
  With droop -- ing wings you Cu -- pids __ come,
  with droop -- ing __ wings,
  with droop -- ing __ wings,
  with droop -- ing __ wings you Cu -- pids come,
  To scat -- ter __ ro -- ses,
  scat -- ter, __ scat -- ter __ ro -- ses __ on __ her tomb.

  Soft, __ soft __ and gen -- tle,
  soft, __ soft, __ soft, __ soft __
  and gen -- tle as __ her heart;
  Keep here, here your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver __ part.

  With droop -- _ _ ing wings you Cu -- pids __ come,
  with droop -- ing __ wings,
  with droop -- ing __ wings,
  with droop -- ing __ wings you Cu -- pids come,
  To scat -- ter __ ro -- ses,
  scat -- ter, __ scat -- ter __ ro -- ses __ on __ her tomb.

  Soft, __ soft __ and gen -- tle,
  soft, __ soft, __ soft, __ soft __
  and gen -- tle as __ her heart;
  Keep here, here your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver __ part.
}

wordsSopMidi = \lyricmode {
  "With " droop "ing " "wings " "you " Cu "pids "  "come, "
  "\nwith " droop "ing "  "wings, "
  "\nwith " droop "ing "  "wings, "
  "\nwith " droop "ing "  "wings " "you " Cu "pids " "come, "
  "\nTo " scat "ter "  ro "ses, "
  "\nscat" "ter, "  scat "ter "  ro "ses "  "on "  "her " "tomb. "

  "\nSoft, "  "soft "  "and " gen "tle, "
  "\nsoft, "  "soft, "  "soft, "  "soft " 
  "\nand " gen "tle " "as "  "her " "heart; "
  "\nKeep " "here, " "here " "your " "watch, "
  "\nkeep " "here, " "here, " "keep " "here " "your " "watch "
  "\nand " ne "ver, " ne "ver, " ne "ver " "part, "
  "\nand " ne "ver, " ne "ver, " ne "ver, " ne "ver "  "part. "

  "\nWith " droop "" "" "ing " "wings " "you " Cu "pids "  "come, "
  "\nwith " droop "ing "  "wings, "
  "\nwith " droop "ing "  "wings, "
  "\nwith " droop "ing "  "wings " "you " Cu "pids " "come, "
  "\nTo " scat "ter "  ro "ses, "
  "\nscat" "ter, "  scat "ter "  ro "ses "  "on "  "her " "tomb. "

  "\nSoft, "  "soft "  "and " gen "tle, "
  "\nsoft, "  "soft, "  "soft, "  "soft " 
  "\nand " gen "tle " "as "  "her " "heart; "
  "\nKeep " "here, " "here " "your " "watch, "
  "\nkeep " "here, " "here, " "keep " "here " "your " "watch "
  "\nand " ne "ver, " ne "ver, " ne "ver " "part, "
  "\nand " ne "ver, " ne "ver, " ne "ver, " ne "ver "  "part. "
}

alto = \relative {
  \global
  R1
  \repeat volta 2 {
    R1
    R1
    r4 g' f(ees
    d4) c bes g % 191d
    d'4 ees8(f) g4 r
    r2 r4 d
    c4(bes a) g
    fis4 d' c(bes % 192a
    a4) d d r8 fis
    g8(fis) g(a) bes4 4
    f8(g) f(ees) d(ees) f(d)
    ees4 g fis g % 192b
    fis2 g4(fis)
    bes4(a) g(fis)
    g4 a a8(d,) a'4
    bes4. a8(g4) f % 193a
    e4 8.(d16) 4 r
    d4(cis) f(e
    d4) a' a8(bes) a(g)
    g8.(bes16) a8(g) f4 e8(d) % 193b
    d4 r8 fis g4 r
    g4(a8.) bes16 a4 r8 a
    bes4 r bes bes % 194a
    bes4 a bes4 r8 f
    g8 8 r4 f8 8 r4
    e4(fis8.) g16 fis4 r8 f
    bes8 8 r4 bes8 a r4 % 194b
    a8(fis g8.) a16 g4. fis8
    \alternative {
      {g2 r}
      {g1}
    }
  }
  \bar "|."
}

wordsAlto = \lyricmode {
  With droop -- ing wings ye Cu -- pids come,
  with droop -- ing wings you Cu -- pids come,
  To scat -- ter __ ros -- es,
  scat -- ter, __ scat -- ter, __ ro -- ses on her tomb.
  Soft, __ soft __ and __ gen -- tle as __ her heart,
  gen -- tle as her __ heart,
  soft, __ soft __ and gen -- tle, __
  gen -- tle __ as her __ heart,
  Keep here, here __ your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver part.

  part.
}

wordsAltoSingle = \lyricmode {
  With droop -- ing wings ye Cu -- pids come,
  with droop -- ing wings you Cu -- pids come,
  To scat -- ter __ ros -- es,
  scat -- ter, __ scat -- ter, __ ro -- ses on her tomb.
  Soft, __ soft __ and __ gen -- tle as __ her heart,
  gen -- tle as her __ heart,
  soft, __ soft __ and gen -- tle, __
  gen -- tle __ as her __ heart,
  Keep here, here __ your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver part.

  With droop -- ing wings ye Cu -- pids come,
  with droop -- ing wings you Cu -- pids come,
  To scat -- ter __ ros -- es,
  scat -- ter, __ scat -- ter, __ ro -- ses on her tomb.
  Soft, __ soft __ and __ gen -- tle as __ her heart,
  gen -- tle as her __ heart,
  soft, __ soft __ and gen -- tle, __
  gen -- tle __ as her __ heart,
  Keep here, here __ your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver part.
}

wordsAltoMidi = \lyricmode {
  "With " droop "ing " "wings " "ye " Cu "pids " "come, "
  "\nwith " droop "ing " "wings " "you " Cu "pids " "come, "
  "\nTo " scat "ter "  ros "es, "
  "\nscat" "ter, "  scat "ter, "  ro "ses " "on " "her " "tomb. "
  "\nSoft, "  "soft "  "and "  gen "tle " "as "  "her " "heart, "
  "\ngen" "tle " "as " "her "  "heart, "
  "\nsoft, "  "soft "  "and " gen "tle, " 
  "\ngen" "tle "  "as " "her "  "heart, "
  "\nKeep " "here, " "here "  "your " "watch, "
  "\nkeep " "here, " "here, " "keep " "here " "your " "watch "
  "\nand " ne "ver, " ne "ver, " ne "ver " "part, "
  "\nand " ne "ver, " ne "ver, " ne "ver, " ne "ver " "part. "

  "\nWith " droop "ing " "wings " "ye " Cu "pids " "come, "
  "\nwith " droop "ing " "wings " "you " Cu "pids " "come, "
  "\nTo " scat "ter "  ros "es, "
  "\nscat" "ter, "  scat "ter, "  ro "ses " "on " "her " "tomb. "
  "\nSoft, "  "soft "  "and "  gen "tle " "as "  "her " "heart, "
  "\ngen" "tle " "as " "her "  "heart, "
  "\nsoft, "  "soft "  "and " gen "tle, " 
  "\ngen" "tle "  "as " "her "  "heart, "
  "\nKeep " "here, " "here "  "your " "watch, "
  "\nkeep " "here, " "here, " "keep " "here " "your " "watch "
  "\nand " ne "ver, " ne "ver, " ne "ver " "part, "
  "\nand " ne "ver, " ne "ver, " ne "ver, " ne "ver " "part. "
}

tenor = \relative {
  \global
  r2 r4 d'4
  \repeat volta 2 {
    c4(bes a) g
    fis4 d g8(a) bes(g)
    a4 r r c
    bes4(a g) bes % 191d
    a8(bes) c4 d f
    g4 d ees bes
    a4 g fis d'
    c4 bes a g % 192a
    fis8(g) a(fis) g4 r
    r2 r4 r8 d'
    bes8(a) bes(c) d(c) bes(a)
    g4 c c d % 192b
    d2 r
    d4(c) ees(d)
    bes4 a g fis'
    g4 d g, r % 193a
    R1
    r2 d'4(a)
    bes4(c d) bes
    bes8(e,) f(g) a4 4 % 193b
    a4 r8 d8 4 r
    c4. 8 4 r8 a
    d4 r bes ees % 194a
    c8(d) ees4 d r8 d
    ees8 bes r4 d8 8 r4
    g,4. 8 d'4 r8 d
    g,8 8 r4 ees'8 8 r4 % 194b
    a,4 d4 4. 8
    \alternative {
      {d2 r4 d}
      {d1}
    }
  }
  \bar "|."
}

wordsTenor = \lyricmode {
  With droop -- ing wings you Cu -- pids __ come,
  with droop -- ing, droop -- ing wings,
  with droop -- ing wings,
  with droop -- ing wings,
  with droop -- ing wings you Cu -- pids come,
  To scat -- ter, __ scat -- ter, __
  ro -- ses on her tomb.
  Soft, __ soft, __ soft and gen -- tle as her heart.
  soft, __ soft __ and gen -- tle __ as her heart;
  Keep here, here your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver part.
  
  With
  part.
}

wordsTenorSingle = \lyricmode {
  With droop -- ing wings you Cu -- pids __ come,
  with droop -- ing, droop -- ing wings,
  with droop -- ing wings,
  with droop -- ing wings,
  with droop -- ing wings you Cu -- pids come,
  To scat -- ter, __ scat -- ter, __
  ro -- ses on her tomb.
  Soft, __ soft, __ soft and gen -- tle as her heart.
  soft, __ soft __ and gen -- tle __ as her heart;
  Keep here, here your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver part.

  With droop -- ing wings you Cu -- pids __ come,
  with droop -- ing, droop -- ing wings,
  with droop -- ing wings,
  with droop -- ing wings,
  with droop -- ing wings you Cu -- pids come,
  To scat -- ter, __ scat -- ter, __
  ro -- ses on her tomb.
  Soft, __ soft, __ soft and gen -- tle as her heart.
  soft, __ soft __ and gen -- tle __ as her heart;
  Keep here, here your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver part.
}

wordsTenorMidi = \lyricmode {
  "With " droop "ing " "wings " "you " Cu "pids "  "come, "
  "\nwith " droop "ing, " droop "ing " "wings, "
  "\nwith " droop "ing " "wings, "
  "\nwith " droop "ing " "wings, "
  "\nwith " droop "ing " "wings " "you " Cu "pids " "come, "
  "\nTo " scat "ter, "  scat "ter, " 
  "\nro" "ses " "on " "her " "tomb. "
  "\nSoft, "  "soft, "  "soft " "and " gen "tle " "as " "her " "heart. "
  "\nsoft, "  "soft "  "and " gen "tle "  "as " "her " "heart; "
  "\nKeep " "here, " "here " "your " "watch, "
  "\nkeep " "here, " "here, " "keep " "here " "your " "watch "
  "\nand " ne "ver, " ne "ver, " ne "ver " "part, "
  "\nand " ne "ver, " ne "ver, " ne "ver, " ne "ver " "part. "

  "\nWith " droop "ing " "wings " "you " Cu "pids "  "come, "
  "\nwith " droop "ing, " droop "ing " "wings, "
  "\nwith " droop "ing " "wings, "
  "\nwith " droop "ing " "wings, "
  "\nwith " droop "ing " "wings " "you " Cu "pids " "come, "
  "\nTo " scat "ter, "  scat "ter, " 
  "\nro" "ses " "on " "her " "tomb. "
  "\nSoft, "  "soft, "  "soft " "and " gen "tle " "as " "her " "heart. "
  "\nsoft, "  "soft "  "and " gen "tle "  "as " "her " "heart; "
  "\nKeep " "here, " "here " "your " "watch, "
  "\nkeep " "here, " "here, " "keep " "here " "your " "watch "
  "\nand " ne "ver, " ne "ver, " ne "ver " "part, "
  "\nand " ne "ver, " ne "ver, " ne "ver, " ne "ver " "part. "
}

bass = \relative {
  \global
  R1
  \repeat volta 2 {
    r4 g f(e
    d4) c bes g
    c8(d) ees(c) d4 r
    R1 % 191d
    r4 c' bes(a
    g4) f es d
    ees4 bes d2~
    d2. g,4 % 192a
    d'4 4 g, r
    r4 r8 d' g(fis) g(a)
    bes4 4 bes,8(c) d(bes)
    ees8(d) c(bes) a4 g % 192b
    d'2 r
    R1
    g4(fis) bes(a
    g4) f e d % 193a
    d4(cis) f(e)
    d4(a) d(a')
    d,4(c bes) bes
    a4. 8 4 4 % 193b
    d4 r8 d g4 r
    c,4. 8 f4 r8 f
    d4 r ees ees % 194a
    f4. 8 bes,4 r8 bes
    ees8 8 r4 d8 8 r4
    c4. 8 d4 r8 d
    bes8 8 r4 c8 8 r4 % 194
    d4 g, d'4. 8
    \alternative {
      {g,2 r}
      {g1}
    }
  }
  \bar "|."
}

wordsBass = \lyricmode {
  With droop -- ing wings you Cu -- pids __ come,
  With droop -- ing wings you Cu -- pids __ come, __
  you Cu -- pids come,
  To scat -- ter __ ro -- ses,
  scat -- ter __ ro -- ses __ on her tomb.
  Soft, __ soft __ and gen -- tle,
  soft, __ soft, __ soft, __ soft. __
  soft __ and gen -- tle as her heart;
  Keep here, here your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver part.

  part.
}

wordsBassSingle = \lyricmode {
  With droop -- ing wings you Cu -- pids __ come,
  With droop -- ing wings you Cu -- pids __ come, __
  you Cu -- pids come,
  To scat -- ter __ ro -- ses,
  scat -- ter __ ro -- ses __ on her tomb.
  Soft, __ soft __ and gen -- tle,
  soft, __ soft, __ soft, __ soft. __
  soft __ and gen -- tle as her heart;
  Keep here, here your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver part.

  With droop -- ing wings you Cu -- pids __ come,
  With droop -- ing wings you Cu -- pids __ come, __
  you Cu -- pids come,
  To scat -- ter __ ro -- ses,
  scat -- ter __ ro -- ses __ on her tomb.
  Soft, __ soft __ and gen -- tle,
  soft, __ soft, __ soft, __ soft. __
  soft __ and gen -- tle as her heart;
  Keep here, here your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver part.
}

wordsBassMidi = \lyricmode {
  "With " droop "ing " "wings " "you " Cu "pids "  "come, "
  "\nWith " droop "ing " "wings " "you " Cu "pids "  "come, " 
  "\nyou " Cu "pids " "come, "
  "\nTo " scat "ter "  ro "ses, "
  "\nscat" "ter "  ro "ses "  "on " "her " "tomb. "
  "\nSoft, "  "soft "  "and " gen "tle, "
  "\nsoft, "  "soft, "  "soft, "  "soft. " 
  "\nsoft "  "and " gen "tle " "as " "her " "heart; "
  "\nKeep " "here, " "here " "your " "watch, "
  "\nkeep " "here, " "here, " "keep " "here " "your " "watch "
  "\nand " ne "ver, " ne "ver, " ne "ver " "part, "
  "\nand " ne "ver, " ne "ver, " ne "ver, " ne "ver " "part. "

  "\nWith " droop "ing " "wings " "you " Cu "pids "  "come, "
  "\nWith " droop "ing " "wings " "you " Cu "pids "  "come, " 
  "\nyou " Cu "pids " "come, "
  "\nTo " scat "ter "  ro "ses, "
  "\nscat" "ter "  ro "ses "  "on " "her " "tomb. "
  "\nSoft, "  "soft "  "and " gen "tle, "
  "\nsoft, "  "soft, "  "soft, "  "soft. " 
  "\nsoft "  "and " gen "tle " "as " "her " "heart; "
  "\nKeep " "here, " "here " "your " "watch, "
  "\nkeep " "here, " "here, " "keep " "here " "your " "watch "
  "\nand " ne "ver, " ne "ver, " ne "ver " "part, "
  "\nand " ne "ver, " ne "ver, " ne "ver, " ne "ver " "part. "
}

pianoRHone = \relative {
  \global
%  \bar "|."
}

pianoRHtwo = \relative {
  \global
%  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
%  \bar "|."
}

pianoLHtwo = \relative {
  \global
%  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #22
%    system-separator-markup = \slashSeparator
%  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%          >>
%        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%          printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%          >>
%        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%          printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%          >>
%        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%          printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%          >>
%        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%          printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%          >>
%        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%          printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%          >>
%        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%          printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%          >>
%        >>
      >>
    >>
    \midi {}
  }
}
