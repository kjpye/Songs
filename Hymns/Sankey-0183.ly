\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Impatient Heart, be Still!"
  subtitle    = "Sankey No. 183"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Geo. A. Warburton."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key a \major
  \time 4/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2*4 s4
  \mark \markup { \box "B" } s4 s2*4 s4.
  \mark \markup { \box "C" } s8 s2*4 s4.
  \mark \markup { \box "D" } s8 s2*4 s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 8=120
  s8 s2*13
  \tempo 8=110 s2
  s2
  s2
  s2
  s4. \tempo 8=100 s8
  s2
  s4.
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'8
  e8 a gis8. a16
  a4. 8
  gis8 fis8 8. e16
  e4. a8
  gis8 a \bar "|" \break cis8. b16
  b4. gis8 % B
  fis4. gis8
  e4. 8
  fis8 d' cis8. b16
  a4. \bar "|" \break b8
  cis8 e d8. cis16 % C
  b4. cis8
  a8. e16 fis4~
  fis8^\markup\italic rit. b a8. gis16
  a4. \bar "|" \break e8^\markup\smallCaps Refrain.
  b'4. cis8 % D
  a4. 8
  gis8 fis e4^\markup\italic rit. ~
  e4 4
  e4.
}

alto = \relative {
  \autoBeamOff
  cis'8
  cis8 e d8. cis16
  cis4. fis8
  e8 d8 8. cis16
  cis4. e8
  d8 cis e8. 16
  e4. 8 % B
  e8 8 dis dis
  e4. b8
  cis8 fis e8. d16
  cis4. e8
  e8 8 8. 16 % C
  e4. 8
  e8. cis16 d4~
  d8 fis e8. d16
  cis4. 8
  d4. e8 % D
  cis4. fis8
  e8 d cis cis
  b4 d
  cis4.
}

tenor = \relative {
  \autoBeamOff
  a8
  a8 cis b8. a16
  a4. 8
  a8 8 8. 16
  a4. 8
  e8 8 8. 16
  e4. b'8 % B
  cis8 8 a b
  gis4. 8
  a8 8 gis8. 16
  a4. gis8
  a8 cis b8. a16
  gis4. a8
  a8. 16 4~
  a8 d cis8. b16
  a4. r8
  r8 gis gis r % D
  r8 e e r
  r4 r8 a
  gis4 b
  a4.
}

bass = \relative {
  \autoBeamOff
  a,8
  a8 a e'8. a,16
  a4. d8
  d8 8 a8. 16
  a4. cis8
  b8 a e'8. 16
  e4. gis,8 % B
  a8 8 b b
  e4. 8
  e8 8 8. 16
  a,4. e'8
  a8 8 gis8. a16 % C
  e4. a,8
  cis8. a16 d4~
  d8 b e8. 16
  a,4. r8
  r8 e' e r % D
  r8 a, a r
  r4 r8 e'
  e4 4
  a,4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ is still _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  Be still! be still! be still! _ _
}

chorusMenSingle = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ is still _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  Be still! be still! be still! _ _

  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ with Him _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  Be still! be still! be still! _ _

  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ thy Lord _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  Be still! be still! be still! _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Im -- pa -- tient heart, be still!
  What tho' He tar -- ries long?
  What tho' the tri -- umph- -- song
  Is still de -- layed?
  Thou hast His prom -- ise sure,
  And that is all se -- cure:
  Be not a -- fraid! be not a -- fraid!
  Be still! be still! Im -- pa -- tient heart __ be still!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  My ea -- ger heart, be still!
  Thy Lord will sure -- ly come.
  And take thee to His home,
  With Him to dwell:
  It may not be to -- day;
  And yet, my soul, it may—
  I can -- not tell!
  I can -- not tell!
  Be still! be still! My ea -- ger heart __ be still!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  My anx -- ious heart, be still!
  Watch, work and pray;
  and then it will not mat -- ter when thy Lord shall come,
  At mid -- night or at noon;
  He can -- not come too soon
  To take thee home, to take thee home.
  Be still! be still! My anx -- ious heart __ be still!
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Im" pa "tient " "heart, " "be " "still! "
  "\nWhat " "tho' " "He " tar "ries " "long? "
  "\nWhat " "tho' " "the " tri umph- "song "
  "\nIs " "still " de "layed? "
  "\nThou " "hast " "His " prom "ise " "sure, "
  "\nAnd " "that " "is " "all " se "cure: "
  "\nBe " "not " a "fraid! " "be " "not " a "fraid! "
  "\nBe " "still! " "be " "still! " Im pa "tient " "heart "  "be " "still! "

  \set stanza = "2."
  "\nMy " ea "ger " "heart, " "be " "still! "
  "\nThy " "Lord " "will " sure "ly " "come. "
  "\nAnd " "take " "thee " "to " "His " "home, "
  "\nWith " "Him " "to " "dwell: "
  "\nIt " "may " "not " "be " to "day; "
  "\nAnd " "yet, " "my " "soul, " "it " "may— "
  "\nI " can "not " "tell! "
  "\nI " can "not " "tell! "
  "\nBe " "still! " "be " "still! " "My " ea "ger " "heart "  "be " "still! "

  \set stanza = "3."
  "\nMy " anx "ious " "heart, " "be " "still! "
  "\nWatch, " "work " "and " "pray; "
  "\nand " "then " "it " "will " "not " mat "ter " "when " "thy " "Lord " "shall " "come, "
  "\nAt " mid "night " "or " "at " "noon; "
  "\nHe " can "not " "come " "too " "soon "
  "\nTo " "take " "thee " "home, " "to " "take " "thee " "home. "
  "\nBe " "still! " "be " "still! " "My " anx "ious " "heart "  "be " "still! "
}
  
wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Im" pa "tient " "heart, " "be " "still! "
  "\nWhat " "tho' " "He " tar "ries " "long? "
  "\nWhat " "tho' " "the " tri umph- "song "
  "\nIs " "still, " "is " "still " de "layed? "
  "\nThou " "hast " "His " prom "ise " "sure, "
  "\nAnd " "that " "is " "all " se "cure: "
  "\nBe " "not " a "fraid! " "be " "not " a "fraid! "
  "\nBe " "still! " "be " "still! " Im pa "tient " "heart "  "be " "still! " "be " "still! "

  \set stanza = "2."
  "\nMy " ea "ger " "heart, " "be " "still! "
  "\nThy " "Lord " "will " sure "ly " "come. "
  "\nAnd " "take " "thee " "to " "His " "home, "
  "\nWith " "Him, " "with " "Him " "to " "dwell: "
  "\nIt " "may " "not " "be " to "day; "
  "\nAnd " "yet, " "my " "soul, " "it " "may— "
  "\nI " can "not " "tell! "
  "\nI " can "not " "tell! "
  "\nBe " "still! " "be " "still! " "My " ea "ger " "heart "  "be " "still! " "be " "still! "

  \set stanza = "3."
  "\nMy " anx "ious " "heart, " "be " "still! "
  "\nWatch, " "work " "and " "pray; "
  "\nand " "then " "it " "will " "not " mat "ter " "when " "thy " "Lord, " "thy " "Lord " "shall " "come, "
  "\nAt " mid "night " "or " "at " "noon; "
  "\nHe " can "not " "come " "too " "soon "
  "\nTo " "take " "thee " "home, " "to " "take " "thee " "home. "
  "\nBe " "still! " "be " "still! " "My " anx "ious " "heart "  "be " "still! " "be " "still! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Im" pa "tient " "heart, " "be " "still! "
  "\nWhat " "tho' " "He " tar "ries " "long? "
  "\nWhat " "tho' " "the " tri umph- "song "
  "\nIs " "still, " "is " "still " de "layed? "
  "\nThou " "hast " "His " prom "ise " "sure, "
  "\nAnd " "that " "is " "all " se "cure: "
  "\nBe " "not " a "fraid! " "be " "not " a "fraid! "
  "\nBe " "still! " "be " "still! " "be " "still! " "be " "still! "

  \set stanza = "2."
  "\nMy " ea "ger " "heart, " "be " "still! "
  "\nThy " "Lord " "will " sure "ly " "come. "
  "\nAnd " "take " "thee " "to " "His " "home, "
  "\nWith " "Him, " "with " "Him " "to " "dwell: "
  "\nIt " "may " "not " "be " to "day; "
  "\nAnd " "yet, " "my " "soul, " "it " "may— "
  "\nI " can "not " "tell! "
  "\nI " can "not " "tell! "
  "\nBe " "still! " "be " "still! " "be " "still! " "be " "still! "

  \set stanza = "3."
  "\nMy " anx "ious " "heart, " "be " "still! "
  "\nWatch, " "work " "and " "pray; "
  "\nand " "then " "it " "will " "not " mat "ter "
  "\nwhen " "thy " "Lord, " "thy " "Lord " "shall " "come, "
  "\nAt " mid "night " "or " "at " "noon; "
  "\nHe " can "not " "come " "too " "soon "
  "\nTo " "take " "thee " "home, " "to " "take " "thee " "home. "
  "\nBe " "still! " "be " "still! " "be " "still! " "be " "still! "
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
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = alignerMen \tenor
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerMen \chorusMen
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = alignerMen { \tenor \tenor \tenor }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerMen \chorusMenSingle
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = alignerMen { \tenor \tenor \tenor }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerMen \chorusMenSingle
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
  \bookOutputSuffix "midi-sop"
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
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidiSop
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
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
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
            \addlyrics \wordsMidiMen
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
