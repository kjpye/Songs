\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Blood of the Lamb"
  subtitle    = "Sankey No. 113"
  subsubtitle = "Sankey 880 No. 396"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup { \italic "Arr. from " \smallCaps "H. S. Perkins." }
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. R. Latta."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
  \mark \markup { \box "E" } s1*2
  \mark \markup { \box "F" } s1*2
  \mark \markup { \box "G" } s1*2
  \mark \markup { \box "H" } s1*2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  fis'8. 16 8. eis16 fis4 8. g16
  a2. 8. fis16
  e4 4 fis g8. fis16
  e2. r4 \break
  fis8. 16 8. eis16 fis4 8. g16 % B
  a2. 8. fis16
  e4 e e fis8. 16
  d2. r4 \break
  b'8. 16 8. 16 4 8. g16 % C
  fis2(a4) r
  b8. 16 8. 16 8[d] cis b
  a2(g4) r \break
  fis8. 16 8. eis16 fis4 8. g16 % D
  a2. fis4
  e4 8. 16 4 fis8. e16
  d2. r4 \break
  a'2~8. fis16 a8. d16 % E
  cis2~4 r \break
  g2~8. e16 g8. b16 % F
  a2~4 r \break
  d8. 16 8. 16 4 8. cis16 % G
  b2(g4) b \break
  a4 fis8. d16 e4 fis8. e16 % H
  d2~4 r
}

alto = \relative {
  d'8. 16 8. 16 4 8. e16
  fis2. 8. d16
  cis4 4 d e8. d16
  cis2. r4
  d8. 16 8. 16 d4 8. e16 % B
  fis2. 8. d16
  d4 d cis cis8. 16
  d2. r4
  d8.g16 8. 16 4 8. e16 % C
  d2(fis4) r
  g8. 16 8. 16 gis4 e8 d
  cis2. r4
  d8. 16 8. 16 4 8. e16 % D
  fis2. d4
  d4 8. 16 cis4 8. 16
  d2. r4
  fis8 8 8. 16 4 \once\partCombineApart r % E
  g8 8 8. 16 4 r
  e8 8 8. 16 4 \once\partCombineApart r % F
  fis8 8 8. 16 4 r
  fis8. 16 8. 16 a4 8. 16 % G
  g4 8. 16 4 4
  fis4 d8. 16 4 cis8. 16 % H
  d4 b cis r
}

tenor = \relative {
  \autoBeamOff
  a8. 16 8. gis16 a4 8. 16
  d2. 8. a16
  a4 4 4 8. 16
  a2. r4
  a8. 16 8. gis16 a4 8. 16 % B
  d2. a8. 16
  b4 4 a4 8. 16
  fis2. r4
  d'8. 16 8. 16 4 8. b16 % C
  a2(d4) r
  d8. 16 8. 16 8[b] a gis
  a2. r4
  a8. 16 8. gis16 a4 8. 16 % D
  d2. a4
  4 8. 16 a4 8. 16
  fis2. r4
  d'8 8 8. 16 4 r % E
  e8 8 8. 16 4 r
  cis8 8 8. 16 4 r % F
  d8 8 8. 16 4 r
  a8. 16 8. 16 4 d8. 16 % G
  d4 8. 16 4 4
  d4 a8. fis16 a4 8. g16 % H
  fis4 g fis r
}

bass= \relative {
  d8. 16 8. 16 4 8. 16
  d2. 8. 16
  a4 4 d4 8. 16
  a2. r4
  d8. 16 8. 16 4 8. 16 % B
  d2. 8. 16
  g4 4 a a,8. 16
  d2. r4
  g8. 16 8. 16 4 8. 16 % C
  d2. r4
  g8. 16 8. 16 e4 8 8
  a,2. r4
  d8. 16 8. 16 4 8. 16 % D
  d2. 4
  g4 8. 16 a4 a,8. 16
  d2. r4
  d8 8 8. 16 4 r % E
  a8 8 8. 16 4 r
  a'8 8 8. 16 4 r % F
  d,8 8 8. 16 4 r
  d8. 16 8. 16 fis4 8. 16 % G
  g4 8. 16 b4 g
  a4 a,8. b16 a4 8. 16
  d2~4 r
}

chorus = \lyricmode {
  Whi -- ter than the snow!
  whi -- ter than the snow!
  Whi -- ter than the snow!
  whi -- ter than the snow!
  Wash me in the Blood of the Lamb, of the Lamb,
  And I shall be whi -- ter than snow, the snow!
}

chorusSop = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _
  Whi -- ter than the snow! __
  Whi -- ter than the snow! __
  Wash me in the Blood of the Lamb, --
  And I shall be whi -- ter than snow!
}

chorusBass = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  snow!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Bles -- sed be the Foun -- tain of blood,
  To a world of sin -- ners re -- vealed;
  Bles -- sed be the dear Son of God:
  On -- ly by His stripes we are healed.
  Tho' I've wan -- dered far from His fold,
  Bring -- ing to my heart pain and woe,
  Wash me in the Blood of the Lamb,
  And I shall be whi -- ter than snow!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thorn -- y was the crown that He wore,
  And the cross His bo -- dy o'er -- came;
  Griev -- ous were the sor -- rows He bore,
  But He suf -- fered not thus in vain.
  May I to that foun -- tain be led,
  Made to cleanse my sins here be -- low!
  Wash me in the Blood that He shed,
  And I shall be whit -- er than snow!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Fa -- ther, I have wan -- dered from Thee,
  Oft -- en has my heart gone a -- stray;
  Crom -- son do my sins seem to me—
  Wa -- ter can -- not wash them a -- way.
  Je -- sus, to that foun -- tain of Thine,
  Lean -- ing on Thy prom -- ise, I go;
  Cleanse me by Thy wash -- ing Di -- vine,
  And I shall be whit -- er than snow!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Bles" "sed " "be " "the " Foun "tain " "of " "blood, "
  "\nTo " "a " "world " "of " sin "ners " re "vealed; "
  "\nBles" "sed " "be " "the " "dear " "Son " "of " "God: "
  "\nOn" "ly " "by " "His " "stripes " "we " "are " "healed. "
  "\nTho' " "I've " wan "dered " "far " "from " "His " "fold, "
  "\nBring" "ing " "to " "my " "heart " "pain " "and " "woe, "
  "\nWash " "me " "in " "the " "Blood " "of " "the " "Lamb, "
  "\nAnd " "I " "shall " "be " whi "ter " "than " "snow! "
  "\nWhi" "ter " "than " "the " "snow! "
  "\nwhi" "ter " "than " "the " "snow! "
  "\nWhi" "ter " "than " "the " "snow! "
  "\nwhi" "ter " "than " "the " "snow! "
  "\nWash " "me " "in " "the " "Blood " "of " "the " "Lamb, " "of " "the " "Lamb, "
  "\nAnd " "I " "shall " "be " whi "ter " "than " "snow, " "the " "snow! "

  \set stanza = "2."
  "\nThorn" "y " "was " "the " "crown " "that " "He " "wore, "
  "\nAnd " "the " "cross " "His " bo "dy " o'er "came; "
  "\nGriev" "ous " "were " "the " sor "rows " "He " "bore, "
  "\nBut " "He " suf "fered " "not " "thus " "in " "vain. "
  "\nMay " "I " "to " "that " foun "tain " "be " "led, "
  "\nMade " "to " "cleanse " "my " "sins " "here " be "low! "
  "\nWash " "me " "in " "the " "Blood " "that " "He " "shed, "
  "\nAnd " "I " "shall " "be " whit "er " "than " "snow! "
  "\nWhi" "ter " "than " "the " "snow! "
  "\nwhi" "ter " "than " "the " "snow! "
  "\nWhi" "ter " "than " "the " "snow! "
  "\nwhi" "ter " "than " "the " "snow! "
  "\nWash " "me " "in " "the " "Blood " "of " "the " "Lamb, " "of " "the " "Lamb, "
  "\nAnd " "I " "shall " "be " whi "ter " "than " "snow, " "the " "snow! "

  \set stanza = "3."
  "\nFa" "ther, " "I " "have " wan "dered " "from " "Thee, "
  "\nOft" "en " "has " "my " "heart " "gone " a "stray; "
  "\nCrom" "son " "do " "my " "sins " "seem " "to " "me— "
  "\nWa" "ter " can "not " "wash " "them " a "way. "
  "\nJe" "sus, " "to " "that " foun "tain " "of " "Thine, "
  "\nLean" "ing " "on " "Thy " prom "ise, " "I " "go; "
  "\nCleanse " "me " "by " "Thy " wash "ing " Di "vine, "
  "\nAnd " "I " "shall " "be " whit "er " "than " "snow! "
  "\nWhi" "ter " "than " "the " "snow! "
  "\nwhi" "ter " "than " "the " "snow! "
  "\nWhi" "ter " "than " "the " "snow! "
  "\nwhi" "ter " "than " "the " "snow! "
  "\nWash " "me " "in " "the " "Blood " "of " "the " "Lamb, " "of " "the " "Lamb, "
  "\nAnd " "I " "shall " "be " whi "ter " "than " "snow, " "the " "snow! "
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Bles" "sed " "be " "the " Foun "tain " "of " "blood, "
  "\nTo " "a " "world " "of " sin "ners " re "vealed; "
  "\nBles" "sed " "be " "the " "dear " "Son " "of " "God: "
  "\nOn" "ly " "by " "His " "stripes " "we " "are " "healed. "
  "\nTho' " "I've " wan "dered " "far " "from " "His " "fold, "
  "\nBring" "ing " "to " "my " "heart " "pain " "and " "woe, "
  "\nWash " "me " "in " "the " "Blood " "of " "the " "Lamb, "
  "\nAnd " "I " "shall " "be " whi "ter " "than " "snow! "
  "\nWhi" "ter " "than " "the " "snow! " 
  "\nWhi" "ter " "than " "the " "snow! " 
  "\nWash " "me " "in " "the " "Blood " "of " "the " Lamb,
  "\nAnd " "I " "shall " "be " whi "ter " "than " "snow! "

  \set stanza = "2."
  "\nThorn" "y " "was " "the " "crown " "that " "He " "wore, "
  "\nAnd " "the " "cross " "His " bo "dy " o'er "came; "
  "\nGriev" "ous " "were " "the " sor "rows " "He " "bore, "
  "\nBut " "He " suf "fered " "not " "thus " "in " "vain. "
  "\nMay " "I " "to " "that " foun "tain " "be " "led, "
  "\nMade " "to " "cleanse " "my " "sins " "here " be "low! "
  "\nWash " "me " "in " "the " "Blood " "that " "He " "shed, "
  "\nAnd " "I " "shall " "be " whit "er " "than " "snow! "
  "\nWhi" "ter " "than " "the " "snow! " 
  "\nWhi" "ter " "than " "the " "snow! " 
  "\nWash " "me " "in " "the " "Blood " "of " "the " Lamb,
  "\nAnd " "I " "shall " "be " whi "ter " "than " "snow! "

  \set stanza = "3."
  "\nFa" "ther, " "I " "have " wan "dered " "from " "Thee, "
  "\nOft" "en " "has " "my " "heart " "gone " a "stray; "
  "\nCrom" "son " "do " "my " "sins " "seem " "to " "me— "
  "\nWa" "ter " can "not " "wash " "them " a "way. "
  "\nJe" "sus, " "to " "that " foun "tain " "of " "Thine, "
  "\nLean" "ing " "on " "Thy " prom "ise, " "I " "go; "
  "\nCleanse " "me " "by " "Thy " wash "ing " Di "vine, "
  "\nAnd " "I " "shall " "be " whit "er " "than " "snow! "
  "\nWhi" "ter " "than " "the " "snow! " 
  "\nWhi" "ter " "than " "the " "snow! " 
  "\nWash " "me " "in " "the " "Blood " "of " "the " Lamb,
  "\nAnd " "I " "shall " "be " whi "ter " "than " "snow! "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "Bles" "sed " "be " "the " Foun "tain " "of " "blood, "
  "\nTo " "a " "world " "of " sin "ners " re "vealed; "
  "\nBles" "sed " "be " "the " "dear " "Son " "of " "God: "
  "\nOn" "ly " "by " "His " "stripes " "we " "are " "healed. "
  "\nTho' " "I've " wan "dered " "far " "from " "His " "fold, "
  "\nBring" "ing " "to " "my " "heart " "pain " "and " "woe, "
  "\nWash " "me " "in " "the " "Blood " "of " "the " "Lamb, "
  "\nAnd " "I " "shall " "be " whi "ter " "than " "snow! "
  "\nWhi" "ter " "than " "the " "snow! "
  "\nwhi" "ter " "than " "the " "snow! "
  "\nWhi" "ter " "than " "the " "snow! "
  "\nwhi" "ter " "than " "the " "snow! "
  "\nWash " "me " "in " "the " "Blood " "of " "the " "Lamb, " "of " "the " "Lamb, "
  "\nAnd " "I " "shall " "be " whi "ter " "than " "snow! "

  \set stanza = "2."
  "\nThorn" "y " "was " "the " "crown " "that " "He " "wore, "
  "\nAnd " "the " "cross " "His " bo "dy " o'er "came; "
  "\nGriev" "ous " "were " "the " sor "rows " "He " "bore, "
  "\nBut " "He " suf "fered " "not " "thus " "in " "vain. "
  "\nMay " "I " "to " "that " foun "tain " "be " "led, "
  "\nMade " "to " "cleanse " "my " "sins " "here " be "low! "
  "\nWash " "me " "in " "the " "Blood " "that " "He " "shed, "
  "\nAnd " "I " "shall " "be " whit "er " "than " "snow! "
  "\nWhi" "ter " "than " "the " "snow! "
  "\nwhi" "ter " "than " "the " "snow! "
  "\nWhi" "ter " "than " "the " "snow! "
  "\nwhi" "ter " "than " "the " "snow! "
  "\nWash " "me " "in " "the " "Blood " "of " "the " "Lamb, " "of " "the " "Lamb, "
  "\nAnd " "I " "shall " "be " whi "ter " "than " "snow! "

  \set stanza = "3."
  "\nFa" "ther, " "I " "have " wan "dered " "from " "Thee, "
  "\nOft" "en " "has " "my " "heart " "gone " a "stray; "
  "\nCrom" "son " "do " "my " "sins " "seem " "to " "me— "
  "\nWa" "ter " can "not " "wash " "them " a "way. "
  "\nJe" "sus, " "to " "that " foun "tain " "of " "Thine, "
  "\nLean" "ing " "on " "Thy " prom "ise, " "I " "go; "
  "\nCleanse " "me " "by " "Thy " wash "ing " Di "vine, "
  "\nAnd " "I " "shall " "be " whit "er " "than " "snow! "
  "\nWhi" "ter " "than " "the " "snow! "
  "\nwhi" "ter " "than " "the " "snow! "
  "\nWhi" "ter " "than " "the " "snow! "
  "\nwhi" "ter " "than " "the " "snow! "
  "\nWash " "me " "in " "the " "Blood " "of " "the " "Lamb, " "of " "the " "Lamb, "
  "\nAnd " "I " "shall " "be " whi "ter " "than " "snow! "
}

nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
%            \new Voice \TempoTrack
            \new NullVoice = "alignerSop" \soprano
            \new NullVoice = "aligner" \alto
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \with { alignAboveContext = women } \lyricsto alignerSop \chorusSop
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new NullVoice { \bass }
            \addlyrics \chorusBass
          >>
        >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "alignerSop" { \soprano \soprano \soprano }
            \new NullVoice = "aligner" { \alto \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
            \new Lyrics \with { alignAboveContext = women } \lyricsto alignerSop { \chorusSop \chorusSop \chorusSop }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new NullVoice { \bass \bass \bass }
            \addlyrics { \chorusBass \chorusBass \chorusBass }
          >>
        >>
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "alignerSop" { \soprano \soprano \soprano }
            \new NullVoice = "aligner" { \alto \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
            \new Lyrics \with { alignAboveContext = women } \lyricsto alignerSop { \chorusSop \chorusSop \chorusSop }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new NullVoice { \bass \bass \bass }
            \addlyrics { \chorusBass \chorusBass \chorusBass }
          >>
        >>
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
  \bookOutputSuffix "midi=sop"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidiSop
          >>
                                  % Alto staff
          \new Staff  = alto
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
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
          >>
                                  % Alto staff
          \new Staff  = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
            \addlyrics \wordsMidi
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
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
          >>
                                  % Alto staff
          \new Staff  = alto
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
            \addlyrics \wordsMidiBass
          >>
        >>
      >>
    >>
    \midi {}
  }
}
