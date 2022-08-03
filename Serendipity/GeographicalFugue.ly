\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Geographical Fugue"
  subtitle    = "for Speaking Chorus"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Ernst Toch"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
% tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key c \major
  \time 4/4
  \tempo 4=60
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \box "1a" } s1
  \mark \markup { \box "1b" } s1
  \mark \markup { \box "1c" } s1
  \mark \markup { \box "1d" } s1
  \mark \markup { \box "2a" } s1
  \mark \markup { \box "2b" } s1
  \mark \markup { \box "2c" } s1
  \mark \markup { \box "2d" } s1
  \mark \markup { \box "2e" } s1
  \mark \markup { \box "3a" } s1
  \mark \markup { \box "3b" } s1
  \mark \markup { \box "3c" } s1
  \mark \markup { \box "3d" } s1
  \mark \markup { \box "4a" } s1
  \mark \markup { \box "4b" } s1
  \mark \markup { \box "4c" } s1
  \mark \markup { \box "4d" } s1
  \mark \markup { \box "4e" } s1
  \mark \markup { \box "5a" } s1
  \mark \markup { \box "5b" } s1
  \mark \markup { \box "5c" } s1
  \mark \markup { \box "5d" } s1
  \mark \markup { \box "6a" } s1
  \mark \markup { \box "6b" } s1
  \mark \markup { \box "6c" } s1
  \mark \markup { \box "6d" } s1
  \mark \markup { \box "7a" } s1
  \mark \markup { \box "7b" } s1
  \mark \markup { \box "7c" } s1
  \mark \markup { \box "7d" } s1
  \mark \markup { \box "8a" } s1
  \mark \markup { \box "8b" } s1
  \mark \markup { \box "8c" } s1
  \mark \markup { \box "8d" } s1
  \mark \markup { \box "9a" } s1
  \mark \markup { \box "9b" } s1
  \mark \markup { \box "9c" } s1
  \mark \markup { \box "9d" } s1
  \mark \markup { \box "10a" } s1
  \mark \markup { \box "10b" } s1
  \mark \markup { \box "10c" } s1
  \mark \markup { \box "10d" } s1
  \mark \markup { \box "11a" } s1
  \mark \markup { \box "11b" } s1
  \mark \markup { \box "11c" } s1
  \mark \markup { \box "11d" } s1
  \mark \markup { \box "12a" } s1
  \mark \markup { \box "12b" } s1
  \mark \markup { \box "12c" } s1
  \mark \markup { \box "12d" } s8
}

soprano = \relative c' {
  \global
  R1 % 1a
  R1 % 1b
  R1 % 1c
  R1 % 1d
  R1 % 2a
  R1
  c16->^\f 16-> 16-> r r8 c16^\p c16 8 16 16 16 16 16 16
  c8 16 16 16 16 16 16 8 16 16 16 16 r c
  \repeat unfold 8 \times 2/3 {c16 16 16}
  \times 2/3 {c16^\pp 16 16} \repeat unfold 7 \times 2/3 {c16 16 16} % 3a
  \repeat unfold 8 \times 2/3 {c16 16 16}
  c16^\f r r c^\mf c8 r16 c c8 r16 c c8 r16 c16
  c8 r r c16 c c c r8 r c16 c
  c16 c r8 r4 r2 % 4a
  R1
  \times 2/3 {c16^\p 16 16} \repeat unfold 7\times 2/3 {c16 16 16}
  \times 2/3 {c16^\pp 16 16} \repeat unfold 7 \times 2/3 {c16 16 16}
  \repeat unfold 4 \times 2/3 {c16 16 16} r2
  r4 r16 c32-.^\mf 32-. 16-. 16-. r16 c-. r c-. r8 c8->~ % 5a
  c8 c8-. r16 c32-. c32-. c16-. c16-. r c32-. c-. c16-. c-. r4
  c16 c c8~c16 c16-. r8 c16 c c8~c16 c16-. r8
  c16 c16 c8~ c16 c16 r8 c16 c16 c8~c16 c16 r8
  \repeat unfold 4 {c16 c c c} % 6a
  \repeat unfold 4 {c16 c c c}
  r2 r16 c16^\pp c8 r4
  r16 c c8 r4 r16 c c8 r4
  r8 c16^\pp c c c r8 r c16 c c c  r8 % 7a
  r4 r16 c16-.^\mf r c-. r8 c4->c8
  r8 c16^\p c r4 c8 c r4
  r2 c16->^\ff c-> c-> r r4
  c16^\mf c c8 c16 c c8 c r r4 % 8a
  c16 c c8 c16 c c8 c8 r r c16 c
  c8 c16 c c c r8 c4^\ff c
  c4 r8 c16^\mf c c8 c16 c c c c c
  c8 c16 c c c c c c8 c16 c c c r c % 9a
  \repeat unfold 8 \times 2/3 {c16 16 16}
  \times 2/3 {c16\omit\pp\omit\cresc^\markup{\dynamic pp \italic cresc.}  16 16} \repeat unfold 3 \times 2/3 {c16 16 16} \times 2/3 {c16^\p  16 16} \repeat unfold 3 \times 2/3 {c16 16 16}
  \times 2/3 {c16^\mf 16 16} \repeat unfold 3 \times 2/3 {c16 16 16} \times 2/3 {c16^\f 16 16} \repeat unfold 3 \times 2/3 {c16 16 16}
  \times 2/3 {c16^\ff^\> 16 16} \repeat unfold 3 \times 2/3 {c16 16 16} \times 2/3 {c16^\p 16 16} \times 2/3 {c16 16 16} c8^\f c % 10a
  c4 r r c8-^^\f c-^
  c8-^ r c-^ c-^ c-^ c-^ c-^ c-^
  c8-^ r c-^ c-^ c-^ c-^ c-^ c-^
  c8-^ r c-^ c-^ c-^ c-^ c-^ c-^ % 11a
  c8-^ c-^ c-^ c-^ c-^ c-^ c-^ c-^ % 11b
  c8-^ c-^ c-^ c-^ c-^ c-^ r4 % 11c
  \repeat unfold 4 \times 2/3 {c16 16 16} r2 % 11d
  R1 % 12a
  c1~\omit\fp\omit\cresc^\markup{\dynamic fp \italic cresc.}
  c1\omit\f\omit\cresc^\markup{\dynamic f \italic "cresc. molto"}
  c16->^\ff c-> c8->
  \bar "|."
}

wordsSop = \lyricmode {
  Trin- i- dad!
  And the big Mis- sis- sip- pi
  and the  town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  The Po- po- ca- te- pet- l is not in Can- a- da,
  rath- er in Mex- i- co, Mex- i- co, Mex- i- co!
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Yes, Ti- bet, Ti- bet, Ti- bet, Ti- bet,
  Yo- ko- ha- ma! Yo- ko- ha- ma!
  Ri- mi- mi Brin- di- si Brin- di- si Brin- di- si Brin- di- si
  Brin- di- si Brin- di- si Brin- di- si Brin- di- si Brin- di- si Brin- di- si Brin- di- si
  Po- po- ca- te- pet- l is not in Can- a- da,
  rath- er in Mex- i- co, Mex- i- co, Mex- i- co!
  Na- ga- sa- ki Yo- ko- ha- ma Na- ga- sa- ki Na- ga- sa- ki
  Yo- ko- ha- ma Hon- o- lu- lu
  Mis- sis- sip- pi
  Ti- ti- ca- ca
  Ti- ti- ca- ca
  Ti- ti- ca- ca
  Ti- ti- ca- ca
  Ti- ti- ca- ca
  Ti- ti- ca- ca
  Ti- ti- ca- ca
  Ti- ti- ca- ca
  Ti- ti- ca- ca
  Ti- bet Ti- bet Ti- bet
  Ti- ti- ca- ca
  Ti- ti- ca- ca
  Yo- ko- ha- ma Na- ga- sa- ki Trin- i- dad!
  And the big Mis- sis- sip- pi
  and the town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  Trin- i- dad!
  And the big Mis- sis- sip- pi
  and the town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  The Po- po- ca- te- pet- l is not in Can- a- da,
  rath- er in Mex- i- co, Mex- i- co, Mex- i- co!
  Can- a- da Can- a- da Má- la- ga Má- la- ga
  Can- a- da Can- a- da Má- la- ga Má- la- ga
  Can- a- da Can- a- da Má- la- ga Má- la- ga
  Can- a- da Can- a- da Má- la- ga Má- la- ga
  Má- la- ga Má- la- ga
  Má- la- ga Má- la- ga
  Má- la- ga Má- la- ga
  Trin- i- dad!
  And the big Mis- sis- sip- pi
  and the town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  Ti- ti- ca- ca
  Mis sis- sip- i
  Hon- o- lu- lu
  Ti- ti- ca- ca
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  "Tr- (with rolled \"r\")"
  Trin- i- dad!
}

wordsSopMidi = \lyricmode {
  "Trin" i "dad! "
  "\nAnd " "the " "big " Mis sis sip "pi "
  "\nand " "the "  "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nThe " Po po ca te pet "l " "is " "not " "in " Can a "da, "
  "\nrath" "er " "in " Mex i "co, " Mex i "co, " Mex i "co! "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nYes, " Ti "bet, " Ti "bet, " Ti "bet, " Ti "bet, "
  "\nYo" ko ha "ma! " Yo ko ha "ma! "
  "\nRi" mi "mi " Brin di "si " Brin di "si " Brin di "si " Brin di "si "
  "\nBrin" di "si " Brin di "si " Brin di "si " Brin di "si " Brin di "si " Brin di "si " Brin di "si "
  "\nPo" po ca te pet "l " "is " "not " "in " Can a "da, "
  "\nrath" "er " "in " Mex i "co, " Mex i "co, " Mex i "co! "
  "\nNa" ga sa "ki " Yo ko ha "ma " Na ga sa "ki " Na ga sa "ki "
  "\nYo" ko ha "ma " Hon o lu "lu "
  "\nMis" sis sip "pi "
  "\nTi" ti ca "ca "
  "\nTi" ti ca "ca "
  "\nTi" ti ca "ca "
  "\nTi" ti ca "ca "
  "\nTi" ti ca "ca "
  "\nTi" ti ca "ca "
  "\nTi" ti ca "ca "
  "\nTi" ti ca "ca "
  "\nTi" ti ca "ca "
  "\nTi" "bet " Ti "bet " Ti "bet "
  "\nTi" ti ca "ca "
  "\nTi" ti ca "ca "
  "\nYo" ko ha "ma " Na ga sa "ki " Trin i "dad! "
  "\nAnd " "the " "big " Mis sis sip "pi "
  "\nand " "the " "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nTrin" i "dad! "
  "\nAnd " "the " "big " Mis sis sip "pi "
  "\nand " "the " "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nThe " Po po ca te pet "l " "is " "not " "in " Can a "da, "
  "\nrath" "er " "in " Mex i "co, " Mex i "co, " Mex i "co! "
  "\nCan" a "da " Can a "da " Má la "ga " Má la "ga "
  "\nCan" a "da " Can a "da " Má la "ga " Má la "ga "
  "\nCan" a "da " Can a "da " Má la "ga " Má la "ga "
  "\nCan" a "da " Can a "da " Má la "ga " Má la "ga "
  "\nMá" la "ga " Má la "ga "
  "\nMá" la "ga " Má la "ga "
  "\nMá" la "ga " Má la "ga "
  "\nTrin" i "dad! "
  "\nAnd " "the " "big " Mis sis sip "pi "
  "\nand " "the " "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nTi" ti ca "ca "
  "\nMis " sis sip "i "
  "\nHon" o lu "lu "
  "\nTi" ti ca "ca "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nTr- (with rolled \"r\") "
  "\nTrin" i "dad! "
}

alto = \relative c' {
  \global
  R1
  R1
  R1
  c16->^\f 16-> 16-> r r8 c16^\p c16 8 16 16 16 16 16 16 % 1d
  c8 16 16 16 16 16 16 8 16 16 16 16 r c % 2a
  \repeat unfold 8 \times 2/3 {c16 16 16}
  \times 2/3 {c16^\pp 16 16} \repeat unfold 7 \times 2/3 {c16 16 16}
  \repeat unfold 8 \times 2/3 {c16 16 16}
  c16 r r c c8 r16 c c8 r16 c c8 r16 c16
  c8 c16^\mf c c8 c r c16 c c8 c % 3a
  r8 c16 c c8 c r c16 c c8 c
  r16 c^\mf c8 r16 c c8 r16 c c8 r16 c c8
  r8 c16 c c c r8 r c16 c c c r8
  \repeat unfold 4 \times 2/3 {c16  c c} \times 2/3 {c16^\dim  c c} \repeat unfold 3 \times 2/3 {c16  c c} % 4a
  \times 2/3 {c16^\p c c} \repeat unfold 7 \times 2/3 {c16  c c}
  R1
  r16 c16^\f c8 r4 r16 c32^\mf c c16 c r8 c16 c
  c16 c r8 r16 c32-. c-. c16-. c-. r c-. r c-. r8 c8~
  c8 c-. r4 r2 % 5a
  r16 c c8-. r4 r r8 c16^\p c
  c8. c16 r8 c16 c c8. c16 r8 c16 c
  c8. c16 r8 c16 c c8. c16 r8 r16 c^\f
  c8 r16 c c8 r16 c c8 r16 c c8 r % 6a
  R1
  r4 c16->^\ff c-> c-> r r8 16^\mf c c8 c16 c
  c16 c c c c8 c16 c c c c c c8 c16 c
  c16 c r8 r4 r r8 r16 c^\pp % 7a
  \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c}
  r2 r16 c r c r8 c->~
  c8 c r4 r2
  c16^\ff c c r r8 c16 c c8 c16 c c c c c % 8a
  c8 c16 c c c c c c8 c16 c c c r8
  R1
  c4^\ff c c c16^\mf c c8
  c16 c c c c c c8 c16 c c c c c c8 % 9a
  c16 c c c r8 r16 c \repeat unfold 4 \times 2/3 {c16 c c}
  \times 2/3 {c16\omit\pp\omit\cresc^\markup{\dynamic pp \italic cresc.} c c} \repeat unfold 3 \times 2/3 {c16 c c} \times 2/3 {c16^\p c c} \repeat unfold 3 \times 2/3 {c16 c c}
  \times 2/3 {c16^\mf c c} \repeat unfold 3 \times 2/3 {c16 c c} \times 2/3 {c16^\f c c} \repeat unfold 3 \times 2/3 {c16 c c}
  r4 c16->^\ff c-> c-> r r2 % 10a
  r8 c16^\p^\< c c8^\f c16^\p^\< c c^\f c r8 r4
  r8 c16^\p^\< c c8^\f c16^\p^\< c c^\f c r8 r4
  r8 c16^\p^\< c c8^\f c16^\p^\< c c^\f c r8 r4
  c16^\p^\> c c8^\f c16^\markup\italic "sim. sempre" c c c c c c8 c16 c c c % 11a
  c16 c c8 c16 c c c c c c c c c c c
  c16 c c c c c c c c c c c c c c c
  c16 c c c r4 \times 2/3 { c16-> c c} \times 2/3 { c16-> c c} \times 2/3 { c16-> c c} \times 2/3 { c16-> c c}
  R1 % 12a
  c16-> c-> c8-> r4 c16-> c-> c8-> r4
  c16 c c8^\markup\italic "cresc. molto" c16 c c8 c16 c c8 c16 c c8
  c16->^\ff c-> c8->
%  \bar "|."
}

wordsAlto = \lyricmode {
  Trin- i- dad!
  And the big Mis- sis- sip- pi
  and the  town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  The Po- po- ca- te- pet- l is not in Can- a- da,
  rath- er in Mex- i- co, Mex- i- co, Mex- i- co!
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Yes, Ti- bet, Ti- bet, Ti- bet, Ti- bet,
  Na- ga- sa- ki! Yo- ko- ha- ma!
  Na- ga- sa- ki! Yo- ko- ha- ma!
  Ti- bet, Ti- bet, Ti- bet, Ti- bet,
  Na- ga- sa- ki  
  Na- ga- sa- ki  
  Can- a- da, % 4a
  Can- a- da,
  Can- a- da,
  Can- a- da,
  Má- la- ga,
  Má- la- ga,
  Má- la- ga,
  Má- la- ga,
  Can- a- da,
  Má- la- ga,
  Can- a- da,
  Má- la- ga,
  Can- a- da,
  Má- la- ga,
  Can- a- da,
  Má- la- ga,
  Ti- bet
  Na- ga- sa- ki Yo- ko- ha- ma
  Na- ga- sa- ki Yo- ko- ha- ma
  Ti- bet % 5b
  Yo- ko- ha- ma
  Hon- o- lu- lu
  Mis- sis- sip- i
  Ti- ti- ca- ca
  Ti- bet % 6a
  Ti- bet
  Ti- bet
  Ti- bet
  Trin- i- dad!
  And the big Mis- sis- sip- pi
  and the  town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  The Po- po- ca- te- pet- l is not in Can- a- da, % 7a
  rath- er in Mex- i- co, Mex- i- co, Mex- i- co!
  Yo- ko- ha- ma
  Trin- i- dad! % 8a
  And the big Mis- sis- sip- pi
  and the  town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  Trin- i- dad!
  And the big
  Mis- sis- sip- pi % 9a
  and the  town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  The Po- po- ca- te- pet- l is not in Can- a- da, % 7a
  rath- er in Mex- i- co, Mex- i- co, Mex- i- co
  Mex- i- co, Mex- i- co, Mex- i- co, Mex- i- co
  Can- a- da,
  Can- a- da,
  Má- la- ga,
  Má- la- ga,
  Can- a- da,
  Can- a- da,
  Má- la- ga,
  Má- la- ga,
  Trin- i- dad! % 10a
  And the big Mis- sis- sip- pi
  and the  town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  And the big Mis- sis- sip- pi % 11a
  and the  town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  Mis- sis- sip- pi
  Hon- o- lu- lu
  Ti- ti- ca- ca.
  Mis- sis- sip- pi
  Mis- sis- sip- pi
  Mis- sis- sip- pi
  Mis- sis- sip- pi
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Trin- i- dad!
  Trin- i- dad!
  Trin- i- dad!
  Trin- i- dad!
  Trin- i- dad!
  Trin- i- dad!
  Trin- i- dad!
}

wordsAltoMidi = \lyricmode {
  "Trin" i "dad! "
  "\nAnd " "the " "big " Mis sis sip "pi "
  "\nand " "the "  "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nThe " Po po ca te pet "l " "is " "not " "in " Can a "da, "
  "\nrath" "er " "in " Mex i "co, " Mex i "co, " Mex i "co! "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nYes, " Ti "bet, " Ti "bet, " Ti "bet, " Ti "bet, "
  "\nNa" ga sa "ki! " Yo ko ha "ma! "
  "\nNa" ga sa "ki! " Yo ko ha "ma! "
  "\nTi" "bet, " Ti "bet, " Ti "bet, " Ti "bet, "
  "\nNa" ga sa "ki "  
  "\nNa" ga sa "ki "  
  "\nCan" a "da, " % 4a
  "\nCan" a "da, "
  "\nCan" a "da, "
  "\nCan" a "da, "
  "\nMá" la "ga, "
  "\nMá" la "ga, "
  "\nMá" la "ga, "
  "\nMá" la "ga, "
  "\nCan" a "da, "
  "\nMá" la "ga, "
  "\nCan" a "da, "
  "\nMá" la "ga, "
  "\nCan" a "da, "
  "\nMá" la "ga, "
  "\nCan" a "da, "
  "\nMá" la "ga, "
  "\nTi" "bet "
  "\nNa" ga sa "ki " Yo ko ha "ma "
  "\nNa" ga sa "ki " Yo ko ha "ma "
  "\nTi" "bet " % 5b
  "\nYo" ko ha "ma "
  "\nHon" o lu "lu "
  "\nMis" sis sip "i "
  "\nTi" ti ca "ca "
  "\nTi" "bet " % 6a
  "\nTi" "bet "
  "\nTi" "bet "
  "\nTi" "bet "
  "\nTrin" i "dad! "
  "\nAnd " "the " "big " Mis sis sip "pi "
  "\nand " "the "  "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nThe " Po po ca te pet "l " "is " "not " "in " Can a "da, " % 7a
  "\nrath" "er " "in " Mex i "co, " Mex i "co, " Mex i "co! "
  "\nYo" ko ha "ma "
  "\nTrin" i "dad! " % 8a
  "\nAnd " "the " "big " Mis sis sip "pi "
  "\nand " "the "  "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nTrin" i "dad! "
  "\nAnd " "the " "big "
  "\nMis" sis sip "pi " % 9a
  "\nand " "the "  "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nThe " Po po ca te pet "l " "is " "not " "in " Can a "da, " % 7a
  "\nrath" "er " "in " Mex i "co, " Mex i "co, " Mex i "co "
  "\nMex" i "co, " Mex i "co, " Mex i "co, " Mex i "co "
  "\nCan" a "da, "
  "\nCan" a "da, "
  "\nMá" la "ga, "
  "\nMá" la "ga, "
  "\nCan" a "da, "
  "\nCan" a "da, "
  "\nMá" la "ga, "
  "\nMá" la "ga, "
  "\nTrin" i "dad! " % 10a
  "\nAnd " "the " "big " Mis sis sip "pi "
  "\nand " "the "  "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nAnd " "the " "big " Mis sis sip "pi " % 11a
  "\nand " "the "  "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nMis" sis sip "pi "
  "\nHon" o lu "lu "
  "\nTi" ti ca "ca. "
  "\nMis" sis sip "pi "
  "\nMis" sis sip "pi "
  "\nMis" sis sip "pi "
  "\nMis" sis sip "pi "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nTrin" i "dad! "
  "\nTrin" i "dad! "
  "\nTrin" i "dad! "
  "\nTrin" i "dad! "
  "\nTrin" i "dad! "
  "\nTrin" i "dad! "
  "\nTrin" i "dad! "
}

tenor = \relative c' {
  \global
  \clef "treble_8"
  c16->^\f 16-> 16-> r r8 c16^\p 16 8 16 16 16 16 16 16
  8 16 16 16 16 16 16 8 16 16 16 16 r c
  \repeat unfold 8 \times 2/3 {c16 16 16}
  \times 2/3 {c16^\pp 16 16} \repeat unfold 7 \times 2/3 {c16 16 16}
  \repeat unfold 8 \times 2/3 {c16 16 16} % 2a
  c16 r r c16 8 r16 c c8 r16 c16 8 r16 c
  c8 16^\pp 16 8 8 r8 c16 16 8 8
  r8 c16 16 8 8 r8 c16 16 8 8
  r16 c16 8 r16 c c8 r16 c c8 r16 c16 8 % 2e
  R1 % 3a
  R1 % 3b
  R1 % 3c
  R1 % 3d
  R1 % 4a
  R1 % 4b
  R1 % 4c
  c16^\ff c c r r8 c16^\f c c8 c16 c c c c c % 4d
  c8 c16 c c c c c c8 c16 c c c r c % 4e
  \times 2/3 {c16^\mf 16 16} \repeat unfold 7 \times 2/3 {c16 16 16} % 5a
  \times 2/3 {c16 16 16} \times 2/3 {c16^\dim 16 16} \repeat unfold 6 \times 2/3 {c16 16 16}
  r8 c16^\p c c8. c16-. r8 c16 c c8. c16-.
  r8 c16 c c8. c16 r8 c16 c c8. c16
  r16 c16^\f c8 r16 c c8 r16 c c8 r16 c c8 % 6a
  r4 r16 c32-.^\ppp c-. c16-. c-. r c r c r8 c-> ~
  c8 c r4 r r16 c^\pp c8
  r4 r16 c c8 r r4 r16 c^\mf
  \repeat unfold 8 \times 2/3 {c16 16 16} % 7a
  r8 c16 c c8 c r c16 c c8 c
  \times 2/3 {c16^\p 16 16} \repeat unfold 7 \times 2/3 {c16 16 16}
  \repeat unfold 8 \times 2/3 {c16 16 16}
  R1 % 8a
  r8 c16^\ff c c8 r c16^\mf c c8 c16 c c c
  c16 c c8 c16 c c c c c c8 c16 c c c
  c16 c c c r4 c c
  c4 r8 c16^\mf c c8 c16 c c c c c % 9a
  c8 c16 c c c c c c8 c16 c c c r c
  \times 2/3 {c16^\pp^\cresc 16 16} \repeat unfold 3 \times 2/3 {c16 16 16} \times 2/3 {c16^\p 16 16} \repeat unfold 3 \times 2/3 {c16 16 16}
  \times 2/3 {c16^\mf 16 16} \repeat unfold 3 \times 2/3 {c16 16 16} \times 2/3 {c16^\f 16 16} \repeat unfold 3 \times 2/3 {c16 16 16}
  c8->^\ff c-> c4-> r4 r8 c16^\p^\< c % 10a
  c8^\f c16^\p^\< c c^\f c r8 r4 r8 c16^\p^\< c
  c8^\f c16^\p^\< c c^\f c r8 r4 r8 c16^\p^\< c
  c8^\f c16^\p^\< c c^\f c r8 r4 r8 c16^\p^\< c
  c8^\f c16^\markup\italic "sim. sempre" c c c c c c8 c16 c c c c c % 11a
  c8 c16 c \repeat unfold 3 {c c c c}
  \repeat unfold 4 {c16 c c c}
  c16 c c c c8-^ c-^ c-^ c-^ c-^ c-^
  \repeat unfold 4 \times 2/3 {c16 16 16} 2 % 12a
  r8 c16-> c-> c8-> r8 r c16-> c-> c8-> r
  r8 c16\omit\cresc ^\markup\italic "cresc. molto" c c8 c16 c c8 c16 c c8 c16 c
  c8^\ff r
  \bar "|."
}

wordsTenor = \lyricmode {
  Trin- i- dad!
  And the big Mis- sis- sip- pi
  and the  town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  The Po- po- ca- te- pet- l is not in Can- a- da,
  rath- er in Mex- i- co, Mex- i- co, Mex- i- co!
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Yes, Ti- bet, Ti- bet, Ti- bet, Ti- bet,
  Na- ga- sa- ki! Yo- ko- ha- ma!
  Na- ga- sa- ki! Yo- ko- ha- ma!
  Ti- bet, Ti- bet, Ti- bet, Ti- bet,
  Trin- i- dad! %4d
  And the big Mis- sis- sip- pi
  and the town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  the Po- po- ca- te- pet- l is not in Can- a- da,
  rath- er in Mex- i- co, Mex- i- co, Mex- i- co!
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Yo- ko- ha- ma
  Hon- o- lu- lu
  Mis- sis- sip- i
  Ti- ti- ca- ca
  Ti- bet, Ti- bet, Ti- bet, Ti- bet,
  Na- ga- sa- ki
  Yo- ko- ha- ma
  Ti- bet
  Ti- bet
  the Po- po- ca- te- pet- l is not in Can- a- da, % 7a
  rath- er in Mex- i- co, Mex- i- co, Mex- i- co!
  Na- ga- sa- ki
  Na- ga- sa- ki
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Can- a- da,
  Can- a- da,
  Can- a- da,
  Can- a- da,
  Má- la- ga,
  Má- la- ga,
  Má- la- ga,
  Má- la- ga,
  Trin- i- dad! % 8b
  And the big Mis- sis- sip- pi
  and the town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  Ti- ti- ca- ca.
  Trin- i- dad
  And the big Mis- sis- sip- pi
  and the town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  the Po- po- ca- te- pet- l is not in Can- a- da, % 7a
  rath- er in Mex- i- co, Mex- i- co, Mex- i- co!
  Can- a- da,
  Can- a- da,
  Má- la- ga,
  Má- la- ga,
  Can- a- da,
  Can- a- da,
  Má- la- ga,
  Má- la- ga,
  Trin- i- dad % 10a
  And the big Mis- sis- sip- pi
  and the town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  and the big Mis- sis- sip- pi
  and the town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  Mis- sis- sip- i
  Hon- o- lu- lu
  Ti- ti- ca- ca.
  Mis- sis- sip- i
  Mis- sis- sip- i
  Mis- sis- sip- i
  Mis- sis- sip- i % 11d
  Mis- sis- sip- i
  Mis- sis- sip- i
  Mis- sis- sip- i
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Trin- i- dad % 12b
  Trin- i- dad
  Trin- i- dad
  Trin- i- dad
  Trin- i- dad
  Trin- i- dad
}

wordsTenorMidi = \lyricmode {
  "Trin" i "dad! "
  "\nAnd " "the " "big " Mis sis sip "pi "
  "\nand " "the "  "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nThe " Po po ca te pet "l " "is " "not " "in " Can a "da, "
  "\nrath" "er " "in " Mex i "co, " Mex i "co, " Mex i "co! "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nYes, " Ti "bet, " Ti "bet, " Ti "bet, " Ti "bet, "
  "\nNa" ga sa "ki! " Yo ko ha "ma! "
  "\nNa" ga sa "ki! " Yo ko ha "ma! "
  "\nTi" "bet, " Ti "bet, " Ti "bet, " Ti "bet, "
  "\nTrin" i "dad! " %4d
  "\nAnd " "the " "big " Mis sis sip "pi "
  "\nand " "the " "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nthe " Po po ca te pet "l " "is " "not " "in " Can a "da, "
  "\nrath" "er " "in " Mex i "co, " Mex i "co, " Mex i "co! "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nYo" ko ha "ma "
  "\nHon" o lu "lu "
  "\nMis" sis sip "i "
  "\nTi" ti ca "ca "
  "\nTi" "bet, " Ti "bet, " Ti "bet, " Ti "bet, "
  "\nNa" ga sa "ki "
  "\nYo" ko ha "ma "
  "\nTi" "bet "
  "\nTi" "bet "
  "\nthe " Po po ca te pet "l " "is " "not " "in " Can a "da, " % 7a
  "\nrath" "er " "in " Mex i "co, " Mex i "co, " Mex i "co! "
  "\nNa" ga sa "ki "
  "\nNa" ga sa "ki "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nCan" a "da, "
  "\nCan" a "da, "
  "\nCan" a "da, "
  "\nCan" a "da, "
  "\nMá" la "ga, "
  "\nMá" la "ga, "
  "\nMá" la "ga, "
  "\nMá" la "ga, "
  "\nTrin" i "dad! " % 8b
  "\nAnd " "the " "big " Mis sis sip "pi "
  "\nand " "the " "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nTi" ti ca "ca. "
  "\nTrin" i "dad "
  "\nAnd " "the " "big " Mis sis sip "pi "
  "\nand " "the " "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nthe " Po po ca te pet "l " "is " "not " "in " Can a "da, " % 7a
  "\nrath" "er " "in " Mex i "co, " Mex i "co, " Mex i "co! "
  "\nCan" a "da, "
  "\nCan" a "da, "
  "\nMá" la "ga, "
  "\nMá" la "ga, "
  "\nCan" a "da, "
  "\nCan" a "da, "
  "\nMá" la "ga, "
  "\nMá" la "ga, "
  "\nTrin" i "dad " % 10a
  "\nAnd " "the " "big " Mis sis sip "pi "
  "\nand " "the " "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nand " "the " "big " Mis sis sip "pi "
  "\nand " "the " "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nMis" sis sip "i "
  "\nHon" o lu "lu "
  "\nTi" ti ca "ca. "
  "\nMis" sis sip "i "
  "\nMis" sis sip "i "
  "\nMis" sis sip "i "
  "\nMis" sis sip "i " % 11d
  "\nMis" sis sip "i "
  "\nMis" sis sip "i "
  "\nMis" sis sip "i "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nTrin" i "dad " % 12b
  "\nTrin" i "dad "
  "\nTrin" i "dad "
  "\nTrin" i "dad "
  "\nTrin" i "dad "
  "\nTrin" i "dad "
}

bass= \relative c' {
  \global
  \clef bass
  R1*9 % 1a
  c16->^\ff 16-> 16-> r r8 c16^\f 16 8 16 16 16 16 16 16 % 3a
  8 16 16 16 16 16 16 8 16 16 16 16 r c
  \times 2/3 {c16^\p 16 16} \repeat unfold 7 \times 2/3 {c16 16 16}
  \repeat unfold 8 \times 2/3 {c16 16 16}
  c16 r r c16 8 r16 c c8 r16 c16 8 r16 c % 4a
  c8 c^\mf r16 c16 c c r8 c16 c r4
  c8 c r4 r2
  R1
  R1
  R1 % 5a
  r8 r16 c32-. c-. c16-. c-. r16 c32-. c-. c16-. c-. r8 c16^\p c c8~
  c16 c-. r8 c16 c c8~c16 c r8 c16 c c8~
  c16 c16 r8 c16 c c8~c16 c r8 r c16 c
  \repeat unfold 4 {c16 c c c} % 6a
  c16 c r8 r4 r2
  c16^\ff c c r r8 c16^\mf c c8 c16 c c c c c
  c8 c16 c c c c c c8 c16 c c c r8
  r4 r8 c16^\pp c c c r8 r c16 c % 7a
  c16 c r8 r c16^\mf c c8 c r c16 c
  r4 c8^\p c r2
  r2 r4 c8^\ff c
  c8 r c^\mf c c r c c % 8a
  c8 c c c c r c c
  c8 c c c c r c c
  c8 c r4 r2
  c4^\f c c r8 c16^\mf c % 9a
  c8 c16 c c c c c c8 c16 c c c c c
  c8 c16 c c c r c \times 2/3 {c16\omit\p\omit\cresc^\markup{\dynamic p \italic cresc.} c c} \repeat unfold 3 \times 2/3 {c c c}
  \times 2/3 {c16^\mf c c} \repeat unfold 3  \times 2/3 {c16 c c}  \times 2/3 {c16^\f c c} \repeat unfold 3 \times 2/3 {c16 c c}
  r4 r8 c4^\ff c8 c r % 10a
  r4 r8 c16^\p^\< c c8^\f c16^\p^\< c c^\f c r8
  r4 r8 c16^\p^\< c c8^\f c16^\p^\< c c^\f c r8
  r4 r8 c16^\p^\< c c8^\f c16^\p^\< c c^\f c r8
  r8 c16^\p c c8^\f c16^\markup\italic "sim. sempre" c c c c c c8c 16 c % 11a
  c16 c c c c8 c16 c c c c c c c c c
  \repeat unfold 4 {c16 c c c}
  \repeat unfold 4 {c16 c c c}
  c16 c c c c c c c \repeat unfold 4 \times 2/3 {c16-> c c} % 12a
  \repeat unfold 8 \times 2/3 {c16-> c c}
  \times2/3 {c16\omit\cresc^\markup\italic "cresc. molto" c c} \repeat unfold 7\times2/3 {c16 c c}
  c16->^\ff c-> c8-> % 12d
%  \bar "|."
}

wordsBass = \lyricmode {
  Trin- i- dad! % 3a
  And the big Mis- sis- sip- pi
  and the  town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  The Po- po- ca- te- pet- l is not in Can- a- da,
  rath- er in Mex- i- co, Mex- i- co, Mex- i- co!
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Yes, Ti- bet, Ti- bet, Ti- bet, Ti- bet, % 4a
  Na- ga- sa- ki
  Na- ga- sa- ki
  Na- ga- sa- ki % 5b
  Na- ga- sa- ki
  Yo- ko- ha- ma
  Hon- o- lu- lu
  Mis- sis- sip- pi
  Ti- ti- ca- ca
  Ti- ti- ca- ca % 6a
  Ti- ti- ca- ca
  Ti- ti- ca- ca
  Ti- ti- ca- ca
  Ti- ti- ca- ca
  Trin- i- dad! % 6c
  And the big Mis- sis- sip- pi
  and the  town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  Ti- ti- ca- ca % 7a
  Ti- ti- ca- ca
  Na- ga- sa- ki
  Na- ga- sa- ki
  Trin- i- dad! % 8a
  And the big Mis- sis- sip- pi
  and the  town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  Trin- i- dad! % 9a
  And the big Mis- sis- sip- pi
  and the  town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  The Po- po- ca- te- pet- l is not in Can- a- da,
  rath- er in Mex- i- co, Mex- i- co, Mex- i- co!
  Can- a- da,
  Can- a- da,
  Má- la- ga,
  Má- la- ga,
  Trin- i- dad! % 10a
  And the big Mis- sis- sip- pi
  and the  town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  And the big Mis- sis- sip- pi % 11a
  and the  town Hon- o- lu- lu
  and the lake Ti- ti- ca- ca.
  Mis- sis- sip- pi
  Hon- o- lu- lu
  Ti- ti- ca- ca
  Mis- sis- sip- pi
  Mis- sis- sip- pi
  Mis- sis- sip- pi
  Mis- sis- sip- pi
  Mis- sis- sip- pi
  Mis- sis- sip- pi
  Mis- sis- sip- pi % 12a
  Mis- sis- sip- pi "'sip-" pi
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
  Trin- i- dad!
}

wordsBassMidi = \lyricmode {
  "Trin" i "dad! " % 3a
  "\nAnd " "the " "big " Mis sis sip "pi "
  "\nand " "the "  "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nThe " Po po ca te pet "l " "is " "not " "in " Can a "da, "
  "\nrath" "er " "in " Mex i "co, " Mex i "co, " Mex i "co! "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nYes, " Ti "bet, " Ti "bet, " Ti "bet, " Ti "bet, " % 4a
  "\nNa" ga sa "ki "
  "\nNa" ga sa "ki "
  "\nNa" ga sa "ki " % 5b
  "\nNa" ga sa "ki "
  "\nYo" ko ha "ma "
  "\nHon" o lu "lu "
  "\nMis" sis sip "pi "
  "\nTi" ti ca "ca "
  "\nTi" ti ca "ca " % 6a
  "\nTi" ti ca "ca "
  "\nTi" ti ca "ca "
  "\nTi" ti ca "ca "
  "\nTi" ti ca "ca "
  "\nTrin" i "dad! " % 6c
  "\nAnd " "the " "big " Mis sis sip "pi "
  "\nand " "the "  "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nTi" ti ca "ca " % 7a
  "\nTi" ti ca "ca "
  "\nNa" ga sa "ki "
  "\nNa" ga sa "ki "
  "\nTrin" i "dad! " % 8a
  "\nAnd " "the " "big " Mis sis sip "pi "
  "\nand " "the "  "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nTrin" i "dad! " % 9a
  "\nAnd " "the " "big " Mis sis sip "pi "
  "\nand " "the "  "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nThe " Po po ca te pet "l " "is " "not " "in " Can a "da, "
  "\nrath" "er " "in " Mex i "co, " Mex i "co, " Mex i "co! "
  "\nCan" a "da, "
  "\nCan" a "da, "
  "\nMá" la "ga, "
  "\nMá" la "ga, "
  "\nTrin" i "dad! " % 10a
  "\nAnd " "the " "big " Mis sis sip "pi "
  "\nand " "the "  "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nAnd " "the " "big " Mis sis sip "pi " % 11a
  "\nand " "the "  "town " Hon o lu "lu "
  "\nand " "the " "lake " Ti ti ca "ca. "
  "\nMis" sis sip "pi "
  "\nHon" o lu "lu "
  "\nTi" ti ca "ca "
  "\nMis" sis sip "pi "
  "\nMis" sis sip "pi "
  "\nMis" sis sip "pi "
  "\nMis" sis sip "pi "
  "\nMis" sis sip "pi "
  "\nMis" sis sip "pi "
  "\nMis" sis sip "pi " % 12a
  "\nMis" sis sip "pi " "'sip" "pi "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nCan" a "da, " Má la "ga, " Ri mi "ni, " Brin di "si "
  "\nTrin" i "dad! "
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new RhythmicStaff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice \RehearsalTrack
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSop
        >>
                                % Single alto staff
        \new RhythmicStaff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \transpose c g \alto
          \new Lyrics \lyricsto "alto" \wordsAlto
        >>
                                % Single tenor staff
        \new RhythmicStaff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \new Voice = "tenor" \transpose c g, \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenor
        >>
                                % Single bass staff
        \new RhythmicStaff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" \transpose c c, \bass
          \new Lyrics \lyricsto "bass" \wordsBass
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      ragged-last = ##t
      \context {
                                %      \Staff \RemoveAllEmptyStaves
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
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new RhythmicStaff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice \RehearsalTrack
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSop
        >>
                                % Single alto staff
        \new RhythmicStaff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \transpose c g \alto
          \new Lyrics \lyricsto "alto" \wordsAlto
        >>
                                % Single tenor staff
        \new RhythmicStaff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \new Voice = "tenor" \transpose c g, \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenor
        >>
                                % Single bass staff
        \new RhythmicStaff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" \transpose c c, \bass
          \new Lyrics \lyricsto "bass" \wordsBass
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      ragged-last = ##t
      \context {
                                %      \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new RhythmicStaff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSopMidi
        >>
                                % Single alto staff
        \new RhythmicStaff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \transpose c g \alto
        >>
                                % Single tenor staff
        \new RhythmicStaff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \new Voice = "tenor" \transpose c g, \tenor
        >>
                                % Single bass staff
        \new RhythmicStaff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" \transpose c c, \bass
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new RhythmicStaff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice = "soprano" \soprano
        >>
                                % Single alto staff
        \new RhythmicStaff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \transpose c g \alto
          \new Lyrics \lyricsto "alto" \wordsAltoMidi
        >>
                                % Single tenor staff
        \new RhythmicStaff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \new Voice = "tenor" \transpose c g, \tenor
        >>
                                % Single bass staff
        \new RhythmicStaff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" \transpose c c, \bass
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new RhythmicStaff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice = "soprano" \soprano
        >>
                                % Single alto staff
        \new RhythmicStaff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \transpose c g \alto
        >>
                                % Single tenor staff
        \new RhythmicStaff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \new Voice = "tenor" \transpose c g, \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenorMidi
        >>
                                % Single bass staff
        \new RhythmicStaff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" \transpose c c, \bass
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new RhythmicStaff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice = "soprano" \soprano
        >>
                                % Single alto staff
        \new RhythmicStaff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \transpose c g \alto
        >>
                                % Single tenor staff
        \new RhythmicStaff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \new Voice = "tenor" \transpose c g, \tenor
        >>
                                % Single bass staff
        \new RhythmicStaff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" \transpose c c, \bass
          \new Lyrics \lyricsto "bass" \wordsBassMidi
        >>
      >>
    >>
    \midi {}
  }
}
