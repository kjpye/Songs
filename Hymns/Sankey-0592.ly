\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Not my Own!"
  subtitle    = "Sankey No. 592"
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

  poet        = \markup\smallCaps "D. W. Whittle."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3
  \textMark \markup { \box \bold "B" }    s2.*3
  \textMark \markup { \box \bold "C" }    s2. s2 s4 s1
  \textMark \markup { \box \bold "D" }    s1*3
  \textMark \markup { \box \bold "E" }    s1*3 s2.
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
  \autoBeamOff \time 3/4 \partial 4
  b'8. c16 | d4. b8 e8. d16 | 4 c a8. b16 | c4. e8 d8. c16 |
  b2 g8. a16 | b4. g8 c8. b16 | b4 a fis8. g16 |
  a4. c8 b8. a16 | g2
  \time 4/4 \partial 4 \section \sectionLabel \markup\smallCaps Chorus.
  g8. b16 | a2~8. gis16 a8. c16 |
  b2. 8. d16 | cis2~8. bis16 cis8. e16 | d2~4\fermata d8. c16 |
  b4. g8 a4 b | c e2 d8. c16 | b4. g8 a4. fis8 | g2.
}

alto = \relative {
  \autoBeamOff \time 3/4 \partial 4
  g'8. a16 | b4. g8 c8. b16 | b4 a fis8. g16 | a4. c8 b8. a16 |
  g2 b,8. c16 | d4. b8 e8. d16 | 4 c a8. b16 |
  c4. e8 d8. c16 | b2 d8. g16 | fis2~8. eis16 fis8. a16 |
  g2. 8. gis16 | a2~8. 16 g8. 16 | fis4(g a\fermata) fis8. a16 |
  g4. 8 4 f | e4 g2 8. 16 | 4. d8 4. 8 | 2.
}

tenor = \relative {
  \autoBeamOff \time 3/4 \partial 4
  g8. 16 | 4. 8 8. 16 | fis4 8[a] d8. 16 | 4. 8 8. 16 |
  d2 g,8. fis16 | g4. 8 8. 16 | g4 4 d8. g16 |
  fis4. 8 g8. d16 | 2 \section r4 | r d' d r |
  r4 d4 4 8. a16 | a4 4 4 4 | a b d\fermata b8. c16 |
  d4. b8 c4 g | g c2 d8. e16 | d4. b8 c4. 8 | b2.
}

bass = \relative {
  \autoBeamOff \time 3/4 \partial 4
  g8. 16 | 4. 8 8. 16 | d4 4 8. 16 | 4. 8 8. 16 |
  g2 8. d16 | g,4. 8 8. 16 | d'4 4 8. 16 |
  d4. 8 8. 16 | g,2 r4 | r d' d r |
  r4 g g g8. f16 | e4 4 a, a | d d d\fermata 8. 16 |
  g4. f8 e4 d | c4 2 b8. c16 | d4. 8 4. 8 | g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"Not" my "own!\"" __
  Oh, "\"not" my "own!\"" __ Je -- sus,
  I __ be -- long to Thee! __
  All I have, and all I hope for,
  Thine for all e -- ter -- ni -- ty!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  Oh no! Oh! no!
  Je -- sus, I be -- long, be -- long to Thee!
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  "\"Not" my "own!\"" but saved by Je -- sus,
  Who re -- deemed me by His blood:
  Glad -- ly I ac -- cept the mes -- sage,
  I be -- long to Christ the Lord!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"Not" my "own!\"" to Christ my Sa -- viour,
  I, be -- liev -- ing, trust my soul;
  Ev -- 'ry -- thing to Him com -- mit -- ted,
  While e -- ter -- nal a -- ges roll.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"Not" my "own!\"" my time, my tal -- ent,
  Free -- ly all to Christ I bring,
  To be used in joy -- ful ser -- vice
  For the glo -- ry of my King.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  "\"Not" my "own!\"" The Lord ac -- cepts me
  Ome a -- mong the ran -- somed throng,
  Who in heav'n shall see His glo -- ry,
  And to Je -- sus Christ be -- long.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\"Not " "my " "own!\" " "but " "saved " "by " Je "sus, "
  "\nWho " re "deemed " "me " "by " "His " "blood: "
  "\nGlad" "ly " "I " ac "cept " "the " mes "sage, "
  "\nI " be "long " "to " "Christ " "the " "Lord! "
  "\n\"Not " "my " "own!\" " 
  "\nOh, " "\"not " "my " "own!\" "  Je "sus, "
  "\nI "  be "long " "to " "Thee! " 
  "\nAll " "I " "have, " "and " "all " "I " "hope " "for, "
  "\nThine " "for " "all " e ter ni "ty!\n"

  \set stanza = "2."
  "\n\"Not " "my " "own!\" " "to " "Christ " "my " Sa "viour, "
  "\nI, " be liev "ing, " "trust " "my " "soul; "
  "\nEv" 'ry "thing " "to " "Him " com mit "ted, "
  "\nWhile " e ter "nal " a "ges " "roll. "
  "\n\"Not " "my " "own!\" " 
  "\nOh, " "\"not " "my " "own!\" "  Je "sus, "
  "\nI "  be "long " "to " "Thee! " 
  "\nAll " "I " "have, " "and " "all " "I " "hope " "for, "
  "\nThine " "for " "all " e ter ni "ty!\n"

  \set stanza = "3."
  "\n\"Not " "my " "own!\" " "my " "time, " "my " tal "ent, "
  "\nFree" "ly " "all " "to " "Christ " "I " "bring, "
  "\nTo " "be " "used " "in " joy "ful " ser "vice "
  "\nFor " "the " glo "ry " "of " "my " "King. "
  "\n\"Not " "my " "own!\" " 
  "\nOh, " "\"not " "my " "own!\" "  Je "sus, "
  "\nI "  be "long " "to " "Thee! " 
  "\nAll " "I " "have, " "and " "all " "I " "hope " "for, "
  "\nThine " "for " "all " e ter ni "ty!\n"

  \set stanza = "4."
  "\n\"Not " "my " "own!\" " "The " "Lord " ac "cepts " "me "
  "\nOme " a "mong " "the " ran "somed " "throng, "
  "\nWho " "in " "heav'n " "shall " "see " "His " glo "ry, "
  "\nAnd " "to " Je "sus " "Christ " be "long. "
  "\n\"Not " "my " "own!\" " 
  "\nOh, " "\"not " "my " "own!\" "  Je "sus, "
  "\nI "  be "long " "to " "Thee! " 
  "\nAll " "I " "have, " "and " "all " "I " "hope " "for, "
  "\nThine " "for " "all " e ter ni "ty! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "\"Not " "my " "own!\" " "but " "saved " "by " Je "sus, "
  "\nWho " re "deemed " "me " "by " "His " "blood: "
  "\nGlad" "ly " "I " ac "cept " "the " mes "sage, "
  "\nI " be "long " "to " "Christ " "the " "Lord! "
  "\nOh " "no! " "Oh! " "no! "
  "\nJe" "sus, " "I " be "long, " be "long " "to " "Thee! "
  "\nAll " "I " "have, " "and " "all " "I " "hope " "for, "
  "\nThine " "for " "all " e ter ni "ty!\n"

  \set stanza = "2."
  "\n\"Not " "my " "own!\" " "to " "Christ " "my " Sa "viour, "
  "\nI, " be liev "ing, " "trust " "my " "soul; "
  "\nEv" 'ry "thing " "to " "Him " com mit "ted, "
  "\nWhile " e ter "nal " a "ges " "roll. "
  "\nOh " "no! " "Oh! " "no! "
  "\nJe" "sus, " "I " be "long, " be "long " "to " "Thee! "
  "\nAll " "I " "have, " "and " "all " "I " "hope " "for, "
  "\nThine " "for " "all " e ter ni "ty!\n"

  \set stanza = "3."
  "\n\"Not " "my " "own!\" " "my " "time, " "my " tal "ent, "
  "\nFree" "ly " "all " "to " "Christ " "I " "bring, "
  "\nTo " "be " "used " "in " joy "ful " ser "vice "
  "\nFor " "the " glo "ry " "of " "my " "King. "
  "\nOh " "no! " "Oh! " "no! "
  "\nJe" "sus, " "I " be "long, " be "long " "to " "Thee! "
  "\nAll " "I " "have, " "and " "all " "I " "hope " "for, "
  "\nThine " "for " "all " e ter ni "ty!\n"

  \set stanza = "4."
  "\n\"Not " "my " "own!\" " "The " "Lord " ac "cepts " "me "
  "\nOme " a "mong " "the " ran "somed " "throng, "
  "\nWho " "in " "heav'n " "shall " "see " "His " glo "ry, "
  "\nAnd " "to " Je "sus " "Christ " be "long. "
  "\nOh " "no! " "Oh! " "no! "
  "\nJe" "sus, " "I " be "long, " be "long " "to " "Thee! "
  "\nAll " "I " "have, " "and " "all " "I " "hope " "for, "
  "\nThine " "for " "all " e ter ni "ty! "
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
