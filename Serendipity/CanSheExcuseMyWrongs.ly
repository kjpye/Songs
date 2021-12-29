\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Can she excuse my wrongs"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John Downland"
  arranger    = "(1563-1626)"
%  opus        = "opus"

  poet        = "Anon."
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key d \minor
  \time 3/4
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "66a" } s2.*4
  \mark \markup { \box "66b" } s2.*6
  \mark \markup { \box "67a" } s2.*6
  \mark \markup { \box "67b" } s2.*5
  \mark \markup { \box "68a" } s2.*5
  \mark \markup { \box "68b" } s2.*6
  \repeat volta 2 {
    \mark \markup { \box "69a" } s2.*4
    \mark \markup { \box "69b" } s2.*4
  }
}

soprano = \relative {
  \global
  d'4 a' d
  c4. b8 a4
  a4 g f
  e2.
  c'4 a8 bes4 g8 % 66b
  a2 f4
  g4 e e
  d2.
  d4 a' d
  c4. b8 a4
  a4 g f % 67a
  e2.
  d'4 a8 bes4 g8
  a2 f4
  g4 e e
  d2.
  a'4 4 4 % 67b
  a4 8 4 b8
  c2 bes4
  a2 r4
  c4 a8 bes4 g8
  a2 bes4 % 68a
  a4 d d
  cis2.
  a4 4 4
  a4 8 4 b8
  c2 bes4 % 68b
  a2 r4
  c4 a8 bes4 g8
  a2 bes4
  a4 d d
  cis2.
  \repeat volta 2 {
    \time 6/8
    a8. 16 8 4 8
    a4 8 4.
    b8. 16 8 4 8
    b4 8 4 8 \time 3/4
    a4 8 8 8 8
    a4 4 8 g
    fis8. g16 a8 b g a
    fis2 d4
  }
}

sopranoSingle = \relative {
  \global
  d'4 a' d
  c4. b8 a4
  a4 g f
  e2.
  c'4 a8 bes4 g8 % 66b
  a2 f4
  g4 e e
  d2.
  d4 a' d
  c4. b8 a4
  a4 g f % 67a
  e2.
  d'4 a8 bes4 g8
  a2 f4
  g4 e e
  d2.
  a'4 4 4 % 67b
  a4 8 4 b8
  c2 bes4
  a2 r4
  c4 a8 bes4 g8
  a2 bes4 % 68a
  a4 d d
  cis2.
  a4 4 4
  a4 8 4 b8
  c2 bes4 % 68b
  a2 r4
  c4 a8 bes4 g8
  a2 bes4
  a4 d d
  cis2.
  \repeat volta 2 {
    \time 6/8
    a8. 16 8 4 8
    a4 8 4.
    b8. 16 8 4 8
    b4 8 4 8 \time 3/4
    a4 8 8 8 8
    a4 4 8 g
    fis8. g16 a8 b g a
    fis2 d4
  }
  \bar "||" \break
  d4 a' d % 66a
  c4. b8 a4
  a4 g f
  e2.
  c'4 a8 bes4 g8 % 66b
  a2 f4
  g4 e e
  d2.
  d4 a' d
  c4. b8 a4
  a4 g f % 67a
  e2.
  d'4 a8 bes4 g8
  a2 f4
  g4 e e
  d2.
  a'4 4 4 % 67b
  a4 8 4 b8
  c2 bes4
  a2 r4
  c4 a8 bes4 g8
  a2 bes4 % 68a
  a4 d d
  cis2.
  a4 4 4
  a4 8 4 b8
  c2 bes4 % 68b
  a2 r4
  c4 a8 bes4 g8
  a2 bes4
  a4 d d
  cis2.
  \repeat volta 2 {
    \time 6/8
    a8. 16 8 4 8
    a4 8 4.
    b8. 16 8 4 8
    b4 8 4 8 \time 3/4
    a4 8 8 8 8
    a4 4 8 g
    fis8. g16 a8 b g a
    fis2 d4
  }
}

wordsSopOne = \lyricmode {
  Can she ex -- cuse my wrongs with Vir -- tue's cloak?
  Shall I call her good when she proves un -- kind?
  Are those clear fires which va -- nish in -- to smoke?
  Must I praise the leaves where no fruit I find?
  No, no; where sha -- dows do for bo -- dies stand,
  Thou may'st be ab -- us'd if thy sight be dim.
  Cold love is like to words writ -- ten on sand,
  Or to bub -- bles which on the wa -- ter swim.

  Wilt thou be thus ab -- us -- ed still,
  See -- ing that she will right thee ne -- ver?
  If thou canst not o'er -- come her will,
  Thy love will be thus fruit -- less e -- ver.
}

wordsSopTwo = \lyricmode {
  Was I so base, that I might not as -- pire
  Un -- to those high joys which she holds from me?
  As they are high, so high is my de -- sire,
  If she this de -- ny, what can grant -- ed be?
  If she will yield to that which rea -- son is,
  It is rea -- son's will that love should be just.
  Dear, make me hap -- py still by grant -- ing this,
  Or cut off de -- lays if that I die must.

  Bet -- ter a thou -- sand times to die,
  Than for to love thus still tor -- men -- ted;
  Dear, but re -- mem -- ber it was I
  Who for thy sake did die con -- tent -- ed.
}

wordsSopSingle = \lyricmode {
  Can she ex -- cuse my wrongs with Vir -- tue's cloak?
  Shall I call her good when she proves un -- kind?
  Are those clear fires which va -- nish in -- to smoke?
  Must I praise the leaves where no fruit I find?
  No, no; where sha -- dows do for bo -- dies stand,
  Thou may'st be ab -- us'd if thy sight be dim.
  Cold love is like to words writ -- ten on sand,
  Or to bub -- bles which on the wa -- ter swim.

  Wilt thou be thus ab -- us -- ed still,
  See -- ing that she will right thee ne -- ver?
  If thou canst not o'er -- come her will,
  Thy love will be thus fruit -- less e -- ver.

  Wilt thou be thus ab -- us -- ed still,
  See -- ing that she will right thee ne -- ver?
  If thou canst not o'er -- come her will,
  Thy love will be thus fruit -- less e -- ver.

  Was I so base, that I might not as -- pire
  Un -- to those high joys which she holds from me?
  As they are high, so high is my de -- sire,
  If she this de -- ny, what can grant -- ed be?
  If she will yield to that which rea -- son is,
  It is rea -- son's will that love should be just.
  Dear, make me hap -- py still by grant -- ing this,
  Or cut off de -- lays if that I die must.

  Bet -- ter a thou -- sand times to die,
  Than for to love thus still tor -- men -- ted;
  Dear, but re -- mem -- ber it was I
  Who for thy sake did die con -- tent -- ed.

  Bet -- ter a thou -- sand times to die,
  Than for to love thus still tor -- men -- ted;
  Dear, but re -- mem -- ber it was I
  Who for thy sake did die con -- tent -- ed.
}

wordsSopMidi = \lyricmode {
  "Can " "she " ex "cuse " "my " "wrongs " "with " Vir "tue's " "cloak? "
  "\nShall " "I " "call " "her " "good " "when " "she " "proves " un "kind? "
  "\nAre " "those " "clear " "fires " "which " va "nish " in "to " "smoke? "
  "\nMust " "I " "praise " "the " "leaves " "where " "no " "fruit " "I " "find? "
  "\nNo, " "no; " "where " sha "dows " "do " "for " bo "dies " "stand, "
  "\nThou " "may'st " "be " ab "us'd " "if " "thy " "sight " "be " "dim. "
  "\nCold " "love " "is " "like " "to " "words " writ "ten " "on " "sand, "
  "\nOr " "to " bub "bles " "which " "on " "the " wa "ter " "swim. "

  "\nWilt " "thou " "be " "thus " ab us "ed " "still, "
  "\nSee" "ing " "that " "she " "will " "right " "thee " ne "ver? "
  "\nIf " "thou " "canst " "not " o'er "come " "her " "will, "
  "\nThy " "love " "will " "be " "thus " fruit "less " e "ver. "

  "\nWilt " "thou " "be " "thus " ab us "ed " "still, "
  "\nSee" "ing " "that " "she " "will " "right " "thee " ne "ver? "
  "\nIf " "thou " "canst " "not " o'er "come " "her " "will, "
  "\nThy " "love " "will " "be " "thus " fruit "less " e "ver. "

  "\nWas " "I " "so " "base, " "that " "I " "might " "not " as "pire "
  "\nUn" "to " "those " "high " "joys " "which " "she " "holds " "from " "me? "
  "\nAs " "they " "are " "high, " "so " "high " "is " "my " de "sire, "
  "\nIf " "she " "this " de "ny, " "what " "can " grant "ed " "be? "
  "\nIf " "she " "will " "yield " "to " "that " "which " rea "son " "is, "
  "\nIt " "is " rea "son's " "will " "that " "love " "should " "be " "just. "
  "\nDear, " "make " "me " hap "py " "still " "by " grant "ing " "this, "
  "\nOr " "cut " "off " de "lays " "if " "that " "I " "die " "must. "

  "\nBet" "ter " "a " thou "sand " "times " "to " "die, "
  "\nThan " "for " "to " "love " "thus " "still " tor men "ted; "
  "\nDear, " "but " re mem "ber " "it " "was " "I "
  "\nWho " "for " "thy " "sake " "did " "die " con tent "ed. "

  "\nBet" "ter " "a " thou "sand " "times " "to " "die, "
  "\nThan " "for " "to " "love " "thus " "still " tor men "ted; "
  "\nDear, " "but " re mem "ber " "it " "was " "I "
  "\nWho " "for " "thy " "sake " "did " "die " con tent "ed. "
}

alto = \relative {
  \global
  f'4 4. g8
  a4. g8 f4
  f4 e d
  cis2.
  e4 f8 g4 e8 % 66b
  f4. e8 d4
  d2 cis4
  d2.
  f4 4. g8
  a4. g8 f4
  f4 e d % 67a
  cis2.
  e4 f8 g4 e8
  f4. e8 d4
  d2 cis4
  d2.
  e4 cis d8(e) % 67b
  f4 e8 d4 8
  e8. f16 g8 a g8. f16
  e2 r4
  e4 f8 g4 e8
  f4. a8 g4~ % 68a
  g8 f4 d8 f g
  a2.
  e4 cis d8(e)
  d4 e8 d4 8
  e8. f16 g8 a g8. f16 % 68b
  e2 r4
  e4 f8 g4 e8
  f4. a8 g4~
  g8 f4 d8 f g
  a2.
  \repeat volta 2 {
    \time 6/8
    a,8. b16 c8 d4 c8 % 69a
    f4 e8 d4(c8)
    b8. c16 d8 e4 d8
    g4 f8 e4 d8 \time 3/4
    cis8. d16 e4 f8 g % 69b
    e8. g16 f8 d cis8. 16
    d4 a8 d4 cis8
    d2 4
  }
  \bar "|."
}

altoSingle = \relative {
  \global
  f'4 4. g8
  a4. g8 f4
  f4 e d
  cis2.
  e4 f8 g4 e8 % 66b
  f4. e8 d4
  d2 cis4
  d2.
  f4 4. g8
  a4. g8 f4
  f4 e d % 67a
  cis2.
  e4 f8 g4 e8
  f4. e8 d4
  d2 cis4
  d2.
  e4 cis d8(e) % 67b
  f4 e8 d4 8
  e8. f16 g8 a g8. f16
  e2 r4
  e4 f8 g4 e8
  f4. a8 g4~ % 68a
  g8 f4 d8 f g
  a2.
  e4 cis d8(e)
  d4 e8 d4 8
  e8. f16 g8 a g8. f16 % 68b
  e2 r4
  e4 f8 g4 e8
  f4. a8 g4~
  g8 f4 d8 f g
  a2.
  \repeat volta 2 {
    \time 6/8
    a,8. b16 c8 d4 c8 % 69a
    f4 e8 d4(c8)
    b8. c16 d8 e4 d8
    g4 f8 e4 d8 \time 3/4
    cis8. d16 e4 f8 g % 69b
    e8. g16 f8 d cis8. 16
    d4 a8 d4 cis8
    d2 4
  }
  f4 4. g8 % 66a
  a4. g8 f4
  f4 e d
  cis2.
  e4 f8 g4 e8 % 66b
  f4. e8 d4
  d2 cis4
  d2.
  f4 4. g8
  a4. g8 f4
  f4 e d % 67a
  cis2.
  e4 f8 g4 e8
  f4. e8 d4
  d2 cis4
  d2.
  e4 cis d8(e) % 67b
  f4 e8 d4 8
  e8. f16 g8 a g8. f16
  e2 r4
  e4 f8 g4 e8
  f4.(a8 g4~ % 68a
  g8) f4 d8 f g
  a2.
  e4 cis d8(e)
  d4 e8 d4 8
  e8.(f16 g8 a g8.)f16 % 68b
  e2 r4
  e4 f8 g4 e8
  f4. a8 g4~
  g8 f4 d8 f g
  a2.
  \repeat volta 2 {
    \time 6/8
    a,8. b16 c8 d4 c8 % 69a
    f4 e8 d4(c8)
    b8. c16 d8 e4 d8
    g4 f8 e4 d8 \time 3/4
    cis8. d16 e4 f8 g % 69b
    e8. g16 f8 d cis8. 16
    d4 a8 d4 cis8
    d2 4
  }
  \bar "|."
}

wordsAltoOne = \lyricmode {
  Can she ex -- cuse my wrongs with Vir -- tue's cloak?
  Shall I call her good when she proves un -- kind?
  Are those clear fires which va -- nish in -- to smoke?
  Must I praise the leaves where no fruit I find?
  No, no; where __ sha -- dows do, where sha -- dows do for bo -- dies stand,
  Thou may'st be ab -- us'd, ab -- us'd __ if thy sight be dim.
  Cold __ love is like to words, is like to words writ -- ten on sand,
  Or to bub -- bles which on the wa -- ter, wa -- ter swim.

  Wilt thou be thus ab -- us -- ed still,
  See -- ing that she will right thee ne -- ver?
  If thou canst not o'er -- come her will,
  Thy love will be thus fruit -- less e -- ver.
}

wordsAltoTwo = \lyricmode {
  Was I so base, that I might not as -- pire
  Un -- to those high joys which she holds from me?
  As they are high, so high is my de -- sire,
  If she this de -- ny, what can grant -- ed be?
  If she will __ yield to that, will yield to that which rea -- son is,
  It is rea -- son's will __ _ _ that love should be just.
  Dear, make me hap -- py still by grant -- _ _ _ _ ing this,
  Or cut off de -- lays if that __ I die, I die must.

  Bet -- ter a thou -- sand times to die,
  Than for to love thus still tor -- men -- ted;
  Dear, but re -- mem -- ber it was I
  Who for thy sake did die con -- tent -- ed.
}

wordsAltoSingle = \lyricmode {
  Can she ex -- cuse my wrongs with Vir -- tue's cloak?
  Shall I call her good when she proves un -- kind?
  Are those clear fires which va -- nish in -- to smoke?
  Must I praise the leaves where no fruit I find?
  No, no; where __ sha -- dows do, where sha -- dows do for bo -- dies stand,
  Thou may'st be ab -- us'd, ab -- us'd __ if thy sight be dim.
  Cold __ love is like to words, is like to words writ -- ten on sand,
  Or to bub -- bles which on the wa -- ter, wa -- ter swim.

  Wilt thou be thus ab -- us -- ed still,
  See -- ing that she will right thee ne -- ver?
  If thou canst not o'er -- come her will,
  Thy love will be thus fruit -- less e -- ver.

  Wilt thou be thus ab -- us -- ed still,
  See -- ing that she will right thee ne -- ver?
  If thou canst not o'er -- come her will,
  Thy love will be thus fruit -- less e -- ver.

  Was I so base, that I might not as -- pire
  Un -- to those high joys which she holds from me?
  As they are high, so high is my de -- sire,
  If she this de -- ny, what can grant -- ed be?
  If she will __ yield to that, will yield to that which rea -- son is,
  It is rea -- son's will __ that love should be just.
  Dear, make me hap -- py still by grant -- ing this,
  Or cut off de -- lays if that __ I die, I die must.

  Bet -- ter a thou -- sand times to die,
  Than for to love thus still tor -- men -- ted;
  Dear, but re -- mem -- ber it was I
  Who for thy sake did die con -- tent -- ed.

  Bet -- ter a thou -- sand times to die,
  Than for to love thus still tor -- men -- ted;
  Dear, but re -- mem -- ber it was I
  Who for thy sake did die con -- tent -- ed.
}

wordsAltoMidi = \lyricmode {
  "Can " "she " ex "cuse " "my " "wrongs " "with " Vir "tue's " "cloak? "
  "\nShall " "I " "call " "her " "good " "when " "she " "proves " un "kind? "
  "\nAre " "those " "clear " "fires " "which " va "nish " in "to " "smoke? "
  "\nMust " "I " "praise " "the " "leaves " "where " "no " "fruit " "I " "find? "
  "\nNo, " "no; " "where "  sha "dows " "do, " "where " sha "dows " "do " "for " bo "dies " "stand, "
  "\nThou " "may'st " "be " ab "us'd, " ab "us'd "  "if " "thy " "sight " "be " "dim. "
  "\nCold "  "love " "is " "like " "to " "words, " "is " "like " "to " "words " writ "ten " "on " "sand, "
  "\nOr " "to " bub "bles " "which " "on " "the " wa "ter, " wa "ter " "swim. "

  "\nWilt " "thou " "be " "thus " ab us "ed " "still, "
  "\nSee" "ing " "that " "she " "will " "right " "thee " ne "ver? "
  "\nIf " "thou " "canst " "not " o'er "come " "her " "will, "
  "\nThy " "love " "will " "be " "thus " fruit "less " e "ver. "

  "\nWilt " "thou " "be " "thus " ab us "ed " "still, "
  "\nSee" "ing " "that " "she " "will " "right " "thee " ne "ver? "
  "\nIf " "thou " "canst " "not " o'er "come " "her " "will, "
  "\nThy " "love " "will " "be " "thus " fruit "less " e "ver. "

  "\nWas " "I " "so " "base, " "that " "I " "might " "not " as "pire "
  "\nUn" "to " "those " "high " "joys " "which " "she " "holds " "from " "me? "
  "\nAs " "they " "are " "high, " "so " "high " "is " "my " de "sire, "
  "\nIf " "she " "this " de "ny, " "what " "can " grant "ed " "be? "
  "\nIf " "she " "will "  "yield " "to " "that, " "will " "yield " "to " "that " "which " rea "son " "is, "
  "\nIt " "is " rea "son's " "will "  "that " "love " "should " "be " "just. "
  "\nDear, " "make " "me " hap "py " "still " "by " grant "ing " "this, "
  "\nOr " "cut " "off " de "lays " "if " "that "  "I " "die, " "I " "die " "must. "

  "\nBet" "ter " "a " thou "sand " "times " "to " "die, "
  "\nThan " "for " "to " "love " "thus " "still " tor men "ted; "
  "\nDear, " "but " re mem "ber " "it " "was " "I "
  "\nWho " "for " "thy " "sake " "did " "die " con tent "ed. "

  "\nBet" "ter " "a " thou "sand " "times " "to " "die, "
  "\nThan " "for " "to " "love " "thus " "still " tor men "ted; "
  "\nDear, " "but " re mem "ber " "it " "was " "I "
  "\nWho " "for " "thy " "sake " "did " "die " con tent "ed. "
}

tenor = \relative {
  \global
  a4 d8. e16(f4)
  f4. d8 c4
  c4 4 a
  a2.
  a4 8 d4 c8 % 66b
  c2 bes4
  bes4 a4. g8
  fis2.
  a4 d8. e16(f4)
  f4. d8 c4
  c4 4 a % 67a
  a2.
  a4 8 d4 c8
  c2 bes4
  bes4 a4. g8
  fis2.
  cis'8. d16 e4 d8(cis) % 67b
  d4 a8 f4 8
  g8. f16 e8 f d d'
  cis2 r4
  a4 8 d4 c8
  c4. f8 e(d) % 68a
  cis4 d8 f4 e16(d)
  e2.
  cis8.(d16) e4 d8 bes
  d4 a8 f4 8
  g8.(f16 e8) f d d' % 68b
  cis2 r4
  a4 8 d4 c8
  c4. f8 e(d)
  cis4 d8 f4 e16(d)
  e2.
  \repeat volta 2 {
    \time 6/8
    r4 r8 a,8. b16 c8 % 69a
    d4 c8 f4 e8
    d4. b8. c16 d8
    e4 d8 g4 f8 \time 3/4
    e8. d16 cis8. 16 d16 16 e8 % 69b
    cis8 8 d f e4
    r8 d~16 c b8 e e
    a,4 2
  }
  \bar "|."
}

tenorSingle = \relative {
  \global
  a4 d8. e16(f4)
  f4. d8 c4
  c4 4 a
  a2.
  a4 8 d4 c8 % 66b
  c2 bes4
  bes4 a4. g8
  fis2.
  a4 d8. e16(f4)
  f4. d8 c4
  c4 4 a % 67a
  a2.
  a4 8 d4 c8
  c2 bes4
  bes4 a4. g8
  fis2.
  cis'8. d16 e4 d8(cis) % 67b
  d4 a8 f4 8
  g8.(f16) e8 f d d'
  cis2 r4
  a4 8 d4 c8
  c4. f8 e(d) % 68a
  cis4 d8 f4 e16(d)
  e2.
  cis8.(d16) e4 d8 bes
  d4 a8 f4 8
  g8.(f16 e8) f d d' % 68b
  cis2 r4
  a4 8 d4 c8
  c4. f8 e(d)
  cis4 d8 f4 e16(d)
  e2.
  \repeat volta 2 {
    \time 6/8
    r4 r8 a,8. b16 c8 % 69a
    d4 c8 f4 e8
    d4. b8. c16 d8
    e4 d8 g4 f8 \time 3/4
    e8. d16 cis8. 16 d16 16 e8 % 69b
    cis8 8 d f e4
    r8 d~16 c b8 e e
    a,4 2
  }
  a4 d8. e16(f4) % 66a
  f4. d8 c4
  c4 4 a
  a2.
  a4 8 d4 c8 % 66b
  c2 bes4
  bes4 a4. g8
  fis2.
  a4 d8. e16(f4)
  f4. d8 c4
  c4 4 a % 67a
  a2.
  a4 8 d4 c8
  c2 bes4
  bes4 a4. g8
  fis2.
  cis'8.(d16) e4 d8(cis) % 67b
  d4 a8 f4 8
  g8. f16 e8 f d d'
  cis2 r4
  a4 8 d4 c8
  c4. f8 e(d) % 68a
  cis4 d8 f4 e16(d)
  e2.
  cis8.(d16) e4 d8(bes)
  d4 a8 f4 8
  g8.(f16 e8 f d) d' % 68b
  cis2 r4
  a4 8 d4 c8
  c4. f8 e(d)
  cis4 d8(f4 e16 d)
  e2.
  \repeat volta 2 {
    \time 6/8
    r4 r8 a,8. b16 c8 % 69a
    d4 c8 f4 e8
    d4. b8. c16 d8
    e4 d8 g4 f8 \time 3/4
    e8. d16 cis8. 16 d16 16 e8 % 69b
    cis8 8 d f e4
    r8 d~16 c b8 e e
    a,4 2
  }
  \bar "|."
}

wordsTenorOne = \lyricmode {
  Can she ex -- cuse my wrongs with Vir -- tue's cloak?
  Shall I call her good when she proves un -- kind?
  Are those clear fires which va -- nish in -- to smoke?
  Must I praise the leaves where no fruit I find?
  No, no, no; where __ sha -- dows do, for bo -- _ dies, for bo -- dies stand,
  Thou may'st be ab -- us'd, ab -- us'd __ if thy sight be dim.
  Cold __ love, love is like to words, to words __ writ -- ten on sand,
  Or to bub -- bles which on the wa -- ter, wa -- ter swim.

  Wilt thou be thus ab -- us -- ed still,
  See -- ing that she will right thee ne -- ver?
  If thou canst not o'er -- come her will,
  Thy love will be thus fruit -- less e -- ver.
}

wordsTenorTwo = \lyricmode {
  Was I so base, that I might not as -- pire
  Un -- to those high joys which she holds from me?
  As they are high, so high is my de -- sire,
  If she this de -- ny, what can grant -- ed be?
  If __ _ she will __ yield to that, will yield to that which rea -- son is,
  It is rea -- son's will that love __ should, love should be __ just.
  Dear, make me __ _ hap -- py still by grant -- _ _ ing this,
  Or cut off de -- lays if that __ I die __ _ _ must.

  Bet -- ter a thou -- sand times to die,
  Than for to love thus still tor -- men -- ted;
  Dear, but re -- mem -- ber it was I
  Who for thy sake did die con -- tent -- ed.
}

wordsTenorSingle = \lyricmode {
  Can she ex -- cuse my wrongs with Vir -- tue's cloak?
  Shall I call her good when she proves un -- kind?
  Are those clear fires which va -- nish in -- to smoke?
  Must I praise the leaves where no fruit I find?
  No, no, no; where __ sha -- dows do, for bo -- dies, for bo -- dies stand,
  Thou may'st be ab -- us'd, ab -- us'd __ if thy sight be dim.
  Cold __ love, love is like to words, to words __ writ -- ten on sand,
  Or to bub -- bles which on the wa -- ter, wa -- ter swim.

  Wilt thou be thus ab -- us -- ed still,
  See -- ing that she will right thee ne -- ver?
  If thou canst not o'er -- come her will,
  Thy love will be thus fruit -- less e -- ver.

  Wilt thou be thus ab -- us -- ed still,
  See -- ing that she will right thee ne -- ver?
  If thou canst not o'er -- come her will,
  Thy love will be thus fruit -- less e -- ver.

  Was I so base, that I might not as -- pire
  Un -- to those high joys which she holds from me?
  As they are high, so high is my de -- sire,
  If she this de -- ny, what can grant -- ed be?
  If __ she will __ yield to that, will yield to that which rea -- son is,
  It is rea -- son's will that love __ should, love should be __ just.
  Dear, make me __ hap -- py still by grant -- ing this,
  Or cut off de -- lays if that __ I die __ must.

  Bet -- ter a thou -- sand times to die,
  Than for to love thus still tor -- men -- ted;
  Dear, but re -- mem -- ber it was I
  Who for thy sake did die con -- tent -- ed.

  Bet -- ter a thou -- sand times to die,
  Than for to love thus still tor -- men -- ted;
  Dear, but re -- mem -- ber it was I
  Who for thy sake did die con -- tent -- ed.
}

wordsTenorMidi = \lyricmode {
  "Can " "she " ex "cuse " "my " "wrongs " "with " Vir "tue's " "cloak? "
  "\nShall " "I " "call " "her " "good " "when " "she " "proves " un "kind? "
  "\nAre " "those " "clear " "fires " "which " va "nish " in "to " "smoke? "
  "\nMust " "I " "praise " "the " "leaves " "where " "no " "fruit " "I " "find? "
  "\nNo, " "no, " "no; " "where "  sha "dows " "do, " "for " bo "dies, " "for " bo "dies " "stand, "
  "\nThou " "may'st " "be " ab "us'd, " ab "us'd "  "if " "thy " "sight " "be " "dim. "
  "\nCold "  "love, " "love " "is " "like " "to " "words, " "to " "words "  writ "ten " "on " "sand, "
  "\nOr " "to " bub "bles " "which " "on " "the " wa "ter, " wa "ter " "swim. "

  "\nWilt " "thou " "be " "thus " ab us "ed " "still, "
  "\nSee" "ing " "that " "she " "will " "right " "thee " ne "ver? "
  "\nIf " "thou " "canst " "not " o'er "come " "her " "will, "
  "\nThy " "love " "will " "be " "thus " fruit "less " e "ver. "

  "\nWilt " "thou " "be " "thus " ab us "ed " "still, "
  "\nSee" "ing " "that " "she " "will " "right " "thee " ne "ver? "
  "\nIf " "thou " "canst " "not " o'er "come " "her " "will, "
  "\nThy " "love " "will " "be " "thus " fruit "less " e "ver. "

  "\nWas " "I " "so " "base, " "that " "I " "might " "not " as "pire "
  "\nUn" "to " "those " "high " "joys " "which " "she " "holds " "from " "me? "
  "\nAs " "they " "are " "high, " "so " "high " "is " "my " de "sire, "
  "\nIf " "she " "this " de "ny, " "what " "can " grant "ed " "be? "
  "\nIf "  "she " "will "  "yield " "to " "that, " "will " "yield " "to " "that " "which " rea "son " "is, "
  "\nIt " "is " rea "son's " "will " "that " "love "  "should, " "love " "should " "be "  "just. "
  "\nDear, " "make " "me "  hap "py " "still " "by " grant "ing " "this, "
  "\nOr " "cut " "off " de "lays " "if " "that "  "I " "die "  "must. "

  "\nBet" "ter " "a " thou "sand " "times " "to " "die, "
  "\nThan " "for " "to " "love " "thus " "still " tor men "ted; "
  "\nDear, " "but " re mem "ber " "it " "was " "I "
  "\nWho " "for " "thy " "sake " "did " "die " con tent "ed. "

  "\nBet" "ter " "a " thou "sand " "times " "to " "die, "
  "\nThan " "for " "to " "love " "thus " "still " tor men "ted; "
  "\nDear, " "but " re mem "ber " "it " "was " "I "
  "\nWho " "for " "thy " "sake " "did " "die " con tent "ed. "
}

bass = \relative {
  \global
  d4 4. e8
  f8(f,4) g8 a f
  a8 b c4 d
  a2.
  a4 d8 g,4 c8 % 66b
  f,2 bes4
  g4 a a
  d2.
  d4 4. e8
  f8(f,4) g8 a f
  a8 b c4 d % 67a
  a2.
  a4 d8 g,4 c8
  f,2 bes4
  g4 a a
  d2. a'4. g8 f(e) % 67b
  d4 cis8 d4 8
  c4. f8(g4)
  a2 r4
  f4 d8 g,4 c8
  f,2 g4 % 68a
  a4 bes4. 8
  a2.
  a'4. g8(f) e
  d4 cis8 d4 8
  c4. f,8(g4) % 68b
  a2 r4
  a4 d8 g,4 c8
  f,2 g4
  a4 bes4. 8
  a2.
  \repeat volta 2 {
    \time 6/8
    f8. 16 8 4 8 % 69a
    f4 8 4.
    g8. 16 8 4 8
    g4 8 4 8 \time 3/4
    a8. 16 8 8 4 % 69b
    a4 4 8 8
    d8. e16 fis8 g e e
    d4 2
  }
  \bar "|."
}

bassSingle = \relative {
  \global
  d4 4. e8
  f8(f,4) g8 a f
  a8 b c4 d
  a2.
  a4 d8 g,4 c8 % 66b
  f,2 bes4
  g4 a a
  d2.
  d4 4. e8
  f8(f,4) g8 a f
  a8 b c4 d % 67a
  a2.
  a4 d8 g,4 c8
  f,2 bes4
  g4 a a
  d2. a'4. g8 f(e) % 67b
  d4 cis8 d4 8
  c4. f8(g4)
  a2 r4
  f4 d8 g,4 c8
  f,2 g4 % 68a
  a4 bes4. 8
  a2.
  a'4. g8(f) e
  d4 cis8 d4 8
  c4. f,8(g4) % 68b
  a2 r4
  a4 d8 g,4 c8
  f,2 g4
  a4 bes4. 8
  a2.
  \repeat volta 2 {
    \time 6/8
    f8. 16 8 4 8 % 69a
    f4 8 4.
    g8. 16 8 4 8
    g4 8 4 8 \time 3/4
    a8. 16 8 8 4 % 69b
    a4 4 8 8
    d8. e16 fis8 g e e
    d4 2
  }
  d4 4. e8 % 66a
  f8(f,4) g8 a f
  a8 b c4 d
  a2.
  a4 d8 g,4 c8 % 66b
  f,2 bes4
  g4 a a
  d2.
  d4 4. e8
  f8(f,4) g8 a f
  a8 b c4 d % 67a
  a2.
  a4 d8 g,4 c8
  f,2 bes4
  g4 a a
  d2. a'4. g8 f(e) % 67b
  d4 cis8 d4 8
  c4. f8(g4)
  a2 r4
  f4 d8 g,4 c8
  f,2 g4 % 68a
  a4 bes4. 8
  a2.
  a'4. g8(f) e
  d4 cis8 d4 8
  c4. f,8(g4) % 68b
  a2 r4
  a4 d8 g,4 c8
  f,2 g4
  a4 bes4. 8
  a2.
  \repeat volta 2 {
    \time 6/8
    f8. 16 8 4 8 % 69a
    f4 8 4.
    g8. 16 8 4 8
    g4 8 4 8 \time 3/4
    a8. 16 8 8 4 % 69b
    a4 4 8 8
    d8. e16 fis8 g e e
    d4 2
  }
  \bar "|."
}

wordsBassOne = \lyricmode {
  Can she ex -- cuse, __ ex -- cuse my wrongs with Vir -- tue's cloak?
  Shall I call her good when she proves un -- kind?
  Are those clear fires, __ clear fires which va -- nish in -- to smoke?
  Must I praise the leaves where no fruit I find?
  No, no; where __ sha -- dows do, for bo -- dies __ stand,
  Thou may'st be ab -- us'd if thy sight be dim.
  Cold love __ is like to words writ -- ten on __ sand,
  Or to bub -- bles which on the wa -- ter swim.

  Wilt thou be thus ab -- us -- ed still,
  See -- ing that she will right thee ne -- ver?
  If thou canst not o'er -- come her will,
  Thy love will be thus fruit -- less e -- ver.
}

wordsBassTwo = \lyricmode {
  Was I so base, __ so base that I might not as -- pire
  Un -- to those high joys which she holds from me?
  As they are high, __ so high, so high is my de -- sire,
  If she this de -- ny, what can grant -- ed be?
  If she will __ yield to that which rea -- son __ is,
  It is rea -- son's will that love should be __ just.
  Dear, make __ me hap -- py still by grant -- ing __ this,
  Or cut off de -- lays if that I die must.

  Bet -- ter a thou -- sand times to die,
  Than for to love thus still tor -- men -- ted;
  Dear, but re -- mem -- ber it was I
  Who for thy sake did die con -- tent -- ed.
}

wordsBassSingle = \lyricmode {
  Can she ex -- cuse, __ ex -- cuse my wrongs with Vir -- tue's cloak?
  Shall I call her good when she proves un -- kind?
  Are those clear fires, __ clear fires which va -- nish in -- to smoke?
  Must I praise the leaves where no fruit I find?
  No, no; where __ sha -- dows do, for bo -- dies __ stand,
  Thou may'st be ab -- us'd if thy sight be dim.
  Cold love __ is like to words writ -- ten on __ sand,
  Or to bub -- bles which on the wa -- ter swim.

  Wilt thou be thus ab -- us -- ed still,
  See -- ing that she will right thee ne -- ver?
  If thou canst not o'er -- come her will,
  Thy love will be thus fruit -- less e -- ver.

  Wilt thou be thus ab -- us -- ed still,
  See -- ing that she will right thee ne -- ver?
  If thou canst not o'er -- come her will,
  Thy love will be thus fruit -- less e -- ver.

  Was I so base, __ so base that I might not as -- pire
  Un -- to those high joys which she holds from me?
  As they are high, __ so high, so high is my de -- sire,
  If she this de -- ny, what can grant -- ed be?
  If she will __ yield to that which rea -- son __ is,
  It is rea -- son's will that love should be __ just.
  Dear, make __ me hap -- py still by grant -- ing __ this,
  Or cut off de -- lays if that I die must.

  Bet -- ter a thou -- sand times to die,
  Than for to love thus still tor -- men -- ted;
  Dear, but re -- mem -- ber it was I
  Who for thy sake did die con -- tent -- ed.

  Bet -- ter a thou -- sand times to die,
  Than for to love thus still tor -- men -- ted;
  Dear, but re -- mem -- ber it was I
  Who for thy sake did die con -- tent -- ed.
}

wordsBassMidi = \lyricmode {
  "Can " "she " ex "cuse, "  ex "cuse " "my " "wrongs " "with " Vir "tue's " "cloak? "
  "\nShall " "I " "call " "her " "good " "when " "she " "proves " un "kind? "
  "\nAre " "those " "clear " "fires, "  "clear " "fires " "which " va "nish " in "to " "smoke? "
  "\nMust " "I " "praise " "the " "leaves " "where " "no " "fruit " "I " "find? "
  "\nNo, " "no; " "where "  sha "dows " "do, " "for " bo "dies "  "stand, "
  "\nThou " "may'st " "be " ab "us'd " "if " "thy " "sight " "be " "dim. "
  "\nCold " "love "  "is " "like " "to " "words " writ "ten " "on "  "sand, "
  "\nOr " "to " bub "bles " "which " "on " "the " wa "ter " "swim. "

  "\nWilt " "thou " "be " "thus " ab us "ed " "still, "
  "\nSee" "ing " "that " "she " "will " "right " "thee " ne "ver? "
  "\nIf " "thou " "canst " "not " o'er "come " "her " "will, "
  "\nThy " "love " "will " "be " "thus " fruit "less " e "ver. "

  "\nWilt " "thou " "be " "thus " ab us "ed " "still, "
  "\nSee" "ing " "that " "she " "will " "right " "thee " ne "ver? "
  "\nIf " "thou " "canst " "not " o'er "come " "her " "will, "
  "\nThy " "love " "will " "be " "thus " fruit "less " e "ver. "

  "\nWas " "I " "so " "base, "  "so " "base " "that " "I " "might " "not " as "pire "
  "\nUn" "to " "those " "high " "joys " "which " "she " "holds " "from " "me? "
  "\nAs " "they " "are " "high, "  "so " "high, " "so " "high " "is " "my " de "sire, "
  "\nIf " "she " "this " de "ny, " "what " "can " grant "ed " "be? "
  "\nIf " "she " "will "  "yield " "to " "that " "which " rea "son "  "is, "
  "\nIt " "is " rea "son's " "will " "that " "love " "should " "be "  "just. "
  "\nDear, " "make "  "me " hap "py " "still " "by " grant "ing "  "this, "
  "\nOr " "cut " "off " de "lays " "if " "that " "I " "die " "must. "

  "\nBet" "ter " "a " thou "sand " "times " "to " "die, "
  "\nThan " "for " "to " "love " "thus " "still " tor men "ted; "
  "\nDear, " "but " re mem "ber " "it " "was " "I "
  "\nWho " "for " "thy " "sake " "did " "die " con tent "ed. "

  "\nBet" "ter " "a " thou "sand " "times " "to " "die, "
  "\nThan " "for " "to " "love " "thus " "still " tor men "ted; "
  "\nDear, " "but " re mem "ber " "it " "was " "I "
  "\nWho " "for " "thy " "sake " "did " "die " con tent "ed. "
}

pianoRHone = \relative {
  \global
  <a d f>4^\markup\bold Briskly <f' a> <f d'>
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  s4 d'8. e16 f8 g
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.
}

pianoLHone = \relative {
  \global
  d4 4. e8
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  s2.
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
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
            \addlyrics \wordsSopOne
            \addlyrics \wordsSopTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoOne
            \addlyrics \wordsAltoTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorOne
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassOne
            \addlyrics \wordsBassTwo
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%         }
%          <<
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%         >>
%        >>
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
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice {\TempoTrack \TempoTrack}
            \new Voice {\RehearsalTrack \RehearsalTrack}
            \new Voice \sopranoSingle
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \altoSingle
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics \wordsBassSingle
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%         }
%          <<
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%         >>
%        >>
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
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice {\TempoTrack \TempoTrack}
            \new Voice {\RehearsalTrack \RehearsalTrack}
            \new Voice \sopranoSingle
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \altoSingle
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics \wordsBassSingle
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%         }
%          <<
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%         >>
%        >>
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\TempoTrack \TempoTrack}
            \new Voice {\RehearsalTrack \RehearsalTrack}
            \new Voice \sopranoSingle
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \altoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%         }
%          <<
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%         >>
%        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\TempoTrack \TempoTrack}
            \new Voice {\RehearsalTrack \RehearsalTrack}
            \new Voice \sopranoSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \altoSingle
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%         }
%          <<
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%         >>
%        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\TempoTrack \TempoTrack}
            \new Voice {\RehearsalTrack \RehearsalTrack}
            \new Voice \sopranoSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \altoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%         }
%          <<
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%         >>
%        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\TempoTrack \TempoTrack}
            \new Voice {\RehearsalTrack \RehearsalTrack}
            \new Voice \sopranoSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \altoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics \wordsBassMidi
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%         }
%          <<
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%         >>
%        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}
