\version "2.25.17"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Casting all your Care upon Him."
  subtitle    = "Sankey No. 878"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{\smallCaps "Cæsar Malan, D.D.," tr. \smallCaps "J. E. Arnold."}
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8  s2.*3 s4. s4
  \textMark \markup { \box \bold "B" } s8  s2.*3 s4. s4
  \textMark \markup { \box \bold "C" } s4. s1.*2
  \textMark \markup { \box \bold "D" }     s1.*3
  \textMark \markup { \box \bold "E" }     s1.*2 s2. s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  ees'8 | 4 aes8 4 bes8 | aes4 g8 f4 ees8 | 4 c'8 4 des8 | c4.~4 \bar "|" \break
  c8 | des4 c8 bes4 8 | c4 bes8 aes4 8 | bes4 aes8 g[f] g | aes4.~4
  \section \time 12/8 \partial 4. \sectionLabel \markup{\smallCaps Chorus "(1 Peter v. 7)."} \break
  ees4 aes8 | c2.~4 bes8 aes g f | ees2.~4. 4 g8 |
  bes2.~4 aes8 g f g | aes2.~4. ees4 aes8 | c2.~4 bes8 aes bes c |
  des2.~4. 8[c] bes | ees4. aes,4 des8 c4. bes4 8 | aes2.~4.
}

alto = \relative {
  c'8 | 4 8 4 des8 | c4 ees8 des4 c8 | c4 ees8 4 f8 | ees4.~4
  ees8 | 4 8 4 8 | 4 8 4 8 | des4 f8 ees4 des8 | c4.~4 \section
  c4 8 | ees2.~4 des8 c ees des | c2.~4. 4 ees8 |
  des2.~4 c8 bes des8 8 | c2.~4. 4 8 | es2.~4 des8 c des ees |
  f2.~4. 8[ees] des | ees4. f4 8 ees4. des4 8 | c2.~4.
}

tenor = \relative {
  aes8 | 4 ees8 4 8 | 4 aes8 4 8 | 4 8 4 8 | 4.~4
  aes8 | bes4 aes8 g4 8 | aes4 g8 aes4 8 | f4 bes8 4 ees,8 | 4.~4 \section
  aes4 8 | 4. 4. 4. r | aes4 8 8 8 8 4. r |
  g4. 4. 4. r | ees4 8 8 8 8 4. aes4 8 | 4. 4. 4.~4. |
  aes4 8 8 8 8 4. 4 8 | 4. 4 8 4. g4 ees8 | 2.~4.
}

bass = \relative {
  aes,8 | 4 8 4 8 | 4 8 4 8 | 4 8 aes'4 8 | 4.~4
  aes8 | ees4 8 4 8 | aes,4 bes8 c4 8 | des4 8 ees4 8 | aes,4.~4 \section
  aes4 8 | 4. 4. 4. r | 4 8 8 8 8 4. r |
  ees'4. 4. 4. r | aes,4 8 8 8 8 4. 4 8 | aes'4. ges f(ees) |
  des4 8 8 8 8 4. 4 8 | c4. des4 8 ees4. 4 8 | aes,2.~4.
}

chorus = \lyricmode {
  “Cast -- ing all __ your care up -- on Him, __
  Cast -- ing all __ your care up -- on Him, __
  Cast -- ing all __ your care up -- on Him, __
  For He car -- eth, He car -- eth for you.” __
}

chorusMen = \lyricmode {
  \repeat unfold 28 \skip 1
  “Cast -- ing all your care, all your care up -- on Him,
  all your care, all your care up -- on Him,
  Cast -- ing all your care, __
  all your care up -- on Him,
  _ _ _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  How sweet, my Sa -- viour, to re -- pose
  On Thine al -- migh -- ty power!
  To feel Thy strength up -- hold -- ing me,
  Thro’ ev -- ’ry try -- ing hour!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  It is Thy will that I should cast
  My ev -- ’ry care on Thee;
  To Thee re -- fer each ri -- sing grief,
  Each new per -- plex -- i -- ty;
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thast I should trust Thy lov -- ing care,
  And look to Thee a -- lone,
  To calm each troub -- led thought to erst,
  In prayer be -- fore Thy throne.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Why should my heart then be dis -- trest,
  By dread of fu -- ture ill?
  Or why whould un -- be -- liev -- ing fear
  My trem -- bling spi -- rit fill?
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "How " "sweet, " "my " Sa "viour, " "to " re "pose "
  "\nOn " "Thine " al migh "ty " "power! "
  "\nTo " "feel " "Thy " "strength " up hold "ing " "me, "
  "\nThro’ " ev "’ry " try "ing " "hour! "
  "\n“Cast" "ing " "all "  "your " "care " up "on " "Him, " 
  "\nCast" "ing " "all "  "your " "care " up "on " "Him, " 
  "\nCast" "ing " "all "  "your " "care " up "on " "Him, " 
  "\nFor " "He " car "eth, " "He " car "eth " "for " "you.”\n" 

  \set stanza = "2."
  "\nIt " "is " "Thy " "will " "that " "I " "should " "cast "
  "\nMy " ev "’ry " "care " "on " "Thee; "
  "\nTo " "Thee " re "fer " "each " ri "sing " "grief, "
  "\nEach " "new " per plex i "ty; "
  "\n“Cast" "ing " "all "  "your " "care " up "on " "Him, " 
  "\nCast" "ing " "all "  "your " "care " up "on " "Him, " 
  "\nCast" "ing " "all "  "your " "care " up "on " "Him, " 
  "\nFor " "He " car "eth, " "He " car "eth " "for " "you.”\n" 

  \set stanza = "3."
  "\nThast " "I " "should " "trust " "Thy " lov "ing " "care, "
  "\nAnd " "look " "to " "Thee " a "lone, "
  "\nTo " "calm " "each " troub "led " "thought " "to " "erst, "
  "\nIn " "prayer " be "fore " "Thy " "throne. "
  "\n“Cast" "ing " "all "  "your " "care " up "on " "Him, " 
  "\nCast" "ing " "all "  "your " "care " up "on " "Him, " 
  "\nCast" "ing " "all "  "your " "care " up "on " "Him, " 
  "\nFor " "He " car "eth, " "He " car "eth " "for " "you.”\n" 

  \set stanza = "4."
  "\nWhy " "should " "my " "heart " "then " "be " dis "trest, "
  "\nBy " "dread " "of " fu "ture " "ill? "
  "\nOr " "why " "whould " un be liev "ing " "fear "
  "\nMy " trem "bling " spi "rit " "fill? "
  "\n“Cast" "ing " "all "  "your " "care " up "on " "Him, " 
  "\nCast" "ing " "all "  "your " "care " up "on " "Him, " 
  "\nCast" "ing " "all "  "your " "care " up "on " "Him, " 
  "\nFor " "He " car "eth, " "He " car "eth " "for " "you.” " 
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "How " "sweet, " "my " Sa "viour, " "to " re "pose "
  "\nOn " "Thine " al migh "ty " "power! "
  "\nTo " "feel " "Thy " "strength " up hold "ing " "me, "
  "\nThro’ " ev "’ry " try "ing " "hour! "
  "\n“Cast" "ing " "all " "your " "care, " "all " "your " "care " up "on " "Him, "
  "\nall " "your " "care, " "all " "your " "care " up "on " "Him, "
  "\nCast" "ing " "all " "your " "care, " 
  "\nall " "your " "care " up "on " "Him, "
  "\nFor " "He " car "eth, " "He " car "eth " "for " "you.”\n" 

  \set stanza = "2."
  "\nIt " "is " "Thy " "will " "that " "I " "should " "cast "
  "\nMy " ev "’ry " "care " "on " "Thee; "
  "\nTo " "Thee " re "fer " "each " ri "sing " "grief, "
  "\nEach " "new " per plex i "ty; "
  "\n“Cast" "ing " "all " "your " "care, " "all " "your " "care " up "on " "Him, "
  "\nall " "your " "care, " "all " "your " "care " up "on " "Him, "
  "\nCast" "ing " "all " "your " "care, " 
  "\nall " "your " "care " up "on " "Him, "
  "\nFor " "He " car "eth, " "He " car "eth " "for " "you.”\n" 

  \set stanza = "3."
  "\nThast " "I " "should " "trust " "Thy " lov "ing " "care, "
  "\nAnd " "look " "to " "Thee " a "lone, "
  "\nTo " "calm " "each " troub "led " "thought " "to " "erst, "
  "\nIn " "prayer " be "fore " "Thy " "throne. "
  "\n“Cast" "ing " "all " "your " "care, " "all " "your " "care " up "on " "Him, "
  "\nall " "your " "care, " "all " "your " "care " up "on " "Him, "
  "\nCast" "ing " "all " "your " "care, " 
  "\nall " "your " "care " up "on " "Him, "
  "\nFor " "He " car "eth, " "He " car "eth " "for " "you.”\n" 

  \set stanza = "4."
  "\nWhy " "should " "my " "heart " "then " "be " dis "trest, "
  "\nBy " "dread " "of " fu "ture " "ill? "
  "\nOr " "why " "whould " un be liev "ing " "fear "
  "\nMy " trem "bling " spi "rit " "fill? "
  "\n“Cast" "ing " "all " "your " "care, " "all " "your " "care " up "on " "Him, "
  "\nall " "your " "care, " "all " "your " "care " up "on " "Him, "
  "\nCast" "ing " "all " "your " "care, " 
  "\nall " "your " "care " up "on " "Him, "
  "\nFor " "He " car "eth, " "He " car "eth " "for " "you.” " 
}

\book {
  \paper {
    output-suffix = midi-women
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

\book {
  \paper {
    output-suffix = midi-men
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
