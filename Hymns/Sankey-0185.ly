\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "When the Bridegroom Comes!"
  subtitle    = "Sankey No. 185"
  subsubtitle = "C.C. No. 246"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. L. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{ \smallCaps "E. R. Latta" "(alt.)."}

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key e \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*2
  \mark \markup { \box "B" }    s1*3
  \mark \markup { \box "C" }    s1*3
  \mark \markup { \box "D" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'8. fis16
  gis8 8 8 8 8 8 fis e
  gis4 b b e,8. fis16
  gis8 8 8 8 b gis fis e % B
  gis4 fis4 4\fermata gis8. a16
  b2~8 8 gis b
  e2~4\fermata e,8. fis16 % C
  gis8 b8 8. cis16 b4 gis8. e16
  fis4 e e2
  gis4.^\markup\smallCaps Chorus. fis8 8 e4. % D
  b'4. a8 8 gis4.
  e'4. b8 cis b b b
  gis4^\markup {\italic "May repeat" \dynamic pp} fis e\fermata
}

alto = \relative {
  \autoBeamOff
  e'8. 16
  e8 8 8 8 8 8 8 8
  e4 gis gis e8. 16
  e8 8 8 8 gis e b e % B
  e4 dis dis\fermata e8. fis16
  fis2~8 8 e gis
  gis8 8 b a gis4\fermata e8. 16 % C
  e8 gis8 8. a16 gis4 e8. 16
  dis4 b4 2
  e4. b8 8 4. % D
  dis4. fis8 8 e4.
  gis4. 8 a gis e e
  e4 dis b\fermata
}

tenor = \relative {
  \autoBeamOff
  gis8. a16
  b8 8 8 8 8 8 a gis
  b4 e e gis,8. a16
  b8 8 8 8 e b b ais % B
  b4 4 4\fermata r
  r4 e8. 16 8 b b b
  b8 8 d cis b4\fermata gis8. a16 % C
  b8 e8 8. 16 4 b8. gis16
  a4 gis4 2
  b4. a8 8 gis4. % D
  fis4. b8 8 4.
  b4. e8 8 8 b gis
  b4 a gis\fermata
}

bass = \relative {
  \autoBeamOff
  e8. 16
  e8 8 8 8 8 8 8 8
  e4 4 4 8. 16
  e8 8 8 8 8 8 dis cis % B
  b4 4 4\fermata r
  r4 e8. 16 8 8 8 8
  e2~4\fermata 8. 16 % C
  e8 8 8. 16 4 8. 16
  b4 e4 2
  e4. 8 8 4. % D
  b4. 8 e8 4.
  e4. 8 8 8 gis e
  b4 4 e\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh, be rea -- dy! Oh, be rea -- dy!
  Oh, be rea -- dy when the Bride -- groom comes!
}


wordsTenor = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ that sol -- emn night,
  _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
}

wordsTenorSingle = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ that sol -- emn night,
  _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
% 2
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ that sol -- emn night,
  _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
% 3
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ that sol -- emn night,
  _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
% 4
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ that sol -- emn night,
  _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
% 5
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ that joy -- ful night,
  _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
}

wordsBass = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  In the night, _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
}

wordsBassSingle = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  In the night, _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
% 2
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  In the night, _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
% 3
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  In the night, _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
% 4
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  In the night, _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
% 5
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  In the night, _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Will our lamps be filled and rea -- dy
  When the Bride -- groom comes?
  And our lights be clear and stea -- dy
  When the Bride -- groom comes?
  In the night, __ that sol -- emn night,
  Will our lamps be burn -- ing bright,
  When the Bride -- groom comes?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Shall we hear a wel -- come sound -- ing
  When the Bride-- groom comes?
  And a shout of joy re -- sound -- ing
  When the Bride -- groom comes?
  In the night, __ that sol -- emn night,
  Will our lamps be burn -- ing bright,
  When the Bride -- groom comes?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Don't de -- lay our pre -- pa -- ra -- tion
  Till the Bride -- groom comes,
  Lest there be a se -- pa -- ra -- tion
  When the Bride -- groom comes:
  In the night, __ that sol -- emn night,
  Will our lamps be burn -- ing bright,
  When the Bride -- groom comes?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  It may be a time of sor -- row
  When the Bride -- groom comes;
  If our oil we hope to br -- row
  When the Bride -- groom comes.
  In the night, __ that sol -- emn night,
  Will our lamps be burn -- ing bright,
  When the Bride -- groom comes:
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Oh, there'll be a glo -- rious meet -- ing
  When the Bride -- groom comes!
  And a hal -- le -- lu -- jah greet -- ing
  When the Bride -- groom comes!
  In the night, __ that joy -- ful night,
  With our lamps all burn -- ing bright,
  When the Bride -- groom comes!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Will " "our " "lamps " "be " "filled " "and " rea "dy "
  "\nWhen " "the " Bride "groom " "comes? "
  "\nAnd " "our " "lights " "be " "clear " "and " stea "dy "
  "\nWhen " "the " Bride "groom " "comes? "
  "\nIn " "the " "night, "  "that " sol "emn " "night, "
  "\nWill " "our " "lamps " "be " burn "ing " "bright, "
  "\nWhen " "the " Bride "groom " "comes? "
  "\nOh, " "be " rea "dy! " "Oh, " "be " rea "dy! "
  "\nOh, " "be " rea "dy " "when " "the " Bride "groom " "comes! "

  \set stanza = "2."
  "\nShall " "we " "hear " "a " wel "come " sound "ing "
  "\nWhen " "the " Bride "groom " "comes? "
  "\nAnd " "a " "shout " "of " "joy " re sound "ing "
  "\nWhen " "the " Bride "groom " "comes? "
  "\nIn " "the " "night, "  "that " sol "emn " "night, "
  "\nWill " "our " "lamps " "be " burn "ing " "bright, "
  "\nWhen " "the " Bride "groom " "comes? "
  "\nOh, " "be " rea "dy! " "Oh, " "be " rea "dy! "
  "\nOh, " "be " rea "dy " "when " "the " Bride "groom " "comes! "

  \set stanza = "3."
  "\nDon't " de "lay " "our " pre pa ra "tion "
  "\nTill " "the " Bride "groom " "comes, "
  "\nLest " "there " "be " "a " se pa ra "tion "
  "\nWhen " "the " Bride "groom " "comes: "
  "\nIn " "the " "night, "  "that " sol "emn " "night, "
  "\nWill " "our " "lamps " "be " burn "ing " "bright, "
  "\nWhen " "the " Bride "groom " "comes? "
  "\nOh, " "be " rea "dy! " "Oh, " "be " rea "dy! "
  "\nOh, " "be " rea "dy " "when " "the " Bride "groom " "comes! "

  \set stanza = "4."
  "\nIt " "may " "be " "a " "time " "of " sor "row "
  "\nWhen " "the " Bride "groom " "comes; "
  "\nIf " "our " "oil " "we " "hope " "to " br "row "
  "\nWhen " "the " Bride "groom " "comes. "
  "\nIn " "the " "night, "  "that " sol "emn " "night, "
  "\nWill " "our " "lamps " "be " burn "ing " "bright, "
  "\nWhen " "the " Bride "groom " "comes: "
  "\nOh, " "be " rea "dy! " "Oh, " "be " rea "dy! "
  "\nOh, " "be " rea "dy " "when " "the " Bride "groom " "comes! "

  \set stanza = "5."
  "\nOh, " "there'll " "be " "a " glo "rious " meet "ing "
  "\nWhen " "the " Bride "groom " "comes! "
  "\nAnd " "a " hal le lu "jah " greet "ing "
  "\nWhen " "the " Bride "groom " "comes! "
  "\nIn " "the " "night, "  "that " joy "ful " "night, "
  "\nWith " "our " "lamps " "all " burn "ing " "bright, "
  "\nWhen " "the " Bride "groom " "comes! "
  "\nOh, " "be " rea "dy! " "Oh, " "be " rea "dy! "
  "\nOh, " "be " rea "dy " "when " "the " Bride "groom " "comes! "
}

wordsMidiBass = \wordsMidi

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "Will " "our " "lamps " "be " "filled " "and " rea "dy "
  "\nWhen " "the " Bride "groom " "comes? "
  "\nAnd " "our " "lights " "be " "clear " "and " stea "dy "
  "\nWhen " "the " Bride "groom " "comes? "
  "\nIn " "the " "night, "  "that " sol "emn " "night, " "that " sol "emn " "night, "
  "\nWill " "our " "lamps " "be " burn "ing " "bright, "
  "\nWhen " "the " Bride "groom " "comes? "
  "\nOh, " "be " rea "dy! " "Oh, " "be " rea "dy! "
  "\nOh, " "be " rea "dy " "when " "the " Bride "groom " "comes! "

  \set stanza = "2."
  "\nShall " "we " "hear " "a " wel "come " sound "ing "
  "\nWhen " "the " Bride "groom " "comes? "
  "\nAnd " "a " "shout " "of " "joy " re sound "ing "
  "\nWhen " "the " Bride "groom " "comes? "
  "\nIn " "the " "night, "  "that " sol "emn " "night, " "that " sol "emn " "night, "
  "\nWill " "our " "lamps " "be " burn "ing " "bright, "
  "\nWhen " "the " Bride "groom " "comes? "
  "\nOh, " "be " rea "dy! " "Oh, " "be " rea "dy! "
  "\nOh, " "be " rea "dy " "when " "the " Bride "groom " "comes! "

  \set stanza = "3."
  "\nDon't " de "lay " "our " pre pa ra "tion "
  "\nTill " "the " Bride "groom " "comes, "
  "\nLest " "there " "be " "a " se pa ra "tion "
  "\nWhen " "the " Bride "groom " "comes: "
  "\nIn " "the " "night, "  "that " sol "emn " "night, " "that " sol "emn " "night, "
  "\nWill " "our " "lamps " "be " burn "ing " "bright, "
  "\nWhen " "the " Bride "groom " "comes? "
  "\nOh, " "be " rea "dy! " "Oh, " "be " rea "dy! "
  "\nOh, " "be " rea "dy " "when " "the " Bride "groom " "comes! "

  \set stanza = "4."
  "\nIt " "may " "be " "a " "time " "of " sor "row "
  "\nWhen " "the " Bride "groom " "comes; "
  "\nIf " "our " "oil " "we " "hope " "to " br "row "
  "\nWhen " "the " Bride "groom " "comes. "
  "\nIn " "the " "night, "  "that " sol "emn " "night, " "that " sol "emn " "night, "
  "\nWill " "our " "lamps " "be " burn "ing " "bright, "
  "\nWhen " "the " Bride "groom " "comes: "
  "\nOh, " "be " rea "dy! " "Oh, " "be " rea "dy! "
  "\nOh, " "be " rea "dy " "when " "the " Bride "groom " "comes! "

  \set stanza = "5."
  "\nOh, " "there'll " "be " "a " glo "rious " meet "ing "
  "\nWhen " "the " Bride "groom " "comes! "
  "\nAnd " "a " hal le lu "jah " greet "ing "
  "\nWhen " "the " Bride "groom " "comes! "
  "\nIn " "the " "night, "  "that " joy "ful " "night, " "that " joy "ful " "night, "
  "\nWith " "our " "lamps " "all " burn "ing " "bright, "
  "\nWhen " "the " Bride "groom " "comes! "
  "\nOh, " "be " rea "dy! " "Oh, " "be " rea "dy! "
  "\nOh, " "be " rea "dy " "when " "the " Bride "groom " "comes! "
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
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
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice \bass
            \addlyrics \wordsBass
            \new NullVoice =alignerT \tenor
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \wordsTenor
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
            \new NullVoice { \bass \bass \bass \bass \bass }
            \addlyrics \wordsBassSingle
            \new NullVoice =alignerT { \tenor \tenor \tenor \tenor \tenor }
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \wordsTenorSingle
          >>
        >>
    \layout {
      indent = 1.5\cm
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
            \new NullVoice { \bass \bass \bass \bass \bass }
            \addlyrics \wordsBassSingle
            \new NullVoice =alignerT { \tenor \tenor \tenor \tenor \tenor }
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \wordsTenorSingle
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
%    \articulate
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor }
            \addlyrics \wordsMidiTenor
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass }
            \addlyrics \wordsMidiBass
          >>
        >>
    \midi {}
  }
}
