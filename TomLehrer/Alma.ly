\version "2.25.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Alma"
  subtitle    = "with brief excerpts from the works of Gustav Mahler"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Tom Lehrer"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 2/4
}

TempoTrack = {
  \tempo 4=240
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "1a" } s2*3 s2.
  \repeat volta 4 {
    \textMark \markup { \box "1b" } s2.*5
    \textMark \markup { \box "2a" } s2.*5
    \textMark \markup { \box "2b" } s2.*5
    \textMark \markup { \box "2c" } s2.*5
    \textMark \markup { \box "3a" } s2.*5
    \textMark \markup { \box "3b" } s2.*5
    \textMark \markup { \box "3c" } s2.*6
    \textMark \markup { \box "4a" } s2.*5
    \textMark \markup { \box "4b" } s2.*4
    \alternative {
      \volta 1 { \textMark \markup { \box "4c" } s2.*5 }
      \volta 2 { \textMark \markup { \box "5a" } s2.*5 }
      \volta 3 { \textMark \markup { \box "5b" } s2.*5 }
      \volta 4 { \textMark \markup { \box "5c" } s2.*2 }
    }
  }
  s2.*5
}

ChordTrack = \chordmode {
  f2 | s | s4 g:7 | c2.:7 |
  \repeat volta 4 {
    f2. | s | bes | s | c:7 |
    s2. | f | s | s | s | bes | s | c:7 | s | f | s | des | s | aes | s | % 2
    ees2.:7 | s | aes | s | s | c:7 | f:m | s | g:7 | g:7/b | c | c:7 | bes | s | f | s |
    c2.:7 | s | f | s | bes | s | f/c | d:7/fis | g:m7 |
    \alternative {
      \volta 1 { c2.:7 | f | s | s | s | }
      \volta 2 { c2.:7 | f | c:7 | f | c:7 | }
      \volta 3 { c2.:7 | f | c:7 | s | f | }
      \volta 4 { c2.:7 | g:m7 | }
    }
  }
  c2.:7 | g:m7 | c4:7 bes c:7 | f2 c4:7 | f2. |
}

melodyA = \relative {
  R2 | R | R | r2 \breathe c'4 \section
}

melodyB = \relative {
  c'4 f g | a g f |
  \tag #'dash       {\slurDashed e8(8) \slurSolid d2 | }
  \tag #'(v1 v2 v4) {            e4               d2 | }
  \tag #'v3         {            e8 8             d2 | }
  r4 r d | c e g |
  bes4 c bes | % 2a
  \tag #'dash    {<<{\voiceTwo bes4 a2} \new Voice {\voiceOne a2.}>> |}
  \tag #'(v1 v4) {                                            a2.    |}
  \tag #'(v2 v3) {             bes4 a2                               |}
  \tag #'dash       {r4 \parenthesize c, c4 |}
  \tag #'(v2 v3 v4) {r2                  c4 |}
  \tag #'v1         {r4               c  c4 |}
  c f g | a g f |
  \tag #'dash       {\slurDashed e8(8) \slurSolid d2 |}
  \tag #'(v1 v2 v4) {            e4               d2 |}
  \tag #'v3         {            e8 8             d2 |}
  r4 r d | c bes' bes | bes a g |
  \tag #'dash    {<<{\voiceTwo g4 f2} \new Voice {\voiceOne f2.}>> |}
  \tag #'(v1 v4) {                                          f2.    |}
  \tag #'(v2 v3) {             g4 f2                               |}
  r4 r f | f f f | f ges g | aes ees2 |
  \tag #'dash    {r4 r \slurDashed ees8(8) \slurSolid |}
  \tag #'(v2 v3) {r4 r             ees4               |}
  \tag #'(v1 v4) {r4 r             ees8 8             |}
  des4 4 4 | 4 ees f | ees2. |
  \tag #'dash    {r4 \parenthesize ees4 4 |}
  \tag #'(v2 v4) {r2                 ees4 |}
  \tag #'(v1 v3) {r4               ees4 4 |}
  4 c' c | % 3a
  c4 des c | bes aes2 | r4 r aes | g g g | g g g |
  c2.~ | 2 r4 | d2. | bes | c4 a2 | R2. |
  bes4 g g | g a bes | bes a2 |
  \tag #'dash    {r2 \parenthesize f4 |} % 4a
  \tag #'(v1 v4) {R2.                 |}
  \tag #'(v2 v3) {r2               f4 |}
  f f f |
  f4 bes d |
  \tag #'dash       {c2 \parenthesize 4 |}
  \tag #'(v1 v3 v4) {c2              r4 |}
  \tag #'v2         {c2               4 |}
  d2 a4 | c bes a |
}

melodyC = \relative { bes'4 a g | f2 r4 | R2. | R | r4 r c | }
melodyD = \relative { bes'4 a g | f2 r4 | R2. | R | r4 r c | }
melodyE = \relative { bes'4 a g | f2 r4 | R2. | R | r4 r c | }
melodyF = \relative { bes'4 a g | c bes a | }
melodyG = \relative { bes'4 a g | c bes a | c d e | f2 r4 | R2. | }

melody = {
  \global
  \melodyA
  \repeat volta 4 {
    \keepWithTag #'dash \melodyB
    \alternative {
      \volta 1 \melodyC
      \volta 2 \melodyD
      \volta 3 \melodyE
      \volta 4 \melodyF
    }
  }
  \melodyG
  \bar "|."
}

melodySingle = {
  \global
  \melodyA
  \keepWithTag #'v1 \melodyB \melodyC
  \keepWithTag #'v2 \melodyB \melodyD
  \keepWithTag #'v3 \melodyB \melodyE
  \keepWithTag #'v4 \melodyB \melodyF
  \melodyG
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsOne = \lyricmode {
  \set stanza = "1."
  The love -- li -- est girl in Vi -- en -- na
  Was Al -- ma, the smart -- est as well. _
  Once you picked her up on your an -- ten -- na,
  You'd nev -- er be free of her spell. _
  Her lov -- ers were man -- y and var -- ied
  \nom From the \yesm day she be -- gan her be -- guine.
  There were three fa -- mous ones whom she mar -- ried,
  And God knows how man -- y be -- tween. __
  Al -- ma tell us,
  All mod -- ern wom -- en are jeal -- ous,
  _ Which of your mag -- i -- cal wands
  _ got you Gus -- tav and Wal -- ter and Franz?
 \set stanza = "2." The
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  The first one she mar -- ried was Mah -- ler,
  Whose bud -- dies all knew him as \nom Gus -- tav. \yesm
  _ And each time he saw her he'd hol -- ler,
  “Ach, dot is de fräu -- lein I \nom must have!” \yesm
  Their mar -- riage, how -- ev -- er, was mur -- der.
  He'd __ scream to the heav -- ens a -- bove,
  _ “I'm writ -- ing ‘Das Lied von der Er -- de,’
  Und she on -- ly vants to make love!”
  Al -- ma tell us,
  All mod -- ern wom -- en are jeal -- ous,
  You should have a stat -- ue in bronze
  For bag -- ging Gus -- tav and
  _ _ _ _ _
  Wal -- ter and Franz.
  \set stanza = "3."
  While
}

wordsThree = \lyricmode {
  \set stanza = "3."
  While mar -- ried to Gus, she met \nom Gro -- pi -- us \yesm
  And soon she was swing -- ing with Wal -- ter,
  _ Gus died, and her tear -- drops were \nom co -- pi -- ous. \yesm
  She cried all the way to the \nom al -- tar. \yesm
  But he would work late at the Bau -- haus
  And __ on -- ly came home now and then.
  She said, “What am I run -- ning, a chow house?
  It's time to change part -- ners a -- gain.” __
  Al -- ma tell us,
  All mod -- ern wom -- en are jeal -- ous,
  Though you did -- n't e -- ven use Pond's,
  _ You got Gus -- tav and
  _ _ _ _ _
  _ _ _ _ _
  Wal -- ter and Franz.
  \set stanza = "4."
  While
}

wordsFour = \lyricmode {
  \set stanza = "4."
  While mar -- ried to Walt, she met Wer -- fel,
  And he too was caught in her net. _
  _ He mar -- ried her, but he was care -- ful,
  'Cause Al -- ma was no Ber -- na -- dette. _
  And that is the sto -- ry of Al -- ma,
  \nom Who knew \yesm how to re -- ceive and to give.
  _ The bod -- y that reached her em -- bal -- ma
  Was one that had known how to live. __
  Al -- ma tell us,
  How can they help be -- ing jeal -- ous?
  _ Ducks al -- ways en -- vy the swans
  _ Who get Gus -- tav and
  _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _
  Wal -- ter, you nev -- er did fal -- ter
  With Gus -- tav and Wal -- ter and Franz!
}

wordsSingle= \lyricmode {
  \set stanza = "1."
  The love -- li -- est girl in Vi -- en -- na
  Was Al -- ma, the smart -- est as well.
  Once you picked her up on your an -- ten -- na,
  You'd nev -- er be free of her spell.
  Her lov -- ers were man -- y and var -- ied
  From the day she be -- gan her be -- guine.
  There were three fa -- mous ones whom she mar -- ried,
  And God knows how man -- y be -- tween. __
  Al -- ma tell us,
  All mod -- ern wom -- en are jeal -- ous,
  Which of your mag -- i -- cal wands
  got you Gus -- tav and Wal -- ter and Franz?

  \set stanza = "2."
  The first one she mar -- ried was Mah -- ler,
  Whose bud -- dies all knew him as Gus -- tav.
  And each time he saw her he'd hol -- ler,
  “Ach, dot is de fräu -- lein I must have!”
  Their mar -- riage, how -- ev -- er, was mur -- der.
  He'd __ scream to the heav -- ens a -- bove,
  “I'm writ -- ing ‘Das Lied von der Er -- de,’
  Und she on -- ly vants to make love!”
  Al -- ma tell us,
  All mod -- ern wom -- en are jeal -- ous,
  You should have a stat -- ue in bronze
  For bag -- ging Gus -- tav and Wal -- ter and Franz.

  \set stanza = "3."
  While mar -- ried to Gus, she met Gro -- pi -- us
  And soon she was swing -- ing with Wal -- ter,
  Gus died, and her tear -- drops were co -- pi -- ous.
  She cried all the way to the al -- tar.
  But he would work late at the Bau -- haus
  And on -- ly came home now and then.
  She said, “What am I run -- ning, a chow house?
  It's time to change part -- ners a -- gain.” __
  Al -- ma tell us,
  All mod -- ern wom -- en are jeal -- ous,
  Though you did -- n't e -- ven use Pond's,
  You got Gus -- tav and Wal -- ter and Franz.

  \set stanza = "4."
  While mar -- ried to Walt, she met Wer -- fel,
  And he too was caught in her net.
  He mar -- ried her, but he was care -- ful,
  'Cause Al -- ma was no Ber -- na -- dette.
  And that is the sto -- ry of Al -- ma,
  Who knew how to re -- ceive and to give.
  The bod -- y that reached her em -- bal -- ma
  Was one that had known how to live. __
  Al -- ma tell us,
  All mod -- ern wom -- en are jeal -- ous,
  Ducks al -- ways en -- vy the swans
  Who get Gus -- tav and Wal -- ter,
  you nev -- er did fal -- ter
  With Gus -- tav and Wal -- ter and Franz!
}

midiWords = \lyricmode {
  \set stanza = "1."
  "The " love li "est " "girl " "in " Vi en "na "
  "\nWas " Al "ma, " "the " smart "est " "as " "well. "
  "\nOnce " "you " "picked " "her " "up " "on " "your " an ten "na, "
  "\nYou'd " nev "er " "be " "free " "of " "her " "spell. "
  "\nHer " lov "ers " "were " man "y " "and " var "ied "
  "\nFrom " "the " "day " "she " be "gan " "her " be "guine. "
  "\nThere " "were " "three " fa "mous " "ones " "whom " "she " mar "ried, "
  "\nAnd " "God " "knows " "how " man "y " be "tween. " 
  "\nAl" "ma " "tell " "us, "
  "\nAll " mod "ern " wom "en " "are " jeal "ous, "
  "\nWhich " "of " "your " mag i "cal " "wands "
  "\ngot " "you " Gus "tav " "and " Wal "ter " "and " "Franz?\n"

  \set stanza = "2."
  "\nThe " "first " "one " "she " mar "ried " "was " Mah "ler, "
  "\nWhose " bud "dies " "all " "knew " "him " "as " Gus "tav. "
  "\nAnd " "each " "time " "he " "saw " "her " "he'd " hol "ler, "
  "\n“Ach, " "dot " "is " "de " fräu "lein " "I " "must " "have!” "
  "\nTheir " mar "riage, " how ev "er, " "was " mur "der. "
  "\nHe'd "  "scream " "to " "the " heav "ens " a "bove, "
  "\n“I'm " writ "ing " "‘Das " "Lied " "von " "der " Er "de,’ "
  "\nUnd " "she " on "ly " "vants " "to " "make " "love!” "
  "\nAl" "ma " "tell " "us, "
  "\nAll " mod "ern " wom "en " "are " jeal "ous, "
  "\nYou " "should " "have " "a " stat "ue " "in " "bronze "
  "\nFor " bag "ging " Gus "tav " "and " Wal "ter " "and " "Franz.\n"

  \set stanza = "3."
  "\nWhile " mar "ried " "to " "Gus, " "she " "met " Gro pi "us "
  "\nAnd " "soon " "she " "was " swing "ing " "with " Wal "ter, "
  "\nGus " "died, " "and " "her " tear "drops " "were " co pi "ous. "
  "\nShe " "cried " "all " "the " "way " "to " "the " al "tar. "
  "\nBut " "he " "would " "work " "late " "at " "the " Bau "haus "
  "\nAnd " on "ly " "came " "home " "now " "and " "then. "
  "\nShe " "said, " "“What " "am " "I " run "ning, " "a " "chow " "house? "
  "\nIt's " "time " "to " "change " part "ners " a "gain.” " 
  "\nAl" "ma " "tell " "us, "
  "\nAll " mod "ern " wom "en " "are " jeal "ous, "
  "\nThough " "you " did "n't " e "ven " "use " "Pond's, "
  "\nYou " "got " Gus "tav " "and " Wal "ter " "and " "Franz.\n"

  \set stanza = "4."
  "\nWhile " mar "ried " "to " "Walt, " "she " "met " Wer "fel, "
  "\nAnd " "he " "too " "was " "caught " "in " "her " "net. "
  "\nHe " mar "ried " "her, " "but " "he " "was " care "ful, "
  "\n'Cause " Al "ma " "was " "no " Ber na "dette. "
  "\nAnd " "that " "is " "the " sto "ry " "of " Al "ma, "
  "\nWho " "knew " "how " "to " re "ceive " "and " "to " "give. "
  "\nThe " bod "y " "that " "reached " "her " em bal "ma "
  "\nWas " "one " "that " "had " "known " "how " "to " "live. " 
  "\nAl" "ma " "tell " "us, "
  "\nAll " mod "ern " wom "en " "are " jeal "ous, "
  "\nDucks " al "ways " en "vy " "the " "swans "
  "\nWho " "get " Gus "tav " "and " Wal "ter, "
  "\nyou " nev "er " "did " fal "ter "
  "\nWith " Gus "tav " "and " Wal "ter " "and " "Franz! "
}

pianoRHone = \relative {
  \global \voiceOne
  c'8^\markup\italic "(Das Lied von der Erde)" f16 g a bes c d |
  c8 a f c | d c f d \time 3/4 |
  <bes e g>2\fermata \breathe c4 \section
  \repeat volta 4 {
    c4 f g | a g f | e d2~ | 2 4 | c e g |
    bes4 c bes | a2. | r4 c, c | c f g | a g f | % 2a
    e4 d2~ | 2 4 | c bes' bes | bes a g | f2. |
    r4 r f | f f f | f ges g | aes ees2~ | 4 r ees8 8 |
    des4 4 4 | 4 ees f | ees2. | r4 ees ees | ees c' c | % 3a
    c4 des c | bes aes2~ | 2 4 | g g g | g g g |
    c2.~ | 2 r4 | d2. | bes | c4 a2~ | 2. |
    bes4 g g | g a bes | bes a2~ | 2 r4 | f f f | % 4a
    f4 bes d | c2 4 | d2 a4 | c bes a |
    \alternative {
      \volta 1 { bes4 a g | \once\tiny \parenthesize f4^\markup\italic "(Symphony No. 2)" a,8 bes c d | c4 f f | <a, c f> c8 e f g | f4 a c, | }
      \volta 2 { <e bes'>4 <e a> a8^\markup\italic "(Symphony No. 4)" bes | c2 g8 a | <e bes'>2 f8 g | \appoggiatura c,8 a'8. 16 8 g f e | d4\trill c c | }
      \volta 3 { bes'4 a^\markup\italic "(Symphony No. 9)" g | f\trill c'8 a g f | e4\trill c'8 a g f | e4 c8 bes' a g | f4\trill 4 c | }
      \volta 4 { bes'4 a g | c bes a | }
    }
  }
  bes4 a g | c bes a | <e bes' a>-> <f bes d>-> <g bes e>-> | <f a c f>2-^ <e' g bes c>4-^ | <f a c f>-^ r r |
%  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s2 | s a4 b | s2. |
  \repeat volta 4 {
    r4 <a c> q | r q q | r <f bes> q | r q q | r bes bes |
    r4 <e g> <c e> | r <c f> q | r a a | r <a c> q | r q q | % 2a
    r4 <f bes> q | r q q | r <c' e> q | r q <bes e> | r <a c> q |
    r4 q q | r <aes des> q | r ees' e | r <aes, c> q | r q q |
    r4 <g bes> q | r <g c> <g d'> | r <aes c> q | r q q | r <ees' aes> q | % 3a
    r4 <e bes'> q | r <c f> q | r q q | r <b f'> q | r <d f> q |
    r4 <c e> <d f> | <e g>8(<f a>) <g bes>4 <a c> | r <d, f bes> q | r <d f> q | r <c f> q | r q q |
    r4 <bes e> q | r <c e> q | g' <c, f> q | r q q | r <bes d> q | % 4a
    r4 <d f> <f bes> | r <c f a> q | r <c a'> <c d> | r <d f> q |
    \alternative {
      \volta 1 { r4 <c e> <bes e> | <a c> s2 | r4 <a c> q | s2. | r4 <c f> c | }
      \volta 2 { s2 g'4 | f2 r4 | s2. | s | s | }
      \volta 3 { r4 r8 c d[e] | s2.*4 | }
      \volta 4 { r4 <c e> <bes e> | r <d f> q | }
    }
  }
  r4 <c e> <bes e> | r <d f> q | s2.*3 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2\mf | s | s | s4\> s\! s\< |
  \repeat volta 4 {
    s2.\mf | s2.*4 |
    s2.*15 | % 2
    s2.*16 |
    s2.*9 |
    \alternative {
      \volta 1 { s2.*4 | s4 s2\> }
      \volta 2 { s2.\! | s2.*3 | s2\> s4\! | }
      \volta 3 { s2.*4 | s2\> s4\! | }
      \volta 4 { s2. | s | }
    }
  }
  s2. | s\omit\cresc-\markup\italic "poco a pcoc cresc." | s2. | s2\ff s4\sfz | s2.\sfz |
}

pianoLH = \relative {
  \global
  <c f a>2\arpeggio | q | f,4 g \time 3/4 c c,\fermata \breathe r |
  \repeat volta 4 {
    f4 r r | f r r | bes r r | bes, r r | c r r |
    g'4 r c | f, r r | c' r r | f, r r | f r r | % 2a
    bes4 r r | bes, r r | c r r | g' r c | f, r r |
    c'2 r4 | des2 r4 | aes2 r4 | c2 r4 | aes4 r r |
    bes2 r4 | ees,2 r4 | aes2 r4 | ees2 r4 | aes2 r4 | % 3a
    g2 r4 | f2 r4 | c'2 f,4 | g r r | b2 r4 |
    c4 r r | <c bes'>2 c,4 | bes r r | bes' r r | f r r | c'2 r4 |
    g4 r r | c r r | f, r r | c'2 a4 | bes4 r r | % 4a
    d2 bes4 | c2. | fis | g2 r4 |
    \alternative {
      \volta 1 { c4 r r | f, r r | f r r | f r r | f r r | }
      \volta 2 { c4 <e bes'> q | f, <a' c> q | c, <g' c> q | f <a c> q | c, <e bes'> q | }
      \volta 3 { c4 <e bes'> q | f <a c> q | c, <e bes'> q | c q q | f <a c> a | }
      \volta 4 { c,2 r4 | g4 r r | }
    }
  }
  c4 r r | g r r | c-> r c,-> | <f f'>2-^ <c c'>4-^ | <f, f'>4-^ r r |
  \bar "|."
}

#(set-global-staff-size 18)

\book {
  #(define output-suffix "repeat")
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with {
            \consists "Volta_engraver"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
            \addlyrics \wordsFour
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Score
        \remove "Volta_engraver"
        }
      \context { \Staff
                 \consists Merge_rests_engraver
                 \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "single")
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
%  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context { \Staff
                 \RemoveAllEmptyStaves
                 \consists Merge_rests_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "midi")
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice = "melody" \melodySingle
            \new Lyrics \lyricsto "melody" { \midiWords }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "singlepage")
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
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context { \Staff
                 \RemoveAllEmptyStaves
                 \consists Merge_rests_engraver
      }
    }
  }
}
