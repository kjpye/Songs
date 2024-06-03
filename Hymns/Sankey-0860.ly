\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Thy hand Upholdeth me."
  subtitle    = "Sankey No. 860"
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

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "C.M."
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
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  ees'4 | aes g aes bes | c4. bes8 aes4 4 | bes4 4 aes g | aes2. \bar "|" \break
  es4 | aes g aes bes | c4. bes8 aes4 4 | bes4 4 aes g | aes2.
  \section \sectionLabel \markup\smallCaps Chorus. \break
  c4 | ees c f ees | 4. des8 bes4 des | c ees des bes | aes2(g4) \bar "|" \break
  ees4 | aes g aes bes | c4. bes8 aes4 4 | bes des c bes | aes2.
}

alto = \relative {
  c'4 | ees4 4 4 g |aes4. ees8 4 aes | f f ees ees | 2.
  c4 | ees4 4 4 g | aes4. ees8 4 4 | f4 4 ees des | c2. \section
  aes'4 | 4 4 4 4 | g4. 8 4 bes | aes ges f f | ees2.
  ees4 | 4 4 4 g | aes4. ees8 4 aes | f bes aes ees | 2.
}

tenor = \relative {
  aes4 | c des ees4 4 | 4. des8 c4 ees | des des c bes | c2.
  aes4 | c des ees ees | 4. des8 c4 ees | des des c bes | aes2. \section
  ees'4 | c ees des c | bes4. 8 ees4 4 | 4 c bes des | c2(bes4)
  des4 | c bes ees ees | 4. des8 c4 ees | des f ees des | c2.
}

bass = \relative {
  aes,4 | 4 bes c ees | aes4. 8 4 c, | des4 4 ees4 4 | aes,2.
  aes4 | 4 bes c ees | aes4. 8 4 c, | des4 4 ees4 4 | aes,2. \section
  aes'4 | 4 4 4 4 | ees4. 8 4 g | aes4 4 des,4 4 | ees2.
  g4 | aes ees c ees | aes4. 8 4 c, | des bes ees4 4 | aes,2.
}

chorus = \lyricmode {
  I know in whom I have be -- lieved,
  And, know -- ing, I am blest;
  Thou art the An -- chor of my soul—
  In Thee my hope shall rest.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  I know Thy hand up -- hold -- eth me,
  My Sa -- viour and my God;
  And step by step I’ll fol -- low Thee
  Wher -- e’er Thy feet have trod.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I know Thy hand up -- hold -- eth me,
  When doubt and dan -- ger near
  Would tempt me from the nar -- row way,
  Or fill my heart with fear.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I know Thy hand up -- hold -- eth me,
  And will in safe -- ty keep
  My trust -- ing heart, though I may pass
  Through wa -- ters dark and deep.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I know Thy hand up -- hold -- eth me,
  And will my soul de -- fend;
  Suf -- fi -- cient is Thy grace, O Lord,
  To keep me to the end.
}
  
wordsMidi = \lyricmode {
  "I " "know " "Thy " "hand " up hold "eth " "me, "
  "\nMy " Sa "viour " "and " "my " "God; "
  "\nAnd " "step " "by " "step " "I’ll " fol "low " "Thee "
  "\nWher" "e’er " "Thy " "feet " "have " "trod. "
  "\nI " "know " "in " "whom " "I " "have " be "lieved, "
  "\nAnd, " know "ing, " "I " "am " "blest; "
  "\nThou " "art " "the " An "chor " "of " "my " "soul— "
  "\nIn " "Thee " "my " "hope " "shall " "rest.\n"

  \set stanza = "2."
  "\nI " "know " "Thy " "hand " up hold "eth " "me, "
  "\nWhen " "doubt " "and " dan "ger " "near "
  "\nWould " "tempt " "me " "from " "the " nar "row " "way, "
  "\nOr " "fill " "my " "heart " "with " "fear. "
  "\nI " "know " "in " "whom " "I " "have " be "lieved, "
  "\nAnd, " know "ing, " "I " "am " "blest; "
  "\nThou " "art " "the " An "chor " "of " "my " "soul— "
  "\nIn " "Thee " "my " "hope " "shall " "rest.\n"

  \set stanza = "3."
  "\nI " "know " "Thy " "hand " up hold "eth " "me, "
  "\nAnd " "will " "in " safe "ty " "keep "
  "\nMy " trust "ing " "heart, " "though " "I " "may " "pass "
  "\nThrough " wa "ters " "dark " "and " "deep. "
  "\nI " "know " "in " "whom " "I " "have " be "lieved, "
  "\nAnd, " know "ing, " "I " "am " "blest; "
  "\nThou " "art " "the " An "chor " "of " "my " "soul— "
  "\nIn " "Thee " "my " "hope " "shall " "rest.\n"

  \set stanza = "4."
  "\nI " "know " "Thy " "hand " up hold "eth " "me, "
  "\nAnd " "will " "my " "soul " de "fend; "
  "\nSuf" fi "cient " "is " "Thy " "grace, " "O " "Lord, "
  "\nTo " "keep " "me " "to " "the " "end. "
  "\nI " "know " "in " "whom " "I " "have " be "lieved, "
  "\nAnd, " know "ing, " "I " "am " "blest; "
  "\nThou " "art " "the " An "chor " "of " "my " "soul— "
  "\nIn " "Thee " "my " "hope " "shall " "rest. "
}

wordsMidiMen = \lyricmode {
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi { \context { \Staff autoBeaming = ##f } }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \bar "|." }
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \tenor \nl } }
                                    { \global \repeat-verses \verses \bass }
            \new NullVoice = alignerT { \repeat-verses \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

\book {
  \paper {
    output-suffix = singlepage
  }
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}
