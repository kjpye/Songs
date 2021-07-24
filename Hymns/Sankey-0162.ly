\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Christ is Coming!"
  subtitle    = "Sankey No. 162"
  subsubtitle = "Sankey 880 No. 531"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. R. Macduff, D. D."
  meter       = \markup\smallCaps "8.7."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key e \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
  \mark \markup { \box "C" } s4 s2.*3 s2
  \mark \markup { \box "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4 s2.*13
  s4 \tempo 4=60 s4 \tempo 4=120 s4
  s2.
  s2
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  gis'8. fisis16
  gis4 a b8. cis16
  b4 gis e8 fis
  gis4.  b8 a gis
  fis2 \bar "|" \break gis8. fisis16
  gis4 a b8. cis16 % B
  b4 gis b8 e
  dis4. cis8 b ais
  b2 \bar "|" \break b8.^\markup\smallCaps Chorus. gis16
  b4 e cis8. bis16 % C
  cis4 e b8 gis
  b4. gis8 e gis
  fis2 \bar "|" \break b8. gis16
  b4 e cis8. bis16 % D
  cis4 e\fermata dis8 cis
  b4. e,8 gis fis
  e2
}

alto = \relative {
  \autoBeamOff
  e'8. 16
  e4 fis gis8. a16
  gis4 e b8 b
  e4. 8 dis e
  dis2 e8. 16
  e4 fis gis8. a16 % B
  gis4 e gis8 8
  fis4. 8 8 8
  fis2 gis8. fisis16
  gis4 4 a8. 16 % C
  a4 4 gis8 fisis
  gis4. e8 8 8
  fis2 e8. 16
  e4 gis e8. dis16 % D
  e4 a\fermata e8 8
  e4. 8 8 dis
  e2
}

tenor = \relative {
  \autoBeamOff
  b8. ais16
  b4 4 e8. 16
  e4 b gis8 a
  b4. 8 8 8
  b2 8. ais16
  b4 4 e8. 16 % B
  e4 b e8 b
  b4. e8 dis cis
  dis2 e8. 16
  e4 4 8. dis16 % C
  e4 cis e8 8
  e4. b8 8 8
  b2 gis8. fisis16
  gis4 b a8. 16
  a4 cis\fermata b8 a
  gis4. 8 b a
  gis2
}

bass = \relative {
  \autoBeamOff
  e8. 16
  e4 4 8. 16
  e4 4 8 8
  e4. gis8 fis e
  b2 e8. 16
  e4 4 8. 16 % B
  e4 4 8 8
  fis4. 8 8 8
  b,2 e8. 16
  e4 4 a8. 16 % C
  a4 a, e'8 8
  e4. 8 gis e
  b2 e8. 16
  e4 4 a8. 16 % D
  a4 a\fermata a,8 8
  b4. cis8 b b
  e2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Christ is com -- ing!
  Christ is com -- ing!
  Come, Thou bles -- sed Prince of Peace!
  Christ is com -- ing!
  Christ is com -- ing!
  Come, Thou bles -- sed Prince of Peace!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Christ is com -- ing! let cre -- a -- tion
  From her groans and tra -- vail cease;
  Let the glo -- rious pro -- cla -- ma -- tion
  Hope re -- store and faith in -- crease:
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Earth can now but tell the sto -- ry
  Of Thy bit -- ter cross and pain;
  She shall yet -- be -- hold Thy glo -- ry
  When Thou com -- est back to reign.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Tho' once cra -- dled in a man -- ger,
  Oft no pil -- low but the sod;
  Here an a -- lien and a strab -- ger,
  Mock'd of men, dis -- own'd of God.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Long Thy ex -- iles have been pi -- ning,
  Far from rest, and home, and Thee;
  But, in heaven -- ly ves -- ture shin -- ing,
  Soon they shall Thy glo -- ry see.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  With that "\"bles" -- sed "hope\"" be -- fore us,
  Let no harp re -- main un -- strong;
  Let the migh -- ty ran -- som'd cho -- rus
  On -- ward roll from tongue to tongue.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Christ " "is " com "ing! " "let " cre a "tion "
  "\nFrom " "her " "groans " "and " tra "vail " "cease; "
  "\nLet " "the " glo "rious " pro cla ma "tion "
  "\nHope " re "store " "and " "faith " in "crease: "
  "\nChrist " "is " com "ing! "
  "\nChrist " "is " com "ing! "
  "\nCome, " "Thou " bles "sed " "Prince " "of " "Peace! "
  "\nChrist " "is " com "ing! "
  "\nChrist " "is " com "ing! "
  "\nCome, " "Thou " bles "sed " "Prince " "of " "Peace! "

  \set stanza = "2."
  "\nEarth " "can " "now " "but " "tell " "the " sto "ry "
  "\nOf " "Thy " bit "ter " "cross " "and " "pain; "
  "\nShe " "shall " yet be "hold " "Thy " glo "ry "
  "\nWhen " "Thou " com "est " "back " "to " "reign. "
  "\nChrist " "is " com "ing! "
  "\nChrist " "is " com "ing! "
  "\nCome, " "Thou " bles "sed " "Prince " "of " "Peace! "
  "\nChrist " "is " com "ing! "
  "\nChrist " "is " com "ing! "
  "\nCome, " "Thou " bles "sed " "Prince " "of " "Peace! "

  \set stanza = "3."
  "\nTho' " "once " cra "dled " "in " "a " man "ger, "
  "\nOft " "no " pil "low " "but " "the " "sod; "
  "\nHere " "an " a "lien " "and " "a " strab "ger, "
  "\nMock'd " "of " "men, " dis "own'd " "of " "God. "
  "\nChrist " "is " com "ing! "
  "\nChrist " "is " com "ing! "
  "\nCome, " "Thou " bles "sed " "Prince " "of " "Peace! "
  "\nChrist " "is " com "ing! "
  "\nChrist " "is " com "ing! "
  "\nCome, " "Thou " bles "sed " "Prince " "of " "Peace! "

  \set stanza = "4."
  "\nLong " "Thy " ex "iles " "have " "been " pi "ning, "
  "\nFar " "from " "rest, " "and " "home, " "and " "Thee; "
  "\nBut, " "in " heaven "ly " ves "ture " shin "ing, "
  "\nSoon " "they " "shall " "Thy " glo "ry " "see. "
  "\nChrist " "is " com "ing! "
  "\nChrist " "is " com "ing! "
  "\nCome, " "Thou " bles "sed " "Prince " "of " "Peace! "
  "\nChrist " "is " com "ing! "
  "\nChrist " "is " com "ing! "
  "\nCome, " "Thou " bles "sed " "Prince " "of " "Peace! "

  \set stanza = "5."
  "\nWith " "that " "\"bles" "sed " "hope\" " be "fore " "us, "
  "\nLet " "no " "harp " re "main " un "strong; "
  "\nLet " "the " migh "ty " ran "som'd " cho "rus "
  "\nOn" "ward " "roll " "from " "tongue " "to " "tongue. "
  "\nChrist " "is " com "ing! "
  "\nChrist " "is " com "ing! "
  "\nCome, " "Thou " bles "sed " "Prince " "of " "Peace! "
  "\nChrist " "is " com "ing! "
  "\nChrist " "is " com "ing! "
  "\nCome, " "Thou " bles "sed " "Prince " "of " "Peace! "
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
%    system-separator-markup = \slashSeparator
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
