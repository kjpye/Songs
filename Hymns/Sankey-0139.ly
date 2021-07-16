\version "2.22.1"



today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Cross of Jesus."
  subtitle    = "Sankey No. 139"
  subsubtitle = "Sankey 880 No. 108"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Elizabeth C. Clephane."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=114
}

soprano = \relative {
  \autoBeamOff
  bes'4^\p^\markup\italic Moderato.
  bes4. 8 a4 bes
  ees2 bes4 g
  bes4. 8 aes4 f
  g2~4 \bar "|" \break \partial 4 bes
  bes4. 8 a4 bes % B
  ees4. bes8 4 g
  bes4. 8 aes4 d,
  ees2~4 \bar "|" \break \partial 4 g4
  f4. e8 f4 c' % C
  bes4. g8 bes4 g
  f4 bes bes8[a] d[c]
  bes2. \bar "|" \break \partial 4 \slurDashed bes8^\<(aes\!)
  g4 g bes bes % D
  ees4. 8 c4 d8(c)
  bes4. 8 aes4 d,
  ees2.\omit\f
}

sopranoSingle = \relative {
  \autoBeamOff
% verse 1
  bes'4^\p^\markup\italic Moderato.
  bes4. 8 a4 bes
  ees2 bes4 g
  bes4. 8 aes4 f
  g2~4 \bar "|" \break \partial 4 bes
  bes4. 8 a4 bes % B
  ees4. bes8 4 g
  bes4. 8 aes4 d,
  ees2~4 \bar "|" \break \partial 4 g4
  f4. e8 f4 c' % C
  bes4. g8 bes4 g
  f4 bes bes8[a] d[c]
  bes2. \bar "|" \break \partial 4 bes8^\< aes\!
  g4 g bes bes % D
  ees4. 8 c4 d8 c
  bes4. 8 aes4 d,
  ees2.\omit\f
% verse 2
  bes'4^\p^\markup\italic Moderato.
  bes4. 8 a4 bes
  ees2 bes4 g
  bes4. 8 aes4 f
  g2~4 \bar "|" \break \partial 4 bes
  bes4. 8 a4 bes % B
  ees4. bes8 4 g
  bes4. 8 aes4 d,
  ees2~4 \bar "|" \break \partial 4 g4
  f4. e8 f4 c' % C
  bes4. g8 bes4 g
  f4 bes bes8[a] d[c]
  bes2. \bar "|" \break \partial 4 bes8^\<(aes\!)
  g4 g bes bes % D
  ees4. 8 c4 d8(c)
  bes4. 8 aes4 d,
  ees2.\omit\f
% verse 3
  bes'4^\p^\markup\italic Moderato.
  bes4. 8 a4 bes
  ees2 bes4 g
  bes4. 8 aes4 f
  g2~4 \bar "|" \break \partial 4 bes
  bes4. 8 a4 bes % B
  ees4. bes8 4 g
  bes4. 8 aes4 d,
  ees2~4 \bar "|" \break \partial 4 g4
  f4. e8 f4 c' % C
  bes4. g8 bes4 g
  f4 bes bes8[a] d[c]
  bes2. \bar "|" \break \partial 4 bes8^\< aes\!
  g4 g bes bes % D
  ees4. 8 c4 d8(c)
  bes4. 8 aes4 d,
  ees2.\omit\f
% verse4
  bes'4^\p^\markup\italic Moderato.
  bes4. 8 a4 bes
  ees2 bes4 g
  bes4. 8 aes4 f
  g2~4 \bar "|" \break \partial 4 bes
  bes4. 8 a4 bes % B
  ees4. bes8 4 g
  bes4. 8 aes4 d,
  ees2~4 \bar "|" \break \partial 4 g4
  f4. e8 f4 c' % C
  bes4. g8 bes4 g
  f4 bes bes8[a] d[c]
  bes2. \bar "|" \break \partial 4 bes8^\<(aes\!)
  g4 g bes bes % D
  ees4. 8 c4 d8(c)
  bes4. 8 aes4 d,
  ees2.\omit\f
% verse 5
  bes'4^\p^\markup\italic Moderato.
  bes4. 8 a4 bes
  ees2 bes4 g
  bes4. 8 aes4 f
  g2~4 \bar "|" \break \partial 4 bes
  bes4. 8 a4 bes % B
  ees4. bes8 4 g
  bes4. 8 aes4 d,
  ees2~4 \bar "|" \break \partial 4 g4
  f4. e8 f4 c' % C
  bes4. g8 bes4 g
  f4 bes bes8[a] d[c]
  bes2. \bar "|" \break \partial 4 bes8^\<(aes\!)
  g4 g bes bes % D
  ees4. 8 c4 d8(c)
  bes4. 8 aes4 d,
  ees2.\omit\f
}

alto = \relative {
  \autoBeamOff
  g'4^\p
  g4. 8 fis4 g
  g2 4 ees
  g4. 8 f4 d
  ees2~4 g4
  g4. 8 fis4 g % B
  g4. 8 4 ees
  ees4. 8 f4 bes,
  bes2~4 ees
  d4. cis8 d4 aes' % C
  g4. ees8 g4 ees
  d4 4 ees f8[ees]
  d2. \slurDashed 8^\<(ees\!)
  ees4 4 f f % D
  g4. 8 aes4 bes8(aes)
  ees4. 8 f4 bes,
  ees2.\omit\f
}

nl = { \bar "||" \break }

altoSingle = \relative {
  \autoBeamOff
  g'4^\p
  g4. 8 fis4 g
  g2 4 ees
  g4. 8 f4 d
  ees2~4 g4
  g4. 8 fis4 g % B
  g4. 8 4 ees
  ees4. 8 f4 bes,
  bes2~4 ees
  d4. cis8 d4 aes' % C
  g4. ees8 g4 ees
  d4 4 ees f8[ees]
  d2. 8^\< ees\!
  ees4 4 f f % D
  g4. 8 aes4 bes8 aes
  ees4. 8 f4 bes,
  ees2.\omit\f \nl
% verse 2
  g4^\p
  g4. 8 fis4 g
  g2 4 ees
  g4. 8 f4 d
  ees2~4 g4
  g4. 8 fis4 g % B
  g4. 8 4 ees
  ees4. 8 f4 bes,
  bes2~4 ees
  d4. cis8 d4 aes' % C
  g4. ees8 g4 ees
  d4 4 ees f8[ees]
  d2. 8^\<(ees\!)
  ees4 4 f f % D
  g4. 8 aes4 bes8(aes)
  ees4. 8 f4 bes,
  ees2.\omit\f \nl
% verse 3
  g4^\p
  g4. 8 fis4 g
  g2 4 ees
  g4. 8 f4 d
  ees2~4 g4
  g4. 8 fis4 g % B
  g4. 8 4 ees
  ees4. 8 f4 bes,
  bes2~4 ees
  d4. cis8 d4 aes' % C
  g4. ees8 g4 ees
  d4 4 ees f8[ees]
  d2. 8^\< ees\!
  ees4 4 f f % D
  g4. 8 aes4 bes8(aes)
  ees4. 8 f4 bes,
  ees2.\omit\f \nl
% verse 4
  g4^\p
  g4. 8 fis4 g
  g2 4 ees
  g4. 8 f4 d
  ees2~4 g4
  g4. 8 fis4 g % B
  g4. 8 4 ees
  ees4. 8 f4 bes,
  bes2~4 ees
  d4. cis8 d4 aes' % C
  g4. ees8 g4 ees
  d4 4 ees f8[ees]
  d2. 8^\<(ees\!)
  ees4 4 f f % D
  g4. 8 aes4 bes8(aes)
  ees4. 8 f4 bes,
  ees2.\omit\f \nl
% verse 5
  g4^\p
  g4. 8 fis4 g
  g2 4 ees
  g4. 8 f4 d
  ees2~4 g4
  g4. 8 fis4 g % B
  g4. 8 4 ees
  ees4. 8 f4 bes,
  bes2~4 ees
  d4. cis8 d4 aes' % C
  g4. ees8 g4 ees
  d4 4 ees f8[ees]
  d2. 8^\<(ees\!)
  ees4 4 f f % D
  g4. 8 aes4 bes8(aes)
  ees4. 8 f4 bes,
  ees2.\omit\f
}

tenor = \relative {
  \autoBeamOff
  bes4^\p
  bes4. 8 c4 bes
  bes2 4 4
  bes4. 8 4 4
  bes2~4 4
  bes4. 8 c4 bes % B
  bes4. 8 4 4
  g4. 8 bes4 aes
  g4~2 bes4
  bes4. 8 4 4 % C
  bes4. 8 4 4
  bes4 4 c c
  bes2. \slurDashed 8(8)
  bes4 4 4 aes % D
  c4. 8 aes4 8(8)
  g4. 8 bes4 aes
  g2.\omit\f
}

tenorSingle = \relative {
  \autoBeamOff
  bes4^\p
  bes4. 8 c4 bes
  bes2 4 4
  bes4. 8 4 4
  bes2~4 4
  bes4. 8 c4 bes % B
  bes4. 8 4 4
  g4. 8 bes4 aes
  g4~2 bes4
  bes4. 8 4 4 % C
  bes4. 8 4 4
  bes4 4 c c
  bes2. 8 8
  bes4 4 4 aes % D
  c4. 8 aes4 8 8
  g4. 8 bes4 aes
  g2.\omit\f
% verse2
  bes4^\p
  bes4. 8 c4 bes
  bes2 4 4
  bes4. 8 4 4
  bes2~4 4
  bes4. 8 c4 bes % B
  bes4. 8 4 4
  g4. 8 bes4 aes
  g4~2 bes4
  bes4. 8 4 4 % C
  bes4. 8 4 4
  bes4 4 c c
  bes2. 4
  bes4 4 4 aes % D
  c4. 8 aes4 4
  g4. 8 bes4 aes
  g2.\omit\f
% verse4
  bes4^\p
  bes4. 8 c4 bes
  bes2 4 4
  bes4. 8 4 4
  bes2~4 4
  bes4. 8 c4 bes % B
  bes4. 8 4 4
  g4. 8 bes4 aes
  g4~2 bes4
  bes4. 8 4 4 % C
  bes4. 8 4 4
  bes4 4 c c
  bes2. 8 8
  bes4 4 4 aes % D
  c4. 8 aes4 4
  g4. 8 bes4 aes
  g2.\omit\f
% verse 4
  bes4^\p
  bes4. 8 c4 bes
  bes2 4 4
  bes4. 8 4 4
  bes2~4 4
  bes4. 8 c4 bes % B
  bes4. 8 4 4
  g4. 8 bes4 aes
  g4~2 bes4
  bes4. 8 4 4 % C
  bes4. 8 4 4
  bes4 4 c c
  bes2. 4
  bes4 4 4 aes % D
  c4. 8 aes4 4
  g4. 8 bes4 aes
  g2.\omit\f
% verse 5
  bes4^\p
  bes4. 8 c4 bes
  bes2 4 4
  bes4. 8 4 4
  bes2~4 4
  bes4. 8 c4 bes % B
  bes4. 8 4 4
  g4. 8 bes4 aes
  g4~2 bes4
  bes4. 8 4 4 % C
  bes4. 8 4 4
  bes4 4 c c
  bes2. 4
  bes4 4 4 aes % D
  c4. 8 aes4 4
  g4. 8 bes4 aes
  g2.\omit\f
}

bass = \relative {
  \autoBeamOff
  ees4^\p
  ees4. 8 4 4
  ees2 4 4
  bes4. 8 4 4
  ees2~4 4
  ees4. 8 4 4 % B
  ees4. 8 4 4
  bes4. 8 4 4
  ees2~4 4
  bes4. 8 4 4 % C
  ees4. 8 4 4
  f4 4 4 4
  bes,2. \slurDashed 8(8)
  ees4 4 d d % D
  c4. 8 aes4 8(8)
  bes4. 8 4 4
  ees2.\omit\f
}

bassSingle = \relative {
  \autoBeamOff
  ees4^\p
  ees4. 8 4 4
  ees2 4 4
  bes4. 8 4 4
  ees2~4 4
  ees4. 8 4 4 % B
  ees4. 8 4 4
  bes4. 8 4 4
  ees2~4 4
  bes4. 8 4 4 % C
  ees4. 8 4 4
  f4 4 4 4
  bes,2. 8 8
  ees4 4 d d % D
  c4. 8 aes4 8 8
  bes4. 8 4 4
  ees2.\omit\f
% verse 2
  ees4^\p
  ees4. 8 4 4
  ees2 4 4
  bes4. 8 4 4
  ees2~4 4
  ees4. 8 4 4 % B
  ees4. 8 4 4
  bes4. 8 4 4
  ees2~4 4
  bes4. 8 4 4 % C
  ees4. 8 4 4
  f4 4 4 4
  bes,2. 4
  ees4 4 d d % D
  c4. 8 aes4 4
  bes4. 8 4 4
  ees2.\omit\f
% verse 3
  ees4^\p
  ees4. 8 4 4
  ees2 4 4
  bes4. 8 4 4
  ees2~4 4
  ees4. 8 4 4 % B
  ees4. 8 4 4
  bes4. 8 4 4
  ees2~4 4
  bes4. 8 4 4 % C
  ees4. 8 4 4
  f4 4 4 4
  bes,2. 8 8
  ees4 4 d d % D
  c4. 8 aes4 4
  bes4. 8 4 4
  ees2.\omit\f
% verse 4
  ees4^\p
  ees4. 8 4 4
  ees2 4 4
  bes4. 8 4 4
  ees2~4 4
  ees4. 8 4 4 % B
  ees4. 8 4 4
  bes4. 8 4 4
  ees2~4 4
  bes4. 8 4 4 % C
  ees4. 8 4 4
  f4 4 4 4
  bes,2. 4
  ees4 4 d d % D
  c4. 8 aes4 4
  bes4. 8 4 4
  ees2.\omit\f
% verse 5
  ees4^\p
  ees4. 8 4 4
  ees2 4 4
  bes4. 8 4 4
  ees2~4 4
  ees4. 8 4 4 % B
  ees4. 8 4 4
  bes4. 8 4 4
  ees2~4 4
  bes4. 8 4 4 % C
  ees4. 8 4 4
  f4 4 4 4
  bes,2. 4
  ees4 4 d d % D
  c4. 8 aes4 4
  bes4. 8 4 4
  ees2.\omit\f
}

chorus = \lyricmode {
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsOne = \lyricmode {
  \set stanza = "1."
  Be -- neath the Cross of Je -- sus
  I fain would take my stand—
  The sha -- dow of a migh -- ty Rock,
  With -- in a wea -- ry land;
  A home with -- in the wil -- der -- ness,
  A rest up -- on the way,
  \nom From the burn -- ing of the noon -- tide heat,
  And the bur -- den of the day. \yesm
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O safe and hap -- py shel -- ter,
  O er -- fuge tried and sweet,
  O tryst -- ing- -- place where Hea -- ven's love
  and Hea -- ven's jus -- tice meet!
  As to the ho -- ly pa -- tri -- arch
  That won -- drous dream was giv'n,
  So seems my Sa -- viour's Cross to me,
  A lad -- der up to heav'n.
}

  
wordsThree = \lyricmode {
  \set stanza = "3."
  There lies be -- neath its sha -- dow,
  But on the far -- ther side,
  The dark -- ness of an aw -- ful grave
  That gapes both deep and wide;
  And there be -- tween us stands the Cross,
  Two arms out -- stretch'd to save.
  \nom Like a watch -- man set to guard the way
  \yesm From that e -- ter -- nal grave.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Up -- on that Cross of Je -- sus
  Mine eyes at times can see
  The ve -- ry dy -- ing form of One
  Who suf -- fered there for me;
  And from my smit -- ten heart, with tears,
  Two won -- ders I con -- fess—
  The won -- der of His glo -- rious love,
  And my own woth -- less -- ness.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  I take, O Cross, thy shad -- ow
  For my a -- bid -- ing place;
  I ask no oth -- er sun -- shine
  Than the sun -- shine of His face:
  Con -- tenr to let the world go by.
  To know no gain or loss—
  My sin -- ful self my on -- ly shame,
  My glo -- ry all the Cross.
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  Be -- neath the Cross of Je -- sus
  I fain would take my stand—
  The sha -- dow of a migh -- ty Rock,
  With -- in a wea -- ry land;
  A home with -- in the wil -- der -- ness,
  A rest up -- on the way,
  From the burn -- ing of the noon -- tide heat,
  And the bur -- den of the day.

  \set stanza = "2."
  O safe and hap -- py shel -- ter,
  O er -- fuge tried and sweet,
  O tryst -- ing- -- place where Hea -- ven's love
  and Hea -- ven's jus -- tice meet!
  As to the ho -- ly pa -- tri -- arch
  That won -- drous dream was giv'n,
  So seems my Sa -- viour's Cross to me,
  A lad -- der up to heav'n.

  \set stanza = "3."
  There lies be -- neath its sha -- dow,
  But on the far -- ther side,
  The dark -- ness of an aw -- ful grave
  That gapes both deep and wide;
  And there be -- tween us stands the Cross,
  Two arms out -- stretch'd to save.
  Like a watch -- man set to guard the way
  From that e -- ter -- nal grave.

  \set stanza = "4."
  Up -- on that Cross of Je -- sus
  Mine eyes at times can see
  The ve -- ry dy -- ing form of One
  Who suf -- fered there for me;
  And from my smit -- ten heart, with tears,
  Two won -- ders I con -- fess—
  The won -- der of His glo -- rious love,
  And my own woth -- less -- ness.

  \set stanza = "5."
  I take, O Cross, thy shad -- ow
  For my a -- bid -- ing place;
  I ask no oth -- er sun -- shine
  Than the sun -- shine of His face:
  Con -- tenr to let the world go by.
  To know no gain or loss—
  My sin -- ful self my on -- ly shame,
  My glo -- ry all the Cross.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Be" "neath " "the " "Cross " "of " Je "sus "
  "\nI " "fain " "would " "take " "my " "stand— "
  "\nThe " sha "dow " "of " "a " migh "ty " "Rock, "
  "\nWith" "in " "a " wea "ry " "land; "
  "\nA " "home " with "in " "the " wil der "ness, "
  "\nA " "rest " up "on " "the " "way, "
  "\nFrom " "the " burn "ing " "of " "the " noon "tide " "heat, "
  "\nAnd " "the " bur "den " "of " "the " "day. "

  \set stanza = "2."
  "\nO " "safe " "and " hap "py " shel "ter, "
  "\nO " er "fuge " "tried " "and " "sweet, "
  "\nO " tryst ing- "place " "where " Hea "ven's " "love "
  "\nand " Hea "ven's " jus "tice " "meet! "
  "\nAs " "to " "the " ho "ly " pa tri "arch "
  "\nThat " won "drous " "dream " "was " "giv'n, "
  "\nSo " "seems " "my " Sa "viour's " "Cross " "to " "me, "
  "\nA " lad "der " "up " "to " "heav'n. "

  \set stanza = "3."
  "\nThere " "lies " be "neath " "its " sha "dow, "
  "\nBut " "on " "the " far "ther " "side, "
  "\nThe " dark "ness " "of " "an " aw "ful " "grave "
  "\nThat " "gapes " "both " "deep " "and " "wide; "
  "\nAnd " "there " be "tween " "us " "stands " "the " "Cross, "
  "\nTwo " "arms " out "stretch'd " "to " "save. "
  "\nLike " "a " watch "man " "set " "to " "guard " "the " "way "
  "\nFrom " "that " e ter "nal " "grave. "

  \set stanza = "4."
  "\nUp" "on " "that " "Cross " "of " Je "sus "
  "\nMine " "eyes " "at " "times " "can " "see "
  "\nThe " ve "ry " dy "ing " "form " "of " "One "
  "\nWho " suf "fered " "there " "for " "me; "
  "\nAnd " "from " "my " smit "ten " "heart, " "with " "tears, "
  "\nTwo " won "ders " "I " con "fess— "
  "\nThe " won "der " "of " "His " glo "rious " "love, "
  "\nAnd " "my " "own " woth less "ness. "

  \set stanza = "5."
  "\nI " "take, " "O " "Cross, " "thy " shad "ow "
  "\nFor " "my " a bid "ing " "place; "
  "\nI " "ask " "no " oth "er " sun "shine "
  "\nThan " "the " sun "shine " "of " "His " "face: "
  "\nCon" "tenr " "to " "let " "the " "world " "go " "by. "
  "\nTo " "know " "no " "gain " "or " "loss— "
  "\nMy " sin "ful " "self " "my " on "ly " "shame, "
  "\nMy " glo "ry " "all " "the " "Cross. "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
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
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice = "women" \partCombine { \global \sopranoSingle \bar "|." }
                                               { \global \altoSingle }
            \new NullVoice { \sopranoSingle }
            \addlyrics \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenorSingle }
                                            { \global \bassSingle  }
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
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice = "women" \partCombine { \global \sopranoSingle \bar "|." }
                                               { \global \altoSingle }
            \new NullVoice { \sopranoSingle }
            \addlyrics \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenorSingle }
                                            { \global \bassSingle  }
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \sopranoSingle \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \altoSingle }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenorSingle }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bassSingle  }
          >>
        >>
      >>
    \midi {}
  }
}
