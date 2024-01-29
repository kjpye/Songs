\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "While the Days aer Going By."
  subtitle    = "Sankey No. 802"
  subsubtitle = "Sankey 880 No. 323"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "George Cooper."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key a \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3
  \textMark \markup { \box \bold "E" }    s1*4 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    cis'8. d16 | e4. 8 fis4 e | 8 a4.~4 8. b16 | cis4. a8 b8 4. | a2. \bar "|" \break
  }
  a8. b16 | cis4. b8 cis4 d | e2. cis8. d16 | e4. cis8 b4 cis | b2. \bar "|" \break
  cis8. b16 | a4. b8 a4 fis | e2. a8. b16 | cis4. a8 b8 4. | a2.
  \section \sectionLabel \markup\smallCaps Refrain \break
  \apart a8. b16 | cis2. a8. fis16 | e2. a8. cis16 | e2. cis8. a16 \break |
  b2. \auto a8. b16 | cis4 4 b a | e2. a8. b16 | cis4. a8 b8 4. | a2.
}

alto = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    a8. b16 | cis4. 8 d4 cis | 8 4.~4 e8. fis16 | e4. cis8 d8 4. | cis2.
  }
  e8. 16 | 4. 8 4 4 | a2. e8. 16 | a4. e8 4 4 | 2.
  eis8. cis16 | 4. 8 fis4 d | cis2. e8. fis16 | e4. cis8 d8 4. | cis2. \section
  r4 | r e8. 16 4 r | r cis8. 16 4 r | r a'8. 16 4 r |
  r4 e8. 16 4 8. d16 | cis4 e d cis | 2. e8. fis16 | e4. 8 gis8 4. | a2.
}

tenor = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    e8. 16 | a4. 8 4 4 | 8 e4.~4 a8. 16 | 4. 8 gis8 4. | a2.
  }
  a8. gis16 | a4. gis8 a4 b | cis2. a8. b16 | cis4. a8 b4 a | gis2.
  gis8. 16 | a4. 8 4 4 | 2. 8. 16 | 4. e8 gis8 4. | a2. \section
  r4 | r a8. 16 4 r | r4 8. 16 4 r | r cis8. 16 4 r |
  r4 gis8. 16 4 a8. gis16 | a4 4 4 4 | 2. 8. 16 | 4. cis8 d8 4. | cis2.
}

bass = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    a,8. 16 | 4. 8 4 4 | 8 4.~4 cis8. d16 | e4. 8 8 4. | a,2.
  }
  cis8. e16 | a4. e8 a4 4 | 2. 8. 16 | 4. 8 gis4 a | e2.
  cis8. eis16 | fis4. 8 d4 d | a2. cis8. d16 | e4. 8 8 4. | a,2. \section
  r4 | r a8. 16 4 r | r a8. 16 4 r | r a'8. 16 4 r |
  r4 | e8. 16 8[d] cis8. b16 | a4 4 4 4 | 2. cis8. d16 | e4. 8 8 4. | a,2.
}

chorus = \lyricmode {
  \repeat unfold 58 \skip 1
  Go -- ing by!
  Go -- ing by!
  Go -- ing by!
  Go -- ing by!
  \repeat unfold 14 \skip 1
}

chorusMen = \lyricmode {
  \repeat unfold 58 \skip 1
  Go -- ing by!
  Go -- ing by!
  Go -- ing by!
  Go -- ing by!
  Oh, the good we all may do,
  While the days are go -- ing by!
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  There are lone -- ly hearts to cher -- ish,
  While the days are go -- ing by;
  There are wea -- ry souls who per -- ish,
  While the days are go -- ing by;
  If a smile we can re -- new,
  As our jour -- ney we pur -- sue,
  Oh, the good we all may do,
  While the days are go -- ing by!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  There's no time for i -- dle scorn -- ing,
  While the days are go -- ing by;
  Let your face be like the morn -- ing,
  While the days are go -- ing by;
  Oh, the world is full of sighs,
  Full of sad and weep -- ing eyes;
  Help your fal -- len broth -- er rise,
  While the days are go -- ing by!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  All the lov -- ing links that bind us,
  While the days are go -- ing by;
  One by one, we leave be -- hind us,
  While the days are go -- ing by;
  But the seeds of good we sow,
  Both in shade and shine will grow,
  And will keep our eharts a -- glow,
  While the days are go -- ing by!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There " "are " lone "ly " "hearts " "to " cher "ish, "
  "\nWhile " "the " "days " "are " go "ing " "by; "
  "\nThere " "are " wea "ry " "souls " "who " per "ish, "
  "\nWhile " "the " "days " "are " go "ing " "by; "
  "\nIf " "a " "smile " "we " "can " re "new, "
  "\nAs " "our " jour "ney " "we " pur "sue, "
  "\nOh, " "the " "good " "we " "all " "may " "do, "
  "\nWhile " "the " "days " "are " go "ing " "by! "
  "\nGo" "ing " "by! "
  "\nGo" "ing " "by! "
  "\nGo" "ing " "by! "
  "\nGo" "ing " "by! "
  "\nOh, " "the " "good " "we " "all " "may " "do, "
  "\nWhile " "the " "days " "are " go "ing " "by!\n"

  \set stanza = "2."
  "\nThere's " "no " "time " "for " i "dle " scorn "ing, "
  "\nWhile " "the " "days " "are " go "ing " "by; "
  "\nLet " "your " "face " "be " "like " "the " morn "ing, "
  "\nWhile " "the " "days " "are " go "ing " "by; "
  "\nOh, " "the " "world " "is " "full " "of " "sighs, "
  "\nFull " "of " "sad " "and " weep "ing " "eyes; "
  "\nHelp " "your " fal "len " broth "er " "rise, "
  "\nWhile " "the " "days " "are " go "ing " "by! "
  "\nGo" "ing " "by! "
  "\nGo" "ing " "by! "
  "\nGo" "ing " "by! "
  "\nGo" "ing " "by! "
  "\nOh, " "the " "good " "we " "all " "may " "do, "
  "\nWhile " "the " "days " "are " go "ing " "by!\n"

  \set stanza = "3."
  "\nAll " "the " lov "ing " "links " "that " "bind " "us, "
  "\nWhile " "the " "days " "are " go "ing " "by; "
  "\nOne " "by " "one, " "we " "leave " be "hind " "us, "
  "\nWhile " "the " "days " "are " go "ing " "by; "
  "\nBut " "the " "seeds " "of " "good " "we " "sow, "
  "\nBoth " "in " "shade " "and " "shine " "will " "grow, "
  "\nAnd " "will " "keep " "our " "eharts " a "glow, "
  "\nWhile " "the " "days " "are " go "ing " "by! "
  "\nGo" "ing " "by! "
  "\nGo" "ing " "by! "
  "\nGo" "ing " "by! "
  "\nGo" "ing " "by! "
  "\nOh, " "the " "good " "we " "all " "may " "do, "
  "\nWhile " "the " "days " "are " go "ing " "by! "
}

\book {
  \bookOutputSuffix "midi-sop"
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
            \addlyrics \wordsMidi
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
            \new Lyrics \lyricsto "aligner" \wordsOne
            \new Lyrics \lyricsto "aligner" \wordsTwo
            \new Lyrics \lyricsto "aligner" \wordsThree
            \new Lyrics \with {alignAboveContext = women} \lyricsto aligner \chorus
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
            \new Lyrics \lyricsto "aligner" { \wordsOne   \repeat unfold 26 \skip 1
                                              \wordsTwo   \repeat unfold 26 \skip 1
                                              \wordsThree
                                            }
            \new Lyrics \with {alignAboveContext = women} \lyricsto aligner {\repeat unfold \verses \chorus}
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
