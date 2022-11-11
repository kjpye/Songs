\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sweeter as the Days go by."
  subtitle    = "Sankey No. 510"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. E. Hewitt."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key d \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*2 s2
  \mark \markup { \box "B" } s2 s1*3
  \mark \markup { \box "C" }    s1*3
  \mark \markup { \box "D" }    s1*2 s2.
  \mark \markup { \box "E" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  fis'8[g] | a4 4 b8 a fis d | fis4 e e4 8[fis] | g g cis b \bar "|" \break a4 g |
  fis2. 8[g] | a4 4 b8 a d cis | 4 b b e8[d] |
  cis8 8 8 b a4 e' | d2. \bar "||" 4^\markup\smallCaps Chorus. | cis4. e8 g,4 b |
  a4. d8 fis,4 4 | e a8 cis e d cis b | a2.\fermata \bar "|" \break 4 |
  d4. 8 4 fis, | g4 a b e8[d] | cis8 8 8 b a4 e' | d2.
}

alto = \relative {
  \autoBeamOff
  d'8[e] | fis4 4 g8 fis d d | 4 cis cis cis8[d] | e8 8 g g g4 e |
  d2. 8[e] | fis4 4 g8 fis a a | a4 g g g |
  g8 8 8 8 4 4 | fis2. 4 | g4. 8 e4 g |
  fis4. 8 d4 4 | cis4 e8 a gis8 8 8 8 | a4 e8 fis g4\fermata g |
  fis4. 8 4 d | cis4 d d g | 8 8 8 8 4 4 | fis2.
}

tenor = \relative {
  \autoBeamOff
  a4 | d4 4 8 8 a fis | a4 4 4 4 | cis8 8 e d cis4 a |
  fis2. 4 | d'4 4 8 8 8 8 | 4 4 4 b |
  a8 8 8 d cis4 a | 2. d4 | e8 8 8 cis cis4 cis |
  d8 8 8 a a4 4 | a cis8 e d b e d | cis4 8 d e4\fermata cis4 |
  d4. a8 4 4 | 4 4 g b | a8 8 8 d cis4 a | 2.
}

bass = \relative {
  \autoBeamOff
  d4 | 4 4 8 8 8 8 | a4 4 4 a' | 8 8 8 8 4 cis, |
  d2. 4 | 4 4 8 8 fis fis | g4 4 4 4 |
  a8 8 8 8 4 a, | d2. 4 | a'8 8 8 8 4 a, |
  d8 8 8 8 4 4 | e4 8 8 8 8 8 8 | a2.\fermata 4 |
  d,4. 8 4 4 | e4 fis g g | a8 8 8 8 4 a, | d2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  We'll fill the days with joy -- ful praise;
  We'll sing as the hap -- py mo -- ments fly;
  The song of love to Him a -- bove
  Grows sweet -- er as the days go by.
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  We'll fill, we'll fill the days with joy -- ful, joy -- ful praise;
  _ _ _ _ _ _ _ _ _ mo -- ments fly;
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  The dear old sto -- ry of a Sa -- viour's love
  Is sweet -- er as the days go by;
  The glad as -- sur -- ance of a home a -- bove
  Is sweet -- er as the days go by.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The sun -- beams ahi -- ning from the Liv -- ing Light
  Are bright -- er as the days go by;
  The stars of prom -- ise cheer -- ing sor -- row's night
  Are bright -- er as the days go by.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Hope's an -- chor, hold -- ing in the storm -- y strife,
  Is strong -- er as the days go by;
  We feel the throb -- bings of im -- mor -- tal life
  Grow strong -- er as the days go by.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The peace that Je -- sus gives to us a -- new
  Is deep -- er as the days go by;
  The pros -- pects op -- 'ning to the Christ -- ians view
  Are gran -- der as the days go by.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "The " "dear " "old " sto "ry " "of " "a " Sa "viour's " "love "
  "\nIs " sweet "er " "as " "the " "days " "go " "by; "
  "\nThe " "glad " as sur "ance " "of " "a " "home " a "bove "
  "\nIs " sweet "er " "as " "the " "days " "go " "by. "
  "\nWe'll " "fill " "the " "days " "with " joy "ful " "praise; "
  "\nWe'll " "sing " "as " "the " hap "py " mo "ments " "fly; "
  "\nThe " "song " "of " "love " "to " "Him " a "bove "
  "\nGrows " sweet "er " "as " "the " "days " "go " "by.\n"

  \set stanza = "2."
  "\nThe " sun "beams " ahi "ning " "from " "the " Liv "ing " "Light "
  "\nAre " bright "er " "as " "the " "days " "go " "by; "
  "\nThe " "stars " "of " prom "ise " cheer "ing " sor "row's " "night "
  "\nAre " bright "er " "as " "the " "days " "go " "by. "
  "\nWe'll " "fill " "the " "days " "with " joy "ful " "praise; "
  "\nWe'll " "sing " "as " "the " hap "py " mo "ments " "fly; "
  "\nThe " "song " "of " "love " "to " "Him " a "bove "
  "\nGrows " sweet "er " "as " "the " "days " "go " "by.\n"

  \set stanza = "3."
  "\nHope's " an "chor, " hold "ing " "in " "the " storm "y " "strife, "
  "\nIs " strong "er " "as " "the " "days " "go " "by; "
  "\nWe " "feel " "the " throb "bings " "of " im mor "tal " "life "
  "\nGrow " strong "er " "as " "the " "days " "go " "by. "
  "\nWe'll " "fill " "the " "days " "with " joy "ful " "praise; "
  "\nWe'll " "sing " "as " "the " hap "py " mo "ments " "fly; "
  "\nThe " "song " "of " "love " "to " "Him " a "bove "
  "\nGrows " sweet "er " "as " "the " "days " "go " "by.\n"

  \set stanza = "4."
  "\nThe " "peace " "that " Je "sus " "gives " "to " "us " a "new "
  "\nIs " deep "er " "as " "the " "days " "go " "by; "
  "\nThe " pros "pects " op "'ning " "to " "the " Christ "ians " "view "
  "\nAre " gran "der " "as " "the " "days " "go " "by. "
  "\nWe'll " "fill " "the " "days " "with " joy "ful " "praise; "
  "\nWe'll " "sing " "as " "the " hap "py " mo "ments " "fly; "
  "\nThe " "song " "of " "love " "to " "Him " a "bove "
  "\nGrows " sweet "er " "as " "the " "days " "go " "by. "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "The " "dear " "old " sto "ry " "of " "a " Sa "viour's " "love "
  "\nIs " sweet "er " "as " "the " "days " "go " "by; "
  "\nThe " "glad " as sur "ance " "of " "a " "home " a "bove "
  "\nIs " sweet "er " "as " "the " "days " "go " "by. "
  "\nWe'll " "fill " "the " "days " "with " joy "ful " "praise; "
  "\nWe'll " "sing " "as " "the " hap "py " mo "ments " "fly, " mo "ments " "fly; "
  "\nThe " "song " "of " "love " "to " "Him " a "bove "
  "\nGrows " sweet "er " "as " "the " "days " "go " "by.\n"

  \set stanza = "2."
  "\nThe " sun "beams " ahi "ning " "from " "the " Liv "ing " "Light "
  "\nAre " bright "er " "as " "the " "days " "go " "by; "
  "\nThe " "stars " "of " prom "ise " cheer "ing " sor "row's " "night "
  "\nAre " bright "er " "as " "the " "days " "go " "by. "
  "\nWe'll " "fill " "the " "days " "with " joy "ful " "praise; "
  "\nWe'll " "sing " "as " "the " hap "py " mo "ments " "fly, " mo "ments " "fly; "
  "\nThe " "song " "of " "love " "to " "Him " a "bove "
  "\nGrows " sweet "er " "as " "the " "days " "go " "by.\n"

  \set stanza = "3."
  "\nHope's " an "chor, " hold "ing " "in " "the " storm "y " "strife, "
  "\nIs " strong "er " "as " "the " "days " "go " "by; "
  "\nWe " "feel " "the " throb "bings " "of " im mor "tal " "life "
  "\nGrow " strong "er " "as " "the " "days " "go " "by. "
  "\nWe'll " "fill " "the " "days " "with " joy "ful " "praise; "
  "\nWe'll " "sing " "as " "the " hap "py " mo "ments " "fly, " mo "ments " "fly; "
  "\nThe " "song " "of " "love " "to " "Him " a "bove "
  "\nGrows " sweet "er " "as " "the " "days " "go " "by.\n"

  \set stanza = "4."
  "\nThe " "peace " "that " Je "sus " "gives " "to " "us " a "new "
  "\nIs " deep "er " "as " "the " "days " "go " "by; "
  "\nThe " pros "pects " op "'ning " "to " "the " Christ "ians " "view "
  "\nAre " gran "der " "as " "the " "days " "go " "by. "
  "\nWe'll " "fill " "the " "days " "with " joy "ful " "praise; "
  "\nWe'll " "sing " "as " "the " hap "py " mo "ments " "fly, " mo "ments " "fly; "
  "\nThe " "song " "of " "love " "to " "Him " a "bove "
  "\nGrows " sweet "er " "as " "the " "days " "go " "by. "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  The dear old sto -- ry of a Sa -- viour's love
  Is sweet -- er as the days go by;
  The glad as -- sur -- ance of a home a -- bove
  Is sweet -- er as the days go by.
  We'll fill, we'll fill the days with joy -- ful, joy -- ful  praise;
  We'll sing as the hap -- py mo -- ments fly, mo -- ments fly;
  The song of love to Him a -- bove
  Grows sweet -- er as the days go by.

  \set stanza = "2."
  The sun -- beams ahi -- ning from the Liv -- ing Light
  Are bright -- er as the days go by;
  The stars of prom -- ise cheer -- ing sor -- row's night
  Are bright -- er as the days go by.
  We'll fill, we'll fill the days with joy -- ful, joy -- ful  praise;
  We'll sing as the hap -- py mo -- ments fly, mo -- ments fly;
  The song of love to Him a -- bove
  Grows sweet -- er as the days go by.

  \set stanza = "3."
  Hope's an -- chor, hold -- ing in the storm -- y strife,
  Is strong -- er as the days go by;
  We feel the throb -- bings of im -- mor -- tal life
  Grow strong -- er as the days go by.
  We'll fill, we'll fill the days with joy -- ful, joy -- ful  praise;
  We'll sing as the hap -- py mo -- ments fly, mo -- ments fly;
  The song of love to Him a -- bove
  Grows sweet -- er as the days go by.

  \set stanza = "4."
  The peace that Je -- sus gives to us a -- new
  Is deep -- er as the days go by;
  The pros -- pects op -- 'ning to the Christ -- ians view
  Are gran -- der as the days go by.
  We'll fill, we'll fill the days with joy -- ful, joy -- ful  praise;
  We'll sing as the hap -- py mo -- ments fly, mo -- ments fly;
  The song of love to Him a -- bove
  Grows sweet -- er as the days go by.
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "The " "dear " "old " sto "ry " "of " "a " Sa "viour's " "love "
  "\nIs " sweet "er " "as " "the " "days " "go " "by; "
  "\nThe " "glad " as sur "ance " "of " "a " "home " a "bove "
  "\nIs " sweet "er " "as " "the " "days " "go " "by. "
  "\nWe'll " "fill, " "we'll " "fill " "the " "days " "with " joy "ful, " joy "ful "  "praise; "
  "\nWe'll " "sing " "as " "the " hap "py " mo "ments " "fly; "
  "\nThe " "song " "of " "love " "to " "Him " a "bove "
  "\nGrows " sweet "er " "as " "the " "days " "go " "by.\n"

  \set stanza = "2."
  "\nThe " sun "beams " ahi "ning " "from " "the " Liv "ing " "Light "
  "\nAre " bright "er " "as " "the " "days " "go " "by; "
  "\nThe " "stars " "of " prom "ise " cheer "ing " sor "row's " "night "
  "\nAre " bright "er " "as " "the " "days " "go " "by. "
  "\nWe'll " "fill, " "we'll " "fill " "the " "days " "with " joy "ful, " joy "ful "  "praise; "
  "\nWe'll " "sing " "as " "the " hap "py " mo "ments " "fly; "
  "\nThe " "song " "of " "love " "to " "Him " a "bove "
  "\nGrows " sweet "er " "as " "the " "days " "go " "by.\n"

  \set stanza = "3."
  "\nHope's " an "chor, " hold "ing " "in " "the " storm "y " "strife, "
  "\nIs " strong "er " "as " "the " "days " "go " "by; "
  "\nWe " "feel " "the " throb "bings " "of " im mor "tal " "life "
  "\nGrow " strong "er " "as " "the " "days " "go " "by. "
  "\nWe'll " "fill, " "we'll " "fill " "the " "days " "with " joy "ful, " joy "ful "  "praise; "
  "\nWe'll " "sing " "as " "the " hap "py " mo "ments " "fly; "
  "\nThe " "song " "of " "love " "to " "Him " a "bove "
  "\nGrows " sweet "er " "as " "the " "days " "go " "by.\n"

  \set stanza = "4."
  "\nThe " "peace " "that " Je "sus " "gives " "to " "us " a "new "
  "\nIs " deep "er " "as " "the " "days " "go " "by; "
  "\nThe " pros "pects " op "'ning " "to " "the " Christ "ians " "view "
  "\nAre " gran "der " "as " "the " "days " "go " "by. "
  "\nWe'll " "fill, " "we'll " "fill " "the " "days " "with " joy "ful, " joy "ful "  "praise; "
  "\nWe'll " "sing " "as " "the " hap "py " mo "ments " "fly; "
  "\nThe " "song " "of " "love " "to " "Him " a "bove "
  "\nGrows " sweet "er " "as " "the " "days " "go " "by. "
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
            \addlyrics \wordsMidiSop
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
            \addlyrics \wordsMidiTenor
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
            \addlyrics \wordsMidiBass
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 18)

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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
                                              \wordsFour  \chorus
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

#(set-global-staff-size 20)

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
