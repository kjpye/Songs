\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Shall be Satisfied"
  subtitle    = "Sankey No. 575"
  subsubtitle = "Sankey 880 No. 295"
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
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \textMark \markup { \box \bold "C" } s1*2
  \textMark \markup { \box \bold "D" } s1*3
  \textMark \markup { \box \bold "E" } s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

dynamicsPrint = {
}

dynamicsOmit = {
}

soprano = \relative {
  \autoBeamOff
  g'4. fis8 g4 a | a g e8 g4. | a gis8 a4 c | 8[b] a4 g2 |
  g4. fis8 g4 a | a g e8 g4. | a b8 c4 d8[e] | b4. a8 g2 |
  \section \sectionLabel \markup\smallCaps Chorus.
  g2~ \tuplet 3/2 {8 f g} \tuplet 3/2 {a g e} | c'2~ \tuplet 3/2 {8 d e} \tuplet 3/2 {d c a} |
  g4 b8. a16 g4 f8. d16 | f4 e2 r4 | g2~ \tuplet 3/2 {8 fis g} \tuplet 3/2 {a g e} |
  e'2~ \tuplet 3/2 {8 d c} \tuplet 3/2 {d c a} | g4 c8. d16 e4 \tuplet 3/2 {c8[d] e} | d2 c |
}

alto = \relative {
  \autoBeamOff
  e'4. dis8 e4 f | f4 e c8 e4. | f4. 8 4 a | 8[g] f4 e2 |
  e4. dis8 e4 f | f e c8 e4. | f4. 8 e4 f8[e] | d4. fis8 g4(f) \section |
  e2~ \tuplet 3/2 {8 dis e}\tuplet 3/2 {f e c} | e2~ \tuplet 3/2 {8 f g} \tuplet 3/2 {f f f} |
  e4 g8. f16 e4 d8. b16 | d4 c2 r4 | e2~ \tuplet 3/2 {8 dis e} \tuplet 3/2 {f e c} |
  g'2~ \tuplet 3/2 {8 8 8} \tuplet 3/2 {f f f} | e4 8. f16 g4 \tuplet 3/2 {e8[f] g} | f2 e |
}

tenor = \relative {
  \autoBeamOff
  c'4. 8 4 4 | 4 4 g8 c4. | 4. 8 4 4 | 4 4 2 |
  c4. 8 4 4 | 4 4 g8 c4. | 4. g8 4 4 | 4. c8 b2 \section |
  \tuplet 3/2 {c8 8 8} \tuplet 3/2 {c c c} r2 | \tuplet 3/2 {g8 8 8} \tuplet 3/2 {c c g} \tuplet 3/2 {g g g} \tuplet 3/2 {a a c} |
  c4 g8. 16 c4 g8. 16 | 4 2 r4 | \tuplet 3/2 {c8 c c} \tuplet 3/2 {c c c} r2 |
  \tuplet 3/2 {c8 8 8} \tuplet 3/2 {c c c} \tuplet 3/2 {c b c} \tuplet 3/2 {a a c} | c4 8. b16 c4 \tuplet 3/2 {g4 8} | b4(a8[g]) 2 |
}

bass = \relative {
  \autoBeamOff
  c4. 8 4 4 | 4 4 8 4. | f4. 8 4 4 | c4 4 2 |
  c4. 8 4 4 | 4 4 8 4. | f4. d8 c4 b8[c] | d4. 8 g,2 \section |
  \tuplet 3/2 {c8 e g} \tuplet 3/2 {c, c c} r2 | \tuplet 3/2 {c8 e g} \tuplet 3/2 {c g e} \tuplet 3/2 {c c c} \tuplet 3/2 {f f f} |
  g4 8. 16 g,4 8. 16 | c4 2 r4 | \tuplet 3/2 {c8 e g} \tuplet 3/2 {c, c c} r2 |
  \tuplet 3/2 {c8 e g} \tuplet 3/2 {c g e} \tuplet 3/2 {c d e} \tuplet 3/2 {f f f} | g4 8. 16 4 \tuplet 3/2 {4 8} | g,2 c |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  I __ shall be sat -- is -- fied,
  I __ shall be sat -- is -- fied,
  When I a -- wake in His like -- ness,
  I __ shall be sat -- is -- fied,
  I __ shall be sat -- is -- fied,
  When I a -- wake in His like -- ness.
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  I shall be sat -- is -- fied,
  I shall be sat -- is -- fied,
  I shall be sat -- is -- fied,
  _ _ _ _ _ _ _ _
  I shall be sat -- is -- fied,
  I shall be sat -- is -- fied,
  I shall be sat -- is -- fied,
  _ _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Soul of mine, in earth -- ly tem -- ple,
  Why not here con -- tent a -- bide?
  Why art thou for e -- ver plea -- ding?
  Why art thou not sat -- is -- fied?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Soul of mine, my heart is cling -- ing
  To the earth's fair pomp and pride;
  Ah, why dost thou thus re -- prove me?
  Why art thou not sat -- is -- fied?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Soul of mine, must I sur -- ren -- der,
  See my -- self as cru -- ci -- fied;
  Turn from all of earth's am -- bi -- tion,
  That thou may'st be sat -- is -- fied?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Soul of mine, con -- ti -- nue plea -- ding;
  Sin re -- buke, and fol -- ly chide;
  I ac -- cept the cross of Je -- sus,
  That thou may'st be sat -- is -- fied?
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Soul " "of " "mine, " "in " earth "ly " tem "ple, "
  "\nWhy " "not " "here " con "tent " a "bide? "
  "\nWhy " "art " "thou " "for " e "ver " plea "ding? "
  "\nWhy " "art " "thou " "not " sat is "fied? "
  "\nI "  "shall " "be " sat is "fied, "
  "\nI "  "shall " "be " sat is "fied, "
  "\nWhen " "I " a "wake " "in " "His " like "ness, "
  "\nI "  "shall " "be " sat is "fied, "
  "\nI "  "shall " "be " sat is "fied, "
  "\nWhen " "I " a "wake " "in " "His " like "ness.\n"

  \set stanza = "2."
  "\nSoul " "of " "mine, " "my " "heart " "is " cling "ing "
  "\nTo " "the " "earth's " "fair " "pomp " "and " "pride; "
  "\nAh, " "why " "dost " "thou " "thus " re "prove " "me? "
  "\nWhy " "art " "thou " "not " sat is "fied? "
  "\nI "  "shall " "be " sat is "fied, "
  "\nI "  "shall " "be " sat is "fied, "
  "\nWhen " "I " a "wake " "in " "His " like "ness, "
  "\nI "  "shall " "be " sat is "fied, "
  "\nI "  "shall " "be " sat is "fied, "
  "\nWhen " "I " a "wake " "in " "His " like "ness.\n"

  \set stanza = "3."
  "\nSoul " "of " "mine, " "must " "I " sur ren "der, "
  "\nSee " my "self " "as " cru ci "fied; "
  "\nTurn " "from " "all " "of " "earth's " am bi "tion, "
  "\nThat " "thou " "may'st " "be " sat is "fied? "
  "\nI "  "shall " "be " sat is "fied, "
  "\nI "  "shall " "be " sat is "fied, "
  "\nWhen " "I " a "wake " "in " "His " like "ness, "
  "\nI "  "shall " "be " sat is "fied, "
  "\nI "  "shall " "be " sat is "fied, "
  "\nWhen " "I " a "wake " "in " "His " like "ness.\n"

  \set stanza = "4."
  "\nSoul " "of " "mine, " con ti "nue " plea "ding; "
  "\nSin " re "buke, " "and " fol "ly " "chide; "
  "\nI " ac "cept " "the " "cross " "of " Je "sus, "
  "\nThat " "thou " "may'st " "be " sat is "fied? "
  "\nI "  "shall " "be " sat is "fied, "
  "\nI "  "shall " "be " sat is "fied, "
  "\nWhen " "I " a "wake " "in " "His " like "ness, "
  "\nI "  "shall " "be " sat is "fied, "
  "\nI "  "shall " "be " sat is "fied, "
  "\nWhen " "I " a "wake " "in " "His " like "ness. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Soul " "of " "mine, " "in " earth "ly " tem "ple, "
  "\nWhy " "not " "here " con "tent " a "bide? "
  "\nWhy " "art " "thou " "for " e "ver " plea "ding? "
  "\nWhy " "art " "thou " "not " sat is "fied? "
  "\nI " "shall " "be " sat is "fied, "
  "\nI " "shall " "be " sat is "fied, "
  "\nI " "shall " "be " sat is "fied, "
  "\nWhen " "I " a "wake " "in " "His " like "ness. "
  "\nI " "shall " "be " sat is "fied, "
  "\nI " "shall " "be " sat is "fied, "
  "\nI " "shall " "be " sat is "fied, "
  "\nWhen " "I " a "wake " "in " "His " like "ness.\n"

  \set stanza = "2."
  "\nSoul " "of " "mine, " "my " "heart " "is " cling "ing "
  "\nTo " "the " "earth's " "fair " "pomp " "and " "pride; "
  "\nAh, " "why " "dost " "thou " "thus " re "prove " "me? "
  "\nWhy " "art " "thou " "not " sat is "fied? "
  "\nI " "shall " "be " sat is "fied, "
  "\nI " "shall " "be " sat is "fied, "
  "\nI " "shall " "be " sat is "fied, "
  "\nWhen " "I " a "wake " "in " "His " like "ness. "
  "\nI " "shall " "be " sat is "fied, "
  "\nI " "shall " "be " sat is "fied, "
  "\nI " "shall " "be " sat is "fied, "
  "\nWhen " "I " a "wake " "in " "His " like "ness.\n"

  \set stanza = "3."
  "\nSoul " "of " "mine, " "must " "I " sur ren "der, "
  "\nSee " my "self " "as " cru ci "fied; "
  "\nTurn " "from " "all " "of " "earth's " am bi "tion, "
  "\nThat " "thou " "may'st " "be " sat is "fied? "
  "\nI " "shall " "be " sat is "fied, "
  "\nI " "shall " "be " sat is "fied, "
  "\nI " "shall " "be " sat is "fied, "
  "\nWhen " "I " a "wake " "in " "His " like "ness. "
  "\nI " "shall " "be " sat is "fied, "
  "\nI " "shall " "be " sat is "fied, "
  "\nI " "shall " "be " sat is "fied, "
  "\nWhen " "I " a "wake " "in " "His " like "ness.\n"

  \set stanza = "4."
  "\nSoul " "of " "mine, " con ti "nue " plea "ding; "
  "\nSin " re "buke, " "and " fol "ly " "chide; "
  "\nI " ac "cept " "the " "cross " "of " Je "sus, "
  "\nThat " "thou " "may'st " "be " sat is "fied? "
  "\nI " "shall " "be " sat is "fied, "
  "\nI " "shall " "be " sat is "fied, "
  "\nI " "shall " "be " sat is "fied, "
  "\nWhen " "I " a "wake " "in " "His " like "ness. "
  "\nI " "shall " "be " sat is "fied, "
  "\nI " "shall " "be " sat is "fied, "
  "\nI " "shall " "be " sat is "fied, "
  "\nWhen " "I " a "wake " "in " "His " like "ness.\n"
}

\book {
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
      #(layout-set-staff-size 17)
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
