\version "2.25.13"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Try to Remember"

%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Harvey Schmidt"
  arranger    = "Arr. Steve Zegree"
%  opus        = "opus"

  poet        = "Tom Jones"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Expressive with Rubato" 4=120
  s2.*51 |
  s2.*3  | % 7a
  s2.*3 |
  s2.*3 |
  s2.*3 |
  s2. | s4 \tempo "rall." 4=110 s2 | \tempo 4=55 s2. |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "3a" } s2.*3
  \textMark \markup { \box "3b" } s2.*5
  \textMark \markup { \box "3c" } s2.*4
  \textMark \markup { \box "3d" } s2.*4
  \textMark \markup { \box "4a" } s2.*3
  \textMark \markup { \box "4b" } s2.*3
  \textMark \markup { \box "4c" } s2.*4
  \textMark \markup { \box "4d" } s2.*3
  \textMark \markup { \box "4e" } s2.*4
  \textMark \markup { \box "5a" } s2.*3
  \textMark \markup { \box "5b" } s2.*3
  \textMark \markup { \box "5c" } s2.*3
  \textMark \markup { \box "6a" } s2.*3
  \textMark \markup { \box "6b" } s2.*3
  \textMark \markup { \box "6c" } s2.*3
  \textMark \markup { \box "7a" } s2.*3
  \textMark \markup { \box "7b" } s2.*3
  \textMark \markup { \box "7c" } s2.*3
  \textMark \markup { \box "7d" } s2.*3
  \textMark \markup { \box "7e" } s2.*3
}

apart = \partCombineApart
auto  = \partCombineAutomatic
pcchords = \partCombineChords

solo = \relative {
  \global
  R2.*34
  \section \key des \major
  f''4.^\markup "Solo (or small group)" 8 4 | 4 ees des | % 5a+
  ges,4. 8 4 | 4 aes bes | aes2 f4 |
  des'2 aes4 | bes2 ges4 | ees'8 bes~2 |
  f'4. 8 4 | f ees des | ges,4. 8 4 | % 6a
  ges4 aes bes | aes2 f4 | des'2 aes4 |
  bes2 ges4 | ees'8 bes~2 | R2.^\markup\italic "rejoin choir" |
  R2. | R \section \key g \major | R2.*13
}

wordsSolo = \lyricmode {
  Try to re -- mem -- ber when life was so ten -- der
  that no one wept ex -- cept the wil -- low. __
  Try to re -- mem -- ber when life was so ten -- der
  that dreams were kept be -- side your pil -- low. __
}

wordsSoloMidi = \lyricmode {
  "Try " "to " re mem "ber " "when " "life " "was " "so " ten "der "
  "\nthat " "no " "one " "wept " ex "cept " "the " wil "low. " 
  "\nTry " "to " re mem "ber " "when " "life " "was " "so " ten "der "
  "\nthat " "dreams " "were " "kept " be "side " "your " pil "low. " 
}

dynamicsWomen = {
  s2.\p | s | s |
  s2.*13 |
  s2.\mf | s | s | % 4a
  s2.*3 |
  s2. | s8 s\> s2 | s2.\! s |
  s2.*3 |
  s2. | s | s2 s4\mf | s2 s4\< |
  s2. | s2.\! | s | % 5a
  s2.*3 |
  s2.*3 |
  s2.*3 | % 6a
  s2.*3 |
  s2. | s | s\mf |
  s2 s4\< | s2.\f | s | % 7a
  s2.*3 |
  s8 s\< s2 | s2.\ff | s2 s4\dim |
  s2. | s | s\mf |
  s2. | s | s |
}

soprano = \relative {
  \global
  b'4.^\markup\italic Unis. 8 4 | 4 a g | c,4. 8 4 |
  c4 d e | d2 b4 | g'2 d4 | e2 c4 | a'8 e~2 |
  b'4. 8 4 | 4 a g | c,4. 8 4 | 4 d e |
  d2 b4 g'2 d4 | e2 c4 | a'8 e~2 |
  d'4. 8 4 | 4 c b | c4. 8 4 | % 4a
  c4 b a | b4. 8 4 | 4 a g |
  a8 e~2 | fis8 d~2 | b'4.^\mp 8 4 | 4 a g |
%  \apart \footnote "*" #'(-1 . -1) "* Sopranos bring out melody where parts cross" c,4. 8 4 | c \auto d e | b' g2 |
  c,4. 8 4 | c d e | b' g2 |
  r4 b8 g b g | b g~2~ | 2 \breathe 4( | f4. e8 d4) |
  ees4(ges bes8 aes) \section \key des \major \break | r4 r8 f->^\p ~4 | r4 r8 f~4 | % 5a
  r4 r8 ges~4 | r4 r8 f~4 | r4 r8 f~4 |
  r4 r8 f~4 | r4 r8 ges~4 | r4 r8 f~4 |
  r4 r8 f~4 | r4 r8 f~4 | r4 r8 ges~4 | % 6a
  r4 r8 f~4 | r4 r8 f~4 | r4 r8 f~4 |
  r4 r8 ges~4 | r4 r8 f~4 | aes4. 8 4 |
  aes4 ges f \section \key e \major | a4. 8 4 | 4 gis fis | % 7a
  gis4. 8 4 | gis fis e | fis2 cis4 |
  dis8 b'~2 \section \key g \major | b4. 8 4 | b a g |
  c,4. 8 4 | 4 d e | b' g2 |
  r4 b8 g b g | b g~2~ | 2.\fermata |
  \bar "|."
}

wordsSop = \lyricmode{
  \repeat unfold 47 \skip 1 of
  \repeat unfold 14 \skip 1 Try to
  \repeat unfold 16 \skip 1 fol -- low, __
  _ _ doo
  \repeat unfold 55 \skip 1 fol -- low. __
}

wordsSopMidi = \lyricmode {
  "Try " "to " re mem "ber " "the " "kind " "of " Sep tem "ber "
  "\nwhen " "life " "was " "slow " "and " "oh " "so " mel "low. " 
  "\nTry " "to " re mem "ber " "the " "kind " "of " Sep tem "ber "
  "\nwhen " "grass " "was " "green "  "and " "grain "  "was " yel "low. " 
  "\nTry " "to " re mem "ber " "the " "kind " "of " Sep tem "ber "
  "\nwhen " "you " "were " "a " ten "der " "and " cal "low " fel "low. " 
  "\nTry " "to " re mem "ber " "and " "if " "you " re mem "ber "
  "\nthen " fol "low " fol "low " fol "low " fol "low, " 
  "\noo "  "ah, " 
  \repeat unfold 16 "doo "
  "\nTry " "to " re mem "ber " "when " "life " "was " "so " ten "der "
  "\nthat " "love " "was " "an " em "ber " a "bout " "to " bil "low, " 
  "\nTry " "to " re mem "ber " "and " "if " "you " re mem "ber "
  "\nthen " fol "low, " fol "low " fol "low " fol "low. " 
}

words = \lyricmode {
  Try to re -- mem -- ber the kind of Sep -- tem -- ber
  when life was slow and oh so mel -- low. __
  Try to re -- mem -- ber the kind of Sep -- tem -- ber
  when grass was green __ and grain __ was yel -- low. __
  \set associatedVoice = alignerA
  Try to re -- mem -- ber the kind of Sep -- tem -- ber
  when you were a ten -- der and cal -- low fel -- low. __
  Try    re -- mem -- ber and if you re -- mem -- ber
  then fol -- low fol -- low fol -- low fol -- low, __
  oo __ ah, __
  "" _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  Try to re -- mem -- ber when life was so ten -- der
  that love was an em -- ber a -- bout to bil -- low, __
  Try to re -- mem -- ber and if you re -- mem -- ber
  then fol -- low, fol -- low fol -- low fol -- low. __
}

wordsSopSep = \lyricmode {
  Try to re -- mem -- ber the kind of Sep -- tem -- ber
  when life was slow and oh so mel -- low. __
  Try to re -- mem -- ber the kind of Sep -- tem -- ber
  when grass was green __ and grain __ was yel -- low. __
  Try to re -- mem -- ber the kind of Sep -- tem -- ber
  when you were a ten -- der and cal -- low fel -- low. __
  Try to re -- mem -- ber and if you re -- mem -- ber
  then fol -- low fol -- low fol -- low fol -- low, __
  oo __ ah, __
  doo __ "" _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  Try to re -- mem -- ber when life was so ten -- der
  that love was an em -- ber a -- bout to bil -- low, __
  Try to re -- mem -- ber and if you re -- mem -- ber
  then fol -- low, fol -- low fol -- low fol -- low. __
}

wordsAltoSep = \lyricmode {
  Try to re -- mem -- ber the kind of Sep -- tem -- ber
  when life was slow and oh so mel -- low. __
  Try to re -- mem -- ber the kind of Sep -- tem -- ber
  when grass was green __ and grain __ was yel -- low. __
  Try to re -- mem -- ber the kind of Sep -- tem -- ber
  when you were a ten -- der and cal -- low fel -- low. __
  Try    re -- mem -- ber and if you re -- mem -- ber
  then fol -- low fol -- low fol -- low fol -- low, __
  oo __ ah, __
  doo \markup\italic "(simile}" _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  Try to re -- mem -- ber when life was so ten -- der
  that love was an em -- ber a -- bout to bil -- low, __
  Try to re -- mem -- ber and if you re -- mem -- ber
  then fol -- low, fol -- low fol -- low fol -- low. __
}

wordsTenorSep = \lyricmode {
  Try to re -- mem -- ber the kind of Sep -- tem -- ber
  when grass was green __ grain __ was yel -- low. __
  Try to re -- mem -- ber the kind of Sep -- tem -- ber
  when you were a ten -- der and cal -- low fel -- low. __
  Try    re -- mem -- ber and if you re -- mem -- ber
  then fol -- low fol -- low fol -- low fol -- low, __
  oo __ ah, __
  doo __ "" _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  Try to re -- mem -- ber when life was so ten -- der
  that love was an em -- ber a -- bout to bil -- low, __
  Try to re -- mem -- ber and if you re -- mem -- ber
  then fol -- low, fol -- low fol -- low fol -- low. __
}

wordsBassSep = \lyricmode {
  Try to re -- mem -- ber the kind of Sep -- tem -- ber
  when grass was green __ grain __ was yel -- low. __
  Try to re -- mem -- ber the kind of Sep -- tem -- ber
  when you were a ten -- der and cal -- low fel -- low. __
  Try    re -- mem -- ber and if you re -- mem -- ber
  then fol -- low fol -- low fol -- low fol -- low, __
  oo __ ah, __
  Doo "" _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  Try to re -- mem -- ber when life was so ten -- der
  that love was an em -- ber a -- bout to bil -- low, __
  Try to re -- mem -- ber and if you re -- mem -- ber
  then fol -- low, fol -- low fol -- low fol -- low. __
}

alto = \relative {
  \global
  b'4. 8 4 | 4 a g | c,4. 8 4 |
  c4 d e | d2 b4 | g'2 d4 | e2 c4 | a'8 e~2 |
  b'4. 8 4 | 4 a g | c,4. 8 4 | 4 d e |
  d2 b4 g'2 d4 | e2 c4 | a'8 e~2 |
  d'4. e8 fis4 | a8(fis) gis4 f | a gis g | % 4a
  g4 e fis | g4. a8 g4 | g e d |
  e8 c~2 | d8 d~2 | \apart r4 g4_\mp \auto a | g fis e |
  e4. 8 4 | e c c | d d2 |
  r4 e8 8 8 8 | d4 2~ | 2 4(c2.) |
  d2(<c f>4)^\markup div. \section \key des \major r4 \apart c2_\p \auto | r4 \apart c2 \auto | % 5a
  r4 \apart des2 \auto | r4 \apart c2 \auto | r4 \apart c2 \auto |
  r4 \apart c2 \auto | r4 \apart des2 \auto | r4 \apart c2 \auto |
  r4 \apart c2 \auto | r4 \apart des2 \auto | r4 \apart des2 \auto | % 6a
  r4 \apart c2 \auto | r4 \apart c2 \auto | r4 \apart des2 \auto |
  r4 \apart d2 \auto | r4 \apart c2 \auto | f4. ees8 c4 \break |
  c4 des des \section \key e \major | e4. fis8 f4 | e8(cis) dis4 4 | % 7a
  dis4. 8 d4 | cis4 4 b | cis2 a4 |
  cis8 dis~2 \section \key g \major | g4. 8 a4 | g fis d |
  c4. 8 4 | 4 4 4 | d4 2 |
  r4 <c e>8^\markup div. q q <c ees> | \apart r4 d8 c~(4 | <b d>2.)\fermata |
  \bar "|."
}

altoApart = \relative {
  \global
  b'4.^\markup\italic Unis. 8 4 | 4 a g | c,4. 8 4 |
  c4 d e | d2 b4 | g'2 d4 | e2 c4 | a'8 e~2 |
  b'4. 8 4 | 4 a g | c,4. 8 4 | 4 d e |
  d2 b4 g'2 d4 | e2 c4 | a'8 e~2 |
  d4. e8 fis4 | a8(fis) gis4 f | a gis g | % 4a
  g4 e fis | g4. a8 g4 | g e d |
  e8 c~2 | d8 d~2 | \apart r4 g4_\mp \auto a | g fis e |
  e4. 8 4 | e c c | d d2 |
  r4 e8 8 8 8 | d4 2~ | 2 4(c2.) |
  d2(<c f>4)^\markup div. \section \key des \major r4 \apart c2_\p \auto | r4 \apart c2 \auto | % 5a
  r4 \apart des2 \auto | r4 \apart c2 \auto | r4 \apart c2 \auto |
  r4 \apart c2 \auto | r4 \apart des2 \auto | r4 \apart c2 \auto |
  r4 \apart c2 \auto | r4 \apart des2 \auto | r4 \apart des2 \auto | % 6a
  r4 \apart c2 \auto | r4 \apart c2 \auto | r4 \apart des2 \auto |
  r4 \apart d2 \auto | r4 \apart c2 \auto | f4. ees8 c4 \break |
  c4 des des \section \key e \major | e4. fis8 f4 | e8(cis) dis4 4 | % 7a
  dis4. 8 d4 | cis4 4 b | cis2 a4 |
  cis8 dis~2 \section \key g \major | g4. 8 a4 | g fis d |
  c4. 8 4 | 4 4 4 | d4 2 |
  r4 <c e>8^\markup div. q q <c ees> | \apart r4 d8 c~(4 | <b d>2.)\fermata |
  \bar "|."
}

wordsAlto = \lyricmode {
  \repeat unfold 43 \skip 1
  doo \markup\italic "(simile)"
}

wordsAltoMidi = \lyricmode {
  "Try " "to " re mem "ber " "the " "kind " "of " Sep tem "ber "
  "\nwhen " "life " "was " "slow " "and " "oh " "so " mel "low. " 
  "\nTry " "to " re mem "ber " "the " "kind " "of " Sep tem "ber "
  "\nwhen " "grass " "was " "green "  "and " "grain "  "was " yel "low. " 
  "\nTry " "to " re mem "ber " "the " "kind " "of " Sep tem "ber "
  "\nwhen " "you " "were " "a " ten "der " "and " cal "low " fel "low. " 
  "\nTry "    re mem "ber " "and " "if " "you " re mem "ber "
  "\nthen " fol "low " fol "low " fol "low " fol "low, " 
  "\noo "  "ah, " 
  \repeat unfold 16 "doo "
  "\nTry " "to " re mem "ber " "when " "life " "was " "so " ten "der "
  "\nthat " "love " "was " "an " em "ber " a "bout " "to " bil "low, " 
  "\nTry " "to " re mem "ber " "and " "if " "you " re mem "ber "
  "\nthen " fol "low, " fol "low " fol "low " fol "low. " 
}

dynamicsMen = {
  s2.*3 |
  s2.*5 |
  s2.\p | s | s | s |
  s2.*4 |
  s2.\mf | s | s | % 4a
  s2.*3 |
  s2.*4 |
  s2.*3 |
  s2. | s | s2 s4\mf | s2 s4\< |
  s2. | s\! | s | % 5a
  s2.*3 |
  s2.*3 |
  s2.*3 | % 6a
  s2.*3 |
  s2. | s | s\mf |
  s2 s4\< | s2.\f | s | % 7a
  s2.*3 |
  s8 s\< s2 | s2.\ff | s2 s4\dim |
  s2. | s | s\mf |
  s2.*3 |
}

tenor = \relative {
  \global
  R2.*8 |
  g4.^\markup\italic Unis. 8 fis4 | e fis g | a4. aes8 g4 | fis4 e d | % 3c
  g2 fis4 | e(b'2) a4.(aes8) g4 | fis8 8~2 |
  fis4. g8 a4 | b d d | e e e | % 4a
  d4 c c | d4. 8 4 | d c c |
  c8 a~2 | c8 c~2 | \apart r8 d^\mp ~4 \auto dis | d cis b |
  a4. gis8 a4 | a a a | b4 2 |
  r4 c8 8 8 8 | b4 c2~ | 2 b4( | a4. g8 a4) |
  bes2(ges4) \section \key des \major \apart r8 aes8-> ~2 | r8 aes~2 | % 5a
  r8 bes~2 | r8 ges~2 | r8 aes~2 |
  r8 aes~2 | r8 bes~2 | r8 ges~2 |
  r8 aes~2 | r8 aes~2 | r8 bes~2 | % 6a
  r8 ges~2 | r8 aes~2 | r8 aes~2 |
  r8 bes~2 | r8 ges~2 \auto | c4. 8 aes4 |
  f4 ges aes \section \key e \major | cis4. 8 4 a4 4 4 | % 7a
  b4. 8 4 | fis4 gis a | a2 fis4 |
  a8 8~2 \section \key g \major d4. 8 dis4 | d4 cis b |
  a4. gis8 a4 | a a a | b4 2 |
  \apart r8 g~8 8 \auto 8 a | r4 r g8 g~ | g2.\fermata |
  \bar "|."
}

wordsTenor = \lyricmode {
  \repeat unfold 41 \skip 1 Try
  \repeat unfold 20 \skip 1
  doo
  \repeat unfold 51 \skip 1
  fol -- low
}

wordsMenMidi = \lyricmode {
  "Try " "to " re mem "ber " "the " "kind " "of " Sep tem "ber "
  "\nwhen " "grass " "was " "green "      "grain "  "was " yel "low. " 
  "\nTry " "to " re mem "ber " "the " "kind " "of " Sep tem "ber "
  "\nwhen " "you " "were " "a " ten "der " "and " cal "low " fel "low. " 
  "\nTry "    re mem "ber " "and " "if " "you " re mem "ber "
  "\nthen " fol "low " fol "low " fol "low " fol "low, " 
  "\noo "  "ah, " 
  \repeat unfold 16 "doo "
  "\nTry " "to " re mem "ber " "when " "life " "was " "so " ten "der "
  "\nthat " "love " "was " "an " em "ber " a "bout " "to " bil "low, " 
  "\nTry " "to " re mem "ber " "and " "if " "you " re mem "ber "
  "\nthen " fol "low, " fol "low " fol "low " fol "low. " 
}

bass = \relative {
  \global
  s2.*8 |
  g4.^\markup\italic Unis. 8 fis4 | e fis g | a4. aes8 g4 | fis4 e d | % 3c
  g2 fis4 | e(b'2) a4.(aes8) g4 | fis8 8~2 |
  b,4. 8 4 | e e gis | a a a | % 4a
  a4 d, dis | e4. fis8 g4 | c, c e |
  f8 8~2 | g8 8~(4 fis) | g2_\mp fis4 | e e e |
  a4. gis8 4 | fis4 4 4 | g e2 \breathe |
  r4 g8 8 d d | g4 2~ | 2 \breathe 4( | d4. e8 f4) |
  ges4(ees aes,) \section \key des \major | des2.->_\p | bes | % 5a
  ees2. | aes, | des |
  bes2. | ees | aes, |
  des2. | bes | ees | % 6a
  aes,2. | des | bes |
  ees2. | aes, | f'4. 8 4 |
  bes,4 4 4 \section \key e \major | fis'4. 8 4 | b,4 4 4 | % 7a
  ees4. 8 4 | aes,4 4 c | d2 4 |
  bes8 8~2 \section \key g \major | g'4. 8 fis4 | e4 4 4 |
  a4. gis8 g4 | fis4 4 4 | g4 e2 |
  a,4. 8 d d | r4 r g8 \pcchords e(<g, d'>2.\fermata^\markup div. ) |
  \bar "|."
}

wordsBass = \lyricmode {
  \repeat unfold 41 \skip 1 Try
  \repeat unfold 20 \skip 1
  doo
  \repeat unfold 51 \skip 1
  fol -- low _ _ fol -- low. __
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \partCombine \soprano \alto
            \new NullVoice = alignerS \soprano
            \new NullVoice = alignerA \alto
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \partCombine \tenor \bass
            \new NullVoice = alignerT \tenor
            \new NullVoice = alignerB \bass
          >>
        >>
        \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSop
        \new Lyrics \with {alignBelowContext = women} \lyricsto alignerS \words
        \new Lyrics \with {alignBelowContext = women} \lyricsto alignerA \wordsAlto
        \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \wordsTenor
        \new Lyrics \with {alignBelowContext = men} \lyricsto alignerB \wordsBass
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \partCombine \soprano \alto
            \new NullVoice = alignerS \soprano
            \new NullVoice = alignerA \alto
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \partCombine \tenor \bass
            \new NullVoice = alignerT \tenor
            \new NullVoice = alignerB \bass
          >>
        >>
        \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSop
        \new Lyrics \with {alignBelowContext = women} \lyricsto alignerS \words
        \new Lyrics \with {alignBelowContext = women} \lyricsto alignerA \wordsAlto
        \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \wordsTenor
        \new Lyrics \with {alignBelowContext = men} \lyricsto alignerB \wordsBass
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sep
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \soprano
            \addlyrics \wordsSopSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsAltoSep
          >>
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \tenor
            \addlyrics \wordsTenorSep
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \bass
            \addlyrics \wordsBassSep
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \soprano
            \addlyrics \wordsSopSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsAltoSep
          >>
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \tenor
            \addlyrics \wordsTenorSep
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \bass
            \addlyrics \wordsBassSep
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-solo
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSoloMidi
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \altoApart
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsMen
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsMen
            \new Voice \bass
          >>
        >>
        \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSop
        \new Lyrics \with {alignBelowContext = women} \lyricsto alignerS \words
        \new Lyrics \with {alignBelowContext = women} \lyricsto alignerA \wordsAlto
        \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \wordsTenor
        \new Lyrics \with {alignBelowContext = men} \lyricsto alignerB \wordsBass
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

\book {
  \paper {
    output-suffix = midi-sop
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \altoApart
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsMen
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsMen
            \new Voice \bass
          >>
        >>
        \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSop
        \new Lyrics \with {alignBelowContext = women} \lyricsto alignerS \words
        \new Lyrics \with {alignBelowContext = women} \lyricsto alignerA \wordsAlto
        \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \wordsTenor
        \new Lyrics \with {alignBelowContext = men} \lyricsto alignerB \wordsBass
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

\book {
  \paper {
    output-suffix = midi-alto
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \altoApart
            \addlyrics \wordsAltoMidi
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsMen
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsMen
            \new Voice \bass
          >>
        >>
        \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSop
        \new Lyrics \with {alignBelowContext = women} \lyricsto alignerS \words
        \new Lyrics \with {alignBelowContext = women} \lyricsto alignerA \wordsAlto
        \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \wordsTenor
        \new Lyrics \with {alignBelowContext = men} \lyricsto alignerB \wordsBass
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

\book {
  \paper {
    output-suffix = midi-tenor
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \altoApart
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsMen
            \new Voice \tenor
            \addlyrics \wordsMenMidi
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsMen
            \new Voice \bass
          >>
        >>
        \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSop
        \new Lyrics \with {alignBelowContext = women} \lyricsto alignerS \words
        \new Lyrics \with {alignBelowContext = women} \lyricsto alignerA \wordsAlto
        \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \wordsTenor
        \new Lyrics \with {alignBelowContext = men} \lyricsto alignerB \wordsBass
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

\book {
  \paper {
    output-suffix = midi-bass
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \altoApart
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsMen
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsMen
            \new Voice \bass
            \addlyrics \wordsMenMidi
          >>
        >>
        \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSop
        \new Lyrics \with {alignBelowContext = women} \lyricsto alignerS \words
        \new Lyrics \with {alignBelowContext = women} \lyricsto alignerA \wordsAlto
        \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \wordsTenor
        \new Lyrics \with {alignBelowContext = men} \lyricsto alignerB \wordsBass
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
