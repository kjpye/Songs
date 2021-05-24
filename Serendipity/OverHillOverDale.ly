\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Over Hill, Over Dale"
  subtitle    = "A Midsummer Night's Dream, Act II, Sc. I"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Vaughan Williams"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
  tagline     = "tagline" % default lilypond version
% tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key g \major
  \time 6/8
  \partial 4
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \mark \markup { \box 5 }
%  \mark \markup { \circle "1a" }
  s4
  s2.
  s2.
  s2. % 3
  s2 \repeat volta 2 { s4
                       \set Score.currentBarNumber = #5
                       s2.*2
                       \time 9/8 s4.*3 \time 6/8
                       s2.
                       s2. % 9
                       \time 9/8 s4.*3 \time 6/8
                       s2.*19
                       \time 9/8 s4.*3 \time 6/8
                       s2.*9
                       s2
                     } s4
  s2.*4
}

soprano = \relative {
  \global
  <g' b>8^\p^\markup\bold "Allegro vivace" q
  <b d>4.~8 <g b>8 q
  <b d>4.~8 r r
  R2. % 3
  r4 r8 r \repeat volta 2 { b b
                            e8 b b d b b
                            e8 b b d4.^\< \time 9/8
                            e4\! d8 b4 a8 g8. a16^\> b8\! \time 6/8
                            e,2.~
                            e2. \time 9/8 e'4 d8 b4 a8 g(e^\>) a\! \time 6/8
                            e2.~
                            e2.~
                            e8 r r e'4 d8 % 13
                            b4.~4 a8
                            g4. b % 15
                            a4.~4 b8
                            e4. d % 17
                            b4.~4 a8
                            g4. b % 19
                            a4.~8 r e
                            a4 b8 c4 d8
                            c8. d16 b8 a4.~ % 22
                            a4. \tuplet 2/3 {a8 b}
                            \tuplet 2/3 {c8 d} \tuplet 2/3 {e8 a,}
                            d2.^\< % 25
                            a4^\f b8 c4 d8
                            c4 d8 c4 b8
                            a4 b8 c4 d8 % 18
                            e4 d8 e4 fis8 \time 9/8
                            r4 r8 g4.^\f \tuplet 2/3 {e8 e} \time 6/8
                            d4 b8^\> a4 g8 % 31
                            a4.^\p ~ 8 r a
                            e'4 fis8 \tuplet 2/3 {g8( e}
                            \tuplet 2/3 {d8 b)} \tuplet 2/3 {a8(g)} % 34
                            a4. b
                            d4.^\> b\!
                            d2.~
                            d8 r r r <g, b> q % 38
                            <b d>4.~8 <g b> q
                            <b d>4.~8
                          } r r
  r4 r8 r <g b>^\pp q % 41
  <b d>4. \( ~4 <g b>8
             <b d>4.~4 <g b>8
             <b d>2.\fermata \)
  \bar "|."
}

wordsSopA = \lyricmode {
  O -- ver hill, __ o -- ver dale, __
}

wordsSopB = \lyricmode {
  O -- ver park, o -- ver pale,
  Tho -- rough flood, tho -- rough fire,
  I do wan -- der ev -- er -- y -- where, __
  Swift -- er than the moon -- è's sphere; __
  And I serve __ the fai -- ry queen, __
  To dew her orbs __ up -- on the green. __
  The cow -- slips tall her pen -- sion -- ers be; __
  In their gold coats spots you see;
  Those be ru -- bies, fai -- ry fav -- ours,
  In those freck -- les live their sav -- ours:
  I must go seek some dew -- drops here, __
  And hang a pearl __ in __ ev -- ery cow -- slip's ear. __
  Tho -- rough bush, __ tho -- rough brier, __
}

wordsSopC = \lyricmode {
  O -- ver dale. __
}

wordsSopMidi = \lyricmode {
  "O" "ver " "hill, "  o "ver " "dale, " 
  "\nO" "ver " "park, " o "ver " "pale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nI " "do " wan "der " ev er y "where, " 
  "\nSwift" "er " "than " "the " moon "è's " "sphere; " 
  "\nAnd " "I " "serve "  "the " fai "ry " "queen, " 
  "\nTo " "dew " "her " "orbs "  up "on " "the " "green. " 
  "\nThe " cow "slips " "tall " "her " pen sion "ers " "be; " 
  "\nIn " "their " "gold " "coats " "spots " "you " "see; "
  "\nThose " "be " ru "bies, " fai "ry " fav "ours, "
  "\nIn " "those " freck "les " "live " "their " sav "ours: "
  "\nI " "must " "go " "seek " "some " dew "drops " "here, " 
  "\nAnd " "hang " "a " "pearl "  "in "  ev "ery " cow "slip's " "ear. " 
  "\nTho" "rough " "bush, "  tho "rough " "brier, " 
  "\nO" "ver " "park, " o "ver " "pale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nI " "do " wan "der " ev er y "where, " 
  "\nSwift" "er " "than " "the " moon "è's " "sphere; " 
  "\nAnd " "I " "serve "  "the " fai "ry " "queen, " 
  "\nTo " "dew " "her " "orbs "  up "on " "the " "green. " 
  "\nThe " cow "slips " "tall " "her " pen sion "ers " "be; " 
  "\nIn " "their " "gold " "coats " "spots " "you " "see; "
  "\nThose " "be " ru "bies, " fai "ry " fav "ours, "
  "\nIn " "those " freck "les " "live " "their " sav "ours: "
  "\nI " "must " "go " "seek " "some " dew "drops " "here, " 
  "\nAnd " "hang " "a " "pearl "  "in "  ev "ery " cow "slip's " "ear. " 
  "\nTho" "rough " "bush, "  tho "rough " "brier, " 
  "\nO" "ver " "dale. " 
}

alto = \relative {
  \global
  <e' g>8^\p q
  <ees g>4.~8 <e g> q
  <ees g>4.~8 r r
  R2. r4 r8 r \repeat volta 2 { g8 g
                                a8 g g a g g
                                a8 g g <g b>4.^\< ~ \time 9/8 % 6
                                q8\! r r r4 r8 r4 r8 \time 6/8
                                r8 b,^\pp b d b b
                                e8 b b d b b % 9
                                \time 9/8 e4.~8 r r r4 r8 \time 6/8
                                r8 e^\pp e g e e % 11
                                g8^\< a a c a a
                                c8^\> a a\! g^\pp e e % 13
                                g8 e e d e fis
                                g8 e e d e g % 15
                                a8 e e g e e
                                e8 g g e a a % 17
                                g8 e e d e e
                                g8 e^\< e d4 e8 % 19
                                a4\! e8^\> g8. 16 e8
                                f8\! r r r4 r8
                                r4 r8 e4^\pp 8 % 22
                                e4 8 8. 16 8
                                e4.~8 r r
                                <d f>4^\pp <e g>8 <d fis>4.^\< % 25
                                e4^\f f8 g4 a8
                                g4 f8 g4 f8
                                e4 f8 g4 a8 % 28
                                b4 a8 g4^\< ( a8 \time 9/8
                                <g b>4.\!) q8 r r r4 r8 \time 6/8
                                R2. % 31
                                e4.^\pp (g)
                                e4.~8 r r
                                R2.*4
                                r4 r8 r <e g>^\pp q % 38
                                <ees g>4.~8 <e g> q
                                <ees g>4.~8
                              } r8 r
  r4 r8 r <e g> q % 41
  <ees g>4.~ \( q4 ~ (<e g>8) ~ (
                <ees g>4.) ~ q4 ~ (<e g>8)
                <ees g>2.\fermata \)
  \bar "|."
}

wordsAltoA = \lyricmode {
  O -- ver hill, __ o -- ver dale, __
}

wordsAltoB = \lyricmode {
  O -- ver park, o -- ver pale,
  Tho -- rough flood, tho -- rough fire,
  O -- ver hill, o -- ver dale,
  Tho -- rough bush, tho -- rough brier, __
  O -- ver hill, o -- ver dale,
  Tho -- rough bush, tho -- rough brier, __
  O -- ver park, o -- ver pale,
  Tho -- rough flood, tho -- rough fire,
  O -- ver hill, o -- ver dale,
  Tho -- rough flood, tho -- rough fire,
  O -- ver park, o -- ver pale,
  Tho -- rough flood, tho -- rough fire,
  I do wan -- der, wan -- der ev -- er -- y -- where,
  Cow -- slips tall her pen -- sion -- ers be; __
  cow -- slips tall.

  Those be ru -- bies, fai -- ry fav -- ours,
  In those freck -- les live their sav -- ours:
  dew -- drops __

  Tho -- rough bush, __ tho -- rough brier, __
}

wordsAltoC = \lyricmode {
  O -- ver dale. __
}

wordsAltoMidi = \lyricmode {
  "O" "ver " "hill, "  o "ver " "dale, " 
  "\nO" "ver " "park, " o "ver " "pale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nO" "ver " "hill, " o "ver " "dale, "
  "\nTho" "rough " "bush, " tho "rough " "brier, " 
  "\nO" "ver " "hill, " o "ver " "dale, "
  "\nTho" "rough " "bush, " tho "rough " "brier, " 
  "\nO" "ver " "park, " o "ver " "pale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nO" "ver " "hill, " o "ver " "dale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nO" "ver " "park, " o "ver " "pale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nI " "do " wan "der, " wan "der " ev er y "where, "
  "\nCow" "slips " "tall " "her " pen sion "ers " "be; " 
  "\ncow" "slips " "tall. "

  "\nThose " "be " ru "bies, " fai "ry " fav "ours, "
  "\nIn " "those " freck "les " "live " "their " sav "ours: "
  "\ndew" "drops " 

  "\nTho" "rough " "bush, "  tho "rough " "brier, " 

  "\nO" "ver " "park, " o "ver " "pale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nO" "ver " "hill, " o "ver " "dale, "
  "\nTho" "rough " "bush, " tho "rough " "brier, " 
  "\nO" "ver " "hill, " o "ver " "dale, "
  "\nTho" "rough " "bush, " tho "rough " "brier, " 
  "\nO" "ver " "park, " o "ver " "pale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nO" "ver " "hill, " o "ver " "dale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nO" "ver " "park, " o "ver " "pale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nI " "do " wan "der, " wan "der " ev er y "where, "
  "\nCow" "slips " "tall " "her " pen sion "ers " "be; " 
  "\ncow" "slips " "tall. "

  "\nThose " "be " ru "bies, " fai "ry " fav "ours, "
  "\nIn " "those " freck "les " "live " "their " sav "ours: "
  "\ndew" "drops " 

  "\nTho" "rough " "bush, "  tho "rough " "brier, " 

  "\nO" "ver " "dale. " 
}

tenor = \relative {
  \global
  r8 r
  R2.
  r4 r8 r b^\p b
  <b d>4.~8 b b % 3
  <b d>4.~8 \repeat volta 2 { b8 b
                              b8 d d b d d
                              b8 d d b4.^\< ~ \time 9/8 % 6
                              b8\! r r r4 r8 r4 r8 \time 6/8
                              r8 g^\pp g a g g
                              a8 g g a g g \time 9/8 % 9
                              <g b>4.~8 r r r4 r8 \time 6/8
                              r8 c^\pp c d c c % 11
                              d8^\< c c e c c
                              e8^\> c c\! b^\pp g b % 13
                              b8 g g b g a
                              b8 d d b d d % 15
                              d8 c c d c b
                              b8 g g a fis fis % 17
                              b8 g g b g g
                              b8 g^\< g b4 g8 % 19
                              c4\! c8^\> d8. 16 c8\!
                              d8 r r r4 r8
                              r4 r8 c4^\pp c8 % 22
                              c4 8 8. 16 8
                              c4.~8 r r
                              a4^\pp c8 a4.^\< % 25
                              c4^\f d8 e4 f8
                              e4 d8 e4 d8
                              c4 d8 e4 f8 % 28
                              g4 f8 e4^\< ( c8 \time 9/8
                              b4.\! ) b8 r r r4 r8 \time 6/8
                              R2. % 31
                              <a c>4.^\pp (<a e'>)
                              <a c>4.~q8 r r
                              R2. % 34
                              R2.
                              r4 r8 r <g b>^\pp q
                              <b d>4.~8 <g b> q
                              <b d>4.^\> ~ q8\! r r % 38
                              R2.
                              r4 r8 r
                            } <g b>8^\pp q
  <b d>4.^\> ~ q8\! r r % 41
  R2.
  R2.
  R2.\fermata
%  \bar "|."
}

wordsTenorA = \lyricmode {
  Tho -- rough bush, __ tho -- rough brier, __
}

wordsTenorB = \lyricmode {
  O -- ver park, o -- ver pale,
  Tho -- rough flood, tho -- rough fire,
  O -- ver hill, o -- ver dale,
  Tho -- rough bush, tho -- rough brier, __
  O -- ver hill, o -- ver dale,
  Tho -- rough bush, tho -- rough brier, __
  O -- ver park, o -- ver pale,
  Tho -- rough flood, tho -- rough fire,
  O -- ver hill, o -- ver dale,
  Tho -- rough flood, tho -- rough fire,
  O -- ver park, o -- ver pale,
  Tho -- rough flood, tho -- rough fire,
  I do wan -- der, wan -- der ev -- er -- y -- where,
  Cow -- slips tall her pen -- sion -- ers be; __
  cow -- slips tall.

  Those be ru -- bies, fai -- ry fav -- ours,
  In those freck -- les live their sav -- ours:
  dew -- drops __

  O -- ver hill, __ o -- ver dale, __
}

wordsTenorC = \lyricmode {
  O -- ver hill. __
}

wordsTenorMidi = \lyricmode {
  "Tho" "rough " "bush, "  tho "rough " "brier, " 
  "\nO" "ver " "park, " o "ver " "pale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nO" "ver " "hill, " o "ver " "dale, "
  "\nTho" "rough " "bush, " tho "rough " "brier, " 
  "\nO" "ver " "hill, " o "ver " "dale, "
  "\nTho" "rough " "bush, " tho "rough " "brier, " 
  "\nO" "ver " "park, " o "ver " "pale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nO" "ver " "hill, " o "ver " "dale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nO" "ver " "park, " o "ver " "pale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nI " "do " wan "der, " wan "der " ev er y "where, "
  "\nCow" "slips " "tall " "her " pen sion "ers " "be; " 
  "\ncow" "slips " "tall. "

  "\nThose " "be " ru "bies, " fai "ry " fav "ours, "
  "\nIn " "those " freck "les " "live " "their " sav "ours: "
  "\ndew" "drops " 

  "\nO" "ver " "hill, "  o "ver " "dale, " 

  "\nO" "ver " "park, " o "ver " "pale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nO" "ver " "hill, " o "ver " "dale, "
  "\nTho" "rough " "bush, " tho "rough " "brier, " 
  "\nO" "ver " "hill, " o "ver " "dale, "
  "\nTho" "rough " "bush, " tho "rough " "brier, " 
  "\nO" "ver " "park, " o "ver " "pale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nO" "ver " "hill, " o "ver " "dale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nO" "ver " "park, " o "ver " "pale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nI " "do " wan "der, " wan "der " ev er y "where, "
  "\nCow" "slips " "tall " "her " pen sion "ers " "be; " 
  "\ncow" "slips " "tall. "

  "\nThose " "be " ru "bies, " fai "ry " fav "ours, "
  "\nIn " "those " freck "les " "live " "their " sav "ours: "
  "\ndew" "drops " 

  "\nO" "ver " "hill, "  o "ver " "dale, " 

  "\nO" "ver " "hill. " 
}

bass = \relative {
  \global
  r8 r
  R2.
  r4 r8 r <e g>^\p q
  <ees g>4.~8 <e g> q % 3
  <ees g>4.~8 \repeat volta 2 { g8 g
                                d8 g g e g g
                                d8 g g e4.^\< ~ \time 9/8 % 6
                                e8 r r r4 r8 r4 r8 \time 6/8
                                r8 e^\pp e d e e
                                b8 e e d e e \time 9/8 % 9
                                b4.~8 r r r4 r8 \time 6/8
                                r8 a'^\pp a e a a % 11
                                e8^\< a a g a a
                                g8^\> a a\! b^\pp e, e % 13
                                d8 e e g e e
                                d8 e e g e e % 15
                                a8 g g e g g
                                g8 e e fis e e % 17
                                d8 e e g e e
                                d8 e^\< e g4 e8 % 19
                                a4\! g8^\> e8. a16 8\!
                                d8 r r r4 r8
                                r4 r8 a4^\pp 8 % 22
                                g4 a8 e8. a16 8
                                a4.~8 r r
                                d,4^\pp d8 e4.^\< % 25
                                a4^\f g8 e4 g8
                                a4 g8 e4 g8
                                a4 g8 e4 g8 % 28
                                e4 g8 e4^\< ( d8 \time 9/8
                                e4.\! ) 8 r r r4 r8 \time 6/8
                                R2. % 31
                                <a, e'>4.^\pp (<c g'>)
                                <a e'>4.~8 r r
                                R2. % 34
                                R2.
                                r4 r8 r <e' g>^\pp q
                                <ees g>4.~8 <e g> q
                                <ees g>4.^\> ~ q8\! r r % 38
                                R2.
                                r4 r8 r
                              } <e g>8^\pp q
  <ees g>4.^\> ~ q8\! r r % 41
  R2.
  R2.
  R2.\fermata
%  \bar "|."
}

wordsBassA = \lyricmode {
  Tho -- rough bush, __ tho -- rough brier, __
}

wordsBassB = \lyricmode {
  O -- ver park, o -- ver pale,
  Tho -- rough flood, tho -- rough fire,
  O -- ver hill, o -- ver dale,
  Tho -- rough bush, tho -- rough brier, __
  O -- ver hill, o -- ver dale,
  Tho -- rough bush, tho -- rough brier, __
  O -- ver park, o -- ver pale,
  Tho -- rough flood, tho -- rough fire,
  O -- ver hill, o -- ver dale,
  Tho -- rough flood, tho -- rough fire,
  O -- ver park, o -- ver pale,
  Tho -- rough flood, tho -- rough fire,
  I do wan -- der, wan -- der ev -- er -- y -- where,
  Cow -- slips tall her pen -- sion -- ers be; __
  cow -- slips tall.

  Those be ru -- bies, fai -- ry fav -- ours,
  In those freck -- les live their sav -- ours:
  dew -- drops __

  O -- ver hill, __ o -- ver dale, __
}

wordsBassC = \lyricmode {
  O -- ver hill. __
}

wordsBassMidi = \lyricmode {
  "Tho" "rough " "bush, "  tho "rough " "brier, " 
  "\nO" "ver " "park, " o "ver " "pale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nO" "ver " "hill, " o "ver " "dale, "
  "\nTho" "rough " "bush, " tho "rough " "brier, " 
  "\nO" "ver " "hill, " o "ver " "dale, "
  "\nTho" "rough " "bush, " tho "rough " "brier, " 
  "\nO" "ver " "park, " o "ver " "pale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nO" "ver " "hill, " o "ver " "dale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nO" "ver " "park, " o "ver " "pale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nI " "do " wan "der, " wan "der " ev er y "where, "
  "\nCow" "slips " "tall " "her " pen sion "ers " "be; " 
  "\ncow" "slips " "tall. "

  "\nThose " "be " ru "bies, " fai "ry " fav "ours, "
  "\nIn " "those " freck "les " "live " "their " sav "ours: "
  "\ndew" "drops " 

  "\nO" "ver " "hill, "  o "ver " "dale, " 

  "\nO" "ver " "park, " o "ver " "pale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nO" "ver " "hill, " o "ver " "dale, "
  "\nTho" "rough " "bush, " tho "rough " "brier, " 
  "\nO" "ver " "hill, " o "ver " "dale, "
  "\nTho" "rough " "bush, " tho "rough " "brier, " 
  "\nO" "ver " "park, " o "ver " "pale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nO" "ver " "hill, " o "ver " "dale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nO" "ver " "park, " o "ver " "pale, "
  "\nTho" "rough " "flood, " tho "rough " "fire, "
  "\nI " "do " wan "der, " wan "der " ev er y "where, "
  "\nCow" "slips " "tall " "her " pen sion "ers " "be; " 
  "\ncow" "slips " "tall. "

  "\nThose " "be " ru "bies, " fai "ry " fav "ours, "
  "\nIn " "those " freck "les " "live " "their " sav "ours: "
  "\ndew" "drops " 

  "\nO" "ver " "hill, "  o "ver " "dale, " 

  "\nO" "ver " "hill. " 
}

pianoRHone = \relative {
  \global
  \voiceOne
  c4
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  c4
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  \voiceOne
  c4
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  c4
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" { \wordsSopA \wordsSopB \wordsSopC }
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" { \wordsAltoA \wordsAltoB \wordsAltoC }
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" { \wordsTenorA \wordsTenorB \wordsTenorC }
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" { \wordsBassA \wordsBassB \wordsBassC }
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
%           \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
%           \new Voice \partCombine \pianoLHone \pianoLHtwo
            \new Voice \partCombine \tenor \bass
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" { \wordsSopA \wordsSopB \wordsSopB \wordsSopC }
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" { \wordsAltoA \wordsAltoB \wordsAltoB \wordsAltoC }
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" { \wordsTenorA \wordsTenorB \wordsTenorB \wordsTenorC }
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" { \wordsBassA \wordsBassB \wordsBassB \wordsBassC }
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
%           \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
%           \new Voice \partCombine \pianoLHone \pianoLHtwo
            \new Voice \partCombine \tenor \bass
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" { \wordsSopA \wordsSopB \wordsSopB \wordsSopC }
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" { \wordsAltoA \wordsAltoB \wordsAltoB \wordsAltoC }
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" { \wordsTenorA \wordsTenorB \wordsTenorB \wordsTenorC }
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" { \wordsBassA \wordsBassB \wordsBassB \wordsBassC }
          >>
        >>
%        \new PianoStaff <<
%          \new Staff \with { printPartCombineTexts = ##f }
%          <<
%%           \new Voice \partCombine \pianoRHone \pianoRHtwo
%            \new Voice \partCombine \soprano \alto
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff \with { printPartCombineTexts = ##f }
%          <<
%            \clef "bass"
%%           \new Voice \partCombine \pianoLHone \pianoLHtwo
%            \new Voice \partCombine \tenor \bass
%          >>
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
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
          >>
        >>
%        \new PianoStaff <<
%          \new Staff \with { printPartCombineTexts = ##f }
%          <<
%%           \new Voice \partCombine \pianoRHone \pianoRHtwo
%            \new Voice \partCombine \soprano \alto
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff \with { printPartCombineTexts = ##f }
%          <<
%            \clef "bass"
%%           \new Voice \partCombine \pianoLHone \pianoLHtwo
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
      >>
    >>
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
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
          >>
        >>
%        \new PianoStaff <<
%          \new Staff \with { printPartCombineTexts = ##f }
%          <<
%%           \new Voice \partCombine \pianoRHone \pianoRHtwo
%            \new Voice \partCombine \soprano \alto
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff \with { printPartCombineTexts = ##f }
%          <<
%            \clef "bass"
%%           \new Voice \partCombine \pianoLHone \pianoLHtwo
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-men"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
%            \new Lyrics \lyricsto "bass" \wordsBassMidi
          >>
        >>
%        \new PianoStaff <<
%          \new Staff \with { printPartCombineTexts = ##f }
%          <<
%%           \new Voice \partCombine \pianoRHone \pianoRHtwo
%            \new Voice \partCombine \soprano \alto
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff \with { printPartCombineTexts = ##f }
%          <<
%            \clef "bass"
%%           \new Voice \partCombine \pianoLHone \pianoLHtwo
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
      >>
    >>
    \midi {}
  }
}
