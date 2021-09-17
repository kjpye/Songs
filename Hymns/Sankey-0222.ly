\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Awake, Awake! O Heart of Mine!"
  subtitle    = "Sankey No. 222"
  subsubtitle = "Sankey 880 No. 605"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby.
"
  meter       = \markup\smallCaps "D.C.M."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 9/8
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }            s2 s4.*7  s4
  \mark \markup { \box "B" }            s8 s4.*10
  \mark \markup { \box "C" }               s4.*9
  \mark \markup { \box "D" }               s4.*9
  \mark \markup { \box "E" }               s4.*10 s4
  \mark \markup { \box "F" } \time 12/8 \partial 2 s8 s4.*7 s4
  \mark \markup { \box "G" }            s8 s4.*7 s4
  \mark \markup { \box "H" }            s8 s4.*8
  \mark \markup { \box "I" }               s4.*7 s4
}

TempoTrack = {
%  \set Score.tempoHideNote = ##t
  \tempo 4.=120
  s8 s4.*77
  \tempo 4.=100 s4. s4. s4
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8 g4 aes8
  bes4.~4 8 c4 ees8
  bes4.~4. bes
  bes4.~4 \bar "|" \break f8 g4 aes8
  g4.~4 ees8 g4 aes8 % B
  bes4.~4 8 c4 ees8
  bes4.~4. ees \break
  d4.~4 f,8 a4 c8 % C
  bes4.~4. 4.
  bes4 aes8 4.~4 bes8 \break
  aes4 g8 4. 4. % D
  ges4.~4 8 f4 ees8
  bes'4.~4 ees,8 g4 aes8
  bes4.~4 8 c4 ees8 % E
  bes4.~4 8 c4 bes8
  f4.(g) f
  ees4.~4 \bar "|" \break \time 12/8 \partial 2 bes'8^\markup\smallCaps Chorus. bes[g] ees'
  d4.~4.~4 c8 bes4 a8 % F
  g4.~4.~4 \bar "|" \break 8 aes4 bes8
  c4.~4.~4 ees8 d4 c8
  bes4.~4.~4 \bar "|" \break bes8 a4 bes8
  f'4.~4.~4 aes,8 g4 aes8
  bes4.~4.~4. \bar "|" \break bes8[c d]
  ees4.~4 g,8 bes4.~8[aes] f
  ees4.^\markup\italic rit. ~4.~4
}

alto = \relative {
  \autoBeamOff
  ees'8 4 f8
  g4.~4 8 fis4 8
  g4.~4. ees4.
  d4.~4 8 ees4 f8
  ees4.~4 8 4 f8 % B
  g4.~4 8 fis4 8
  g4.~4. 4.
  f4.~4 8 ees4 8 % C
  d4.~4. 4.
  d4 8 4.~4 g8
  f4 ees8 4. 4. % D
  ees4.~4 8 4 8
  d4(ees8 f4) ees8 4 f8
  g4.~4 8 fis4 8 % E
  g4.~4 ees8 4 8
  d4.~4. 4.
  ees4.~4 \partCombineApart r8 r4 r8
  r4 \partCombineAutomatic a8 4 8 4 8 g4 f8 % F
  ees4.~4.~4 8 f4 g8
  aes4.~4.~4 c8 bes4 aes8 % G
  g4.~4.~4 8 fis4 g8
  aes4.~4.~4 f8 e4 f8 % H
  g4.~4.~4. aes4.
  g4.~4 ees8 d4.~4 8
  ees4 bes8 c4 8 bes4
}

tenor = \relative {
  \autoBeamOff
  g8 bes4 8
  ees4.~4 bes8 a4 c8
  ees4.~4. g,
  f4.~4 bes8 4 8
  bes4.~4 g8 bes4 8 % B
  ees4.~4 bes8 a4 c8
  ees4.~4. bes
  bes4.~4 d8 c4 f,8 % C
  f4.~4. 4.
  f4 8 4.~4 bes8
  bes4 8 4. 4. % D
  bes4.~4 8 aes4 ges8
  f4(g8 aes4) g8 bes4 8
  ees4.~4 bes8 a4 c8 % E
  ees4.~4 g,8 aes4 g8
  aes4.(bes) aes
  g4.~4 r8 r4 r8
  r4 f8 4 8 4 r8 r4 r8 % F
  r4 bes8 4 8 4 r8 r4 r8
  r4 ees8 4 8 4 8 4 8 % G
  ees4 8 4 8 4 r8 r4 r8
  r4
  d8 4 8 4 r8 r4 r8 % H
  r4 ees8 4 8 4. bes
  bes4 8 4 8 4.(f4) aes8 % I
  g4 8 aes4 8 g4
}

bass = \relative {
  \autoBeamOff
  ees8 4 8
  ees4.~4 8 4 8
  ees4.~4. 4.
  bes4.~4 8 4 8
  ees4.~4 8 4 8 % B
  ees4.~4 8 4 8
  ees4.~4. 4.
  f4.~4 8 4 8 % C
  bes,4.~4. 4.
  bes4 8 4.~4 8
  ees4 8 4. 4. % D
  ees4.~4 8 4 8
  bes4.~4 ees8 4 8
  ees4.~4 8 4 8 % E
  ees4.~4 8 4 8
  bes4.~4. 4.
  ees4.~4 r8 r4 r8
  r4 bes8 4 8 4 r8 r4 r8 % F
  r4 ees8 4 8 4 r8 r4 r8
  r4 aes8 4 8 4 8 4 8 % G
  ees4 8 4 8 4 r8 r4 r8
  r4 bes'8 4 8 4 r8 r4 r8 % H
  r4 ees,8 4 8 4. bes'4.
  ees,4 8 4 8 bes4.~4 8
  ees4 8 4 8 4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  A -- wake, a -- wake, __ O heart of mine! __
  Sing praise, Sing praise __ to God a -- bove; __
  Take up the song __ of end -- less years, __
  And sing re -- deem -- ing love!
}

chorusAlto = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  re -- deem -- ing love!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  A -- wake, a -- wake, O heart of mine!
  Sing praise, Sing praise to God a -- bove;
  to God a -- bove;
  Take up the song of end -- less years,
  And sing, And sing
_ _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  A -- wake, a -- wake, O heart of mine!
  Sing praise to God a -- bove;
  Take up the song of end -- less years,
  And sing re -- deem -- ing love!
  Re -- deemed by Him who bore my sins,
  When on the cross He diedl
  Re -- deemed and pur -- chased with His blood,
  Re -- deemed and sanc -- ti -- fied.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Re -- deemed by Him, my Lord and King,
  Who saves me day by day;
  My life and all its ran -- somed powers
  Could ne'er His love re -- pay.
  And yet His mer -- cy
  con -- des -- cends
  My hum -- ble gift to own;
  And thro' the ruch -- es of His grace,
  He brings me near His throne.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh love un -- chang -- ing, love su -- blime!
  Not all the hosts a -- bove
  Can reach the height or sound the depth
  Of God's e -- ter -- bal love.
  This won -- drous love en -- folds the world,
  It fills the realms a -- bovel
  'Tis bound -- less as e -- ter -- ni -- ty;
  Oh praise the God of love!
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "A" "wake, " a "wake, " "O " "heart " "of " "mine! "
  "\nSing " "praise " "to " "God " a "bove; "
  "\nTake " "up " "the " "song " "of " end "less " "years, "
  "\nAnd " "sing " re deem "ing " "love! "
  "\nRe" "deemed " "by " "Him " "who " "bore " "my " "sins, "
  "\nWhen " "on " "the " "cross " "He " "diedl "
  "\nRe" "deemed " "and " pur "chased " "with " "His " "blood, "
  "\nRe" "deemed " "and " sanc ti "fied. "
  "\nA" "wake, " a "wake, "  "O " "heart " "of " "mine! " 
  "\nSing " "praise, " "Sing " "praise "  "to " "God " a "bove; " 
  "\nTake " "up " "the " "song "  "of " end "less " "years, " 
  "\nAnd " "sing " re deem "ing " "love! "

  \set stanza = "2."
  "\nRe" "deemed " "by " "Him, " "my " "Lord " "and " "King, "
  "\nWho " "saves " "me " "day " "by " "day; "
  "\nMy " "life " "and " "all " "its " ran "somed " "powers "
  "\nCould " "ne'er " "His " "love " re "pay. "
  "\nAnd " "yet " "His " mer "cy "
  "\ncon" des "cends "
  "\nMy " hum "ble " "gift " "to " "own; "
  "\nAnd " "thro' " "the " ruch "es " "of " "His " "grace, "
  "\nHe " "brings " "me " "near " "His " "throne. "
  "\nA" "wake, " a "wake, "  "O " "heart " "of " "mine! " 
  "\nSing " "praise, " "Sing " "praise "  "to " "God " a "bove; " 
  "\nTake " "up " "the " "song "  "of " end "less " "years, " 
  "\nAnd " "sing " re deem "ing " "love! "

  \set stanza = "3."
  "\nOh " "love " un chang "ing, " "love " su "blime! "
  "\nNot " "all " "the " "hosts " a "bove "
  "\nCan " "reach " "the " "height " "or " "sound " "the " "depth "
  "\nOf " "God's " e ter "bal " "love. "
  "\nThis " won "drous " "love " en "folds " "the " "world, "
  "\nIt " "fills " "the " "realms " a "bovel "
  "\n'Tis " bound "less " "as " e ter ni "ty; "
  "\nOh " "praise " "the " "God " "of " "love! "
  "\nA" "wake, " a "wake, "  "O " "heart " "of " "mine! " 
  "\nSing " "praise, " "Sing " "praise "  "to " "God " a "bove; " 
  "\nTake " "up " "the " "song "  "of " end "less " "years, " 
  "\nAnd " "sing " re deem "ing " "love! "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "A" "wake, " a "wake, " "O " "heart " "of " "mine! "
  "\nSing " "praise " "to " "God " a "bove; "
  "\nTake " "up " "the " "song " "of " end "less " "years, "
  "\nAnd " "sing " re deem "ing " "love! "
  "\nRe" "deemed " "by " "Him " "who " "bore " "my " "sins, "
  "\nWhen " "on " "the " "cross " "He " "diedl "
  "\nRe" "deemed " "and " pur "chased " "with " "His " "blood, "
  "\nRe" "deemed " "and " sanc ti "fied. "
  "\nA" "wake, " a "wake, "  "O " "heart " "of " "mine! " 
  "\nSing " "praise, " "Sing " "praise "  "to " "God " a "bove; " 
  "\nTake " "up " "the " "song "  "of " end "less " "years, " 
  "\nAnd " "sing " re deem "ing " "love! " re deem "ing " "love! "

  \set stanza = "2."
  "\nRe" "deemed " "by " "Him, " "my " "Lord " "and " "King, "
  "\nWho " "saves " "me " "day " "by " "day; "
  "\nMy " "life " "and " "all " "its " ran "somed " "powers "
  "\nCould " "ne'er " "His " "love " re "pay. "
  "\nAnd " "yet " "His " mer "cy "
  "\ncon" des "cends "
  "\nMy " hum "ble " "gift " "to " "own; "
  "\nAnd " "thro' " "the " ruch "es " "of " "His " "grace, "
  "\nHe " "brings " "me " "near " "His " "throne. "
  "\nA" "wake, " a "wake, "  "O " "heart " "of " "mine! " 
  "\nSing " "praise, " "Sing " "praise "  "to " "God " a "bove; " 
  "\nTake " "up " "the " "song "  "of " end "less " "years, " 
  "\nAnd " "sing " re deem "ing " "love! " re deem "ing " "love! "

  \set stanza = "3."
  "\nOh " "love " un chang "ing, " "love " su "blime! "
  "\nNot " "all " "the " "hosts " a "bove "
  "\nCan " "reach " "the " "height " "or " "sound " "the " "depth "
  "\nOf " "God's " e ter "bal " "love. "
  "\nThis " won "drous " "love " en "folds " "the " "world, "
  "\nIt " "fills " "the " "realms " a "bovel "
  "\n'Tis " bound "less " "as " e ter ni "ty; "
  "\nOh " "praise " "the " "God " "of " "love! "
  "\nA" "wake, " a "wake, "  "O " "heart " "of " "mine! " 
  "\nSing " "praise, " "Sing " "praise "  "to " "God " a "bove; " 
  "\nTake " "up " "the " "song "  "of " end "less " "years, " 
  "\nAnd " "sing " re deem "ing " "love! " re deem "ing " "love! "
}


wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "A" "wake, " a "wake, " "O " "heart " "of " "mine! "
  "\nSing " "praise " "to " "God " a "bove; "
  "\nTake " "up " "the " "song " "of " end "less " "years, "
  "\nAnd " "sing " re deem "ing " "love! "
  "\nRe" "deemed " "by " "Him " "who " "bore " "my " "sins, "
  "\nWhen " "on " "the " "cross " "He " "diedl "
  "\nRe" "deemed " "and " pur "chased " "with " "His " "blood, "
  "\nRe" "deemed " "and " sanc ti "fied. "
  "\nA" "wake, " a "wake, " "O " "heart " "of " "mine! "
  "\nSing " "praise, " "Sing " "praise " "to " "God " a "bove; " "to " "God " a "bove; "
  "\nTake " "up " "the " "song " "of " end "less " "years, "
  "\nAnd " "sing, " "And " "sing " re deem "ing " "love! "
  "\nre" deem "ing " "love! "

  \set stanza = "2."
  "\nRe" "deemed " "by " "Him, " "my " "Lord " "and " "King, "
  "\nWho " "saves " "me " "day " "by " "day; "
  "\nMy " "life " "and " "all " "its " ran "somed " "powers "
  "\nCould " "ne'er " "His " "love " re "pay. "
  "\nAnd " "yet " "His " mer "cy "
  "\ncon" des "cends "
  "\nMy " hum "ble " "gift " "to " "own; "
  "\nAnd " "thro' " "the " ruch "es " "of " "His " "grace, "
  "\nHe " "brings " "me " "near " "His " "throne. "
  "\nA" "wake, " a "wake, " "O " "heart " "of " "mine! "
  "\nSing " "praise, " "Sing " "praise " "to " "God " a "bove; " "to " "God " a "bove; "
  "\nTake " "up " "the " "song " "of " end "less " "years, "
  "\nAnd " "sing, " "And " "sing " re deem "ing " "love! "
  "\nre" deem "ing " "love! "

  \set stanza = "3."
  "\nOh " "love " un chang "ing, " "love " su "blime! "
  "\nNot " "all " "the " "hosts " a "bove "
  "\nCan " "reach " "the " "height " "or " "sound " "the " "depth "
  "\nOf " "God's " e ter "bal " "love. "
  "\nThis " won "drous " "love " en "folds " "the " "world, "
  "\nIt " "fills " "the " "realms " a "bovel "
  "\n'Tis " bound "less " "as " e ter ni "ty; "
  "\nOh " "praise " "the " "God " "of " "love! "
  "\nA" "wake, " a "wake, " "O " "heart " "of " "mine! "
  "\nSing " "praise, " "Sing " "praise " "to " "God " a "bove; " "to " "God " a "bove; "
  "\nTake " "up " "the " "song " "of " end "less " "years, "
  "\nAnd " "sing, " "And " "sing " re deem "ing " "love! "
  "\nre" deem "ing " "love! "
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
            \new NullVoice = "alignerA" \alto
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "alignerA"  \chorusAlto
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new NullVoice \tenor
            \addlyrics \chorusMen
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
            \new NullVoice = "aligner"  { \soprano \soprano \soprano }
            \new NullVoice = "alignerA" { \alto \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \global \soprano \global \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
            \new Lyrics \lyricsto "alignerA" { \chorusAlto \chorusAlto \chorusAlto }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new NullVoice { \tenor \tenor \tenor }
            \addlyrics { \chorusMen \chorusMen \chorusMen }
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
            \new NullVoice = "aligner"  { \soprano \soprano \soprano }
            \new NullVoice = "alignerA" { \alto \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \global \soprano \global \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
            \new Lyrics \lyricsto "alignerA" { \chorusAlto \chorusAlto \chorusAlto }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new NullVoice { \tenor \tenor \tenor }
            \addlyrics { \chorusMen \chorusMen \chorusMen }
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
            \new Voice { \global \soprano \global \soprano \global \soprano \bar "|." }
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
                                % Bass staff
          \new Staff = bass
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
            \new Voice { \global \soprano \global \soprano \global \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
            \addlyrics \wordsMidiAlto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
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
            \new Voice { \global \soprano \global \soprano \global \soprano \bar "|." }
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
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
