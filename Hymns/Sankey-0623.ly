\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Not I, but Christ."
  subtitle    = "Sankey No. 623"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Burke."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "A. A. F."
  meter       = \markup\smallCaps "11.10."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key e \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \textMark \markup { \box \bold "C" } s1*4
  \textMark \markup { \box \bold "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  gis'2 fis4 e | a2 gis | 4 fis cis fis | e2 dis | \break
  b'2 fis4 4 | b2 cis | dis4 cis b4. cis8 | b1 | \break
  b2 gis4 fis | e2 fis | g4 b cis4. 8 | 2 b |
  b2 4 4 | e2. e,4 | gis4 e fis4. e8 | 1 |
}

alto = \relative {
  \autoBeamOff
  e'2 dis4 e | 2 2 | cis4 4 4 4 | b2 2 |
  dis2 4 4 | 2 e | fis4 e dis4. fis8 | 2(a) |
  gis2 e4 dis | e2 dis | e4 4 4. 8 | 2 2 |
  gis2 e4 dis | e2. 4 | 4 4 dis4. e8 | 1 |
}

tenor = \relative {
  \autoBeamOff
  b2 a4 gis | cis2 b | a4 4 e a | gis2 fis |
  fis2 b4 4 | 2 ais | b4 ais b4. e8 | dis1 |
  e2 b4 a | gis2 b | 4 gis a4. 8 | 2 gis |
  b2 4 a | gis2. 4 | b gis a4. gis8 | 1 |
}

bass = \relative {
  \autoBeamOff
  e2 4 4 | 2 2 | a,4 4 4 4 | b2 2 |
  b2 4 dis | fis2 2 | 4 4 4. 8 | b,1 |
  e2 4 b | cis2 b | e4 4 a,4. cis8 | e2 2 |
  e2 gis4 fis | e2. cis4 | b b b4. e8 | 1 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  "\"Not" I, but "Christ,\"" be hon -- oured, loved, ex -- alt -- ed;
  "\"Not" I, but "Christ,\"" be seen, be known, be heard;
  "\"Not" I, but "Christ,\"" in ev -- ;ry look and ac -- tion;
  "\"Not" I, but "Christ,\"" in ev -- 'ry thought and word.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"Not" I, but "Christ,\"" to gen -- tly soothe in sor -- row;
  "\"Not" I, but "Christ,\"" to wipe the fall -- ing tear;
  "\"Not" I, but "Christ,\"" to lift the wea -- ry bur -- den;
  "\"Not" I, but "Christ,\"" to hush a -- way all fear.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"Not" I, but "Christ,\"" in low -- ly, si -- lent la -- bour;
  "\"Not" I, but "Christ,\"" in hum -- ble, earn -- est toil;
  Christ, on -- ly Christ! no show, no os -- ten -- ta -- tion;
  Christ, none but Christ, the gath -- erer of the spoil.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Christ, on -- ly Christ! ere long will fill my vis -- ion;
  Glo -- ry ex -- cel -- ling, soon, full soon, I'll see—
  Christ, on -- ly Christ, my ev -- ;ry wish ful -- fill -- ing—
  Christ, on -- ly Christ, my All in All to be.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\"Not " "I, " "but " "Christ,\" " "be " hon "oured, " "loved, " ex alt "ed; "
  "\n\"Not " "I, " "but " "Christ,\" " "be " "seen, " "be " "known, " "be " "heard; "
  "\n\"Not " "I, " "but " "Christ,\" " "in " ev ";ry " "look " "and " ac "tion; "
  "\n\"Not " "I, " "but " "Christ,\" " "in " ev "'ry " "thought " "and " "word.\n"

  \set stanza = "2."
  "\n\"Not " "I, " "but " "Christ,\" " "to " gen "tly " "soothe " "in " sor "row; "
  "\n\"Not " "I, " "but " "Christ,\" " "to " "wipe " "the " fall "ing " "tear; "
  "\n\"Not " "I, " "but " "Christ,\" " "to " "lift " "the " wea "ry " bur "den; "
  "\n\"Not " "I, " "but " "Christ,\" " "to " "hush " a "way " "all " "fear.\n"

  \set stanza = "3."
  "\n\"Not " "I, " "but " "Christ,\" " "in " low "ly, " si "lent " la "bour; "
  "\n\"Not " "I, " "but " "Christ,\" " "in " hum "ble, " earn "est " "toil; "
  "\nChrist, " on "ly " "Christ! " "no " "show, " "no " os ten ta "tion; "
  "\nChrist, " "none " "but " "Christ, " "the " gath "erer " "of " "the " "spoil.\n"

  \set stanza = "4."
  "\nChrist, " on "ly " "Christ! " "ere " "long " "will " "fill " "my " vis "ion; "
  "\nGlo" "ry " ex cel "ling, " "soon, " "full " "soon, " "I'll " "see— "
  "\nChrist, " on "ly " "Christ, " "my " ev ";ry " "wish " ful fill "ing— "
  "\nChrist, " on "ly " "Christ, " "my " "All " "in " "All " "to " "be. "
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
            \new Lyrics \lyricsto "aligner" \wordsOne
            \new Lyrics \lyricsto "aligner" \wordsTwo
            \new Lyrics \lyricsto "aligner" \wordsThree
            \new Lyrics \lyricsto "aligner" \wordsFour
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
