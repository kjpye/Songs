\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come!"
  subtitle    = "Sankey No. 425"
  subsubtitle = "Sankey 880 No. 400"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. J. G. Johnson."
  meter       = \markup\smallCaps "7.6.d."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 3/4
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*3 s4. s4
  \mark \markup { \box "C" } s8 s2.*3 s4. s4
  \mark \markup { \box "D" } s8 s2.*4
  \mark \markup { \box "E" }    s2.*4
  \mark \markup { \box "F" }    s2.*4
  \mark \markup { \box "G" }    s2.*4
  \mark \markup { \box "H" }    s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'8
  gis8 a d4. a8
  cis8 b4. 4
  cis4. b8e, b'
  a4.~4 \bar "|" \break a8
  gis8 a d4. a8 % B
  cis8 b4. 4
  cis4. a8 g e
  d2 r8 \bar "|" \break fis8
  fis8 b8 4. d8 % C
  d8 cis4. 4
  d4. b8 fis gis
  a2 r8 \bar "|" \break a8
  gis8 a d4. a8 % D
  cis8 b4. 4
  cis4. a8 b cis
  d2. \break
  a4.^\markup\smallCaps Refrain. b8 a b % E
  a4(d cis)
  b4. cis8 b cis
  b4(e d)
  cis4. 8 b cis % F
  d4(a) b
  cis4. b8 e, b'
  a2.
  a4. b8 a b % G
  a4(d cis)
  b4. cis8 b cis
  b4(e d)
  cis4. 8 b cis % H
  d4(a) b
  cis4. a8 b cis^\markup\italic rit.
  d4.~4
}

alto = \relative {
  \autoBeamOff
  fis'8
  eis8 fis8 4. 8
  a8 g4. 4
  g4. 8 8 8
  fis4.~4 8
  eis8 fis8 4. 8 % B
  a8 g4. 4
  g4. 8 e cis
  d2 r8 8
  d8 fis8 4. 8 % C
  fis8 4. 4
  fis4. 8 d e
  e2 r8 fis
  eis8 fis8 4. 8 % D
  a8 fis4. 4
  g4. 8 8 8
  fis2.
  fis4. g8 fis g % E
  fis4(4 a)
  gis4. a8 g a
  gis4(4 b)
  a4. 8 8 8 % F
  a4(fis) g
  g4. 8 8 8
  fis2.
  fis4. g8 fis g % G
  fis4(4 a)
  g4. a8 gis a
  gis4(4 b)
  a4. 8 8 8 % H
  a4(fis) g
  g4. 8 8 8
  fis4.~4
}

tenor = \relative {
  \autoBeamOff \tiny
  d'8
  d8 8 a4. d8
  d8 4. 4
  a4. 8 cis8 8
  d4.~4 8
  d8 8 a4. d8 % B
  d8 4. 4
  a4. 8 8 g
  fis2 r8 b8
  b8 d8 4. b8 % C
  ais8 4. 4
  b4. d8 8 8
  cis2 r8 d
  d8 8 a4. d8 % D
  d8 4. 4
  a4. 8 8 8
  a2.
  \normalsize
  d8 r d r d r % E
  d8 r a r4.
  d8 r d r d r
  d8 r b r4.
  e4. 8 8 8 % F
  d2 4
  a4. 8 8 8
  a4(d2)
  d8 r d r d r % G
  d8 r a r4.
  d8 r d r d r
  d8 r b r4.
  e4. 8 8 8 % H
  d2 4
  a4. 8 8 8
  a4.~4
}

bass = \relative {
  \autoBeamOff \tiny
  d8
  d8 8 4. 8
  g8 4. 4
  a4. 8 8 8
  d,4.~4 8
  d8 8 4. 8 % B
  g8 4. 4
  a4. 8 a, a
  d2 r8 b8
  b8 8 4. 8 % C
  fis'8 4. 4
  b,4. 8 8 e
  a,2 r8 d
  d8 8 4. 8 % D
  g8 4. 4
  a4. 8 a, a
  d2.
  \normalsize
  d8 r d r d r % E
  d8 r d r4.
  e8 r e r e r
  e8 r e r4.
  a4. 8 g8 8 % F
  fis4(d) g,
  a4. 8 8 8
  d4(fis) a
  d,8 r d r d r % G
  d8 r d r4.
  e8 r e r e r
  e8 r e r4.
  a4. 8 g g % H
  fis4(d) g,
  a4. 8 8 8
  d4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"Come!" oh, come to Me! __
  "\"Come!" oh, come to "Me!\"" __
  "\"Wea" -- ry, hea -- vy -- la -- den,
  "\"Come!" oh, come to "Me!\"" __
  "\"Come!" oh, come to Me! __
  "\"Come!" oh, come to "Me!\"" __
  "\"Wea" -- ry, hea -- vy -- la -- den,
  "\"Come!" oh, come to "Me!\"" __
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _
  Come! come! come! come! come!
  Come! come! come! come! come!
  _ _ _ _ _ _
  _ _ _ _ Me!
  Oh, come! come! come! come! come!
  Come! come! come! come! come!
  _ _ _ _ _ _
  _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  O word, of words the sweet -- est,
  O word, in which there lie
  All pro -- mise, all ful -- fil -- ment,
  And end of mys -- ter -- y!
  La -- ment -- ing, or re -- joic -- ing,
  With doubt or ter -- ror nigh,
  I hear the "\"Come!\"" of Je -- sus,
  And to His cross I fly.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O soul! why wouldst thou wan -- der
  From such a lov -- ing Friend?
  Cling clo -- ser, clo -- ser to Him,
  Stay with Hime to the end;
  A -- las! I am so help -- less,
  So ve -- ry full of sin,
  For I am e -- ver wan -- d'ring,
  And com -- ing back a -- gain.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, each time draw me near -- er,
  That soon the "\"Come\"" may be,
  Naught but a gen -- tle whis -- per,
  To one clolse, close to Thee;
  Then, o -- ver sea and moun -- tain,
  Far from, or near my home,
  I'll take Thy hand and fol -- low,
  At that sweet whis -- per, "\"Come!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " "word, " "of " "words " "the " sweet "est, "
  "\nO " "word, " "in " "which " "there " "lie "
  "\nAll " pro "mise, " "all " ful fil "ment, "
  "\nAnd " "end " "of " mys ter "y! "
  "\nLa" ment "ing, " "or " re joic "ing, "
  "\nWith " "doubt " "or " ter "ror " "nigh, "
  "\nI " "hear " "the " "\"Come!\" " "of " Je "sus, "
  "\nAnd " "to " "His " "cross " "I " "fly. "
  "\n\"Come! " "oh, " "come " "to " "Me! " 
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 
  "\n\"Wea" "ry, " hea vy la "den, "
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 
  "\n\"Come! " "oh, " "come " "to " "Me! " 
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 
  "\n\"Wea" "ry, " hea vy la "den, "
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 

  \set stanza = "2."
  "\nO " "soul! " "why " "wouldst " "thou " wan "der "
  "\nFrom " "such " "a " lov "ing " "Friend? "
  "\nCling " clo "ser, " clo "ser " "to " "Him, "
  "\nStay " "with " "Hime " "to " "the " "end; "
  "\nA" "las! " "I " "am " "so " help "less, "
  "\nSo " ve "ry " "full " "of " "sin, "
  "\nFor " "I " "am " e "ver " wan "d'ring, "
  "\nAnd " com "ing " "back " a "gain. "
  "\n\"Come! " "oh, " "come " "to " "Me! " 
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 
  "\n\"Wea" "ry, " hea vy la "den, "
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 
  "\n\"Come! " "oh, " "come " "to " "Me! " 
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 
  "\n\"Wea" "ry, " hea vy la "den, "
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 

  \set stanza = "3."
  "\nOh, " "each " "time " "draw " "me " near "er, "
  "\nThat " "soon " "the " "\"Come\" " "may " "be, "
  "\nNaught " "but " "a " gen "tle " whis "per, "
  "\nTo " "one " "clolse, " "close " "to " "Thee; "
  "\nThen, " o "ver " "sea " "and " moun "tain, "
  "\nFar " "from, " "or " "near " "my " "home, "
  "\nI'll " "take " "Thy " "hand " "and " fol "low, "
  "\nAt " "that " "sweet " whis "per, " "\"Come!\" "
  "\n\"Come! " "oh, " "come " "to " "Me! " 
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 
  "\n\"Wea" "ry, " hea vy la "den, "
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 
  "\n\"Come! " "oh, " "come " "to " "Me! " 
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 
  "\n\"Wea" "ry, " hea vy la "den, "
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "O " "word, " "of " "words " "the " sweet "est, "
  "\nO " "word, " "in " "which " "there " "lie "
  "\nAll " pro "mise, " "all " ful fil "ment, "
  "\nAnd " "end " "of " mys ter "y! "
  "\nLa" ment "ing, " "or " re joic "ing, "
  "\nWith " "doubt " "or " ter "ror " "nigh, "
  "\nI " "hear " "the " "\"Come!\" " "of " Je "sus, "
  "\nAnd " "to " "His " "cross " "I " "fly. "
  "\nCome, " "come, " "come, " "come, " "come, "
  "\nCome, " "come, " "come, " "come, " "come, "
  "\n\"Wea" "ry, " hea vy la "den, "
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 
  "\nCome, " "come, " "come, " "come, " "come, "
  "\nCome, " "come, " "come, " "come, " "come, "
  "\n\"Wea" "ry, " hea vy la "den, "
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 

  \set stanza = "2."
  "\nO " "soul! " "why " "wouldst " "thou " wan "der "
  "\nFrom " "such " "a " lov "ing " "Friend? "
  "\nCling " clo "ser, " clo "ser " "to " "Him, "
  "\nStay " "with " "Hime " "to " "the " "end; "
  "\nA" "las! " "I " "am " "so " help "less, "
  "\nSo " ve "ry " "full " "of " "sin, "
  "\nFor " "I " "am " e "ver " wan "d'ring, "
  "\nAnd " com "ing " "back " a "gain. "
  "\nCome, " "come, " "come, " "come, " "come, "
  "\nCome, " "come, " "come, " "come, " "come, "
  "\n\"Wea" "ry, " hea vy la "den, "
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 
  "\nCome, " "come, " "come, " "come, " "come, "
  "\nCome, " "come, " "come, " "come, " "come, "
  "\n\"Wea" "ry, " hea vy la "den, "
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 

  \set stanza = "3."
  "\nOh, " "each " "time " "draw " "me " near "er, "
  "\nThat " "soon " "the " "\"Come\" " "may " "be, "
  "\nNaught " "but " "a " gen "tle " whis "per, "
  "\nTo " "one " "clolse, " "close " "to " "Thee; "
  "\nThen, " o "ver " "sea " "and " moun "tain, "
  "\nFar " "from, " "or " "near " "my " "home, "
  "\nI'll " "take " "Thy " "hand " "and " fol "low, "
  "\nAt " "that " "sweet " whis "per, " "\"Come!\" "
  "\nCome, " "come, " "come, " "come, " "come, "
  "\nCome, " "come, " "come, " "come, " "come, "
  "\n\"Wea" "ry, " hea vy la "den, "
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 
  "\nCome, " "come, " "come, " "come, " "come, "
  "\nCome, " "come, " "come, " "come, " "come, "
  "\n\"Wea" "ry, " hea vy la "den, "
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "O " "word, " "of " "words " "the " sweet "est, "
  "\nO " "word, " "in " "which " "there " "lie "
  "\nAll " pro "mise, " "all " ful fil "ment, "
  "\nAnd " "end " "of " mys ter "y! "
  "\nLa" ment "ing, " "or " re joic "ing, "
  "\nWith " "doubt " "or " ter "ror " "nigh, "
  "\nI " "hear " "the " "\"Come!\" " "of " Je "sus, "
  "\nAnd " "to " "His " "cross " "I " "fly. "
  "\nCome, " "come, " "come, " "come, " "come, "
  "\nCome, " "come, " "come, " "come, " "come, "
  "\n\"Wea" "ry, " hea vy la "den, "
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 
  "\nOh, " "come, " "come, " "come, " "come, " "come, "
  "\nCome, " "come, " "come, " "come, " "come, "
  "\n\"Wea" "ry, " hea vy la "den, "
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 

  \set stanza = "2."
  "\nO " "soul! " "why " "wouldst " "thou " wan "der "
  "\nFrom " "such " "a " lov "ing " "Friend? "
  "\nCling " clo "ser, " clo "ser " "to " "Him, "
  "\nStay " "with " "Hime " "to " "the " "end; "
  "\nA" "las! " "I " "am " "so " help "less, "
  "\nSo " ve "ry " "full " "of " "sin, "
  "\nFor " "I " "am " e "ver " wan "d'ring, "
  "\nAnd " com "ing " "back " a "gain. "
  "\nCome, " "come, " "come, " "come, " "come, "
  "\nCome, " "come, " "come, " "come, " "come, "
  "\n\"Wea" "ry, " hea vy la "den, "
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 
  "\nOh, " "come, " "come, " "come, " "come, " "come, "
  "\nCome, " "come, " "come, " "come, " "come, "
  "\n\"Wea" "ry, " hea vy la "den, "
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 

  \set stanza = "3."
  "\nOh, " "each " "time " "draw " "me " near "er, "
  "\nThat " "soon " "the " "\"Come\" " "may " "be, "
  "\nNaught " "but " "a " gen "tle " whis "per, "
  "\nTo " "one " "clolse, " "close " "to " "Thee; "
  "\nThen, " o "ver " "sea " "and " moun "tain, "
  "\nFar " "from, " "or " "near " "my " "home, "
  "\nI'll " "take " "Thy " "hand " "and " fol "low, "
  "\nAt " "that " "sweet " whis "per, " "\"Come!\" "
  "\nCome, " "come, " "come, " "come, " "come, "
  "\nCome, " "come, " "come, " "come, " "come, "
  "\n\"Wea" "ry, " hea vy la "den, "
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 
  "\nOh, " "come, " "come, " "come, " "come, " "come, "
  "\nCome, " "come, " "come, " "come, " "come, "
  "\n\"Wea" "ry, " hea vy la "den, "
  "\n\"Come! " "oh, " "come " "to " "Me!\" " 
}

\book {
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
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
  \bookOutputSuffix "midi-tenor"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
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
            \addlyrics \wordsMidiTenor
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
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
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
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
            \addlyrics \wordsMidiBass
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
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(0 . 25) { \global \tenor } { \global \bass }
            \new NullVoice = alignerB { \bass }
            \addlyrics \chorusMen
          >>
%          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerB \chorusMen
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
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(0 . 25) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerB { \repeat unfold \verses \bass }
            \addlyrics {\repeat unfold \verses \chorusMen}
          >>
%          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
