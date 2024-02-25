\version "2.25.13"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

ffz = #(make-dynamic-script "ffz")

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My Love Dwelt in a Northern Land"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Edward Elgar"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Andrew Lang"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key a \minor
  \time 3/4
  \partial 4
}

TempoTrack = {
  \tempo 4=60
  \set Score.tempoHideNote = ##t
  \partial 4 s4
  s2.
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "1a" } s4 s2.*3
  \mark \markup { \circle "1b" } s2.*4
  \mark \markup { \circle "2a" } s2.*4
  \mark \markup { \circle "2b" } s2.*4
  \mark \markup { \circle "2c" } s2.*3 s2
  \mark \markup { \circle "3a" } s4 s2.*4
  \mark \markup { \circle "3b" } s2.*4
  \mark \markup { \circle "4a" } s2.*5
  \mark \markup { \circle "4b" } s2.*4
  \mark \markup { \circle "5a" } s2.*4
  \mark \markup { \circle "5b" } s2.*4
  \mark \markup { \circle "6a" } s2.*4 s2
  \mark \markup { \circle "6b" } s4 s2.*3
  \mark \markup { \circle "7a" } s2.*3
  \mark \markup { \circle "7b" } s2.*4
  \mark \markup { \circle "8a" } s2.*5
  \mark \markup { \circle "8b" } s2.*4 s2
}

soprano = \relative {
  \autoBeamOff
  \global
  a'4^\p^\markup\italic "Moderato"
  a4.^\markup\italic legato. g8 e f
  c8 d e e^\< fis gis\!
  a8 c b fis b b
  d4^\markup\italic rit. (c8\fermata) e,8^\pp^\markup\italic "a tempo" e e % 1b
  e'4.\( d8 b d
         c4. b8 gis b
         a4.\) a8 g f
  e8(^\<^\markup\italic rit. e' d)\! c f, a % 2a
  a8.^\> gis16 4.\! a8^\p^\markup\italic "a tempo"
  a4. g8^\markup\italic legato. e f
  c8 d e gis^\<\( a b\!
                  c8 e d a\) c8.^\dim b16^\markup\italic rit. % 2b
  c4^\>(c8\!\fermata) e,8\omit\pp^\markup\italic {\dynamic pp a tempo} e e
  e'4.\( d8 b d\)
  c4. c8^-^\< c^- c^-\!
  << {\voiceOne g'4. f8 d\dim f} \new Voice {\autoBeamOff \voiceTwo c4(b8) b d\dim b} >> % 2c
  << {\voiceOne e8} \new Voice {\autoBeamOff \voiceTwo c8 } >> e8^\p\(^\markup\italic rit. d^\> c\! f,8.\) a16 \oneVoice
  a2^\markup\italic rit. ^\> gis4\!
  a4\fermata ~ 8 r \bar "||" \key d \minor \partial 4 \break c4^\pp^\markup\smallCaps Soprano.
  c2^\markup\italic dolcissimo. \( d4
                                   e4^>(f4)\! d
                                   c8^- a^- c2 \) ^\> ~
  c2\! 4
  c2 \( d4 % 3b
        e4^\>(f)\! d
        cis8^-a^- cis2^\>(
        d2\!) \) d8^\< (g)
  g4.^\mf(f8) e8^\dim(c)% 4a
  g2 4^\p
  e'4.(d8) c(a)
  e2 e8.^\pp(c'16)
  c2.^\< ~
  c2.^\> ~ % 4b
  c2^\pp d4 \( e4^\>(f\!) d
               c8^- a^- c2 \) ^\> ~
  c2\! 4 % 5a
  c2 d4
  e4^\>(f) d
  cis8^- a^- cis2^\>(
  d2)^\> d8(g) ^\< % 5b
  g4.\f f8 \tuplet 3/2 {e8 [ _(c) ] g }
  g8. fis16 f4^\dim g
  a2.^\markup\italic rit. ^\> ~
  a2\! a4^\pp % 6a
  a2^\markup\italic "Tempo, poco lento" \( b4
                                           cis4 d b \)
  gis8^\markup\italic rall. (fis) e2~
  e2\fermata \bar "||" \key a \minor \partial 4 a4^\p ^\markup\italic "Tempo 1mo. legato."
  a4. g8 e f % 6b
  c8 d e f^\p^\< fis gis\!
  a8( [ c b ] ) fis^\<b b\!
  d4^\markup\italic rit. ^\> ( c8\fermata \! ) e,8^\pp^\markup\italic "a tempo." e e % 7a
  e'4. \( d8 b d
          c4. \) c8^-^\< c^- c^-\!
  << {\vo g'4.^\f f8 d g} \new Voice {\vt \autoBeamOff c,4(b8) b d b} >> % 7b
  \ov <c e>2^\dim a4^\pp
  a2^\markup\italic "molto espress." \( b4
                                        b4^\> (c)\! b
                                        a8 f \) a2~ ^\> % 8a
  a2 \~ a8.^\< [ e'16 ] \!
  e2\omit\sfz\omit\p^\markup { \dynamic sfz \dynamic p } ^\> d4\!
  c8^-^\markup\italic "poco rit." a^- a4 gis
  a4.^\markup\italic "Tempo, più lento" r8 r4
  R2. % 8b
  e'4.^>^\pp^\markup\italic "mezza voce." d8^\< b c\!
  f,2^\markup\italic "molto rall." ^\> g4\!
  a2.~^\ppp
  a2\fermata
  \bar "|."
}

wordsSop = \lyricmode {
  My love dwelt in a North -- ern land,
  A dim tower in a fo -- rest green
  Was his __ and far a -- way the sand
  And gray wash of the waves were seen
  The wo -- ven fo -- rest -- boughs be -- tween:
  And thro' the North -- ern sum -- mer night
  The sun -- set slow -- ly, slow -- ly died a -- way, __
  And herds of strange deer, sil -- ver white,
  Came gleam -- ing through__ the for -- est gray,
  And fled like ghosts be -- fore the day. __

  And oft, that month, __ we watch'd the moon __
  Wax great and white __ o'er wood and lawn, __
  And oft, that month, __ we watch'd the moon __
  Wax great and white __ o'er wood and lawn, __
  And wane, with wan -- ing of the June, __
  Till, like a brand for bat -- tle drawn,
  She fell, she fell, and flamed in a wild dawn. __
 
  I know not if the fo -- rest green
  Still gir -- dles round __ that cas -- tle gray, __
  I know not if the boughs be -- tween
  The white deer van -- ish ere the day:
  The grass a -- bove __ my love is green, __
  His heart is cold -- er than the clay,
  cold -- er, cold -- er than the clay.
}

wordsSopMidi = \lyricmode {
  "My " "love " "dwelt " "in " "a " North "ern " "land, "
  "\nA " "dim " "tower " "in " "a " fo "rest " "green "
  "\nWas " "his "  "and " "far " a "way " "the " "sand "
  "\nAnd " "gray " "wash " "of " "the " "waves " "were " "seen "
  "\nThe " wo "ven " fo rest "boughs " be "tween: "
  "\nAnd " "thro' " "the " North "ern " sum "mer " "night "
  "\nThe " sun "set " slow "ly, " slow "ly " "died " a "way, " 
  "\nAnd " "herds " "of " "strange " "deer, " sil "ver " "white, "
  "\nCame " gleam "ing " "through__ " "the " for "est " "gray, "
  "\nAnd " "fled " "like " "ghosts " be "fore " "the " "day.\n" 

  "\nAnd " "oft, " "that " "month, "  "we " "watch'd " "the " "moon " 
  "\nWax " "great " "and " "white "  "o'er " "wood " "and " "lawn, " 
  "\nAnd " "oft, " "that " "month, "  "we " "watch'd " "the " "moon " 
  "\nWax " "great " "and " "white "  "o'er " "wood " "and " "lawn, " 
  "\nAnd " "wane, " "with " wan "ing " "of " "the " "June, " 
  "\nTill, " "like " "a " "brand " "for " bat "tle " "drawn, "
  "\nShe " "fell, " "she " "fell, " "and " "flamed " "in " "a " "wild " "dawn.\n" 
 
  "\nI " "know " "not " "if " "the " fo "rest " "green "
  "\nStill " gir "dles " "round "  "that " cas "tle " "gray, " 
  "\nI " "know " "not " "if " "the " "boughs " be "tween "
  "\nThe " "white " "deer " van "ish " "ere " "the " "day: "
  "\nThe " "grass " a "bove "  "my " "love " "is " "green, " 
  "\nHis " "heart " "is " cold "er " "than " "the " "clay, "
  "\ncold" "er, " cold "er " "than " "the " "clay. "
}

alto = \relative {
  \global
  \autoBeamOff
  a'4^\p
  a4.^\markup\italic legato. g8 e f
  c8 d e2~
  e8 e dis4 e8 e
  f4^\markup\italic rit.  ^\> (e8)\fermata c^\pp c^\markup\italic "a tempo" c % 1b
  c'4. \( b8 gis b
          a4(e8) d b d
          c4. \) e8 e c
  c8^\markup\italic rit. ^\< (e4)\! e8 f f % 2a
  f8.^\> e16 4.\! a8^\p^\markup\italic "a tempo"
  a4. g8^\markup\italic legato. e8 f
  c8 d e2~
  e8  e a a g8.^\dim f16^\markup\italic rit. % 2b
  f4(^\> e8)\!\fermata e\omit\pp^\markup\italic{\dynamic pp a tempo} e d
  c8 e e2~
  e8  e e e_-^\< f_- fis_-\!
  g4.^\f g8^\dim d d % 2c
  g8 e\omit\p^\markup\italic {\dynamic p rit.} e^\> e\! f8. 16
  f4^\markup\italic rit. ^\> (e) e\!
  e4\fermata ~8 r \bar "||" \key d \minor\partial 4 e4^\ppp^\markup\smallCaps Alto.
  f8^. ^\markup\italic leggiero. ^\( <f a>^. q4^. q^. \) % 3a
  <f a>8^. ^\( q^. q4^. q^. \)
  <f a>8^. ^\( q^. q4^. q^. \)
  q8^. ^\( <c f>^. <f a>4^. q^. \)
  q8^. ^\( q^. q4^. q^. \) % 3b
  q8^. ^\( q^. q4^. q^. \)
  q8^. ^\( q^. q4^. \) q^-^\<
  <d a'>8^\>^- q^- q4^-\! <d g>^\<
  << {\voiceOne a'2^\mf} \new Voice {\autoBeamOff \voiceTwo c,4(g')} >> \oneVoice g^\dim % 4a
  g2 f4^\p
  e2 4
  e2 d4^\pp
  c8-. \( <c e>-.^\< q4-. q-.\! \)
  q8-.^\> \( q-. q4-.\! \) <e g>--^\< % 4b
  f8-.^\ppp \( <f a>-. q4-. q-. \)
  q8-. \( q-. q4-. q-. \)
  q8-. \( q-. q4-. q-.^\< \)
  q8-.^\> \( <a f> <f a>4-.\! q-. \) % 5a
  q8-. \( q-. q4-. q-. \)
  q8-. \( q-. q4-. q-. \)
  q8-. \( q-. q4-. q-. \)
  <d a'>8-.\! \( q-. q4-. \) g4--^\< % 5b
  g4.^\f 8 8. e16
  e8.^\sf 16 4-!^\dim 4
  e2^\markup\italic rit. r4
  dis4^\p ~ 8 r dis4^\pp % 6a
  e4^\markup\italic "Tempo, poco lento." ^\( (a) a
                                            a4 a fis \)
  d4^\markup\italic rall. d2 ~
  d2\fermata \key c \major a'4^\p
  a4.^\markup\italic legato. g8 e f % 6b
  c8 d e4. 8
  e8 e dis dis^\< e e\!
  f4^\markup\italic rit. ^\> (e8\fermata\!) c^\pp^\markup\italic "a tempo." c c % 7a
  c'4. \( b8 gis b
          a4. \) e8--^\< f-- fis--\!
  g4.^\f 8 8 8 % 7b
  g4^\dim (gis) a^\ppp
  f8-. \( f-. f4-. f-. \)
  e8-. \( e-. e4-. d-. \)
  c8-. \( c-. c4-. c-. \) % 8a
  e8-. \( e-. e4-. \) a4^\<
  a2^\ffz^\p^\> a4\!
  <e a>8--^\markup\italic "poco rit." <c e> q4 <b d>
  c4. r8 r4
  a'4.->^\pp^\markup\italic "mezza voce" g8 e f % 8b
  c8(d) e4.^\< 8\!
  f2^\>^\markup\italic "molta rall." 4\!
  e2.^\ppp ~
  e2\fermata
  \bar "|."
}

wordsAlto = \lyricmode {
  My love dwelt in a North -- ern land,
  A dim tower
  Was his __ and far a -- way the sand
  And gray wash of the waves were seen % 1b+++
  The wo -- ven fo -- rest -- boughs be -- tween:
  And thro' the North -- ern sum -- mer night % 2a end
  The sun -- set died a -- way, __
  And herds of strange deer, sil -- ver white,
  Came gleam -- ing through__ the for -- est gray,
  And fled like ghosts be -- fore the day. __ % 2c end

  And oft, that month, we watch'd the moon,
  And oft, that month, we watch'd the moon % 3a++++
  Wax great and white o'er wood and lawn,
  Wax great and white o'er wood and lawn, % 3b+++
  And oft, that month, __ we watch'd the moon __
  And oft, that month, __ we watch'd the moon __
  Wax great and white __ o'er wood and lawn, __  %4b
  wax great and white __ o'er wood and lawn, __
  And wane, with wan -- ing of the June, __ % 5a
  And wane, with wan -- ing of the June, __
  Till, like a brand for bat -- tle drawn, % 5b
  She fell, fell, she fell, and flamed in a wild dawn. __
 
  I know not if the fo -- rest green
  Still gir -- dles round __ that cas -- tle gray, __
  I know not if the boughs be -- tween
  The white deer van -- ish ere the day: % 7b+
  The grass a -- bove __ my love is green, __
  The grass a -- bove __ my love is green, __
  His heart is cold -- er than the clay,
  cold -- er than the clay,
  cold -- er than the clay. __
}

wordsAltoMidi = \lyricmode {
  "My " "love " "dwelt " "in " "a " North "ern " "land, "
  "\nA " "dim " "tower "
  "\nWas " "his "  "and " "far " a "way " "the " "sand "
  "\nAnd " "gray " "wash " "of " "the " "waves " "were " "seen " % 1b+++
  "\nThe " wo "ven " fo rest "boughs " be "tween: "
  "\nAnd " "thro' " "the " North "ern " sum "mer " "night " % 2a end
  "\nThe " sun "set " "died " a "way, " 
  "\nAnd " "herds " "of " "strange " "deer, " sil "ver " "white, "
  "\nCame " gleam "ing " "through__ " "the " for "est " "gray, "
  "\nAnd " "fled " "like " "ghosts " be "fore " "the " "day.\n"  % 2c end

  "\nAnd " "oft, " "that " "month, " "we " "watch'd " "the " "moon, "
  "\nAnd " "oft, " "that " "month, " "we " "watch'd " "the " "moon " % 3a++++
  "\nWax " "great " "and " "white " "o'er " "wood " "and " "lawn, "
  "\nWax " "great " "and " "white " "o'er " "wood " "and " "lawn, " % 3b+++
  "\nAnd " "oft, " "that " "month, "  "we " "watch'd " "the " "moon " 
  "\nAnd " "oft, " "that " "month, "  "we " "watch'd " "the " "moon " 
  "\nWax " "great " "and " "white "  "o'er " "wood " "and " "lawn, "   %4b
  "\nwax " "great " "and " "white "  "o'er " "wood " "and " "lawn, " 
  "\nAnd " "wane, " "with " wan "ing " "of " "the " "June, "  % 5a
  "\nAnd " "wane, " "with " wan "ing " "of " "the " "June, " 
  "\nTill, " "like " "a " "brand " "for " bat "tle " "drawn, " % 5b
  "\nShe " "fell, " "fell, " "she " "fell, " "and " "flamed " "in " "a " "wild " "dawn.\n" 
 
  "\nI " "know " "not " "if " "the " fo "rest " "green "
  "\nStill " gir "dles " "round "  "that " cas "tle " "gray, " 
  "\nI " "know " "not " "if " "the " "boughs " be "tween "
  "\nThe " "white " "deer " van "ish " "ere " "the " "day: " % 7b+
  "\nThe " "grass " a "bove "  "my " "love " "is " "green, " 
  "\nThe " "grass " a "bove "  "my " "love " "is " "green, " 
  "\nHis " "heart " "is " cold "er " "than " "the " "clay, "
  "\ncold" "er " "than " "the " "clay, "
  "\ncold" "er " "than " "the " "clay. " 
}

tenor = \relative {
  \global
  a4^\p
  a4.^\markup\italic legato. g8 e f
  c8 d e gis^\< ^\( a b \!
                    c8 a fis a gis \) gis
  a4^\markup\italic rit. ^\> ~ 8\fermata \! r8 r4^\markup\italic "a tempo" % 1b
  r8^\pp e e'2^^~
  e8 e, e'2^^~
  e8 e, e' c b a
  g8^\markup\italic rit. ^\< ( gis a)\! a a b % 2a
  b8.^\> 16 4.\! a8^\p^\markup\italic "a tempo"
  a4. g8^\markup\italic legato e f
  c8 d e e^\< fis gis
  a8\! c a d e8.^\dim d16^\markup\italic rit. % 2b
  d4^\>( c8\!)\fermata c \omit\pp^\markup\italic { \dynamic pp a tempo} c b
  a8(c4) b8 gis b
  a4. c8^-^\< c^- d^-\!
  e4^\f(d8) d^\dim b d % 2c
  c8 gis^\omit\p^\markup\italic { \dynamic p rit.} a^\> a\! a8. b16
  b4(^\markup\italic rit. ^\> c) b\!
  c4\fermata ~ 8 r \bar "||" \key d \minor \break s4

  s2.*29 % separate tenor lines
  
  s2 \break \key a \minor a4^\p^\markup\smallCaps "1st & 2nd Tenors." % 6b-
  a4.^\markup\italic legato. g8 e f % 6b
  c8 d e gis^\p^\< a b\!
  c8(a fis) a8^\< gis gis\!
  a4^\markup\italic rit. ^\> ~ a8\fermata r^\markup\italic "a tempo" r4 % 7a
  r8 e^\pp e'2^^ ~
  e8 e, e' c^-^\< c^- d^-\!
  e4^\f(d8) d b d % 7b
  c4^\dim (gis) a^\ppp
  a8_. \( a_. a4_. a_. \)
  gis8_. \( gis_. gis4_. gis_. \)
  a8_. \( a_. a4_. a_. \) % 8a
  a8_. \( a_. a4_. \) e'^\<
  f2\omit^\sfz\omit^\p^\markup {\dynamic fz \dynamic p}^\> f4\!
  e4^\markup\italic "poco rit." r4 r
  a,4._>^\pp^\markup\italic "mezza voce." g8 e f
  c8 d e4(c'8) a % 8b
  a8(b c) b^\< gis a
  a2\!^\markup\italic "molto rall." b4
  cis2.^\ppp ~
  cis2^\fermata
}

wordsTenor = \lyricmode {
  My love dwelt in a North -- ern land,
  A dim tower in a fo -- rest green 
  Was his __ and far a -- way the waves were seen
  The wo -- ven fo -- rest -- boughs be -- tween:
  And thro' the North -- ern sum -- mer night
  The sun -- set slow -- ly, slow -- ly died a -- way, __
  And herds of strange deer, sil -- ver white,
  Came gleam -- ing through__ the for -- est gray,
  And fled like ghosts be -- fore the day. __
                                % 1st and 2nd tenor lines elsewhere
  I know not if the for -- est green
  Still gir -- dles round __ that cas -- tle gray, __
  I know __ not if the white deer van -- ush ere the day: __
  The grass a -- bove my love is green,
  The grass a -- bove my lovem is green,
  His heart is cold, cold -- er than the clay,
  His heart __ is cold -- er, cold -- er than the clay. __
}

tenorOne = \relative {
  s4 s2.*18 s2
  \key d \minor
  c'4^\pp % 3a
  c2^\markup\italic dolcissimo.  \( d4
        e4^\> (f))\! d
        c8-- a-- c2\! \) ~
  c2\~ c4--
  c2 \( d4 % 3b
        e4^\> (f)\! d
        cis8-- a-- cis2^\>(
        d2\!) \) b4^\<
  c4^\mf(b) c^\dim % 4a
  d4^\> (c) b^\p
  c4(gis) a
  b4^\> (a) gis^\pp
  a8-. \( a-.^\< a4-. a-. \)
  g8-.^\> \( g-. g4-.\! \) c4--^\< % 4b
  c2^\pp \( d4
            e4^\> (f\!) d
            c8-- a-. c2^\> ~ \)
  c2\! c4 % 5a
  c2 d4
  e4^\> (f)\! d
  cis8-- a-- cis2^\> (
  d2) b4--^\< % 5b
  c4^\f(bes8) bes c8. 16
  c8.^\sf 16 c4^\dim c
  c2^\markup\italic rit. r4
  b4^\p(b8) r b4^\pp % 6a
  cis2^\markup\italic "Tempo, poco lento." \( d4
          e4 fis d \)
  b8^\markup\italic rall. (a) gis2~
  gis2\fermata \bar "||" \key c \major
  s1*10
%  \bar "|."
}

wordsTenorOne = \lyricmode {
  And oft, that month __ we watch'd the moon __
  Wax great and white __ o'er wood and lawn,
  And oft, that month, we watch'd the moon,
  And oft, that month __ we watch'd the moon
  Wax great and white __ o'er wood and lawn,
  And wane, with wan -- ing of the June, __
  Till, like __ a brand for bat -- tle drawn,
  She fell, fell, __ she fell, and flamed in a wild dawn. __
}

wordsMidiTenorJoint = \lyricmode {
  "My " "love " "dwelt " "in " "a " North "ern " "land, "
  "\nA " "dim " "tower " "in " "a " fo "rest " "green " 
  "\nWas " "his "  "and " "far " a "way " "the " "waves " "were " "seen "
  "\nThe " wo "ven " fo rest "boughs " be "tween: "
  "\nAnd " "thro' " "the " North "ern " sum "mer " "night "
  "\nThe " sun "set " slow "ly, " slow "ly " "died " a "way, " 
  "\nAnd " "herds " "of " "strange " "deer, " sil "ver " "white, "
  "\nCame " gleam "ing " "through__ " "the " for "est " "gray, "
  "\nAnd " "fled " "like " "ghosts " be "fore " "the " "day.\n" 

% two parts

  "\nI " "know " "not " "if " "the " for "est " "green "
  "\nStill " gir "dles " "round "  "that " cas "tle " "gray, " 
  "\nI " "know "  "not " "if " "the " "white " "deer " van "ush " "ere " "the " "day: " 
  "\nThe " "grass " a "bove " "my " "love " "is " "green, "
  "\nThe " "grass " a "bove " "my " "love " "is " "green, "
  "\nHis " "heart " "is " "cold, " cold "er " "than " "the " "clay, "
  "\nHis " "heart "  "is " cold "er, " cold "er " "than " "the " "clay. " 
}

wordsMidiTenorOne = \lyricmode {

  % joint

  "\nAnd " "oft, " "that " "month "  "we " "watch'd " "the " "moon " 
  "\nWax " "great " "and " "white "  "o'er " "wood " "and " "lawn, "
  "\nAnd " "oft, " "that " "month, " "we " "watch'd " "the " "moon, "
  "\nAnd " "oft, " "that " "month "  "we " "watch'd " "the " "moon "
  "\nWax " "great " "and " "white "  "o'er " "wood " "and " "lawn, "
  "\nAnd " "wane, " "with " wan "ing " "of " "the " "June, " 
  "\nTill, " "like "  "a " "brand " "for " bat "tle " "drawn, "
  "\nShe " "fell, " "fell, "  "she " "fell, " "and " "flamed " "in " "a " "wild\n"

  % joint

}

tenorTwo = \relative {
  \global
  s4 s2.*18 s2 \key d \minor
  b4^\pp
  a8-.^\markup\italic leggiero \( a-. a4-. a-. \) % 3a
  a8-. \( a-. a4-. a-. \)
  a8-. \(  a-. a4-. \) c4--^\<
  c8--^\> a-- c4--\! a-.
  a8-. \( a-. a4-. a-. \) % 3b
  a8-. \( a-. a4-. a-. \)
  a8-. \( a-. a4-. \) a--^\<
  a8--^\> a--  a4--\! b4^\<
  c4^\mf (b) c^\dim % 4a
  d4^\> (c) b^\p
  c4(gis) a
  b4^\> (a) gis^\pp
  a8-. \( a-.^\< a4-. a-.\! \)
  bes8-.^\> \( 8-. 4-. \) bes4--^\< % 4b
  a8-.^\ppp \( 8-. 4-. 4-. \)
  a8-. \( 8-. 4-. 4-. \)
  a8-. \( 8-. 4-. \) c--^\<
  c8--^\> a-- c4--\! a-. % 5a
  a8-. \( a-. 4-. 4-. \)
  a8-. \( a-. 4-. 4-. \)
  a8-. a-. 4-. 4-.
  a8-. \( 8-. 4-. \) b--^\< % 5b
  c4^\f(b8) b c8. 16
  c8.^\sf 16 c4-!^\dim c
  c2^\markup\italic rit. r4
  b4^\p~8 r b4^\pp % 6a
  cis2^\markup\italic "Tempo. poco lento" \( d4
                                             e4 fis d \)
  b8^\markup\italic rall. (a) gis2~
  gis2\fermata \key c \major 
  s4
  \bar "|."
}

wordsTenorTwo = \lyricmode {
  % 3a
  And oft, that month, we watch'd the moon,
  And oft, that month, we watch'd the moon
  % 3b
  Wax great and white o'er wood and lawn,
  Wax great and white o'er wood and lawn,
  % 4a
  And oft, __ that month, __ we watch'd the moon __
  And oft, __ that month, __ we watch'd the moon __
  % 4b
  Wax great and white __ o'er wood and lawn, __
  wax great and white __ o'er wood and lawn, __
  % 5a
  And wane, with wan -- ing of the June, __
  And wane, with wan -- ing of the June, __
  % 5b
  Till, like a brand for bat -- tle drawn,
  She fell, fell she fell, and flamed in a wild dawn.
  in a wild dawn.
}

wordsMidiTenorTwo = \lyricmode {

  % joint words

  "\nAnd " "oft, " "that " "month, " "we " "watch'd " "the " "moon, "
  "\nAnd " "oft, " "that " "month, " "we " "watch'd " "the " "moon "
  "\nWax " "great " "and " "white " "o'er " "wood " "and " "lawn, "
  "\nWax " "great " "and " "white " "o'er " "wood " "and " "lawn, "
  "\nAnd " "oft, "  "that " "month, "  "we " "watch'd " "the " "moon " 
  "\nAnd " "oft, "  "that " "month, "  "we " "watch'd " "the " "moon " 
  "\nWax " "great " "and " "white "  "o'er " "wood " "and " "lawn, " 
  "\nwax " "great " "and " "white "  "o'er " "wood " "and " "lawn, " 
  "\nAnd " "wane, " "with " wan "ing " "of " "the " "June, " 
  "\nAnd " "wane, " "with " wan "ing " "of " "the " "June, " 
  "\nTill, " "like " "a " "brand " "for " bat "tle " "drawn, "
  "\nShe " "fell, " "fell " "she " "fell, "
  "and " "flamed " "in " "a " "wild " "dawn.\n"

                                % joint
  
}

bass = \relative {
  \global
  a4^\p
  a4.^\markup\italic legato. g8 e f
  c8 d e2~ |
  e4. 8 8 8
  d4^\markup\italic rit. ^\>(a8\fermata) r8 r4^\markup\italic "a tempo" % 1b
  r8 a^\pp a2-^~
  a8 8 2-^~
  a8 8 8 a' e f
  c8^\markup\italic rit. ^\< (b a\!) a d d % 2a
  d8.^\> e16 4.\! a8^\p^\markup\italic "a tempo"
  a4.  g8^\markup\italic legato. e f
  c8 d e2~
  e8 8 f8 8 g8.^\dim g16^\markup\italic rit. % 2b
  <c, g'>4^\> ~q\fermata\! r8 r^\markup\italic "a tempo"
  r8 <a e'>8^\pp 2~
  q8 q q a'--^\< a-- a--
  g4^\mf (g,8) <g g'>8 q^\dim q % 2c
  c8 b\omit\p^\markup\italic { \dynamic p rit.} a^\> a\! d8. 16
  d4^\>^\markup\italic rit. (e) e\!
  a,4\fermata ~8 r \bar "||" \key d \minor \break s4

  s2.*29

  s2 \key c \major a'4^\p^\markup\smallCaps "1st & 2nd basses" % 6b
  a4.^\markup\italic legato, g8 e f
  c8 d e4. 8
  e8 8 8 8^\< 8 8\!
  d4^\<^\markup\italic rit. (a8\fermata \!) r8^\markup\italic "a tempo" r4 % 7a
  r8 a^\pp a2-^~
  a8 8 8 a'--^\< a-- a--\!
  <<            {\voiceOne g4.^\f          8 8 8 | g4^\dim (gis) a^\ppp }
     \new Voice {\autoBeamOff \voiceTwo g4\omit\f (g,8) g g g | c2\omit\dim 4\omit\ppp } >> \oneVoice
  d8-. \( d-. d4-. d-. \) % 7b+
  e8-. \( 8-. 4-. 4-. \)
  f8-. \( 8-. 4-. 4-. \) % 8a
  c8-. \( 8-. 4-. \) c'^\<
  b4^\fz^\p^\> (b,) b\!
  e8--^\markup\italic "poco rit." e-. e4 e
  a,2.^\pp^\markup\italic "mezza voce" ~
  a2.~ % 8b
  a4. r8 r4
  d2^\markup\italic "molto rall." ^\> 4
  <a e'>2.^\ppp ~
  q2\fermata
  \bar "|."
}

wordsBass = \lyricmode {
  My love dwelt in a North -- ern land, __
  a north -- ern land, __
  and far a -- way the waves were seen
  The wo -- ven fo -- rest -- boughs be -- tween:
  And thro' the North -- ern sum -- mer night
  The sun -- set died a -- way, __
  And herds of deer,
  Came gleam -- ing through __ the for -- est gray,
  And fled like ghosts be -- fore the day. __
                                % 1st and 2nd bass lines elsewhere
  I know not if the for -- est green
  Still gir -- dles round __ that cas -- tle gray, __
  I know __ not if the white deer van -- ish ere the day: __
  The grass a -- bove my love is green,
  The grass a -- bove my love is green,
  His heart is cold -- er than the clay,
  than the clay. __
}

bassOne = \relative {
  s4 s2.*18 s2
  \key d \minor
  c4^\ppp^\markup\smallCaps "1st Bass."
  c8-.^\markup\italic leggiero \( f-. f4-. f-. \) % 3a
  f8-. \( f-. f4-. f-. \)
  f8-. \( f-. f4-. f-. \)
  f8-. \( f-. f4-. f-. \)
  f8-. \( f-. f4-. f-. \) % 3b
  f8-. \( f-. f4-. f-. \)
  f8-. \( f-. f4-. f-. \)
  f8-. \( f-. f4-. f--^\< \)
  e4^\mf(d) c^\dim % 4a
  f4^\>(e) d^\p
  c4(bis) a
  d4^\>(c) b^\pp
  a2 r4
  r4 r c--^\< % 4b
  c8^\ppp \( f-. f4-. f-. \)
  f8-. \( f-. f4-. f-. \)
  f8-. \( f-. f4-. f-. \)
  f8-. \( f-. f4-. f-. \) % 5a
  f8-. \( f-. f4-. f-. \)
  f8-. \( f-. f4-. f-. \)
  f8-. \( f-. f4-. f-. \)
  f8-. \( f-. f4-. f--^\< \) % 5b
  e4^\f(d8) g, c8. b16
  a8.^\sf a'16 a4-! g^\dim
  fis2^\markup\italic rit. r4
  fis4^\p ~ 8 r b,4^\ppp % 6a
  e8-.^\markup\italic "Tempo, poco lento." \( 8-. 4-. 4-. \)
  e8-. \( 8-. 4-. 4-. \)
  e2^\markup\italic rall. 4
  e2\fermata \bar "||" \key c \major s4
  \bar "|."
}

wordsBassOne = \lyricmode {
  And oft, that month, we watch'd the moon,
  and oft, that month, we watch'd the moon,
  Wax great and white o'er wood and lawn,
  wax great and white o'er wood and lawn,
  And oft, that month, we watch'd, we watch'd the moon
  Wax great and white o'er wood and lawn,
  wax great and white o'er wood and lawn,
  And wane, with wan -- ing of the June,
  And wane, with wan -- ing of the June,
  Till, like __ a brand for bat -- tle drawn,
  She fell, fell, she fell, and flamed in a wild dawn,
  in a wild dawn.
}

wordsMidiBassOne = \lyricmode {

  % joint

  "\nAnd " "oft, " "that " "month, " "we " "watch'd " "the " "moon, "
  "\nand " "oft, " "that " "month, " "we " "watch'd " "the " "moon, "
  "\nWax " "great " "and " "white " "o'er " "wood " "and " "lawn, "
  "\nwax " "great " "and " "white " "o'er " "wood " "and " "lawn, "
  "\nAnd " "oft, " "that " "month, " "we " "watch'd, " "we " "watch'd " "the " "moon "
  "\nWax " "great " "and " "white " "o'er " "wood " "and " "lawn, "
  "\nwax " "great " "and " "white " "o'er " "wood " "and " "lawn, "
  "\nAnd " "wane, " "with " wan "ing " "of " "the " "June, "
  "\nAnd " "wane, " "with " wan "ing " "of " "the " "June, "
  "\nTill, " "like "  "a " "brand " "for " bat "tle " "drawn, "
  "\nShe " "fell, " "fell, " "she " "fell, " "and " "flamed " "in " "a " "wild " "dawn, "
  "\nin " "a " "wild " "dawn.\n"

% joint
}

wordsMidiBassJoint = \lyricmode {
  "My " "love " "dwelt " "in " "a " North "ern " "land, "
  "\na " north "ern " "land, "
  "\nand " "far " a "way " "the " "waves " "were " "seen "
  "\nThe " wo "ven " fo rest "boughs " be "tween: "
  "\nAnd " "thro' " "the " North "ern " sum "mer " "night "
  "\nThe " sun "set " "died " a "way, " 
  "\nAnd " "herds " "of " "deer, "
  "\nCame " gleam "ing " "through__ " "the " for "est " "gray, "
  "\nAnd " "fled " "like " "ghosts " be "fore " "the " "day.\n" 

% separate bits

  "\nI " "know " "not " "if " "the " for "est " "green "
  "\nStill " gir "dles " "round "  "that " cas "tle " "gray, " 
  "\nI " "know "  "not " "if " "the " "white " "deer " van "ish " "ere " "the " "day: " 
  "\nThe " "grass " a "bove " "my " "love " "is " "green, "
  "\nThe " "grass " a "bove " "my " "love " "is " "green, "
  "\nHis " "heart " "is " cold "er " "than " "the " "clay, "
  "\nthan " "the " "clay. " 
}

bassTwo = \relative {
  s4 s2.*18 s2
  \key d \minor
  g,4^\ppp^\markup\smallCaps "2nd Bass."
  f2.~ % 3a
  f2 4
  f2 4
  f8 8 2~
  f2.~ % 3b
  f2 4
  f2 4
  f8 8 4 f'4--^\<
  e4^\mf (d) c^\dim % 4a
  f4^\> (e) d^\p
  c4(b) a
  d4^\> (c) b4^\pp
  a2 r4
  r4 r c--^\< % 4b
  f,2.^\ppp ~
  f2 4
  f2 4
  f8 8 2~ % 5a
  f2.~
  f2 4
  f2 4
  f8-. \( 8-. 4-. \) f'--^\< % 5b
  e4^\f (d8) g, c8. b16
  a8.^\sf a'16 a4-! g^\dim
  fis2^\markup\italic rit. r4
  fis4^\p ~ 8 r b,4^\ppp % 6a
  e8-.^\markup\italic "Tempo, poco lento." \( 8-. 4-. 4-. \)
  e8-. \( 8-. 4-. 4-. \)
  e2^\markup\italic rall. 4
  e2\fermata \bar "||" \key c \major s4
}

wordsBassTwo = \lyricmode {
  And oft, that month, we watch'd the moon __
  Wax great o'er wood and lawn,
  And oft, that month, we watch'd, we watch'd the moon
  Wax great __ and white o'er wood and lawn, __
  And wane, with wan -- ing June,
  Till, like __ a brand for bat -- tle drawn,
  She fell, fell, and flamed in a wild dawn,
  in a wild dawn.
}

wordsMidiBassTwo = \lyricmode {

  % joint

  "\nAnd " "oft, " "that " "month, " "we " "watch'd " "the " "moon " 
  "\nWax " "great " "o'er " "wood " "and " "lawn, "
  "\nAnd " "oft, " "that " "month, " "we " "watch'd, " "we " "watch'd " "the " "moon "
  "\nWax " "great "  "and " "white " "o'er " "wood " "and " "lawn, " 
  "\nAnd " "wane, " "with " wan "ing " "June, "
  "\nTill, " "like "  "a " "brand " "for " bat "tle " "drawn, "
  "\nShe " "fell, " "fell, " "she " "fell, "
  "\nand " "flamed " "in " "a " "wild " "dawn, "
  "\nin " "a " "wild " "dawn.\n"
  
                                % joint
  
}

pianoRHone = \relative {
  \autoBeamOff
  \global
  a'4^\omit\p^\markup\italic "Moderato"
  a4.^\markup\italic legato. g8 e f
  c8 d e e^\omit\< fis gis\!
  a8 c b fis b b
  d4^\markup\italic rit. (c8\fermata) e,8^\omit\pp^\markup\italic "a tempo" e e % 1b
  e'4.\( d8 b d
         c4. b8 gis b
         a4.\) a8 g f
  e8(^\omit\<^\markup\italic rit. e' d)\! c f, a % 2a
  a8.^\omit\> gis16 4.\! a8^\omit\p^\markup\italic "a tempo"
  a4. g8^\markup\italic legato. e f
  c8 d e gis^\omit\<\( a b\!
                  c8 e d a\) c8.^\omit\dim b16^\markup\italic rit. % 2b
  c4^\omit\>(c8\!\fermata) e,8\omit\pp^\markup\italic {\dynamic pp a tempo} e e
  e'4.\( d8 b d\)
  c4. c8^-^\omit\< c^- c^-\!
  << {\voiceOne g'4. f8 d\omit\dim f} \new Voice { \autoBeamOff \voiceTwo c4(b8) b d\omit\dim b} >> % 2c
  << {\voiceOne e8} \new Voice {\autoBeamOff \voiceTwo c8 } >> e8^\omit\p\(^\markup\italic rit. d^\omit\> c\! f,8.\) a16 \oneVoice
  a2^\markup\italic rit. ^\omit\> gis4\!
  a4\fermata ~ 8 r \bar "||" \key d \minor \partial 4 \break c4^\omit\pp^\markup\smallCaps Soprano.
  c2^\markup\italic dolcissimo. \( d4
                                   e4^>(f4)\! d
                                   c8^- a^- c2 \) ^\omit\> ~
  c2\! 4
  c2 \( d4 % 3b
        e4^\omit\>(f)\! d
        cis8^-a^- cis2^\omit\>(
        d2\!) \) d8^\omit\< (g)
  g4.^\omit\mf(f8) e8^\omit\dim(c)% 4a
  g2 4^\omit\p
  e'4.(d8) c(a)
  e2 e8.^\omit\pp(c'16)
  c2.^\omit\< ~
  c2.^\omit\> ~ % 4b
  c2^\omit\pp d4 \( e4^\omit\>(f\!) d
               c8^- a^- c2 \) ^\omit\> ~
  c2\! 4 % 5a
  c2 d4
  e4^\omit\>(f) d
  cis8^- a^- cis2^\omit\>(
  d2)^\omit\> d8(g) ^\omit\< % 5b
  g4.\omit\f f8 \tuplet 3/2 {e8 [ _(c) ] g }
  g8. fis16 f4^\omit\dim g
  a2.^\markup\italic rit. ^\omit\> ~
  a2\! a4^\omit\pp % 6a
  a2^\markup\italic "Tempo, poco lento" \( b4
                                           cis4 d b \)
  gis8^\markup\italic rall. (fis) e2~
  e2\fermata \bar "||" \key a \minor \partial 4 a4^\omit\p ^\markup\italic "Tempo 1mo. legato."
  a4. g8 e f % 6b
  c8 d e f^\omit\p^\omit\< fis gis\!
  a8( [ c b ] ) fis^\omit\<b b\!
  d4^\markup\italic rit. ^\omit\> ( c8\fermata \! ) e,8^\omit\pp^\markup\italic "a tempo." e e % 7a
  e'4. \( d8 b d
          c4. \) c8^-^\omit\< c^- c^-\!
  << {g'4.^\omit\f f8 d g} \new Voice {\autoBeamOff c,4(b8) b d b} >> % 7b
  <c e>2^\omit\dim a4^\omit\pp
  a2^\markup\italic "molto espress." \( b4
                                        b4^\omit\> (c)\! b
                                        a8 f \) a2~ ^\omit\> % 8a
  a2 \~ a8.^\omit\< [ e'16 ] \!
  e2\omit\sfz\omit\p^\markup { \dynamic sfz \dynamic p } ^\omit\> d4\!
  c8^-^\markup\italic "poco rit." a^- a4 gis
  a4.^\markup\italic "Tempo, più lento" r8 r4
  R2. % 8b
  e'4.^>^\omit\pp^\markup\italic "mezza voce." d8^\omit\< b c\!
  f,2^\markup\italic "molto rall." ^\omit\> g4\!
  a2.~^\omit\ppp
  a2\fermata
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \autoBeamOff
  a'4^\omit\p
  a4.^\markup\italic legato. g8 e f
  c8 d e2~
  e8 e dis4 e8 e
  f4^\markup\italic rit.  ^\omit\> (e8)\fermata c^\omit\pp c^\markup\italic "a tempo" c % 1b
  c'4. \( b8 gis b
          a4(e8) d b d
          c4. \) e8 e c
  c8^\markup\italic rit. ^\omit\< (e4)\! e8 f f % 2a
  f8.^\omit\> e16 4.\! a8^\omit\p^\markup\italic "a tempo"
  a4. g8^\markup\italic legato. e8 f
  c8 d e2~
  e8  e a a g8.^\omit\dim f16^\markup\italic rit. % 2b
  f4(^\omit\> e8)\!\fermata e\omit\pp^\markup\italic{\dynamic pp a tempo} e d
  c8 e e2~
  e8  e e e_-^\omit\< f_- fis_-\!
  g4.^\omit\f g8^\omit\dim d d % 2c
  g8 e\omit\p^\markup\italic {\dynamic p rit.} e^\omit\> e\! f8. 16
  f4^\markup\italic rit. ^\omit\> (e) e\!
  e4\fermata ~8 r \bar "||" \key d \minor\partial 4 e4^\omit\ppp^\markup\smallCaps Alto.
  f8^. ^\markup\italic leggiero. ^\( <f a>^. q4^. q^. \) % 3a
  <f a>8^. ^\( q^. q4^. q^. \)
  <f a>8^. ^\( q^. q4^. q^. \)
  q8^. ^\( <c f>^. <f a>4^. q^. \)
  q8^. ^\( q^. q4^. q^. \) % 3b
  q8^. ^\( q^. q4^. q^. \)
  q8^. ^\( q^. q4^. \) q^-^\omit\<
  <d a'>8^\omit\>^- q^- q4^-\! <d g>^\omit\<
  << {\voiceOne a'2^\omit\mf} \new Voice {\autoBeamOff \voiceTwo c,4(g')} >> \oneVoice g^\omit\dim % 4a
  g2 f4^\omit\p
  e2 4
  e2 d4^\omit\pp
  c8-. \( <c e>-.^\omit\< q4-. q-.\! \)
  q8-.^\omit\> \( q-. q4-.\! \) <e g>--^\omit\< % 4b
  f8-.^\omit\ppp \( <f a>-. q4-. q-. \)
  q8-. \( q-. q4-. q-. \)
  q8-. \( q-. q4-. q-.^\omit\< \)
  q8-.^\omit\> \( <a f> <f a>4-.\! q-. \) % 5a
  q8-. \( q-. q4-. q-. \)
  q8-. \( q-. q4-. q-. \)
  q8-. \( q-. q4-. q-. \)
  <d a'>8-.\! \( q-. q4-. \) g4--^\omit\< % 5b
  g4.^\omit\f 8 8. e16
  e8.^\omit\sf 16 4-!^\omit\dim 4
  e2^\markup\italic rit. r4
  dis4^\omit\p ~ 8 r dis4^\omit\pp % 6a
  e4^\markup\italic "Tempo, poco lento." ^\( (a) a
                                            a4 a fis \)
  d4^\markup\italic rall. d2 ~
  d2\fermata \key c \major a'4^\omit\p
  a4.^\markup\italic legato. g8 e f % 6b
  c8 d e4. 8
  e8 e dis dis^\omit\< e e\!
  f4^\markup\italic rit. ^\omit\> (e8\fermata\!) c^\omit\pp^\markup\italic "a tempo." c c % 7a
  c'4. \( b8 gis b
          a4. \) e8--^\omit\< f-- fis--\!
  g4.^\omit\f 8 8 8 % 7b
  g4^\omit\dim (gis) a^\omit\ppp
  f8-. \( f-. f4-. f-. \)
  e8-. \( e-. e4-. d-. \)
  c8-. \( c-. c4-. c-. \) % 8a
  e8-. \( e-. e4-. \) a4^\omit\<
  a2^\ffz^\omit\p^\omit\> a4\!
  <e a>8--^\markup\italic "poco rit." <c e> q4 <b d>
  c4. r8 r4
  a'4.->^\omit\pp^\markup\italic "mezza voce" g8 e f % 8b
  c8(d) e4.^\omit\< 8\!
  f2^\omit\>^\markup\italic "molta rall." 4\!
  e2.^\omit\ppp ~
  e2\fermata
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\p
}

pianoLHone = \relative {
  \global
  a4\p
  a4. g8 e f
  c8 d e fis g a
  c8 a fis a gis gis
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  r4
  r2.
  r4 e2~
  e4. e8 8 8
  \bar "|."
}

#(set-global-staff-size 16)

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single tenor1 staff
          \new Staff \with { instrumentName = #"Tenor 1" shortInstrumentName = #"T1" } <<
            \clef "treble_8"
            \new Voice \tenorOne
            \addlyrics \wordsTenorOne
                                % Single tenor2 staff
          \new Staff \with { instrumentName = #"Tenor 2" shortInstrumentName = #"T2" } <<
            \clef "treble_8"
            \new Voice \tenorTwo
            \addlyrics \wordsTenorTwo
          >>
>>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
                                % Single bass1 staff
          \new Staff \with { instrumentName = #"Bass 1" shortInstrumentName = #"B1" } <<
            \clef "bass"
            \new Voice \bassOne
            \addlyrics \wordsBassOne
          >>
                                % Single bass2 staff
          \new Staff \with { instrumentName = #"Bass 2" shortInstrumentName = #"B2" } <<
            \clef "bass"
            \new Voice \bassTwo
            \addlyrics \wordsBassTwo
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass 
            \new Voice { \voiceOne \tenorOne }
            \new Voice \partCombine \tenorTwo \bassOne
            \new Voice { \voiceFour \bassTwo}
           
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage"
  \paper {
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
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single tenor1 staff
          \new Staff \with { instrumentName = #"Tenor 1" shortInstrumentName = #"T1" } <<
            \clef "treble_8"
            \new Voice \tenorOne
            \addlyrics \wordsTenorOne
                                % Single tenor2 staff
          \new Staff \with { instrumentName = #"Tenor 2" shortInstrumentName = #"T2" } <<
            \clef "treble_8"
            \new Voice \tenorTwo
            \addlyrics \wordsTenorTwo
          >>
>>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
                                % Single bass1 staff
          \new Staff \with { instrumentName = #"Bass 1" shortInstrumentName = #"B1" } <<
            \clef "bass"
            \new Voice \bassOne
            \addlyrics \wordsBassOne
          >>
                                % Single bass2 staff
          \new Staff \with { instrumentName = #"Bass 2" shortInstrumentName = #"B2" } <<
            \clef "bass"
            \new Voice \bassTwo
            \addlyrics \wordsBassTwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-sop"
  \paper {
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
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single tenor1 staff
          \new Staff \with { instrumentName = #"Tenor 1" shortInstrumentName = #"T1" } <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice  \tenorOne
            \addlyrics {\tiny \wordsTenorOne}
            >>
                                % Single tenor2 staff
          \new Staff \with { instrumentName = #"Tenor 2" shortInstrumentName = #"T2" } <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenorTwo
            \addlyrics {\tiny \wordsTenorTwo}
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
                                % Single bass1 staff
          \new Staff \with { instrumentName = #"Bass 1" shortInstrumentName = #"B1" } <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bassOne
            \addlyrics {\tiny \wordsBassOne}
          >>
                                % Single bass2 staff
          \new Staff \with { instrumentName = #"Bass 2" shortInstrumentName = #"B2" } <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bassTwo
            \addlyrics {\tiny \wordsBassTwo}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-alto"
  \paper {
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
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single tenor1 staff
          \new Staff \with { instrumentName = #"Tenor 1" shortInstrumentName = #"T1" } <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice  \tenorOne
            \addlyrics {\tiny \wordsTenorOne}
            >>
                                % Single tenor2 staff
          \new Staff \with { instrumentName = #"Tenor 2" shortInstrumentName = #"T2" } <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenorTwo
            \addlyrics {\tiny \wordsTenorTwo}
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
                                % Single bass1 staff
          \new Staff \with { instrumentName = #"Bass 1" shortInstrumentName = #"B1" } <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bassOne
            \addlyrics {\tiny \wordsBassOne}
          >>
                                % Single bass2 staff
          \new Staff \with { instrumentName = #"Bass 2" shortInstrumentName = #"B2" } <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bassTwo
            \addlyrics {\tiny \wordsBassTwo}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-tenor"
  \paper {
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
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single tenor1 staff
          \new Staff \with { instrumentName = #"Tenor 1" shortInstrumentName = #"T1" } <<
            \clef "treble_8"
            \new Voice  \tenorOne
            \addlyrics \wordsTenorOne
            >>
                                % Single tenor2 staff
          \new Staff \with { instrumentName = #"Tenor 2" shortInstrumentName = #"T2" } <<
            \clef "treble_8"
            \new Voice \tenorTwo
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
                                % Single bass1 staff
          \new Staff \with { instrumentName = #"Bass 1" shortInstrumentName = #"B1" } <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bassOne
            \addlyrics {\tiny \wordsBassOne}
          >>
                                % Single bass2 staff
          \new Staff \with { instrumentName = #"Bass 2" shortInstrumentName = #"B2" } <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bassTwo
            \addlyrics {\tiny \wordsBassTwo}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-bass"
  \paper {
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
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single tenor1 staff
          \new Staff \with { instrumentName = #"Tenor 1" shortInstrumentName = #"T1" } <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice  \tenorOne
            \addlyrics {\tiny \wordsTenorOne}
            >>
                                % Single tenor2 staff
          \new Staff \with { instrumentName = #"Tenor 2" shortInstrumentName = #"T2" } <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenorTwo
            \addlyrics {\tiny \wordsTenorTwo}
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
                                % Single bass1 staff
          \new Staff \with { instrumentName = #"Bass 1" shortInstrumentName = #"B1" } <<
            \clef "bass"
            \new Voice \bassOne
            \addlyrics \wordsBassOne
          >>
                                % Single bass2 staff
          \new Staff \with { instrumentName = #"Bass 2" shortInstrumentName = #"B2" } <<
            \clef "bass"
            \new Voice \bassTwo
            \addlyrics \wordsBassTwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor1 staff
          \new Staff = "Tenor 1" \with {
            instrumentName = #"Tenor 1" shortInstrumentName = #"T1"
            printPartCombineTexts = ##f
          }
          <<
            \clef "treble_8"
            \new NullVoice = alignerTenorOneA \tenor
            \new NullVoice = alignerTenorOneB \tenorOne
            \new Voice \partCombine \tenor \tenorOne
          >>
                                % Single tenor2 staff
          \new Staff = "Tenor 2" \with { instrumentName = #"Tenor 2" shortInstrumentName = #"T2" } <<
            \clef "treble_8"
            \new NullVoice = alignerTenorTwoA \tenor
            \new NullVoice = alignerTenorTwoB \tenorTwo
            \new Voice \partCombine \tenor \tenorTwo
          >>
                                % Single bass1 staff
          \new Staff = "Bass 1" \with { instrumentName = #"Bass 1" shortInstrumentName = #"B1" } <<
            \clef "bass"
            \new NullVoice = alignerBassOneA \bass
            \new NullVoice = alignerBassOneB \bassOne
            \new Voice = "bassone" \partCombine \bass \bassOne
          >>
                                % Single bass2 staff
          \new Staff = "Bass 2" \with { instrumentName = #"Bass 2" shortInstrumentName = #"B2" } <<
            \clef "bass"
            \new NullVoice = alignerBassTwoA \bass
            \new NullVoice = alignerBassTwoB \bassTwo
            \new Voice = "basstwo" \partCombine \bass \bassTwo
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

\book {
  \bookOutputSuffix "midi-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor1 staff
          \new Staff = "Tenor 1" \with {
            instrumentName = #"Tenor 1" shortInstrumentName = #"T1"
            printPartCombineTexts = ##f
          }
          <<
            \clef "treble_8"
            \new NullVoice = alignerTenorOneA \tenor
            \new NullVoice = alignerTenorOneB \tenorOne
            \new Voice \partCombine \tenor \tenorOne
          >>
                                % Single tenor2 staff
          \new Staff = "Tenor 2" \with { instrumentName = #"Tenor 2" shortInstrumentName = #"T2" } <<
            \clef "treble_8"
            \new NullVoice = alignerTenorTwoA \tenor
            \new NullVoice = alignerTenorTwoB \tenorTwo
            \new Voice \partCombine \tenor \tenorTwo
          >>
                                % Single bass1 staff
          \new Staff = "Bass 1" \with { instrumentName = #"Bass 1" shortInstrumentName = #"B1" } <<
            \clef "bass"
            \new NullVoice = alignerBassOneA \bass
            \new NullVoice = alignerBassOneB \bassOne
            \new Voice = "bassone" \partCombine \bass \bassOne
          >>
                                % Single bass2 staff
          \new Staff = "Bass 2" \with { instrumentName = #"Bass 2" shortInstrumentName = #"B2" } <<
            \clef "bass"
            \new NullVoice = alignerBassTwoA \bass
            \new NullVoice = alignerBassTwoB \bassTwo
            \new Voice = "basstwo" \partCombine \bass \bassTwo
          >>
        >>
      >>
     >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor1"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor1 staff
          \new Staff = "Tenor 1" \with {
            instrumentName = #"Tenor 1" shortInstrumentName = #"T1"
            printPartCombineTexts = ##f
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMidiTenorJoint
            \new Voice \tenorOne
            \addlyrics \wordsMidiTenorOne
          >>
                                % Single tenor2 staff
          \new Staff = "Tenor 2" \with
          {
            instrumentName = #"Tenor 2"
            shortInstrumentName = #"T2"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \new Voice \tenorTwo
          >>
                                % Single bass1 staff
          \new Staff = "Bass 1" \with {
            instrumentName = #"Bass 1"
            shortInstrumentName = #"B1"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \new Voice \bassOne
          >>
                                % Single bass2 staff
          \new Staff = "Bass 2" \with {
            instrumentName = #"Bass 2"
            shortInstrumentName = #"B2"
          }
          <<
            \clef "bass"
            \new Voice  \bass
            \new Voice  \bassTwo
          >>
        >>
      >>
     >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor2"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor1 staff
          \new Staff = "Tenor 1" \with {
            instrumentName = #"Tenor 1"
            shortInstrumentName = #"T1"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \new Voice \tenorOne
          >>
                                % Single tenor2 staff
          \new Staff = "Tenor 2" \with {
            instrumentName = #"Tenor 2"
            shortInstrumentName = #"T2"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMidiTenorJoint
            \new Voice \tenorOne
            \addlyrics \wordsMidiTenorTwo
          >>
                                % Single bass1 staff
          \new Staff = "Bass 1" \with {
            instrumentName = #"Bass 1"
            shortInstrumentName = #"B1"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \new Voice \bassOne
          >>
                                % Single bass2 staff
          \new Staff = "Bass 2" \with {
            instrumentName = #"Bass 2"
            shortInstrumentName = #"B2"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \new Voice \bassTwo
          >>
        >>
      >>
     >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass1"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor1 staff
          \new Staff = "Tenor 1" \with {
            instrumentName = #"Tenor 1"
            shortInstrumentName = #"T1"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \new Voice \tenorOne
          >>
                                % Single tenor2 staff
          \new Staff = "Tenor 2" \with {
            instrumentName = #"Tenor 2"
            shortInstrumentName = #"T2"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \new Voice \tenorTwo
          >>
                                % Single bass1 staff
          \new Staff = "Bass 1" \with {
            instrumentName = #"Bass 1"
            shortInstrumentName = #"B1"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsMidiBassJoint
            \new Voice \bassOne
            \addlyrics \wordsMidiBassOne
          >>
                                % Single bass2 staff
          \new Staff = "Bass 2" \with {
            instrumentName = #"Bass 2"
            shortInstrumentName = #"B2"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \new Voice \bassTwo
          >>
        >>
      >>
     >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass2"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor1 staff
          \new Staff = "Tenor 1" \with {
            instrumentName = #"Tenor 1"
            shortInstrumentName = #"T1"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \new Voice \tenorOne
          >>
                                % Single tenor2 staff
          \new Staff = "Tenor 2" \with {
            instrumentName = #"Tenor 2"
            shortInstrumentName = #"T2"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \new Voice \tenorTwo
          >>
                                % Single bass1 staff
          \new Staff = "Bass 1" \with {
            instrumentName = #"Bass 1"
            shortInstrumentName = #"B1"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \new Voice \bassOne
          >>
                                % Single bass2 staff
          \new Staff = "Bass 2" \with {
            instrumentName = #"Bass 2"
            shortInstrumentName = #"B2"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsMidiBassJoint
            \new Voice \bassTwo
            \addlyrics \wordsMidiBassTwo
          >>
        >>
      >>
     >>
    \midi {}
  }
}
