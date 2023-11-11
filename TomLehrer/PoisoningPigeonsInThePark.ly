\version "2.25.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Poisoning Pigeons in the Park"
%  subtitle    = "subtitle"
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
  \key c \major
  \time 3/4
}

TempoTrack = {
  \tempo Vernally 4=150
  \set Score.tempoHideNote = ##t
}

RehearsalTrackRepeat = {
%  \set Score.currentBarNumber = #5
  \repeat volta 2 {
    \textMark \markup { \box "1a" } s2.*4
  }
  \textMark \markup { \box "1b" } s2.*5
  \textMark \markup { \box "1c" } s2.*5
  \textMark \markup { \box "1d" } s2.*5
  \textMark \markup { \box "2a" } s2.*4
  \textMark \markup { \box "2b" } s2.*4 s4
  \textMark \markup { \box "2c" } s2
  s2.*4
  \textMark \markup { \box "2d" } s2.*5
  \textMark \markup { \box "3a" } s2.*5
  \textMark \markup { \box "3b" } s2.*5
  \textMark \markup { \box "3c" } s2.*4
  \textMark \markup { \box "3d" } s2.*4
  \textMark \markup { \box "4a" } s2.
  s2.*4
  \textMark \markup { \box "4b" } s2.*4
  \textMark \markup { \box "4c" } s2.*4
  \textMark \markup { \box "4d" } s2.*4
  \textMark \markup { \box "5a" } s2.*5
  \textMark \markup { \box "5b" } s2.*5
  \textMark \markup { \box "5c" } s2.*5
  \textMark \markup { \box "5d" } s2.*5
}

RehearsalTrackSingle = {
%  \set Score.currentBarNumber = #5
  \repeat volta 2 {
    \textMark \markup { \box "1a" } s2.*4
  }
  \textMark \markup { \box "1b" } s2.*5
  \textMark \markup { \box "1c" } s2.*5
  \textMark \markup { \box "1d" } s2.*5
  \textMark \markup { \box "2a" } s2.*4
  \textMark \markup { \box "2b" } s2.*4 s4
  \textMark \markup { \box "2c" } s2
  s2.*4
  \textMark \markup { \box "2d" } s2.*5
  \textMark \markup { \box "3a" } s2.*5
  \textMark \markup { \box "3b" } s2.*5
  \textMark \markup { \box "3c" } s2.*4
  \textMark \markup { \box "3d" } s2.*4
  \textMark \markup { \box "4a" } s2.
  s2.*4
  \textMark \markup { \box "4d" } s2.*4
  \textMark \markup { \box "5a" } s2.*5
  \textMark \markup { \box "5b" } s2.*5
  \textMark \markup { \box "5c" } s2.*5
  \textMark \markup { \box "5d" } s2.*5
  s2.*4
  \textMark \markup { \box "2d" } s2.*5
  \textMark \markup { \box "3a" } s2.*5
  \textMark \markup { \box "3b" } s2.*5
  \textMark \markup { \box "3c" } s2.*4
  \textMark \markup { \box "3d" } s2.*4
  \textMark \markup { \box "4a" } s2.
  \textMark \markup { \box "4b" } s2.*4
  \textMark \markup { \box "4c" } s2.*4
}

ChordTrack = \chordmode {
  \repeat volta 2 { s2.*4 }
  c2. | a:7 | d:7 | g:7 | c |
  a2.:7 | d:7 | g:7 | d:m7 | g:7 |
  c2. | g:7 | c | a:7 | d:7 |
  g2.:7 | d:m | g:7 | c | % 2a
  s2. | d:7 | s | g4 g2:dim | g4:7
  s2 || c2. | c:maj7 | c:6 | c |
  s2. | s2 s8 g:dim | g2.:7 | s | d:m |
  f2.:aug | f | d:m6 | g:7 | s | % 3a
  c2. | s | f:m | s | s |
  s2. | d:7 | s | g:7 |
  s2. | c | c:maj7 | c:6 |
  c2. || d:7 | g:7 | c | s || % 4a
  d2.:7 | g:7 | d:7 | g:7 |
  d2.:7 | g:7 | c | s ||
  g2.:7sus4 | g:7 | c:maj7 | c:6 |
  g2.:7sus4 | g:7 | c:maj7 | c:6 | a:7sus4 | % 5a
  a2.:7 | d:maj7 | d:6 | a:7sus4 | a:7 |
  s2. | d | d:7 | s | g |
  s2. | d:7 | s | g:7 | s4 g2:7aug |
}

melodyA = \relative {
  \repeat volta 2 { R2.*4 }
  c'2 b'4 | a4. g8 e cis | a2 a'4 | g2. | c,2 b'4 |
  a4 g f | a,2 a'4 | g2. | d4 e f | f e d |
  d4 f g | a b d | c2 \override NoteHead.style = #'cross 4^\markup\italic "(Spoken)" | a2 4 | d,4 r a'8 8 |
  g4 \revert NoteHead.style r4 8^\markup\italic "(Sung)" 8 | d4 4 4 | d e f | g8 f e2~ | % 2a
  e2 4 | fis4 4 4 | 4 g a | b8 a g2~ | 4\fermata \section
  e4\fermata f\fermata \section |
}

melodyB = \relative {
  g'4 e f | g e f | g e f | g a c |
  e4. d8 c4 | b8 a g4. e8 |
  \tag #'dash {f2.~ <<{\voiceOne f4 d e} \new Voice {\voiceTwo f2 e4}>> \oneVoice |}
  \tag #'v1   {f2.~              f4 d e                                           |}
  \tag #'v2   {f2.~                                            f2 e4              |}
  f4 d e |
  \tag #'dash {<<{\voiceTwo \tiny f4 d} \new Voice {\voiceOne \normalsize f2}>> \normalsize \oneVoice e4 |} % 3a
  \tag #'v1   {                                                           f2                          e4 |}
  \tag #'v2   {                   f4 d                                                                e4 |}
f d e | f g b | d4. c8 b4 | a8 g d4. dis8 |
  e2.~ | 2 c4 | f g aes | aes g f | e f g |
  \tag #'dash {g8 f e4 <<{\voiceOne e8 \tiny 8} \new Voice {\voiceTwo \normalsize e4}>> \normalsize \oneVoice|} % 3c
  \tag #'v1   {g8 f e4              e8       8                                                               |}
  \tag #'v2   {g8 f e4                                                            e4                         |}
  d4 d e | fis g a | b a g |
  f8 8 e4 d | g e f | % 3d
  \tag #'dash {<<{\voiceTwo g8 \tiny 8} \new Voice {\voiceOne \normalsize g4}>> \oneVoice \normalsize e4 f |}
  \tag #'v1   {                                                           g4                          e4 f |}
  \tag #'v2   {             g8       8                                                                e4 f |}
  g a b |
  \tag #'dash {<<{\voiceTwo c8 \tiny 8} \new Voice {\voiceOne \normalsize c4}>> \oneVoice \normalsize b4 c |} % 4a
  \tag #'v1   {                                                           c4                          b4 c |}
  \tag #'v2   {             c8       8                                                                b4 c |}
}

melodyC = \relative {
  e''4. d8 c4 | b8 a g4 d' | c2.~ | 4 r \textMark \markup{\halign #RIGHT "To Interlude"} g |
}

melodyD = \relative {
  e''4. d8 c4 | b4 g g | e' d c | b g g |
  e'4. d8 c4 | b8 a g4 d' | c2.~ | 4 r r^\markup {\halign #RIGHT Fine}
}

melodyE = \relative {
  g'4^\markup INTERLUDE g g | 8 8 4 4 | 4 4 4 | 8 8 4 8 8 |
  g8 8 4 4 | 8 8 4 a8 g | e2.~ | 4 r a | a a a | % 5a
  a8 8 4 4 | 4 4 4 | 8 8 4 4 | 4 4 4 | 8 8 4 4 |
  a4 b cis | d2 8 8 | 4 c b | a g fis | e4 d2~ |
  d2 4 | d e fis | g a b | c b2~ |4 \caesura 4\fermata a\fermata^\markup{\halign #RIGHT "D.S. al Fine"} \segnoMark 1 \section |
}

melody = {
  \melodyA \segnoMark \default
  \keepWithTag #'dash \melodyB
  \set Score.repeatCommands = #'((volta "1"))
  \melodyC
  \set Score.repeatCommands = #'((volta #f) (volta "2")) \section \break
  \melodyD
  \set Score.repeatCommands = #'((volta #f)) \break \bar "|."
  \melodyE
}

melodySingle = {
  \melodyA
  \keepWithTag #'v1 \melodyB
  \melodyC
  \melodyE
  \keepWithTag #'v2 \melodyB
  \melodyD
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  Spring is here, a -- suh -- puh -- ring is here,
  Life is skit -- tles and life is beer,
  I think the love -- li -- est time of the year is the spring.
  \markup\italic I \markup\italic do, \markup\italic don't \markup\italic you? \markup\italic Course \markup\italic you \markup\italic do!
  But there's one thing that makes spring com -- plete for me, __
  And makes ev -- 'ry Sun -- day a treat for me. __
  All the world seems in tune on a spring af -- ter -- noon,
  When we're poi -- son -- ing pi -- geons in the park. __
  Ev -- 'ry Sun -- day you'll see _ my sweet -- heart and me,
  As we poi -- son the pi -- geons in the park. __
  When they see us com -- ing, the bird -- ies all try and hide,
  But they still go for pea -- nuts when coat -- ed with cy -- an -- hide.
  The sun's shin -- ing bright, _ ev -- 'ry thing seems all right, _
  When we're poi -- son -- ing pi -- gerons in the park. __
  We've
  \repeat unfold 20 _
  gained no -- to -- ri -- e -- ty
  And caused much an -- xi -- e -- ty in the Au -- du -- bon So -- ci -- e -- ty with our games. __
  They call it im -- pi -- e -- ty, and lack of pro -- pri -- e -- ty,
  And quite a va -- ri -- e -- ty of un -- pleas -- ant names.
  But it's not a -- gainst an -- y re -- li -- gion __
  To want to dis -- pose of a pi -- geon. __
  So if
}

wordsTwo = \lyricmode {
  \repeat unfold 58 _
  "(So" if)
  Sun -- day you're free, why don't you come with me,
  And we'll poi -- son the pi -- geons in the park. __
  _ And may -- be we'll do in a squir -- rel or two,
  While we're poi -- son -- ing pi -- geons in the park. __
  We'll mur -- der them all a -- mid laugh -- ter and mer -- ri -- ment,
  Ex -- _ cept for the few we take home to ex -- per -- i -- ment.
  My pulse will be quick -- en -- in' with each drop of stry -- ch'n -- ine we
  \repeat unfold 9 _
  feed to a pi -- geon,
  "(It" just takes a smid -- "gin!)"
  To poi -- son a pi -- geon in the park. __
}

wordsSingle = \lyricmode {
  Spring is here, a -- suh -- puh -- ring is here,
  Life is skit -- tles and life is beer,
  I think the love -- li -- est time of the year is the spring.
  \markup\italic I \markup\italic do, \markup\italic don't \markup\italic you? \markup\italic Course \markup\italic you \markup\italic do!
  But there's one thing that makes spring com -- plete for me, __
  And makes ev -- 'ry Sun -- day a treat for me. __
  All the world seems in tune on a spring af -- ter -- noon,
  When we're poi -- son -- ing pi -- geons in the park. __
  Ev -- 'ry Sun -- day you'll see my sweet -- heart and me,
  As we poi -- son the pi -- geons in the park. __
  When they see us com -- ing, the bird -- ies all try and hide,
  But they still go for pea -- nuts when coat -- ed with cy -- an -- hide.
  The sun's shin -- ing bright, ev -- 'ry thing seems all right,
  When we're poi -- son -- ing pi -- gerons in the park. __
  We've gained no -- to -- ri -- e -- ty
  And caused much an -- xi -- e -- ty in the Au -- du -- bon So -- ci -- e -- ty with our games. __
  They call it im -- pi -- e -- ty, and lack of pro -- pri -- e -- ty,
  And quite a va -- ri -- e -- ty of un -- pleas -- ant names.
  But it's not a -- gainst an -- y re -- li -- gion __
  To want to dis -- pose of a pi -- geon. __

  So if Sun -- day you're free, why don't you come with me,
  And we'll poi -- son the pi -- geons in the park. __
  And may -- be we'll do in a squir -- rel or two,
  While we're poi -- son -- ing pi -- geons in the park. __
  We'll mur -- der them all a -- mid laugh -- ter and mer -- ri -- ment,
  Ex -- cept for the few we take home to ex -- per -- i -- ment.
  My pulse will be quick -- en -- in' with each drop of stry -- ch'n -- ine we
  feed to a pi -- geon,
  "(It" just takes a smid -- "gin!)"
  To poi -- son a pi -- geon in the park. __
}

midiWords = \lyricmode {
  "Spring " "is " "here, " a suh puh "ring " "is " "here, "
  "\nLife " "is " skit "tles " "and " "life " "is " "beer, "
  "\nI " "think " "the " love li "est " "time " "of " "the " "year " "is " "the " "spring. "
  "\nI " "do, " "don't " "you? " "Course " "you " "do! "
  "\nBut " "there's " "one " "thing " "that " "makes " "spring " com "plete " "for " "me, " 
  "\nAnd " "makes " ev "'ry " Sun "day " "a " "treat " "for " "me. " 
  "\nAll " "the " "world " "seems " "in " "tune " "on " "a " "spring " af ter "noon, "
  "\nWhen " "we're " poi son "ing " pi "geons " "in " "the " "park. " 
  "\nEv" "'ry " Sun "day " "you'll " "see " "my " sweet "heart " "and " "me, "
  "\nAs " "we " poi "son " "the " pi "geons " "in " "the " "park. " 
  "\nWhen " "they " "see " "us " com "ing, " "the " bird "ies " "all " "try " "and " "hide, "
  "\nBut " "they " "still " "go " "for " pea "nuts " "when " coat "ed " "with " cy an "hide. "
  "\nThe " "sun's " shin "ing " "bright, " ev "'ry " "thing " "seems " "all " "right, "
  "\nWhen " "we're " poi son "ing " pi "gerons " "in " "the " "park. " 
  "\nWe've " "gained " no to ri e "ty "
  "\nAnd " "caused " "much " an xi e "ty " "in " "the " Au du "bon " So ci e "ty " "with " "our " "games. " 
  "\nThey " "call " "it " im pi e "ty, " "and " "lack " "of " pro pri e "ty, "
  "\nAnd " "quite " "a " va ri e "ty " "of " un pleas "ant " "names. "
  "\nBut " "it's " "not " a "gainst " an "y " re li "gion " 
  "\nTo " "want " "to " dis "pose " "of " "a " pi "geon.\n" 

  "\nSo " "if " Sun "day " "you're " "free, " "why " "don't " "you " "come " "with " "me, "
  "\nAnd " "we'll " poi "son " "the " pi "geons " "in " "the " "park. " 
  "\nAnd " may "be " "we'll " "do " "in " "a " squir "rel " "or " "two, "
  "\nWhile " "we're " poi son "ing " pi "geons " "in " "the " "park. " 
  "\nWe'll " mur "der " "them " "all " a "mid " laugh "ter " "and " mer ri "ment, "
  "\nEx" "cept " "for " "the " "few " "we " "take " "home " "to " ex per i "ment. "
  "\nMy " "pulse " "will " "be " quick en "in' " "with " "each " "drop " "of " stry ch'n "ine " "we "
  "\nfeed " "to " "a " pi "geon, "
  "\n(It " "just " "takes " "a " smid "gin!) "
  "\nTo " poi "son " "a " pi "geon " "in " "the " "park. " 
}


pianoRHoneA = \relative {
  \repeat volta 2 {
    <c' e g c>2 \ottava #1 <b'' b'>4 |
    a'8 e \ottava #0 cis8 a e cis |
    a4 c a' | \voiceOne g2. |
  }
  \oneVoice c,2 b'4 | a4. g8 e cis | a2 a'4 | \voiceOne g2. \oneVoice | c,2 b'4 |
  a4 g e | a,2 a'4 | \voiceOne g2. | \oneVoice d4 e f | f e d |
  <c e> <d f> <e g> | <f a> <g b> <f d'> | <e c'>2 <e g c>4( | <cis e a>2) q4( | <fis, c' d>2) <c' d a'>4( |
  <b d g>2) g'8 8 | d4 d d | d e f | <e g>8 <d f> <c e>2~ | % 2a
  q2 4 | <c fis>4 4 4 | q <c g'> <c a'> | <d b'>8 <c a'> \voiceOne g'2~ | 4\fermata \section
  e4\fermata f\fermata \section |
}

pianoRHoneB = \relative {
  g'' e f | g e f | g e f | g a c |
  <c e>4. <b d>8 <a c>4 | <g b>8 <f a> <e g>4. e8 | <d f>2.~ | 4 d e | f d e |
  f2 e4 | f d e | f g b | <b d>4. <a c>8 <g b>4 | <f a>8 <e g> <d f>4. dis8 | % 3a
  <c e>2.~ | 2 c4 | <c f> <c g'> <c aes'> | q <c g'> <c f> | <c e> <c f> <c g'> |
  <c g'>8 f <c e>4 e8 8 | \voiceOne d4 d e | fis g a | \oneVoice <d, b'> <c a'> <b g'> |
  <a f'>8 8 <g e'>4 <f d'> | g' e f | g e f | g a b |
  c4 b c | % 4a
}

pianoRHoneC = \relative {
  <c''' e>4. <b d>8 <a c>4 | <g b>8 a g4 <f d'> | <e c'>2.~ | 4 r g, \section | % 4a
}

pianoRHoneD = \relative {
  <c'' e>4. <b d>8 <a c>4 | <g b>4 g g | <c e> <b d> <a c> | <g b> g g |
  <c e>4. <b d>8 <a c>4 | <g b>8 a g4 <f d'> | <e c'>2 g4-> | <c, e g c>4-> r r |
}

pianoRHoneE = \relative {
  \voiceOne g'4 4 4 | 8 8 4 4 | 4 4 4 | 8 8 4 8 8 |
  g8 8 4 4 | 8 8 4 a8 g | e2.~ | 2 a4 | a a a | % 5a
  a8 8 4 4 | 4 4 4 | 8 8 4 4 | 4 4 4 | 8 8 4 4 |
  a4 b cis | \oneVoice <fis, a d>2 d'8 8 | d4 c b | a g fis | e d2~ |
  d2 4 | d e fis | g a b | <d, f c'> <d f b>2~ | 4 \caesura \voiceOne b''4\fermata a\fermata \section |
%  \bar "|."
}

pianoRHone = {
  \global
  \pianoRHoneA
  \pianoRHoneB
  \pianoRHoneC
  \pianoRHoneD
  \pianoRHoneE
}

pianoRHoneSingle = {
  \global
  \pianoRHoneA
  \pianoRHoneB
  \pianoRHoneC
  \pianoRHoneE
  \pianoRHoneB
  \pianoRHoneD
}

pianoRHtwoA = \relative {
  \global
  \voiceTwo
  \repeat volta 2 { s2.*3 | r4 <b' e> <b d> | }
  s2. | s | s | r4 <b e> <b d> | s2. |
  s2. | s | r4 g8(a b c) | s2. | s |
  s2.*5 |
  s2.*4 | % 2a
  s2. | s | s | s4 b4 <bes cis> | <b d>\fermata
  s2 |
}

pianoRHtwoB = \relative {
  s2.*4 |
  s2.*5 |
  s2.*5 | % 3a
  s2.*5 |
  s2. | a' | d | s |
  s2.*4 |
  s2. | % 4a
}

pianoRHtwoC = {
  s2.*4 |
}

pianoRHtwoD = {
  s2.*4 |
  s2.*4 |
}

pianoRHtwoE = \relative {
  <c' f>2. | <b f'> | <b e> | <a e'> |
  <c f>2. | <b f'> | r4 b g | a2 r4 | <d g>2. | % 5a
  <cis g'>2. | <cis fis> | <b fis'> | <d g> | <cis g'> |
  q2. | <fis a> | s | s | s |
  s2. | s | s | s | s4 dis'2\fermata |
%  \bar "|."
}

pianoRHtwo = {
  \global
  \pianoRHtwoA
  \pianoRHtwoB
  \pianoRHtwoC
  \pianoRHtwoD
  \pianoRHtwoE
}

pianoRHtwoSingle = {
  \global
  \pianoRHtwoA
  \pianoRHtwoB
  \pianoRHtwoC
  \pianoRHtwoE
  \pianoRHtwoB
  \pianoRHtwoD
}

dynamicsPianoA = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 { s2.*4 }
  s2.\mf s2.*13 |
  s2.-\markup\bold "poco rit."
  s2.*7 |
  s4-\markup\bold "poco rit." s2\> | s4\! s2\mf |
}

dynamicsPianoB = {
  s2.-\markup\bold "a tempo" |
  s2.*19 | s2.-\markup\bold "tempo ad lib." |
  s2.*3 | s2.-\markup\bold "a tempo" |
  s2.*2 | s2\< s8 s\! |
}

dynamicsPianoC = {
  s2. | s | s\> | s4 s2\! |
}

dynamicsPianoD = {
  s2.*8 |
}

dynamicsPianoE = {
  s2.*21 | s2.-\markup\bold "poco a poco rit." | s2.*2 |
}


dynamicsPiano = {
  \dynamicsPianoA
  \dynamicsPianoB
  \dynamicsPianoC
  \dynamicsPianoD
  \dynamicsPianoE
}

dynamicsPianoSingle = {
  \dynamicsPianoA
  \dynamicsPianoB
  \dynamicsPianoC
  \dynamicsPianoE
  \dynamicsPianoB
  \dynamicsPianoD
}

pianoLHoneA = \relative {
  \global
  \repeat volta 2 {
    <c, g' e'>4\arpeggio <g'' c e> q |
    <a,, a'>4 <g'' cis e> q |
    <d, d'>4 <fis' c' e> q |
    g,4 <g' b f'> q |
  }
  c,4 <g' c e> q | % 1b
  a,4 <g' cis e> q |
  d,4 <fis' c' d> q |
  g,4 <f' b d> q |
  c4 <g' c e> q |
  a,4 <g' cis e> q | % 1c
  d,4 <fis' c' d> q |
  g,4 <f' b d> q |
  d,4 <a'' c f> q |
  g,4 <g' b f'> q |
  c,4(g' e') | g,,(d' b') | % 1d
  c,4 <g' c e> q |
  a,4 <g' cis e> q |
  d,4 <fis' c' d> q |
  g,4 <f' b d> q | % 2a
  d,4 <f' a d> q |
  g,4 <f' b d> q |
  c4 <g' c e> q |
  g,4 <g' c e> q | % 2b
  d,4 <fis' c' d> q |
  d4 e fis | g2 <g cis e>4 | <g d' f>\fermata \section
  r4\fermata r\fermata
}

pianoLHoneB = \relative {
  \clef treble \section \voiceOne | r4 <e' g> q | r4 q q | r q q | r q q |
  r4 q q | r q r | r <f g> q | r q q | r <f a> q |
  r4 q q | r q q | r q q | r <b, f'> q | \oneVoice g a b | % 3a
  \voiceOne r4 <e g> q \clef bass | \oneVoice bes g e \voiceOne r <aes c> q | r q q | r <c e> q |
  r4 q r \oneVoice | <fis, c'>2. \voiceOne c' | \oneVoice <g f'> |
  g4 a b \clef treble \voiceOne | r4 <e g> q | r q q | r q q |
  r4 q q |
}

pianoLHoneC = \relative {
  \clef bass r4 <fis c'> q | r <b f'> q | \oneVoice c g e | c r r | % 4a
}

pianoLHoneD = \relative {
  \voiceOne \clef bass r4 <fis c'> q | r <f b> q | r <fis c'> q | r <f b> q |
  r4 <fis c'> q | r <f b> q | \oneVoice <c e'>2 <g g'>4-> | <c, c'>-> r r |
}

pianoLHoneE = \relative {
  d4 r r | g, r r | c r r | g r r |
  d'4 r r | g, r r | c r r | g r r | e' r r | % 5a
  a,4 r r | d r r | a r r | e' r r | a, r r |
  e'4 r a, | d d, r | d' <fis c'> q | d q q | g, <g' b> q |
  d4 q q | d <fis c'> q | d q q | a' g d | g,4 \caesura <g' f'>2\fermata \clef treble \section
%  \bar "|."
}

pianoLHone = {
  \global
  \pianoLHoneA
  \pianoLHoneB
  \pianoLHoneC
  \pianoLHoneD
  \pianoLHoneE
}

pianoLHoneSingle = {
  \global
  \pianoLHoneA
  \pianoLHoneB
  \pianoLHoneC
  \pianoLHoneE
  \pianoLHoneB
  \pianoLHoneD
}

pianoLHtwoA = \relative {
  \global
  \voiceTwo
  \repeat volta 2 { s2.*4 }
  s2.*23 | s4
  s2 |
}

pianoLHtwoB = \relative {
  c'2. | b | a | g | % 2c
  c2. | g2 cis4 | d2. | g, | d' |
  cis2. | c | b | g | s | % 3a
  c2. | s | f, | f | g |
  g2 r4 | s2. | d4 e fis | s2. |
  s2. | c'2. | b | a |
  g2. |
}

pianoLHtwoC = \relative {
  d | g | s | s \section | % 4a
}

pianoLHtwoD = \relative {
  d2. | g, | d' | g, |
  d'2. | g, | s | s |
}

pianoLHtwoE = {
  s2.*24 |
%  \bar "|."
}

pianoLHtwo = {
  \global
  \pianoLHtwoA
  \pianoLHtwoB
  \pianoLHtwoC
  \pianoLHtwoD
  \pianoLHtwoE
}

pianoLHtwoSingle = {
  \global
  \pianoLHtwoA
  \pianoLHtwoB
  \pianoLHtwoC
  \pianoLHtwoE
  \pianoLHtwoB
  \pianoLHtwoD
}

#(set-global-staff-size 19.5)

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
            \new Voice \RehearsalTrackRepeat
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsOne
            \new Lyrics \lyricsto "melody" \wordsTwo
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
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "single")
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
            \new Voice \RehearsalTrackSingle
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
            \new Voice \pianoRHoneSingle
            \new Voice \pianoRHtwoSingle
          >>
          \new Dynamics \dynamicsPianoSingle
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHoneSingle
            \new Voice \pianoLHtwoSingle
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
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
            \new Voice \RehearsalTrackSingle
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
            \new Voice \pianoRHoneSingle
            \new Voice \pianoRHtwoSingle
          >>
          \new Dynamics \dynamicsPianoSingle
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHoneSingle
            \new Voice \pianoLHtwoSingle
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
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
            \new Voice \pianoRHoneSingle
            \new Voice \pianoRHtwoSingle
          >>
          \new Dynamics \dynamicsPianoSingle
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHoneSingle
            \new Voice \pianoLHtwoSingle
          >>
        >>
      >>
    >>
    \midi {}
  }
}
