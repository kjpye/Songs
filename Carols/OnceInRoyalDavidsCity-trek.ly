\version "2.24.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Once in Royal David's City"
%  subtitle    = "Sankey No. X"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = \markup\smallCaps "composer"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2 s1*3 s2
  \repeat volta 3 {
    s2
    \textMark \markup { \box \bold "B" } s1*4
    \textMark \markup { \box \bold "C" } s1*4
    \textMark \markup { \box \bold "D" } s1*3
    \alternative {
      {s1}
      {s2}
    }
  }
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \section }

sopranoA = \relative {
  d''4 d | c4. f,8 bes4 4 | a2 d4 d | c4. a8 a(g) f(e) | f2
}

sopranoB = \relative {
  c'4 e |
  f4. 8 8(e) f(g) | g4 f f a | c4. a8 a(g) f(e) | f2 c4 e |
  f4. 8 8(e) f(g) | 4 f f a | c4. a8 a(g) f(e) | f2 d'4 4 |
  c4. f,8 bes4 4 |
  \tag #'dash    {\slurDashed a4(a) \slurSolid d4 d |}
  \tag #'(v1 v3) {            a2               d4 d |}
  \tag #'v2      {            a4 a             d4 d |}
  c4. a8 a(g) f(e) |
}

sopranoC = \relative {
  \tag #'dash    {\slurDashed f'4(f) \slurSolid r2}
  \tag #'(v1 v3) {            f2                r2}
  \tag #'v2      {            f4 f              r2}
}

sopranoD = \relative {
  f'2
}

soprano = {
  \autoBeamOff \voiceOne
  \sopranoA
  \repeat volta 3 {
    \sopranoB
    \alternative { {\sopranoC} {\sopranoD} }
  }
}

altoA = \relative {
  d'8(e)(f g) | c,4 c d e | f(e) d8 e f g | c, e f f d4 c | 2
}

altoB = \relative {
  a4 bes |
  c4 4 4 8(e) | e4 f f f | 4. 8 d4 c | c2 4 e |
  c4 c b b | c8(bes) a4 c f | c c d c | c2 d8(e) f(g) |
  c,4 4 d e |
  \tag #'dash    {\slurDashed f4(f) \slurSolid d8(e) f(g) |}
  \tag #'(v1 v3) {            f2               d8(e) f(g) |}
  \tag #'v2      {            f4 f             d8(e) f(g) |}
  c,(e f) f d4 c |
}

altoC = \relative {
  \tag #'dash    {\slurDashed c'4(c) \slurSolid r2}
  \tag #'(v1 v3) {            c2                r2}
  \tag #'v2      {            c4 c              r2}
}

altoD = \relative {
  c'2
}

alto = {
  \autoBeamOff \voiceTwo
  \altoA
  \repeat volta 3 {
    \altoB
    \alternative { {\altoC} {\altoD} }
  }
}

tenorA = \relative {
  f4 bes | a a bes c | c2 bes4 bes | a8 bes c c c bes a g | a2
}

tenorB = \relative {
    c'4 bes |
    a4 f a8(g) a(bes) | 4 a a f | 4. c'8 8(bes) a(g) | a2 4 bes |
    c4 a g f | e f a c | g a8(c) c(bes) a(g) | a2 f4 bes |
    a4 a bes c |
    \tag #'dash    {\slurDashed c4(c) \slurSolid bes4 bes |}
    \tag #'(v1 v3) {            c2               bes4 bes |}
    \tag #'v2      {            c4 c             bes4 bes |}
    a8(bes c) c c(bes) a(g) |
  }

tenorC = \relative {
  \tag #'dash    {\slurDashed a4(a) \slurSolid r2}
  \tag #'(v1 v3) {            a2               r2}
  \tag #'v2      {            a4 a             r2}
}

tenorD = \relative {
  a2
}

tenor = {
  \autoBeamOff \voiceOne
  \tenorA
  \repeat volta 3 {
    \tenorB
    \alternative { {\tenorC} {\tenorD} }
  }
}

bassA = \relative {
  bes,8 c d e | f4 a g c, | f2 bes,8 c d e | f g a f bes,4 c | <f, f'>2
}

bassB = \relative {
  a4 g |f4 a, c c | f f f d | a f bes c | f2 a4 g |
  a4 f d g, | c f, a' f | e f bes, c | f2 bes,8(c) d(e) |
  f4 a g c, |
  \tag #'dash    {\slurDashed f4(f) \slurSolid bes,8(c) d(e) |}
  \tag #'(v1 v3) {            f2               bes,8(c) d(e) |}
  \tag #'v2      {            f4 f             bes,8(c) d(e) |}
  f(g a) f bes,4 c |
}

bassC = \relative {
  \tag #'dash    {\slurDashed <f, f'>4(q) \slurSolid r2|}
  \tag #'(v1 v3) {            <f f'>2                r2|}
  \tag #'v2      {            <f f'>4 q              r2|}
}

bassD = \relative {
  <f, f'>2
}

bass = {
  \autoBeamOff \voiceTwo
  \bassA
  \repeat volta 3 {
    \bassB
    \alternative { {\bassC} {\bassD} }
  }
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \repeat unfold 14 _
  \set stanza = "1."
  Once in ro -- yal Da -- vid's \nom ci -- ty \yesm
  stood a lone -- ly cat -- tle shed
  where a mo -- ther laid __ her __ ba -- by
  in a man -- ger for __ his __ bed.
  Ma -- ry was that mo -- ther mild, __
  Je -- sus Christ her lit -- tle child.
}
  
wordsTwo = \lyricmode {
  \repeat unfold 14 _
  \set stanza = "2."
  He came down to __ earth __ from hea -- ven
  Who is God and Lord __ of __ all.
  And His shel -- ter was __ a __ sta -- ble
  and His cra -- dle was __ a __ stall.
  With the poor and mean and \nom low -- ly, \yesm
  lived on earth our Sa -- viour __ \nom ho -- ly. \yesm
}
  
wordsThree = \lyricmode {
  \repeat unfold 14 _
  \set stanza = "3."
  Not in that poor lone -- ly __ sta -- ble
  with the ox -- en stand -- ing __ by,
  we shall see Him but __ in __ hea -- ven
  set at God's right hand on __ high
  when, like stars His child -- ren crowned
  all in white shall ga -- ther __ "" round.
}
  
wordsSingle = \lyricmode {
  \repeat unfold 14 _
  \set stanza = "1."
  Once in ro -- yal Da -- vid's \nom ci -- ty \yesm
  stood a lone -- ly cat -- tle shed
  where a mo -- ther laid __ her __ ba -- by
  in a man -- ger for __ his __ bed.
  Ma -- ry was that mo -- ther mild, __
  Je -- sus Christ her lit -- tle child.

  \set stanza = "2."
  He came down to __ earth __ from hea -- ven
  Who is God and Lord __ of __ all.
  And His shel -- ter was __ a __ sta -- ble
  and His cra -- dle was __ a __ stall.
  With the poor and mean and \nom low -- ly, \yesm
  lived on earth our Sa -- viour __ \nom ho -- ly. \yesm

  \set stanza = "3."
  Not in that poor lone -- ly __ sta -- ble
  with the ox -- en stand -- ing __ by,
  we shall see Him but __ in __ hea -- ven
  set at God's right hand on __ high
  when, like stars His child -- ren crowned
  all in white shall ga -- ther __ round.
}
  
wordsMidi = \lyricmode {
  \repeat unfold 14 ""
  \set stanza = "1."
  "Once " "in " ro "yal " Da "vid's " \nom ci "ty " \yesm
  "\nstood " "a " lone "ly " cat "tle " "shed "
  "\nwhere " "a " mo "ther " "laid "  "her "  ba "by "
  "\nin " "a " man "ger " "for "  "his "  "bed. "
  "\nMa" "ry " "was " "that " mo "ther " "mild, " 
  "\nJe" "sus " "Christ " "her " lit "tle " "child.\n"

  \set stanza = "2."
  "\nHe " "came " "down " "to "  "earth "  "from " hea "ven "
  "\nWho " "is " "God " "and " "Lord "  "of "  "all. "
  "\nAnd " "His " shel "ter " "was "  "a "  sta "ble "
  "\nand " "His " cra "dle " "was "  "a "  "stall. "
  "\nWith " "the " "poor " "and " "mean " "and " \nom low "ly, " \yesm
  "\nlived " "on " "earth " "our " Sa "viour "  \nom ho "ly.\n" \yesm

  \set stanza = "3."
  "\nNot " "in " "that " "poor " lone "ly "  sta "ble "
  "\nwith " "the " ox "en " stand "ing "  "by, "
  "\nwe " "shall " "see " "Him " "but "  "in "  hea "ven "
  "\nset " "at " "God's " "right " "hand " "on "  "high "
  "\nwhen, " "like " "stars " "His " child "ren " "crowned "
  "\nall " "in " "white " "shall " ga "ther "  "round. "
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \unfoldRepeats \RehearsalTrack }
            \new Voice { \unfoldRepeats \TempoTrack     }
            \new Voice = soprano{ \global
                         \sopranoA
                         \keepWithTag #'v1 \sopranoB
                         \keepWithTag #'v1 \sopranoC
                         \keepWithTag #'v2 \sopranoB
                         \keepWithTag #'v2 \sopranoC
                         \keepWithTag #'v3 \sopranoB
                         \sopranoD
                         \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice = alto { \global
                                \altoA
                                \keepWithTag #'v1 \altoB
                                \keepWithTag #'v1 \altoC \nl
                                \keepWithTag #'v2 \altoB
                                \keepWithTag #'v2 \altoC
                                \keepWithTag #'v3 \altoB
                                \altoD
                                \bar "|."
                              }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice = tenor { \global
                                 \tenorA
                                 \keepWithTag #'v1 \tenorB
                                 \keepWithTag #'v1 \tenorC
                                 \keepWithTag #'v2 \tenorB
                                 \keepWithTag #'v2 \tenorC
                                 \keepWithTag #'v3 \tenorB
                                 \tenorD
                               }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice = tenor { \global
                                 \bassA
                                 \keepWithTag #'v1 \bassB
                                 \keepWithTag #'v1 \bassC
                                 \keepWithTag #'v2 \bassB
                                 \keepWithTag #'v2 \bassC
                                 \keepWithTag #'v3 \bassB
                                 \bassD
                               }
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
          \new Staff = women \with {\consists Merge_rests_engraver}
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice { \global \keepWithTag #'dash \soprano \bar "|." }
            \new Voice { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with {\consists Merge_rests_engraver}
          <<
            \clef "bass"
            \new Voice { \global \keepWithTag #'dash \tenor }
            \new Voice { \global \keepWithTag #'dash \bass }
          >>
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
          \new Staff = women \with {\consists Merge_rests_engraver}
          <<
%            \new Voice { \unfoldRepeats \RehearsalTrack }
%            \new Voice { \unfoldRepeats \TempoTrack }
            \new Voice = "soprano" { \global \voiceOne
              \sopranoA
              \keepWithTag #'v1 \sopranoB
              \keepWithTag #'v1 \sopranoC
              \keepWithTag #'v2 \sopranoB
              \keepWithTag #'v2 \sopranoC
              \keepWithTag #'v3 \sopranoB
              \sopranoD
            }
            \new Voice { \global \voiceTwo
                         \altoA \nl
                         \keepWithTag #'v1 \altoB \nl
                         \keepWithTag #'v1 \altoC \nl
                         \keepWithTag #'v2 \altoB \nl
                         \keepWithTag #'v2 \altoC \nl
                         \keepWithTag #'v3 \altoB \nl
                         \altoD \nl
                         \bar "|."
                       }
            \new Lyrics \lyricsto "soprano" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { \consists Merge_rests_engraver }
          <<
            \clef "bass"
            \new Voice { \global \voiceOne
                         \tenorA
                         \keepWithTag #'v1 \tenorB
                         \keepWithTag #'v1 \tenorC
                         \keepWithTag #'v2 \tenorB
                         \keepWithTag #'v2 \tenorC
                         \keepWithTag #'v3 \tenorB
                         \tenorD
                       }
            \new Voice { \global \voiceTwo
                         \bassA
                         \keepWithTag #'v1 \bassB
                         \keepWithTag #'v1 \bassC
                         \keepWithTag #'v2 \bassB
                         \keepWithTag #'v2 \bassC
                         \keepWithTag #'v3 \bassB
                         \bassD
                       }
          >>
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
