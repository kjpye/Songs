\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Ninety and Nine."
  subtitle    = "Sankey No. 97"
  subsubtitle = "Sankey 880 No. 43"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira. D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Elizabeth C. Clephane"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 6/8
  \tempo 4.=120
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s8 s2.*3
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
  \mark \markup { \box "D" } s2.*2 s2 s8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4.=120
  s8
  s2.*7
  s2.. \tempo 4.=110 s8
  s2.*5
  s8  \tempo 4.=30 s8 \tempo 4.=110 s8 tempo 4.=55 s4
}

sopranoRepeat = \relative {
  \autoBeamOff \slurDashed
  c'16(c)
  aes'8.(16) 8 4 8
  g8(g) 8 aes4 aes16(aes)
  c4 16(16) aes4 8
  bes4. r4 ees,16(16) % B
  aes8(8) 8 4 16(16)
  c4 8 aes4 16(16)
  bes4 16(16) g8(8) 8
  aes4. r4 16(16^\markup\italic rit. ) % C
  c8.(16) 8 aes8(8) 8
  c4 8 aes4 ees'8
  ees8.(16) 8 8(c) aes
  bes8(aes) bes c4 ees8 % D
  ees8.(16) f8 ees(c) aes
  bes8(c\fermata) bes aes4\fermata
}

sopranoSingle = \relative {
  \autoBeamOff
  c'16 c
  aes'8. 16 8 4 8
  g4 8 aes4 aes16 aes
  c4 8 aes4 8
  bes4. r4 ees,8 % B
  aes4 8 4 16 16
  c4 8 aes4 8
  bes4 16 16 g4 8
  aes4. r4 8^\markup\italic rit. ) % C
  c8. 16 8 aes4 8
  c4 8 aes4 ees'8
  ees8. 16 8 8(c) aes
  bes8(aes) bes c4 ees8 % D
  ees4 f8 ees c aes
  bes8(c\fermata) bes aes4\fermata \bar "||" \break \partial 8

% V2
  c,8
  aes'4 8 4 8
  g8 8 8 aes4 aes8
  c4 16 16 aes4 8
  bes4. r4 ees,16 16 % B
  aes8 8 8 4 16 16
  c4 8 aes4 8
  bes4 16 16 g4 8
  aes4. r4 16 16^\markup\italic rit. % C
  c4 8 aes4 8
  c4 8 aes4 ees'8
  ees8. 16 8 8 c aes
  bes8(aes) bes c4 ees8 % D
  ees8. 16 f8 ees c aes
  bes8(c\fermata) bes aes4\fermata \bar "||" \break \partial 8

% V3
  c,8
  aes'8. 16 8 4 8
  g4 8 aes4 aes8
  c4 16 16 aes4 8
  bes4. r4 ees,16 16 % B
  aes8 8 8 4 16 16
  c4 8 aes4 16 16
  bes4 8 g8 8 8
  aes4. r4 r8^\markup\italic rit. % C
  c8. 16 8 aes8 8 8
  c4 8 aes4 r8
  ees'4 8 8 c aes
  bes8 aes bes c4 r8 % D
  ees4 f8 ees c aes
  bes8 c\fermata bes aes4\fermata

% V4
  c,8
  aes'8. 16 8 4 8
  g4 8 aes4 aes8
  c4 16 16 aes4 8
  bes4. r4 ees,16 16 % B
  aes4 8 4 16 16
  c4 8 aes4 16 16
  bes4 8 g8 8 8
  aes4. r4 8^\markup\italic rit. % C
  c4 8 aes8 8 8
  c4 8 aes4 r8
  ees'8. 16 8 8 c aes
  bes8 aes bes c4 r8 % D
  ees8. 16 f8 ees c aes
  bes8 c\fermata bes aes4\fermata \bar "||" \break \partial 8

% v5
  c,8
  aes'8. 16 8 4 8
  g4 8 aes4 aes8
  c4 16 16 aes4 8
  bes4. r4 ees,16 16 % B
  aes4 8 4 16 16
  c4 8 aes4 8
  bes4 16 16 g4 8
  aes4. r4 16 16^\markup\italic rit. % C
  c4 8 aes8 8 8
  c4 8 aes4 ees'8
  ees8. 16 8 8(c) aes
  bes8(aes) bes c4 ees8 % D
  ees8. 16 f8 ees(c) aes
  bes8(c\fermata) bes aes4\fermata
}

altoRepeat = \relative {
  \autoBeamOff \slurDashed
  c'16(c)
  ees8.(16) 8 4 8
  ees8(8) 8 4 16(16)
  aes4 16(16) ees4 8
  g4. r4 c,16(16) % B
  ees8(8) 8 4 16(16)
  aes4 8 ees4 16(16)
  f4 16(16) 8(8) des
  c4. r4 c16(16) % C
  e8.(16) 8 f(8) 8
  e4 8 f4 ees8
  a8.(16) 8 8(8) ees
  g8(f) g aes4 8 % D
  aes8.(16) 8 8(ees) d
  des8(8\fermata) d c4\fermata
}

altoSingle = \relative {
  \autoBeamOff \slurDashed
  c'16 c
  ees8. 16 8 4 8
  ees4 8 4 16 16
  aes4 8 ees4 8
  g4. r4 c,8 % B
  ees4 8 4 16 16
  aes4 8 ees4 8
  f4 16 16 4 des8
  c4. r4 c8 % C
  e8. 16 8 f4 8
  e4 8 f4 ees8
  a8. 16 8 4 ees8
  g8(f) g aes4 8 % D
  aes4 8 8 ees d
  des8(8\fermata) d c4\fermata

% v2
  c8
  ees4 8 4 8
  ees8 8 8 4 8
  aes4 16 16 ees4 8
  g4. r4 c,16 16 % B
  ees8 8 8 4 16 16
  aes4 8 ees4 8
  f4 16 16 4 des8
  c4. r4 c16 16 % C
  e4 8 f4 8
  e4 8 f4 ees8
  a8. 16 8 8 8 ees
  g8(f) g aes4 8 % D
  aes8. 16 8 8 ees d
  des8(8\fermata) d c4\fermata

  % v3
  c8
  ees8. 16 8 4 8
  ees4 8 4 8
  aes4 16 16 ees4 8
  g4. r4 c,16 16 % B
  ees8 8 8 4 16 16
  aes4 8 ees4 16 16
  f4 8 8 8 des
  c4. r4 r8 % C
  e8. 16 8 f8 8 8
  e4 8 f4 r8
  a4 8 8 8 ees
  g8 f g aes4 r8 % D
  aes4 8 8 ees d
  des8 8\fermata d c4\fermata

% v4
  c8
  ees8. 16 8 4 8
  ees4 8 4 8
  aes4 16 16 ees4 8
  g4. r4 c,16 16 % B
  ees4 8 4 16 16
  aes4 8 ees4 16 16
  f4 8 8 8 des
  c4. r4 c8 % C
  e4 8 f8 8 8
  e4 8 f4 r8
  a8. 16 8 8 8 ees
  g8 f g aes4 r8 % D
  aes8. 16 8 8 ees d
  des8 8\fermata d c4\fermata

% v5
  c8
  ees8. 16 8 4 8
  ees4 8 4 8
  aes4 16 16 ees4 8
  g4. r4 c,16 16 % B
  ees4 8 4 16 16
  aes4 8 ees4 8
  f4 16 16 4 des8
  c4. r4 c16 16 % C
  e4 8 f8 8 8
  e4 8 f4 ees8
  a8. 16 8 4 ees8
  g8(f) g aes4 8 % D
  aes8. 16 8 8(ees) d
  des8(8\fermata) d c4\fermata
}

tenorRepeat = \relative {
  \autoBeamOff
  \slurDashed aes16(16)
  c8.(16) 8 4 8
  bes8(bes) 8 c4 c16(16)
  ees4 16(16) c4 8
  ees4. r4 ees16(16) % B
  c8(8) 8 4 16(16)
  ees4 8 c4 aes16(16)
  aes4 bes16(16) 8(8) 8
  aes4. r4 aes16(16) % C
  g8.(16) c8 8(8) 8
  c4 8 4 8
  c8.(16) 8 8(ees) aes,
  ees'4 8 4 c8 % D
  c8.(16) des8 c(aes) aes
  g8(8\fermata) 8 aes4\fermata
}

tenorSingle = \relative {
  \autoBeamOff
  aes16 16
  c8. 16 8 4 8
  bes4 8 c4 c16 16
  ees4 8 c4 8
  ees4. r4 ees8 % B
  c4 8 4 16 16
  ees4 8 c4 aes8
  aes4 bes16 16 4 8
  aes4. r4 aes8 % C
  g8. 16 c8 4 8
  c4 8 4 8
  c8. 16 8 8(ees) aes,
  ees'4 8 4 c8 % D
  c4 des8 c aes aes
  g4\fermata 8 aes4\fermata

% v2
  aes8
  c4 8 4 8
  bes8 bes8 8 c4 c8
  ees4 16 16 c4 8
  ees4. r4 ees16 16 % B
  c8 8 8 4 16 16
  ees4 8 c4 aes8
  aes4 bes16 16 4 8
  aes4. r4 aes16 16 % C
  g4 c8 4 8
  c4 8 4 8
  c8. 16 8 8 ees aes,
  ees'4 8 4 c8 % D
  c8. 16 des8 c aes aes
  g4\fermata 8 aes4\fermata

% v3
  aes8
  c8. 16 8 4 8
  bes4 8 c4 c8
  ees4 16 16 c4 8
  ees4. r4 ees16 16 % B
  c8 8 8 4 16 16
  ees4 8 c4 aes16 16
  aes4 bes8 8 8 8
  aes4. r4 r8 % C
  g8. 16 c8 8 8 8
  c4 8 4 r8
  c4 8 8 ees aes,
  ees'8 8 8 4 r8 % D
  c4 des8 c aes aes
  g8 8\fermata 8 aes4\fermata

% v4
  aes8
  c8. 16 8 4 8
  bes4 8 c4 c8
  ees4 16 16 c4 8
  ees4. r4 ees16 16 % B
  c4 8 4 16 16
  ees4 8 c4 aes16 16
  aes4 bes8 8 8 8
  aes4. r4 aes8 % C
  g4 c8 8 8 8
  c4 8 4 r8
  c8. 16 8 8 ees aes,
  ees'4 8 4 r8 % D
  c8. 16 des8 c aes aes
  g8 8\fermata 8 aes4\fermata

% v5
  aes8
  c8. 16 8 4 8
  bes4 8 c4 c8
  ees4 16 16 c4 8
  ees4. r4 ees16 16 % B
  c4 8 4 16 16
  ees4 8 c4 aes8
  aes4 bes16 16 4 8
  aes4. r4 aes16 16 % C
  g4 c8 8 8 8
  c4 8 4 8
  c8. 16 8 8(ees) aes,
  ees'4 8 4 c8 % D
  c8. 16 des8 c aes aes
  g4\fermata 8 aes4\fermata
}

bassRepeat = \relative {
  \autoBeamOff
  \slurDashed aes,16(16)
  aes'8.(16) 8 4 8
  ees8(8) 8 aes4 16(16)
  aes4 16(16) 4 8
  ees4. r4 aes16(16)
  aes8(8) 8 4 16(16)
  aes4 8 4 c,16(c)
  des4 16(16) ees8(8) 8
  aes,4. r4 f'16(16) % C
  c8.(16) 8 f8(8) 8
  c4 8 f4 g8
  aes8.(16) 8 8(8) c,
  ees4 8 aes 4 8 % D
  aes8.(16) 8 8(8) f
  ees8(8\fermata) 8 aes,4\fermata
}

bassSingle = \relative {
  \autoBeamOff
  aes,16 16
  aes'8. 16 8 4 8
  ees4 8 aes4 16 16
  aes4 8 4 8
  ees4. r4 aes8 % B
  aes4 8 4 16 16
  aes4 8 4 c,8
  des4 16 16 ees4 8
  aes,4. r4 f'8 % C
  c8. 16 8 f4 8
  c4 8 f4 g8
  aes8. 16 8 4 c,8
  ees4 8 aes 4 8 % D
  aes4 8 8 8 f
  ees4\fermata 8 aes,4\fermata

% v2
  aes8
  aes'4 8 4 8
  ees8 8 8 aes4 8
  aes4 16 16 4 8
  ees4. r4 aes16 16 % B
  aes8 8 8 4 16 16
  aes4 8 4 c,8
  des4 16 16 ees4 8
  aes,4. r4 f'16 16 % C
  c4 8 f4 8
  c4 8 f4 g8
  aes8. 16 8 8 8 c,
  ees4 8 aes 4 8 % D
  aes8. 16 8 8 8 f
  ees4\fermata 8 aes,4\fermata

% v3
  aes8
  aes'8. 16 8 4 8
  ees4 8 aes4 8
  aes4 16 16 4 8
  ees4. r4 aes16 16 % B
  aes8 8 8 4 16 16
  aes4 8 4 c,16 c
  des4 8 ees8 8 8
  aes,4. r4 r8  % C
  c8. 16 8 f8 8 8
  c4 8 f4 r8
  aes4 8 8 8 c,8
  ees8 8 8 aes 4 r8 % D
  aes4 8 8 8 f
  ees8 8\fermata 8 aes,4\fermata

 % v4
  aes8
  aes'8. 16 8 4 8
  ees4 8 aes4 8
  aes4 16 16 4 8
  ees4. r4 aes16 16 % B
  aes4 8 4 16 16
  aes4 8 4 c,16 c
  des4 8 ees8 8 8
  aes,4. r4 f'8 % C
  c4 8 f8 8 8
  c4 8 f4 r8
  aes8. 16 8 8 8 c,
  ees4 8 aes 4 r8 % D
  aes8. 16 8 8 8 f
  ees8 8\fermata 8 aes,4\fermata

% v5
  aes8
  aes'8. 16 8 4 8
  ees4 8 aes4 8
  aes4 16 16 4 8
  ees4. r4 aes16 16
  aes4 8 4 16 16
  aes4 8 4 c,8
  des4 16 16 ees4 8
  aes,4. r4 f'16 16 % C
  c4 8 f8 8 8
  c4 8 f4 g8
  aes8. 16 8 4 c,8
  ees4 8 aes 4 8 % D
  aes8. 16 8 8 8 f
  ees4 \fermata 8 aes,4\fermata
}

chorus = \lyricmode {
}

nom  = {\set ignoreMelismata = ##t }
yesm = {\unset ignoreMelismata}

wordsOne = \lyricmode {
  \set stanza = "1."
  \nom There were nine -- ty and nine that \yesm safe -- ly lay
  \nom In the \yesm shel -- ter of the fold,
  But one was out \nom on the hills a -- way,
  \yesm Far off \nom from the \yesm gates of gold—
  A -- \nom way on the \yesm moun -- tains wild and bare,
  A -- \nom way
  from the \yesm ten -- der Shep -- herd's care,
  A -- way \nom from the ten -- der \yesm Shep -- herd's care.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  \yesm "\"Lord," Thou hast here Thy \nom nine -- ty and nine;
  \yesm Are they \nom not e -- nough for "Thee?\""
  But the Shep -- herd made an an -- swer: "\"This" is Mine
  \yesm Has wan -- \nom dered a -- \yesm way from Me
  \nom And al -- \yesm though the road be rough and steep
  \nom I go to the de -- sert to \yesm find My sheep,
  \nom I go to the de -- sert to \yesm find My "sheep.\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  But \nom none of the ran -- somed \yesm e -- ver knew
  How deep \nom were the wa -- ters crossed:
  Nor how dark was the night that the Lord passed thro'
  Ere He \yesm found His \nom sheep that was lost:
  _ _ Out in the de -- sert He heard it's cry—
  _ \yesm Sick and \nom help -- less, and read -- dy to die,
  _ \yesm Sick and \nom help -- less and rea -- dy to die.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  "\"Lord," \nom whence are those blood -- drops \yesm all the way
  That \nom mark out the moun -- tain's "track?\""
  "\"They" were \yesm shed for one \nom who had gone a -- stray
  Ere the \yesm Shep -- herd \nom could bring him "back.\""
  \yesm "\"Lord," whence are \nom Thy hands so rent and "torn?\""
  _ "\"They" are pierced to -- night by man -- y  a "thorn.\""
  _ "\"They" are pierced to -- night by man -- y  a "thorn.\""
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  But \nom all through the moun -- tains, \yesm thun -- der -- riven,
  And up \nom from the rock -- y steep,
  There a -- \yesm rose a cry \nom to the gate of heaven:
  \yesm "\"Re" -- joice! \nom I have \yesm found my "sheep!\""
  \nom And the \yesm an -- gels \nom ech -- oed a -- round the throne,
  "\"Re" -- joice for the \yesm Lord brings back His "own!\""
  \nom "\"Re" -- joice for the \yesm Lord brings back His "own!\""

}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  There were nine -- ty and nine that safe -- ly lay
  In the shel -- ter of the fold,
  But one was out on the hills a -- way,
  Far off from the gates of gold—
  A -- way on the moun -- tains wild and bare,
  A -- way
  from the ten -- der Shep -- herd's care,
  A -- way from the ten -- der Shep -- herd's care.

  \set stanza = "2."
  "\"Lord," Thou hast here Thy nine -- ty and nine;
  Are they not e -- nough for "Thee?\""
  But the Shep -- herd made an an -- swer: "\"This" is Mine
  Has wan -- dered a -- way from Me
  And al -- though the road be rough and steep
  I go to the de -- sert to find My sheep,
  I go to the de -- sert to find My "sheep.\""

  \set stanza = "3."
  But none of the ran -- somed e -- ver knew
  How deep were the wa -- ters crossed:
  Nor how dark was the night that the Lord passed thro'
  Ere He found His sheep that was lost:
  Out in the de -- sert He heard it's cry—
  Sick and help -- less, and read -- dy to die,
  Sick and help -- less and rea -- dy to die.

  \set stanza = "4."
  "\"Lord," whence are those blood -- drops all the way
  That mark out the moun -- tain's "track?\""
  "\"They" were shed for one who had gone a -- stray
  Ere the Shep -- herd could bring him "back.\""
  "\"Lord," whence are Thy hands so rent and "torn?\""
  "\"They" are pierced to -- night by man -- y  a "thorn.\""
  "\"They" are pierced to -- night by man -- y  a "thorn.\""

  \set stanza = "5."
  But all through the moun -- tains, thun -- der -- riven,
  And up from the rock -- y steep,
  There a -- rose a cry to the gate of heaven:
  "\"Re" -- joice! I have found my "sheep!\""
  And the ang -- els ech -- oed a -- round the throne,
  "\"Re" -- joice for the Lord brings back His "own!\""
  "\"Re" -- joice for the Lord brings back His "own!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There " "were " nine "ty " "and " "nine " "that " safe "ly " "lay "
  "\nIn " "the " shel "ter " "of " "the " "fold, "
  "\nBut " "one " "was " "out " "on " "the " "hills " a "way, "
  "\nFar " "off " "from " "the " "gates " "of " "gold— "
  "\nA" "way " "on " "the " moun "tains " "wild " "and " "bare, "
  "\nA" "way "
  "\nfrom " "the " ten "der " Shep "herd's " "care, "
  "\nA" "way " "from " "the " ten "der " Shep "herd's " "care. "

  \set stanza = "2."
  "\n\"Lord, " "Thou " "hast " "here " "Thy " nine "ty " "and " "nine; "
  "\nAre " "they " "not " e "nough " "for " "Thee?\" "
  "\nBut " "the " Shep "herd " "made " "an " an "swer: " "\"This " "is " "Mine "
  "\nHas " wan "dered " a "way " "from " "Me "
  "\nAnd " al "though " "the " "road " "be " "rough " "and " "steep "
  "\nI " "go " "to " "the " de "sert " "to " "find " "My " "sheep, "
  "\nI " "go " "to " "the " de "sert " "to " "find " "My " "sheep.\" "

  \set stanza = "3."
  "\nBut " "none " "of " "the " ran "somed " e "ver " "knew "
  "\nHow " "deep " "were " "the " wa "ters " "crossed: "
  "\nNor " "how " "dark " "was " "the " "night " "that " "the " "Lord " "passed " "thro' "
  "\nEre " "He " "found " "His " "sheep " "that " "was " "lost: "
  "\nOut " "in " "the " de "sert " "He " "heard " "it's " "cry— "
  "\nSick " "and " help "less, " "and " read "dy " "to " "die, "
  "\nSick " "and " help "less " "and " rea "dy " "to " "die. "

  \set stanza = "4."
  "\n\"Lord, " "whence " "are " "those " blood "drops " "all " "the " "way "
  "\nThat " "mark " "out " "the " moun "tain's " "track?\" "
  "\n\"They " "were " "shed " "for " "one " "who " "had " "gone " a "stray "
  "\nEre " "the " Shep "herd " "could " "bring " "him " "back.\" "
  "\n\"Lord, " "whence " "are " "Thy " "hands " "so " "rent " "and " "torn?\" "

  "\n\"They " "are " "pierced " to "night " "by " man "y "  "a " "thorn.\" "
  "\n\"They " "are " "pierced " to "night " "by " man "y "  "a " "thorn.\" "

  \set stanza = "5."
  "\nBut " "all " "through " "the " moun "tains, " thun der "riven, "
  "\nAnd " "up " "from " "the " rock "y " "steep, "
  "\nThere " a "rose " "a " "cry " "to " "the " "gate " "of " "heaven: "
  "\n\"Re" "joice! " "I " "have " "found " "my " "sheep!\" "
  "\nAnd " "the " ang "els " ech "oed " a "round " "the " "throne, "
  "\n\"Re" "joice " "for " "the " "Lord " "brings " "back " "His " "own!\" "
  "\n\"Re" "joice " "for " "the " "Lord " "brings " "back " "His " "own!\" "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
%            \new Voice \TempoTrack
            \new NullVoice = "aligner" \sopranoRepeat
            \new Voice = "women" \partCombine { \global \sopranoRepeat \bar "|." } { \global \altoRepeat }
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
            \new Voice = "men" \partCombine { \global \tenorRepeat } { \global \bassRepeat }
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
            \new NullVoice = "aligner" \sopranoSingle
            \new Voice = "women" \partCombine { \global \sopranoSingle \bar "|." } { \global \altoSingle }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenorSingle } { \global \bassSingle }
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
            \new NullVoice = "aligner" \sopranoSingle
            \new Voice = "women" \partCombine { \global \sopranoSingle \bar "|." } { \global \altoSingle }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenorSingle } { \global \bassSingle }
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
    \context GrandStaff <<
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
            \new NullVoice = "aligner" \sopranoSingle
            \new Voice = "women" \partCombine { \global \sopranoSingle \bar "|." } { \global \altoSingle }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenorSingle } { \global \bassSingle }
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
    \midi {}
  }
}
