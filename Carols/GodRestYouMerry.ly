\version "2.25.0"

% Make sure the few two lines are in sync!
% Leave all lower case verses in place.
% Remove upper case verses as required
usetags = #'(V1 V2 V3 V4 V5 V6 V7 V8 v1 v2 v3 v4 v5 v6 v7 v8)
verses  = 8

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "God Rest You Merry"
  subtitle    = "Oxford Book of Carols 12"
  subsubtitle = "(second version)"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Traditional"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
  \partial 4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \voiceOne
  e'4 | e b' b a |
  \tag #'dash             {\slurDashed g4(fis) \slurSolid e d |}
  \tag #'(v2 v3 v4 v6 v7) {            g4(fis)            e d |}
  \tag #'(v1 v5 v8)       {            g4 fis             e d |}
  e4 fis g a |
  b2. e,4 |
  e4 b' b a |
  \tag #'dash                {\slurDashed g4(fis) e d8(8) \slurSolid |}
  \tag #'(v1 v2 v4 v5 v7 v8) {            g4(fis) e d4               |}
  \tag #'v3                  {            g4 fis  e d8 8             |}
  \tag #'v6                  {            g4 fis  e d4               |}
  e4 fis g a |
  \tag #'dash                   {b2. \slurDashed 8(8) \slurSolid |}
  \tag #'(v1 v2 v3 v4 v5 v6 v8) {b2.             4               |}
  \tag #'(v7)                   {b2.             8 8             |}
  c4 a b c |
  \tag #'dash          {\slurDashed d4(e) b a8(8) \slurSolid |}
  \tag #'(v3 v7 v8)    {            d4(e) b a4               |}
  \tag #'(v2 v4 v5 v6) {            d4 e  b a4               |}
  \tag #'v1            {            d4 e  b a8 8             |}
  g4 e fis g | a2 \section \break g4 a |
  b2 c4 b | b(a) g fis | e2 g8 fis e4 | a2 g4 a |
  b4(c) d e | b(a) g fis | e1~ | 2.
}

alto = \relative {
  \voiceTwo
  e'4 | e g fis e |
  \tag #'dash             {\slurDashed d4(c) \slurSolid b a |}
  \tag #'(v2 v3 v4 v6 v7) {            d4(c)            b a |}
  \tag #'(v1 v5 v8)       {            d4 c             b a |}
  b c d e | d2. e4 |
  e4 g fis e |
  \tag #'dash                {\slurDashed d4(c) b a8(8) \slurSolid |}
  \tag #'(v1 v2 v4 v5 v7 v8) {            d4(c) b a4               |}
  \tag #'v3                  {            d4 c  b a8 8             |}
  \tag #'v6                  {            d4 c  b a4               |}
  b4 c d e |
  \tag #'dash                   {g2. \slurDashed fis8(8) \slurSolid |}
  \tag #'(v1 v2 v3 v4 v5 v6 v8) {g2.             fis4               |}
  \tag #'v7                     {g2.             fis8 8             |}
  e4 fis d g |
  \tag #'dash          {\slurDashed fis4(e) dis cis8(8) \slurSolid |}
  \tag #'(v3 v7 v8)    {            fis4(e) dis cis4               |}
  \tag #'(v2 v4 v5 v6) {            fis4 e  dis cis4               |}
  \tag #'v1            {            fis4 e  dis cis8 8             |}
  b4 g a cis | d2 \section g4 a |
  b2 e,4 g | fis2 e4 d | b2 cis8 d e4 | fis2 e4 fis |
  g4(fis) e d | cis2 4 dis | e2 cis8 b a4 | b2.
}

tenor = \relative {
  \voiceOne
  c'4 | b e d c |
  \tag #'dash             {\slurDashed b(a) \slurSolid g fis |}
  \tag #'(v2 v3 v4 v6 v7) {            b(a)            g fis |}
  \tag #'(v1 v5 v8)       {            b a             g fis |}
  g4 a b a | fis2. g4 |
  b4 e d c |
  \tag #'dash                {\slurDashed b4(a) g fis8(8) \slurSolid |}
  \tag #'(v1 v2 v4 v5 v7 v8) {            b4(a) g fis4               |}
  \tag #'v3                  {            b4 a  g fis8 8             |}
  \tag #'v6                  {            b4 a  g fis4               |}
  g4 a b a |
  \tag #'dash                   {d2. \slurDashed 8(8) \slurSolid |}
  \tag #'(v1 v2 v3 v4 v5 v6 v8) {d2.             4               |}
  \tag #'v7                     {d2.             8 8             |}
  c4 d b e |
  \tag #'dash          {\slurDashed d4 (c) b fis8(8) \slurSolid |}
  \tag #'(v3 v7 v8)    {            d'4(c) b fis4               |}
  \tag #'(v2 v4 v5 v6) {            d'4 c  b fis4               |}
  \tag #'v1            {            d'4 c  b fis8 8             |}
  g4 b a g | fis2 \section g4 a |
  b2 g4 g | d'2 b4 a | b2 a8 b cis4 | d2 b4 a |
  g2 4 4 | e2 4 b' | gis2 a8 gis fis4 | gis2.
}

bass = \relative {
  \voiceTwo
  a4 | g e fis d |
  \tag #'dash             {\slurDashed g,4(a) \slurSolid b c |}
  \tag #'(v2 v3 v4 v6 v7) {            g4 (a)            b c |}
  \tag #'(v1 v5 v8)       {            g4  a             b c |}
  b4 e d c | b2. e4 |
  g4 e fis d |
  \tag #'dash                {\slurDashed g,4(a) b c8(8) \slurSolid |}
  \tag #'(v1 v2 v4 v5 v7 v8) {            g4 (a) b c4               |}
  \tag #'v3                  {            g4  a  b c8 8             |}
  \tag #'v6                  {            g4  a  b c4               |}
  b4 e d c |
  \tag #'dash                   {g'2. \slurDashed 8(8) \slurSolid |}
  \tag #'(v1 v2 v3 v4 v5 v6 v8) {g2.              4               |}
  \tag #'v7                     {g2.              8 8             |}
  a4 fis g e |
  \tag #'dash          {\slurDashed b'4(a) g fis8(8) \slurSolid |}
  \tag #'(v3 v7 v8)    {            b4 (a) g fis4               |}
  \tag #'(v2 v4 v5 v6) {            b4  a  g fis4               |}
  \tag #'v1            {            b4  a  g fis8 8             |}
  e4 d cis a | d2 g4 a |
  b2 c,4 c | d2 e4 fis | g2 a8 8 4 | d,2 g4 fis |
  e4(d) c b | a2 4 b | e1~ | 2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  \markup\italic And \markup\italic it's \markup\italic tid -- \markup\italic ings \markup\italic of \markup\italic com -- \markup\italic fort \markup\italic and \markup\italic joy,
  \markup\italic com -- \markup\italic fort \markup\italic and \markup\italic joy:
  \markup\italic And \markup\italic it's \markup\italic tid -- \markup\italic ings \markup\italic of \markup\italic com -- \markup\italic fort \markup\italic and \markup\italic joy,
  \markup\italic com -- \markup\italic fort \markup\italic and \markup\italic joy.
}

chorusEight = \lyricmode {
  \markup\italic And \markup\italic God \markup\italic send \markup\italic you \markup\italic a \markup\italic hap -- \markup\italic py \markup\italic New \markup\italic Year,
  \markup\italic hap -- \markup\italic py \markup\italic New \markup\italic Year,
  \markup\italic And \markup\italic God \markup\italic send \markup\italic you \markup\italic a \markup\italic hap -- \markup\italic py \markup\italic New \markup\italic Year,
  \markup\italic hap -- \markup\italic py \markup\italic New \markup\italic Year.
}

chorusMidi = \lyricmode {
  "\nAnd " "it's " tid "ings " "of " com "fort " "and " "joy, "
  "\ncom" "fort " "and " "joy: "
  "\nAnd " "it's " tid "ings " "of " com "fort " "and " "joy, "
  "\ncom" "fort " "and " "joy.\n"
}

chorusEightMidi = \lyricmode {
  "\nAnd " "God " "send " "you " "a " hap "py " "New " "Year, "
  "\nhap" "py " "New " "Year, "
  "\nAnd " "God " "send " "you " "a " hap "py " "New " "Year, "
  "\nhap" "py " "New " "Year. "
}

wordsOne = \lyricmode {
  \set stanza = "1."
  God rest you mer -- ry \nom gen -- tle -- men, \yesm
  Let no -- thing you dis -- may,
  Re -- mem -- ber Christ our Sa -- viour
  Was born on Christ -- mas Day,
  To save poor souls from \nom Sa -- tan's \yesm power
  \nom Which had \yesm long time gone a -- stray,
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  From God that is our Fa -- ther,
  The bless -- ed an -- gels came,
  Un -- to some cer -- tain shep -- herds,
  With ti -- dings of the same;
  That there was born in \nom Beth -- le -- hem, \yesm
  The __ Son of God by name.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Go, fear not, said God's an -- gels,
  Let no -- thing you af -- fright,
  For there is born in \nom Beth -- le -- hem, \yesm
  \nom Of a \yesm vir -- gin pure and bright,
  One ab -- le to ad -- vance you,
  And throw down Sa -- tan quite,
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The shep -- herds at those ti -- dings,
  Re -- joic -- éd much in mind,
  And left their flocks a -- feed -- ing
  In tem -- pest storms of wind,
  And strait they came to \nom Beth -- le -- hem, \yesm
  The Son of God to find,
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Now when they came to \nom Beth -- le -- hem, \yesm
  Where our sweet Sa -- viour lay,
  They found him in a man -- ger,
  Where ox -- en feed on hay,
  The bless -- éd Vir -- gin \nom kneel -- ing \yesm down,
  Un -- to the Lord did pray,
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  With sud -- den joy and glad -- ness,
  The shep -- herds were be -- guil'd,
  To see the Babe of \nom Is -- ra -- el, \yesm
  Be -- fore his mo -- ther mild.
  On them with joy and \nom cheer -- ful -- ness, \yesm
  Re -- joice each mo -- ther's child,
}
  
wordsSeven = \lyricmode {
  \set stanza = "7."
  Now to the Lord sing prais -- es,
  All you with -- in this place,
  Like we true lov -- ing breth -- ren,
  Each oth -- er to em -- brace.
  \nom For the \yesm mer -- ry time of Christ -- mas,
  Is draw -- ing on a -- pace
}
  
wordsEight = \lyricmode {
  \set stanza = "8."
  God bless the ru -- ler \nom of this \yesm house,
  And send him long to reign.
  And ma -- ny~a mer -- ry Christ -- mas
  May live to see a -- gain.
  A -- mong your friends and kin -- dred,
  That live both far and near.
}
  
wordsMidiOne = \lyricmode {
  \set stanza = "1."
  "God " "rest " "you " mer "ry " gen tle "men, "
  "\nLet " no "thing " "you " dis "may, "
  "\nRe" mem "ber " "Christ " "our " Sa "viour "
  "\nWas " "born " "on " Christ "mas " "Day, "
  "\nTo " "save " "poor " "souls " "from " Sa "tan's " "power "
  "\nWhich " "had " "long " "time " "gone " a "stray, "
  \chorusMidi
}

wordsMidiTwo = \lyricmode {
  \set stanza = "2."
  "\nFrom " "God " "that " "is " "our " Fa "ther, "
  "\nThe " bless "ed " an "gels " "came, "
  "\nUn" "to " "some " cer "tain " shep "herds, "
  "\nWith " ti "dings " "of " "the " "same; "
  "\nThat " "there " "was " "born " "in " Beth le "hem, "
  "\nThe "  "Son " "of " "God " "by " "name. "
  \chorusMidi
}

wordsMidiThree = \lyricmode {
  \set stanza = "3."
  "\nGo, " "fear " "not, " "said " "God's " an "gels, "
  "\nLet " no "thing " "you " af "fright, "
  "\nFor " "there " "is " "born " "in " Beth le "hem, "
  "\nOf " "a " vir "gin " "pure " "and " "bright, "
  "\nOne " ab "le " "to " ad "vance " "you, "
  "\nAnd " "throw " "down " Sa "tan " "quite, "
  \chorusMidi
}

wordsMidiFour = \lyricmode {
  \set stanza = "4."
  "\nThe " shep "herds " "at " "those " ti "dings, "
  "\nRe" joic "éd " "much " "in " "mind, "
  "\nAnd " "left " "their " "flocks " a feed "ing "
  "\nIn " tem "pest " "storms " "of " "wind, "
  "\nAnd " "strait " "they " "cam " "to " Beth le "hem, "
  "\nThe " "Son " "of " "God " "to " "find, "
  \chorusMidi
}

wordsMidiFive = \lyricmode {
  \set stanza = "5."
  "\nNow " "when " "they " "came " "to " Beth le "hem, "
  "\nWhere " "our " "sweet " Sa "viour " "lay, "
  "\nThey " "found " "him " "in " "a " man "ger, "
  "\nWhere " ox "en " "feed " "on " "hay, "
  "\nThe " bless "éd " Vir "gin " kneel "ing " "down, "
  "\nUn" "to " "the " "Lord " "did " "pray, "
  \chorusMidi
}

wordsMidiSix = \lyricmode {
  \set stanza = "6."
  "\nWith " sud "den " "joy " "and " glad "ness, "
  "\nThe " shep "herds " "were " be "guil'd, "
  "\nTo " "see " "the " "Babe " "of " Is ra "el, "
  "\nBe" "fore " "his " mo "ther " "mild. "
  "\nOn " "them " "with " "joy " "and " cheer ful "ness, "
  "\nRe" "joice " "each " mo "ther's " "child, "
  \chorusMidi
}

wordsMidiSeven = \lyricmode {
  \set stanza = "7."
  "\nNow " "to " "the " "Lord " "sing " prais "es, "
  "\nAll " "you " with "in " "this " "place, "
  "\nLike " "we " "true " lov "ing " breth "ren, "
  "\nEach " oth "er " "to " em "brace. "
  "\nFor " "the " mer "ry " "time " "of " Christ "mas, "
  "\nIs " draw "ing " "on " a "pace "
  \chorusMidi
}

wordsMidiEight = \lyricmode {
  \set stanza = "8."
  "\nGod " "bless " "the " ru "ler " "of " "this " "house, "
  "\nAnd " "send " "him " "long " "to " "reign. "
  "\nAnd " ma "ny~a " mer "ry " Christ "mas "
  "\nMay " "live " "to " "see " a "gain. "
  "\nA" "mong " "your " "friends " "and " kin "dred, "
  "\nThat " "live " "both " "far " "and " "near. "
  \chorusEightMidi
}

wordsMidi = {
  \keepWithTag #usetags \tag #'V1 \wordsMidiOne
  \keepWithTag #usetags \tag #'V2 \wordsMidiTwo
  \keepWithTag #usetags \tag #'V3 \wordsMidiThree
  \keepWithTag #usetags \tag #'V4 \wordsMidiFour
  \keepWithTag #usetags \tag #'V5 \wordsMidiFive
  \keepWithTag #usetags \tag #'V6 \wordsMidiSix
  \keepWithTag #usetags \tag #'V7 \wordsMidiSeven
  \keepWithTag #usetags \tag #'V8 \wordsMidiEight
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {midiInstrument = "choir aahs"}
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #usetags \tag #'V1 \keepWithTag #'v1 \soprano
                         \keepWithTag #usetags \tag #'V2 \keepWithTag #'v2 \soprano
                         \keepWithTag #usetags \tag #'V3 \keepWithTag #'v3 \soprano
                         \keepWithTag #usetags \tag #'V4 \keepWithTag #'v4 \soprano
                         \keepWithTag #usetags \tag #'V5 \keepWithTag #'v5 \soprano
                         \keepWithTag #usetags \tag #'V6 \keepWithTag #'v6 \soprano
                         \keepWithTag #usetags \tag #'V7 \keepWithTag #'v7 \soprano
                         \keepWithTag #usetags \tag #'V8 \keepWithTag #'v8 \soprano
                         \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto \with {midiInstrument = "choir aahs"}
          <<
            \new Voice { \global
                         \keepWithTag #usetags \tag #'V1 \keepWithTag #'v1 \alto \nl
                         \keepWithTag #usetags \tag #'V2 \keepWithTag #'v2 \alto \nl
                         \keepWithTag #usetags \tag #'V3 \keepWithTag #'v3 \alto \nl
                         \keepWithTag #usetags \tag #'V4 \keepWithTag #'v4 \alto \nl
                         \keepWithTag #usetags \tag #'V5 \keepWithTag #'v5 \alto \nl
                         \keepWithTag #usetags \tag #'V6 \keepWithTag #'v6 \alto \nl
                         \keepWithTag #usetags \tag #'V7 \keepWithTag #'v7 \alto \nl
                         \keepWithTag #usetags \tag #'V8 \keepWithTag #'v8 \alto \nl
                         \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Tenor staff
          \new Staff = tenor \with {midiInstrument = "choir aahs"}
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #usetags \tag #'V1 \keepWithTag #'v1 \tenor
                         \keepWithTag #usetags \tag #'V2 \keepWithTag #'v2 \tenor
                         \keepWithTag #usetags \tag #'V3 \keepWithTag #'v3 \tenor
                         \keepWithTag #usetags \tag #'V4 \keepWithTag #'v4 \tenor
                         \keepWithTag #usetags \tag #'V5 \keepWithTag #'v5 \tenor
                         \keepWithTag #usetags \tag #'V6 \keepWithTag #'v6 \tenor
                         \keepWithTag #usetags \tag #'V7 \keepWithTag #'v7 \tenor
                         \keepWithTag #usetags \tag #'V8 \keepWithTag #'v8 \tenor
                       }
          >>
                                % Bass staff
          \new Staff = bass \with {midiInstrument = "choir aahs"}
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #usetags \tag #'V1 \keepWithTag #'v1 \bass
                         \keepWithTag #usetags \tag #'V2 \keepWithTag #'v2 \bass
                         \keepWithTag #usetags \tag #'V3 \keepWithTag #'v3 \bass
                         \keepWithTag #usetags \tag #'V4 \keepWithTag #'v4 \bass
                         \keepWithTag #usetags \tag #'V5 \keepWithTag #'v5 \bass
                         \keepWithTag #usetags \tag #'V6 \keepWithTag #'v6 \bass
                         \keepWithTag #usetags \tag #'V7 \keepWithTag #'v7 \bass
                         \keepWithTag #usetags \tag #'V8 \keepWithTag #'v8 \bass
                       }
          >>
        >>
    \layout { }
    \midi {}
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women
          <<
            \new Voice \TempoTrack
            \new Voice { \global \keepWithTag #'dash \soprano \bar "|." }
            \new Voice = alto { \global \keepWithTag #'dash \alto }
            \keepWithTag #usetags \tag #'V1 {\new Lyrics \lyricsto alto { \wordsOne \set stanza = "1-7." \chorus }}
            \keepWithTag #usetags \tag #'V2 {\new Lyrics \lyricsto alto   \wordsTwo}
            \keepWithTag #usetags \tag #'V3 {\new Lyrics \lyricsto alto   \wordsThree}
            \keepWithTag #usetags \tag #'V4 {\new Lyrics \lyricsto alto   \wordsFour}
            \keepWithTag #usetags \tag #'V5 {\new Lyrics \lyricsto alto   \wordsFive}
            \keepWithTag #usetags \tag #'V6 {\new Lyrics \lyricsto alto  \wordsSix}
            \keepWithTag #usetags \tag #'V7 {\new Lyrics \lyricsto alto   \wordsSeven}
            \keepWithTag #usetags \tag #'V8 {\new Lyrics \lyricsto alto { \wordsEight \set stanza = "8." \chorusEight }}
          >>
                                  % Joint tenor/bass staff
          \new Staff = men
          <<
            \clef "bass"
            \new Voice { \global \voiceOne \keepWithTag #'dash \tenor }
            \new Voice { \global \voiceTwo \keepWithTag #'dash \bass }
          >>
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
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" {
              \keepWithTag #usetags \tag #'V1 \keepWithTag #'v1 \alto
              \keepWithTag #usetags \tag #'V2 \keepWithTag #'v2 \alto
              \keepWithTag #usetags \tag #'V3 \keepWithTag #'v3 \alto
              \keepWithTag #usetags \tag #'V4 \keepWithTag #'v4 \alto
              \keepWithTag #usetags \tag #'V5 \keepWithTag #'v5 \alto
              \keepWithTag #usetags \tag #'V6 \keepWithTag #'v6 \alto
              \keepWithTag #usetags \tag #'V7 \keepWithTag #'v7 \alto
              \keepWithTag #usetags \tag #'V8 \keepWithTag #'v8 \alto
            }
            \new Voice { \global
                         \keepWithTag #usetags \tag #'V1 {\keepWithTag #'v1 \soprano}
                         \keepWithTag #usetags \tag #'V2 {\keepWithTag #'v2 \soprano}
                         \keepWithTag #usetags \tag #'V3 \keepWithTag #'v3 \soprano
                         \keepWithTag #usetags \tag #'V4 \keepWithTag #'v4 \soprano
                         \keepWithTag #usetags \tag #'V5 \keepWithTag #'v5 \soprano
                         \keepWithTag #usetags \tag #'V6 \keepWithTag #'v6 \soprano
                         \keepWithTag #usetags \tag #'V7 \keepWithTag #'v7 \soprano
                         \keepWithTag #usetags \tag #'V8 \keepWithTag #'v8 \soprano
                         \bar "|." }
            \new Voice { \global
                         \keepWithTag #usetags \tag #'V1 \keepWithTag #'v1 \alto \nl
                         \keepWithTag #usetags \tag #'V2 \keepWithTag #'v2 \alto \nl
                         \keepWithTag #usetags \tag #'V3 \keepWithTag #'v3 \alto \nl
                         \keepWithTag #usetags \tag #'V4 \keepWithTag #'v4 \alto \nl
                         \keepWithTag #usetags \tag #'V5 \keepWithTag #'v5 \alto \nl
                         \keepWithTag #usetags \tag #'V6 \keepWithTag #'v6 \alto \nl
                         \keepWithTag #usetags \tag #'V7 \keepWithTag #'v7 \alto \nl
                         \keepWithTag #usetags \tag #'V8 \keepWithTag #'v8 \alto \nl
                         \bar "|." }
            \new Lyrics \lyricsto "aligner" {
              \keepWithTag #usetags \tag #'V1 {\wordsOne   \chorus}
              \keepWithTag #usetags \tag #'V2 {\wordsTwo   \chorus}
              \keepWithTag #usetags \tag #'V3 {\wordsThree \chorus}
              \keepWithTag #usetags \tag #'V4 {\wordsFour  \chorus}
              \keepWithTag #usetags \tag #'V5 {\wordsFive  \chorus}
              \keepWithTag #usetags \tag #'V6 {\wordsSix   \chorus}
              \keepWithTag #usetags \tag #'V7 {\wordsSeven \chorus}
              \keepWithTag #usetags \tag #'V8 {\wordsEight \chorusEight}
            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #usetags \tag #'V1 \keepWithTag #'v1 \tenor
                         \keepWithTag #usetags \tag #'V2 \keepWithTag #'v2 \tenor
                         \keepWithTag #usetags \tag #'V3 \keepWithTag #'v3 \tenor
                         \keepWithTag #usetags \tag #'V4 \keepWithTag #'v4 \tenor
                         \keepWithTag #usetags \tag #'V5 \keepWithTag #'v5 \tenor
                         \keepWithTag #usetags \tag #'V6 \keepWithTag #'v6 \tenor
                         \keepWithTag #usetags \tag #'V7 \keepWithTag #'v7 \tenor
                         \keepWithTag #usetags \tag #'V8 \keepWithTag #'v8 \tenor
                       }
            \new Voice { \global
                         \keepWithTag #usetags \tag #'V1 \keepWithTag #'v1 \bass
                         \keepWithTag #usetags \tag #'V2 \keepWithTag #'v2 \bass
                         \keepWithTag #usetags \tag #'V3 \keepWithTag #'v3 \bass
                         \keepWithTag #usetags \tag #'V4 \keepWithTag #'v4 \bass
                         \keepWithTag #usetags \tag #'V5 \keepWithTag #'v5 \bass
                         \keepWithTag #usetags \tag #'V6 \keepWithTag #'v6 \bass
                         \keepWithTag #usetags \tag #'V7 \keepWithTag #'v7 \bass
                         \keepWithTag #usetags \tag #'V8 \keepWithTag #'v8 \bass
                       }
          >>
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
