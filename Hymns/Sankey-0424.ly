\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come unto Me!"
  subtitle    = "Sankey No. 424"
  subsubtitle = "Sankey 880 No. 505"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Nathaniel Norton."
%  meter       = \markup\smallCaps "10s."
  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 2/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2*5
  \mark \markup { \box "B" } s2*5
  \mark \markup { \box "C" } s2*6
  \mark \markup { \box "D" } s2.*6
  \mark \markup { \box "E" } s2.*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \time 2/4
  \autoBeamOff
  a'4 f8. 16 a4. 8
  bes8. 16 8 8
  a4. r8
  c4 d8. c16 \break
  a4 f % B
  f8. 16 g8 d
  g4. r8
  a4 f8. g16
  a4. 8 \break
  bes8. 16 c8 bes % C
  a4. r8
  c4 bes8. a16
  d8. f,16 8 g
  a4 g
  f4. r8 \bar "||" \time 6/8
  a4.^\markup\smallCaps Chorus. ~8 g a % D
  c4.~4 r8
  c4.~8 d c
  f4.~4 r8
  f4.~8 e d
  c4. a
  bes4 8 4 8 % E
  bes4.(a4) r8
  c4^\markup\italic rit. 8 8[d] c
  a4.~4.
  a4 8 8[bes] a
  f4.~4.\fermata
}

alto = \relative {
  \autoBeamOff
  f'4 c8. 16
  f4. 8
  f8. 16 8 8
  f4. r8
  f4 8. 16
  f4 c % B
  d8. 16 8 8
  e4. r8
  f4 c8. 16
  f4. 8
  f8. 16 8 8 % C
  f4. r8
  f4 e8. f16
  f8. d16 f8 8
  f4 e
  f4. r8
  f4.~8 g f % D
  f4. 4 r8
  e4. 4 8
  f4.~4 r8
  f4. 4 8
  f4. 4.
  g4 8 4 f8 % E

  f4.~4 r8
  f4 8 4 8
  f4.~4.
  f4 8 4 8
  c4 8 d4(c8\fermata)
}

tenor = \relative {
  \autoBeamOff
  c'4 a8. bes16
  c4. 8
  d8. 16 8 8
  c4. r8
  a4 bes8. a16
  c4 a % B
  a8. 16 b8 8
  c4. r8
  c4 a8. bes16
  c4. 8
  d8. 16 e8 d % C
  c4. r8
  c4 8. 16
  bes8. 16 d8 des
  c4 bes
  a4. r8
  c4. 8[bes] c % D
  a4. 4 r8
  bes4. 4 8
  c4.~4 r8
  d4. 8[c] bes
  a4. c
  c4 f8 e4 d8 % E
  d4.(c4) r8
  a4 8 a[bes] a
  c4 8 d4(e8)
  c4 8 8[d] c
  a4 8 bes4(a8\fermata)
}

bass = \relative {
  \autoBeamOff
  f4 8. 16
  f4. 8
  f8. 16 8 8
  f4. r8
  f4 8. 16
  f4 4 % B
  d8. 16 g8 8
  c,4. r8
  d4 8. 16
  f4. 8
  f8. 16 8 8 % C
  f4. r8
  a4 8. g16
  bes,8. 16 8 8
  c4 4
  f4. r8
  f4. 4 8 % D
  f4. 4 r8
  g4. 4 8
  a4.~4 r8
  bes4. 4 8
  f4. 4.
  c4 8 4 8 % E
  f4.~4 r8
  f4 8 4 8
  f4.~4.
  f4 8 4 8
  f4.~4.\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"Come" un -- to Me! oh, come un -- to  Me!
  come un -- to Me!
  And I will give you rest
  I will give you rest. __ \set associatedVoice = alignerS
  I will give you "rest.\"" __
}

chorusSop = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  "\"Come" un -- to Me!
  come un -- to Me!
  come un -- to Me!
  _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _
}

chorusTenor = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ will give you rest,
  _ _ _ will give you "rest.\""
}

chorusBass = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ you rest, __
  "" _ _ you "rest.\"" __
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  "\"Come" un -- to "Me!\"" It is the Sa -- viour's voice—
  The Lord of life, who bids thy heart re -- joice;
  O wea -- ry heart, with hea -- vy cares op -- prest,
  "\"Come" un -- to "Me!\"" and I will give you rest.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Wea -- ry with life's long strug -- gle, full of pain,
  O doubt -- ing soul, thy Sa -- viour calls a -- gain;
  Thy doubts shall van -- ish, and thy sor -- rows cease:
  "\"Come" un -- to "Me,\"" and I will give you peace.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O dy -- ing man, with guilt and sin dis -- mayed,
  With con -- science wa -- kened, of thy God a -- fraid;
  'Twixt hopes and fears— oh, end the an -- xious strife!—
  "\"Come" un -- to "Me!\"" and I will give you life.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Life, rest, and peaec, the flowers of death -- less bloom,
  The Sa -- viour gives us,— not be -- yond the tomb;
  But here and now; on earth some glimpse is giv'n
  Of joys which wait us thro' the gates of heav'n.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "\"Come " un "to " "Me!\" " "It " "is " "the " Sa "viour's " "voice— "
  "\nThe " "Lord " "of " "life, " "who " "bids " "thy " "heart " re "joice; "
  "\nO " wea "ry " "heart, " "with " hea "vy " "cares " op "prest, "
  "\n\"Come " un "to " "Me!\" " "and " "I " "will " "give " "you " "rest. "
  "\n\"Come " un "to " "Me! " "come " un "to "  "Me! "
  "\ncome " un "to " "Me! "
  "\nAnd " "I " "will " "give " "you " "rest "
  "\nI " "will " "give " "you " "rest. " 
  "\nI " "will " "give " "you " "rest.\" " 

  \set stanza = "2."
  "\nWea" "ry " "with " "life's " "long " strug "gle, " "full " "of " "pain, "
  "\nO " doubt "ing " "soul, " "thy " Sa "viour " "calls " a "gain; "
  "\nThy " "doubts " "shall " van "ish, " "and " "thy " sor "rows " "cease: "
  "\n\"Come " un "to " "Me,\" " "and " "I " "will " "give " "you " "peace. "
  "\n\"Come " un "to " "Me! " "come " un "to "  "Me! "
  "\ncome " un "to " "Me! "
  "\nAnd " "I " "will " "give " "you " "rest "
  "\nI " "will " "give " "you " "rest. " 
  "\nI " "will " "give " "you " "rest.\" " 

  \set stanza = "3."
  "\nO " dy "ing " "man, " "with " "guilt " "and " "sin " dis "mayed, "
  "\nWith " con "science " wa "kened, " "of " "thy " "God " a "fraid; "
  "\n'Twixt " "hopes " "and " "fears— " "oh, " "end " "the " an "xious " "strife!— "
  "\n\"Come " un "to " "Me!\" " "and " "I " "will " "give " "you " "life. "
  "\n\"Come " un "to " "Me! " "come " un "to "  "Me! "
  "\ncome " un "to " "Me! "
  "\nAnd " "I " "will " "give " "you " "rest "
  "\nI " "will " "give " "you " "rest. " 
  "\nI " "will " "give " "you " "rest.\" " 

  \set stanza = "4."
  "\nLife, " "rest, " "and " "peaec, " "the " "flowers " "of " death "less " "bloom, "
  "\nThe " Sa "viour " "gives " "us,— " "not " be "yond " "the " "tomb; "
  "\nBut " "here " "and " "now; " "on " "earth " "some " "glimpse " "is " "giv'n "
  "\nOf " "joys " "which " "wait " "us " "thro' " "the " "gates " "of " "heav'n. "
  "\n\"Come " un "to " "Me! " "come " un "to "  "Me! "
  "\ncome " un "to " "Me! "
  "\nAnd " "I " "will " "give " "you " "rest "
  "\nI " "will " "give " "you " "rest. " 
  "\nI " "will " "give " "you " "rest.\" " 
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "\"Come " un "to " "Me!\" " "It " "is " "the " Sa "viour's " "voice— "
  "\nThe " "Lord " "of " "life, " "who " "bids " "thy " "heart " re "joice; "
  "\nO " wea "ry " "heart, " "with " hea "vy " "cares " op "prest, "
  "\n\"Come " un "to " "Me!\" " "and " "I " "will " "give " "you " "rest. "
  "\n\"Come " un "to " "Me! " "oh, " "come " un "to "  "Me! "
  "\ncome " un "to " "Me! "
  "\nAnd " "I " "will " "give " "you " "rest "
  "\nI " "will " "give " "you " "rest. "  "\set " "associatedVoice " "= " "alignerS "
  "\nI " "will " "give, " "will " "give " "you " "rest.\" " 

  \set stanza = "2."
  "\nWea" "ry " "with " "life's " "long " strug "gle, " "full " "of " "pain, "
  "\nO " doubt "ing " "soul, " "thy " Sa "viour " "calls " a "gain; "
  "\nThy " "doubts " "shall " van "ish, " "and " "thy " sor "rows " "cease: "
  "\n\"Come " un "to " "Me,\" " "and " "I " "will " "give " "you " "peace. "
  "\n\"Come " un "to " "Me! " "oh, " "come " un "to "  "Me! "
  "\ncome " un "to " "Me! "
  "\nAnd " "I " "will " "give " "you " "rest "
  "\nI " "will " "give " "you " "rest. "  "\set " "associatedVoice " "= " "alignerS "
  "\nI " "will " "give, " "will " "give " "you " "rest.\" " 

  \set stanza = "3."
  "\nO " dy "ing " "man, " "with " "guilt " "and " "sin " dis "mayed, "
  "\nWith " con "science " wa "kened, " "of " "thy " "God " a "fraid; "
  "\n'Twixt " "hopes " "and " "fears— " "oh, " "end " "the " an "xious " "strife!— "
  "\n\"Come " un "to " "Me!\" " "and " "I " "will " "give " "you " "life. "
  "\n\"Come " un "to " "Me! " "oh, " "come " un "to "  "Me! "
  "\ncome " un "to " "Me! "
  "\nAnd " "I " "will " "give " "you " "rest "
  "\nI " "will " "give " "you " "rest. "  "\set " "associatedVoice " "= " "alignerS "
  "\nI " "will " "give, " "will " "give " "you " "rest.\" " 

  \set stanza = "4."
  "\nLife, " "rest, " "and " "peaec, " "the " "flowers " "of " death "less " "bloom, "
  "\nThe " Sa "viour " "gives " "us,— " "not " be "yond " "the " "tomb; "
  "\nBut " "here " "and " "now; " "on " "earth " "some " "glimpse " "is " "giv'n "
  "\nOf " "joys " "which " "wait " "us " "thro' " "the " "gates " "of " "heav'n. "
  "\n\"Come " un "to " "Me! " "oh, " "come " un "to "  "Me! "
  "\ncome " un "to " "Me! "
  "\nAnd " "I " "will " "give " "you " "rest "
  "\nI " "will " "give " "you " "rest. "  "\set " "associatedVoice " "= " "alignerS "
  "\nI " "will " "give, " "will " "give " "you " "rest.\" " 
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "\"Come " un "to " "Me!\" " "It " "is " "the " Sa "viour's " "voice— "
  "\nThe " "Lord " "of " "life, " "who " "bids " "thy " "heart " re "joice; "
  "\nO " wea "ry " "heart, " "with " hea "vy " "cares " op "prest, "
  "\n\"Come " un "to " "Me!\" " "and " "I " "will " "give " "you " "rest. "
  "\n\"Come " un "to " "Me! " "oh, " "come " un "to "  "Me! "
  "\ncome " un "to " "Me! "
  "\nAnd " "I " "will " "give " "you " "rest "
  "\nI " "will " "give, " "will " "give " "you " "rest, "
  "\nI " "will " "give, " "will " "give " "you " "rest.\" " 

  \set stanza = "2."
  "\nWea" "ry " "with " "life's " "long " strug "gle, " "full " "of " "pain, "
  "\nO " doubt "ing " "soul, " "thy " Sa "viour " "calls " a "gain; "
  "\nThy " "doubts " "shall " van "ish, " "and " "thy " sor "rows " "cease: "
  "\n\"Come " un "to " "Me,\" " "and " "I " "will " "give " "you " "peace. "
  "\n\"Come " un "to " "Me! " "oh, " "come " un "to "  "Me! "
  "\ncome " un "to " "Me! "
  "\nAnd " "I " "will " "give " "you " "rest "
  "\nI " "will " "give, " "will " "give " "you " "rest, "
  "\nI " "will " "give, " "will " "give " "you " "rest.\" " 

  \set stanza = "3."
  "\nO " dy "ing " "man, " "with " "guilt " "and " "sin " dis "mayed, "
  "\nWith " con "science " wa "kened, " "of " "thy " "God " a "fraid; "
  "\n'Twixt " "hopes " "and " "fears— " "oh, " "end " "the " an "xious " "strife!— "
  "\n\"Come " un "to " "Me!\" " "and " "I " "will " "give " "you " "life. "
  "\n\"Come " un "to " "Me! " "oh, " "come " un "to "  "Me! "
  "\ncome " un "to " "Me! "
  "\nAnd " "I " "will " "give " "you " "rest "
  "\nI " "will " "give, " "will " "give " "you " "rest, "
  "\nI " "will " "give, " "will " "give " "you " "rest.\" " 

  \set stanza = "4."
  "\nLife, " "rest, " "and " "peaec, " "the " "flowers " "of " death "less " "bloom, "
  "\nThe " Sa "viour " "gives " "us,— " "not " be "yond " "the " "tomb; "
  "\nBut " "here " "and " "now; " "on " "earth " "some " "glimpse " "is " "giv'n "
  "\nOf " "joys " "which " "wait " "us " "thro' " "the " "gates " "of " "heav'n. "
  "\n\"Come " un "to " "Me! " "oh, " "come " un "to "  "Me! "
  "\ncome " un "to " "Me! "
  "\nAnd " "I " "will " "give " "you " "rest "
  "\nI " "will " "give, " "will " "give " "you " "rest, "
  "\nI " "will " "give, " "will " "give " "you " "rest.\" " 
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."

  "\"Come " un "to " "Me!\" " "It " "is " "the " Sa "viour's " "voice— "
  "\nThe " "Lord " "of " "life, " "who " "bids " "thy " "heart " re "joice; "
  "\nO " wea "ry " "heart, " "with " hea "vy " "cares " op "prest, "
  "\n\"Come " un "to " "Me!\" " "and " "I " "will " "give " "you " "rest. "
  "\n\"Come " un "to " "Me! " "oh, " "come " un "to "  "Me! "
  "\ncome " un "to " "Me! "
  "\nAnd " "I " "will " "give " "you " "rest "
  "\nI " "will " "give " "you " "rest. "  "\set " "associatedVoice " "= " "alignerS "
  "\nI " "will " "give " "you " "rest.\" " 

  \set stanza = "2."
  "\nWea" "ry " "with " "life's " "long " strug "gle, " "full " "of " "pain, "
  "\nO " doubt "ing " "soul, " "thy " Sa "viour " "calls " a "gain; "
  "\nThy " "doubts " "shall " van "ish, " "and " "thy " sor "rows " "cease: "
  "\n\"Come " un "to " "Me,\" " "and " "I " "will " "give " "you " "peace. "
  "\n\"Come " un "to " "Me! " "oh, " "come " un "to "  "Me! "
  "\ncome " un "to " "Me! "
  "\nAnd " "I " "will " "give " "you " "rest "
  "\nI " "will " "give " "you " "rest. "  "\set " "associatedVoice " "= " "alignerS "
  "\nI " "will " "give " "you " "rest.\" " 

  \set stanza = "3."
  "\nO " dy "ing " "man, " "with " "guilt " "and " "sin " dis "mayed, "
  "\nWith " con "science " wa "kened, " "of " "thy " "God " a "fraid; "
  "\n'Twixt " "hopes " "and " "fears— " "oh, " "end " "the " an "xious " "strife!— "
  "\n\"Come " un "to " "Me!\" " "and " "I " "will " "give " "you " "life. "
  "\n\"Come " un "to " "Me! " "oh, " "come " un "to "  "Me! "
  "\ncome " un "to " "Me! "
  "\nAnd " "I " "will " "give " "you " "rest "
  "\nI " "will " "give " "you " "rest. "  "\set " "associatedVoice " "= " "alignerS "
  "\nI " "will " "give " "you " "rest.\" " 

  \set stanza = "4."
  "\nLife, " "rest, " "and " "peaec, " "the " "flowers " "of " death "less " "bloom, "
  "\nThe " Sa "viour " "gives " "us,— " "not " be "yond " "the " "tomb; "
  "\nBut " "here " "and " "now; " "on " "earth " "some " "glimpse " "is " "giv'n "
  "\nOf " "joys " "which " "wait " "us " "thro' " "the " "gates " "of " "heav'n. "
  "\n\"Come " un "to " "Me! " "oh, " "come " un "to "  "Me! "
  "\ncome " un "to " "Me! "
  "\nAnd " "I " "will " "give " "you " "rest "
  "\nI " "will " "give " "you " "rest. "  "\set " "associatedVoice " "= " "alignerS "
  "\nI " "will " "give " "you " "rest.\" " 
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } }
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
  \bookOutputSuffix "midi-alto"
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
            \new Voice { \global \repeat unfold \verses { \alto \nl } }
            \addlyrics \wordsMidiAlto
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
            \new Voice { \global \repeat unfold \verses { \alto \nl } }
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
            \new Voice { \global \repeat unfold \verses { \alto \nl } }
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

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "alignerS" \soprano
            \new NullVoice = "alignerA" \alto
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "alignerA" { \wordsOne \chorus }
            \new Lyrics \lyricsto "alignerA"   \wordsTwo
            \new Lyrics \lyricsto "alignerA"   \wordsThree
            \new Lyrics \lyricsto "alignerA"   \wordsFour
          >>
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \chorusSop
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
            \new NullVoice = alignerB { \bass  }
            \addlyrics \chorusBass
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusTenor
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

#(set-global-staff-size 20)

  singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "alignerS" { \repeat unfold \verses \soprano }
            \new NullVoice = "alignerA" { \repeat unfold \verses \alto    }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "alignerA" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          \new Lyrics \with {alignAboveContext = women} \lyricsto "alignerS" {\repeat unfold \verses \chorusSop}
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
            \new NullVoice = alignerB { \repeat unfold \verses \bass }
            \addlyrics {\repeat unfold \verses \chorusBass}
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusTenor }
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
