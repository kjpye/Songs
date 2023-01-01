\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Suffer me to Come."
  subtitle    = "Sankey No. 586"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Lowry."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "S. H."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
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
  ees'4 | aes4. f8 ees4 4 | aes4. f8 ees2 | f g4 aes | bes2. \bar "|" \break
  ees,4 | c'4. bes8 aes4 4 | 4. g8 f4 4 | ees(aes) g(bes) | aes2.
}

alto = \relative {
  \autoBeamOff
  c'4 | 4. des8 c4 4 | 4. des8 c2 | des2 ees8[des] c4 | ees2.
  ees4 | 4. 8 4 c | f4. ees8 des4 4 | c(ees) ees(des) | c2.
}

tenor = \relative {
  \autoBeamOff
  aes4 | ees4. aes8 4 4 | ees4. aes8 2 | 2 bes4 aes | g2.
  g4 aes4. g8 aes4 4 | 4. 8 4 4 | 4(c) bes(g) | aes2.
}

bass = \relative {
  \autoBeamOff
  aes,4 | 4. 8 4 4 | 4. 8 2 | des2 bes4 f' | ees2.
  ees4 | aes,4. bes8 c4 aes | des4. 8 4 4 | ees2 2 | aes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, suf -- fer me to come to Thee,
  Je -- sus, the Son:
  Oh, may my heart from e -- vil part,
  To Thee be won.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thy bless -- ing give: help me to live,
  Je -- sus for Thee
  Nor let me stray from Thee a -- way,
  But streng -- then me.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Safe in the arms that guard from harms,
  Je -- sus, my guide,
  Pro -- tect me still, keep me from ill,
  Close to Thy side.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  So strong Thou art, con -- trol my heart,
  Je -- sus, most kind;
  Oh, make me true, my soul re -- new,
  To Thee it bind.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  When ends my life from care and strife,
  Je -- sus, with Thee.
  In heaven -- ly peace, where she doth cease,
  At home I'll be.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " suf "fer " "me " "to " "come " "to " "Thee, "
  "\nJe" "sus, " "the " "Son: "
  "\nOh, " "may " "my " "heart " "from " e "vil " "part, "
  "\nTo " "Thee " "be " "won.\n"

  \set stanza = "2."
  "\nThy " bless "ing " "give: " "help " "me " "to " "live, "
  "\nJe" "sus " "for " "Thee "
  "\nNor " "let " "me " "stray " "from " "Thee " a "way, "
  "\nBut " streng "then " "me.\n"

  \set stanza = "3."
  "\nSafe " "in " "the " "arms " "that " "guard " "from " "harms, "
  "\nJe" "sus, " "my " "guide, "
  "\nPro" "tect " "me " "still, " "keep " "me " "from " "ill, "
  "\nClose " "to " "Thy " "side.\n"

  \set stanza = "4."
  "\nSo " "strong " "Thou " "art, " con "trol " "my " "heart, "
  "\nJe" "sus, " "most " "kind; "
  "\nOh, " "make " "me " "true, " "my " "soul " re "new, "
  "\nTo " "Thee " "it " "bind.\n"

  \set stanza = "5."
  "\nWhen " "ends " "my " "life " "from " "care " "and " "strife, "
  "\nJe" "sus, " "with " "Thee. "
  "\nIn " heaven "ly " "peace, " "where " "she " "doth " "cease, "
  "\nAt " "home " "I'll " "be. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
      #(layout-set-staff-size 20)
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
                                              \wordsFive  \chorus
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
