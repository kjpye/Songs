\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Wells of Salvation."
  subtitle    = "Sankey No. 822"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Phœbe A. Holder."
  meter       = \markup\smallCaps "D.C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s2.*3 s4. s4
  \textMark \markup { \box \bold "B" } s8 s2.*3 s4. s4
  \textMark \markup { \box \bold "C" } s8 s2.*3 s4. s4
  \textMark \markup { \box \bold "D" } s8 s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'8 | 4 8 bes4 g8 | 4 f8 ees4 8 | c'4 bes8 4 a8 | bes4.~4 \bar "|" \break
  g8 | 4 8 bes4 g8 | 4 f8 ees4 c'8 | bes8[g] ees g4 f8 | ees4.~4 \bar "|" \break
  f8 4 g8 aes4 f8 | g4 aes8 bes4 8 | 4 8 c[d] c | bes4.~4 \bar "|" \break
  bes8 | ees4 bes8 4 g8 | aes4 c8 bes4 8 | bes[ees,] aes g4 f8 | ees4.~4
}

alto = \relative {
  \autoBeamOff
  ees'8 | 4 8 g4 ees8 | d4 8 ees4 8 | 4 8 d[f] ees | d4.~4
  ees8 | 4 8 g4 ees8 | d4 8 ees4 8 | 4 8 8[c] d | ees4.~4
  d8 | 4 ees8 f4 d8 | ees4 8 4 g8 | f4 d8 ees[f] ees | d4.~4
  f8 | ees4 g8 4 ees8 | 4 8 4 d8 | ees4 8 4 d8 | ees4.~4
}

tenor = \relative {
  \autoBeamOff
  bes8 | 4 8 ees4 bes8 | 4 aes8 g4 8 | aes4 bes8 8[d] c | bes4.~4
  bes8 | 4 8 ees4 bes8 | 4 aes8 g4 aes8 | g[bes] 8 4 aes8 | g4.~4
  bes8 | 4 8 4 8 | 4 8 4 des8 | d4 bes8 a4 8 | bes4.~4
  bes8 | 4 ees8 4 bes8 | aes4 8 g4 aes8 | bes[c] c bes4 aes8 | g4.~4
}

bass = \relative {
  \autoBeamOff
  ees8 | 4 8 4 8 | bes4 8 ees4 8 | aes4 g8 f4 8 | bes,4.~4
  ees8 | 4 8 4 8 | bes4 8 c4 aes8 | ees'4 g8 bes4 bes,8 | ees4.~4
  bes8 | 4 8 4 8 | ees4 f8 g4 e8 | f4 8 4 8 | bes4.~4
  aes8 | g4 ees8 4 des8 | c4 aes8 ees'4 f8 | g[aes] f bes4 bes,8 | ees4.~4
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  With joy I draw from out God's well
  Rich bless -- ings day by day.
  While liv -- ing wa -- ters spring -- ing up
  I find be -- side the way.
  The bless -- ed flow of this deep well
  Makes fruit -- ful life a -- bound;
  A wa -- tered gar -- den in the soul
  Wher -- e'er this well is found.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  As on I go with will -- ing hands
  And earn -- est heart to do,
  Oft wea -- ry, 'neath the bur -- den's weight,
  Where la -- b'rers are but few—
  I pause to ga -- ther strength be -- side
  The well that spring -- eth up,
  And from its ful -- ness, rich and pure,
  I fill my emp -- ty cup.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Still on, a -- mid a des -- ert path
  Where ev -- 'ry spring is dry,
  There, all a -- lone, my loved ones gone
  To heaven I lift my cry:
  When lo, up -- on my faint -- ing sight,
  As on -- ward still I go,
  Fair El -- im breaks with wav -- ing palms
  And wells of cry -- stal flow.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  And then, as on my path -- way leads
  Through sha -- dows, toil, and strife,
  I reach a low -- ly, qui -- et vale—
  A shel -- tered spot in life:
  With -- in its shade, when jar -- ring notes
  Of earth -- ly dis -- cord cease,
  I ga -- ther hearts -- ease day by day
  At God's sweet well of peace.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "With " "joy " "I " "draw " "from " "out " "God's " "well "
  "\nRich " bless "ings " "day " "by " "day. "
  "\nWhile " liv "ing " wa "ters " spring "ing " "up "
  "\nI " "find " be "side " "the " "way. "
  "\nThe " bless "ed " "flow " "of " "this " "deep " "well "
  "\nMakes " fruit "ful " "life " a "bound; "
  "\nA " wa "tered " gar "den " "in " "the " "soul "
  "\nWher" "e'er " "this " "well " "is " "found.\n"

  \set stanza = "2."
  "\nAs " "on " "I " "go " "with " will "ing " "hands "
  "\nAnd " earn "est " "heart " "to " "do, "
  "\nOft " wea "ry, " "'neath " "the " bur "den's " "weight, "
  "\nWhere " la "b'rers " "are " "but " "few— "
  "\nI " "pause " "to " ga "ther " "strength " be "side "
  "\nThe " "well " "that " spring "eth " "up, "
  "\nAnd " "from " "its " ful "ness, " "rich " "and " "pure, "
  "\nI " "fill " "my " emp "ty " "cup.\n"

  \set stanza = "3."
  "\nStill " "on, " a "mid " "a " des "ert " "path "
  "\nWhere " ev "'ry " "spring " "is " "dry, "
  "\nThere, " "all " a "lone, " "my " "loved " "ones " "gone "
  "\nTo " "heaven " "I " "lift " "my " "cry: "
  "\nWhen " "lo, " up "on " "my " faint "ing " "sight, "
  "\nAs " on "ward " "still " "I " "go, "
  "\nFair " El "im " "breaks " "with " wav "ing " "palms "
  "\nAnd " "wells " "of " cry "stal " "flow.\n"

  \set stanza = "4."
  "\nAnd " "then, " "as " "on " "my " path "way " "leads "
  "\nThrough " sha "dows, " "toil, " "and " "strife, "
  "\nI " "reach " "a " low "ly, " qui "et " "vale— "
  "\nA " shel "tered " "spot " "in " "life: "
  "\nWith" "in " "its " "shade, " "when " jar "ring " "notes "
  "\nOf " earth "ly " dis "cord " "cease, "
  "\nI " ga "ther " hearts "ease " "day " "by " "day "
  "\nAt " "God's " "sweet " "well " "of " "peace. "
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi"
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
