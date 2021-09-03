\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Redeemed!"
  subtitle    = "Sankey No. 211"
  subsubtitle = "C. C. No. 250"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "S. F. Smith."
  meter       = \markup\smallCaps "l.m."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4  s2.*6
  \mark \markup { \box "B" }     s2.*7
  \mark \markup { \box "C" }     s2.*2 s2 \time 4/4 \partial 4. s4. s1
  \mark \markup { \box "D" }     s1*2
  \mark \markup { \box "E" }     s1*2 s2 s8
  \mark \markup { \box "F" } s4. s1   s2 s8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  \time 3/4 \partial 4
  s4
  s2.*15
  s2 \time 4/4 s4.
  s1*7
  s2 \tempo 4=20 s8
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \global
  bes'4
  bes(g) aes
  bes2 4
  c4(aes) c
  bes2 4
  bes4(aes) g
  aes2 c4
  c4(bes) aes % B
  g2 bes4
  bes4(g) aes
  bes2 4
  c4(ees) c
  bes2 4
  bes4(aes) g
  aes2 c4 % C
  c4(bes) aes
  g2 \bar "||" \time 4/4 \partial 4. g8^\markup\smallCaps Chorus. aes8. bes16
  c2~8 ees des8. c16
  bes2~8 g bes8. g16 % D
  aes2~8 c bes8. f16
  g2~8 8 aes8. bes16 % E
  c2~8 ees d8. c16
  bes2~8 \bar "|" \break g8 bes8. ees16
  d2~8 bes aes8. f16 % F
  ees2~8\fermata
}

alto = \relative {
  \autoBeamOff
  \global
  ees'4
  ees2 f4
  g2 4
  aes4(ees) ees
  ees2 g4
  g4(f) ees
  f2 aes4
  aes4(g) f % B
  ees2 4
  ees2 f4
  g2 ees4
  ees2 4
  ees2 g4
  g4(f) ees
  f2 aes4 % C
  aes4(g) f
  ees2 \bar "||" \time 4/4 \partial 4. ees8 f8. g16
  aes2(ees8) c' bes8. aes16
  g2(ees8) ees g8. ees16 % D
  f2~8 aes g8. d16
  ees2~8 8 f8. g16 % E
  aes2(ees8) c' bes8. aes16
  g2(ees8) 8 g8. 16
  f2~8 d f8. d16 % F
  ees8 bes c8. 16 bes8\fermata
}

tenor = \relative {
  \autoBeamOff
  \global
  g4
  g4(bes) bes
  ees2 4
  ees4(c) aes
  g2 bes4
  bes2 4
  bes2 d4
  ees2 bes4 % B
  bes2 g4
  g4(bes) bes
  ees2 4
  ees4(c) aes
  g2 bes4
  bes2 4
  bes2 d4 % C
  c4(bes) aes
  g2 \bar "||" \time 4/4 \partial 4. r8 r4
  r8 ees8 8. 16 aes8 r r4
  r8 bes8 8. 16 g8 r r4 % D
  r8 bes8 8. 16 8 r r4
  r8 bes8 8. 16 8 r r4 % E
  r8 ees,8 8. 16 aes8 r r4
  r8 bes8 8. 16 g8 r8 r4
  r8 bes8 8. 16 8 8 8. aes16 % F
  g8 8 aes8. 16 g8\fermata
}

bass = \relative {
  \autoBeamOff
  \global
  ees4
  ees2 4
  ees2 4
  aes2 4
  ees2 4
  bes2 4
  bes2 4
  ees2 d4 % B
  ees2 4
  ees2 4
  ees2 g4
  aes2 4
  ees2 4
  bes2 4
  bes2 4 % C
  ees2 d4
  ees2 \bar "||" \time 4/4 \partial 4. r8 r4
  r8 aes,8 8. 16 8 r r4
  r8 ees'8 8. 16 8 r r4 % D
  r8 bes8 8. 16 8 r r4
  r8 ees8 8. 16 8 r r4 % E
  r8 aes,8 8. 16 8 r r4
  r8 ees'8 8. 16 8 r r4
  r8 bes8 8. 16 8 8 8. 16 % F
  ees8 8 aes,8. 16 ees'8\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Re -- deem'd! re -- deem'd __ my song shall be, __
  Thro' time and through __ e -- ter -- ni -- ty! __
  Re -- deem'd! let all __ the ran -- som'd sing __
  E -- ter -- nal praise __ to Christ our King! __
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  Re -- deem'd re -- deem'd! my song shall be,
  Through time and through e -- ter -- ni -- ty!
  Re -- deem'd! let all the ran -- som'd sing
  E -- ter -- nal praise _ _ _ _ to Christ our King!
  
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Re -- deem'd from death, re -- deem'd from sin,
  Re -- deem'd from ills with -- out, with -- in:
  Re -- deem'd! what new light gilds the skies!
  What glo -- ries on the soul a -- rise!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Glo -- ry to Him, whose love un -- known
  Touch'd man's a -- byss from heav'n's high throne;
  Like some new star its ra -- diance beam'd,
  A new song rose— Re -- deem'd! re -- deem'd!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  As o -- cean's bil -- lows swell and break,
  The migh -- ty tide of praise shall wake;
  Thy love, Lord, like th'un fath -- omed sea,
  Shall waft a world re -- deem'd to Thee.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Re -- deem'd! cre -- a -- tion joy -- ful brings
  Its tri -- bute to the King of kings;
  Re -- deem'd! earth's mil -- lion voi -- ces raise
  One sound -- ing an -- them to His praise.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Re" "deem'd " "from " "death, " re "deem'd " "from " "sin, "
  "\nRe" "deem'd " "from " "ills " with "out, " with "in: "
  "\nRe" "deem'd! " "what " "new " "light " "gilds " "the " "skies! "
  "\nWhat " glo "ries " "on " "the " "soul " a "rise! "
  "\nRe" "deem'd! " re "deem'd "  "my " "song " "shall " "be, " 
  "\nThro' " "time " "and " "through "  e ter ni "ty! " 
  "\nRe" "deem'd! " "let " "all "  "the " ran "som'd " "sing " 
  "\nE" ter "nal " "praise "  "to " "Christ " "our " "King! " 

  \set stanza = "2."
  "\nGlo" "ry " "to " "Him, " "whose " "love " un "known "
  "\nTouch'd " "man's " a "byss " "from " "heav'n's " "high " "throne; "
  "\nLike " "some " "new " "star " "its " ra "diance " "beam'd, "
  "\nA " "new " "song " "rose— " Re "deem'd! " re "deem'd! "
  "\nRe" "deem'd! " re "deem'd "  "my " "song " "shall " "be, " 
  "\nThro' " "time " "and " "through "  e ter ni "ty! " 
  "\nRe" "deem'd! " "let " "all "  "the " ran "som'd " "sing " 
  "\nE" ter "nal " "praise "  "to " "Christ " "our " "King! " 

  \set stanza = "3."
  "\nAs " o "cean's " bil "lows " "swell " "and " "break, "
  "\nThe " migh "ty " "tide " "of " "praise " "shall " "wake; "
  "\nThy " "love, " "Lord, " "like " "th'un " fath "omed " "sea, "
  "\nShall " "waft " "a " "world " re "deem'd " "to " "Thee. "
  "\nRe" "deem'd! " re "deem'd "  "my " "song " "shall " "be, " 
  "\nThro' " "time " "and " "through "  e ter ni "ty! " 
  "\nRe" "deem'd! " "let " "all "  "the " ran "som'd " "sing " 
  "\nE" ter "nal " "praise "  "to " "Christ " "our " "King! " 

  \set stanza = "4."
  "\nRe" "deem'd! " cre a "tion " joy "ful " "brings "
  "\nIts " tri "bute " "to " "the " "King " "of " "kings; "
  "\nRe" "deem'd! " "earth's " mil "lion " voi "ces " "raise "
  "\nOne " sound "ing " an "them " "to " "His " "praise. "
  "\nRe" "deem'd! " re "deem'd "  "my " "song " "shall " "be, " 
  "\nThro' " "time " "and " "through "  e ter ni "ty! " 
  "\nRe" "deem'd! " "let " "all "  "the " ran "som'd " "sing " 
  "\nE" ter "nal " "praise "  "to " "Christ " "our " "King! " 
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Re" "deem'd " "from " "death, " re "deem'd " "from " "sin, "
  "\nRe" "deem'd " "from " "ills " with "out, " with "in: "
  "\nRe" "deem'd! " "what " "new " "light " "gilds " "the " "skies! "
  "\nWhat " glo "ries " "on " "the " "soul " a "rise! "
  "\nRe" "deem'd! " re "deem'd "  "my " "song " "shall " "be, " 
  "\nThro' " "time " "and " "through "  e ter ni "ty! " 
  "\nRe" "deem'd! " "let " "all "  "the " ran "som'd " "sing " 
  "\nE" ter "nal " "praise "  "to " "Christ " "our " "King! " "to " "Christ " "our " "King! "

  \set stanza = "2."
  "\nGlo" "ry " "to " "Him, " "whose " "love " un "known "
  "\nTouch'd " "man's " a "byss " "from " "heav'n's " "high " "throne; "
  "\nLike " "some " "new " "star " "its " ra "diance " "beam'd, "
  "\nA " "new " "song " "rose— " Re "deem'd! " re "deem'd! "
  "\nRe" "deem'd! " re "deem'd "  "my " "song " "shall " "be, " 
  "\nThro' " "time " "and " "through "  e ter ni "ty! " 
  "\nRe" "deem'd! " "let " "all "  "the " ran "som'd " "sing " 
  "\nE" ter "nal " "praise "  "to " "Christ " "our " "King! " "to " "Christ " "our " "King! "

  \set stanza = "3."
  "\nAs " o "cean's " bil "lows " "swell " "and " "break, "
  "\nThe " migh "ty " "tide " "of " "praise " "shall " "wake; "
  "\nThy " "love, " "Lord, " "like " "th'un " fath "omed " "sea, "
  "\nShall " "waft " "a " "world " re "deem'd " "to " "Thee. "
  "\nRe" "deem'd! " re "deem'd "  "my " "song " "shall " "be, " 
  "\nThro' " "time " "and " "through "  e ter ni "ty! " 
  "\nRe" "deem'd! " "let " "all "  "the " ran "som'd " "sing " 
  "\nE" ter "nal " "praise "  "to " "Christ " "our " "King! " "to " "Christ " "our " "King! "

  \set stanza = "4."
  "\nRe" "deem'd! " cre a "tion " joy "ful " "brings "
  "\nIts " tri "bute " "to " "the " "King " "of " "kings; "
  "\nRe" "deem'd! " "earth's " mil "lion " voi "ces " "raise "
  "\nOne " sound "ing " an "them " "to " "His " "praise. "
  "\nRe" "deem'd! " re "deem'd "  "my " "song " "shall " "be, " 
  "\nThro' " "time " "and " "through "  e ter ni "ty! " 
  "\nRe" "deem'd! " "let " "all "  "the " ran "som'd " "sing " 
  "\nE" ter "nal " "praise "  "to " "Christ " "our " "King! " "to " "Christ " "our " "King! "
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
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice  \partCombine { \global \tenor } { \global \bass }
           \new NullVoice = alignerT \tenor
           \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice  \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
           \new NullVoice = alignerT { \tenor \tenor \tenor \tenor }
           \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \chorusMen \chorusMen \chorusMen \chorusMen }
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice  \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
           \new NullVoice = alignerT { \tenor \tenor \tenor \tenor }
           \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \chorusMen \chorusMen \chorusMen \chorusMen }
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
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
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
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
            \addlyrics \wordsMidiAlto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
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
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
            \addlyrics \wordsMidiAlto
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
