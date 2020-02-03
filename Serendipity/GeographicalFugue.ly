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

% #(set-global-staff-size 16)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key c \major
  \time 4/4
  \tempo 4=60
}

colour = {
  \override NoteHead.color   = #red
  \override Stem.color       = #red
  \override Beam.color       = #red
  \override Accidental.color = #red
  \override Slur.color       = #red
  \override Tie.color        = #red
  \override Dots.color       = #red
}

black = {
  \override NoteHead.color   = #black
  \override Stem.color       = #black
  \override Beam.color       = #black
  \override Accidental.color = #black
  \override Slur.color       = #black
  \override Tie.color        = #black
  \override Dots.color       = #black
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "1a" } s1
  \mark \markup { \circle "1b" } s1
  \mark \markup { \circle "1c" } s1
  \mark \markup { \circle "1d" } s1
  \mark \markup { \circle "2a" } s1
  \mark \markup { \circle "2b" } s1
  \mark \markup { \circle "2c" } s1
  \mark \markup { \circle "2d" } s1
  \mark \markup { \circle "2e" } s1
  \mark \markup { \circle "3a" } s1
  \mark \markup { \circle "3b" } s1
  \mark \markup { \circle "3c" } s1
  \mark \markup { \circle "3d" } s1
  \mark \markup { \circle "4a" } s1
  \mark \markup { \circle "4b" } s1
  \mark \markup { \circle "4c" } s1
  \mark \markup { \circle "4d" } s1
  \mark \markup { \circle "4e" } s1
  \mark \markup { \circle "5a" } s1
  \mark \markup { \circle "5b" } s1
  \mark \markup { \circle "5c" } s1
  \mark \markup { \circle "5d" } s1
  \mark \markup { \circle "6a" } s1
  \mark \markup { \circle "6b" } s1
  \mark \markup { \circle "6c" } s1
  \mark \markup { \circle "6d" } s1
  \mark \markup { \circle "7a" } s1
  \mark \markup { \circle "7b" } s1
  \mark \markup { \circle "7c" } s1
  \mark \markup { \circle "7d" } s1
  \mark \markup { \circle "8a" } s1
  \mark \markup { \circle "8b" } s1
  \mark \markup { \circle "8c" } s1
  \mark \markup { \circle "8d" } s1
  \mark \markup { \circle "9a" } s1
  \mark \markup { \circle "9b" } s1
  \mark \markup { \circle "9c" } s1
  \mark \markup { \circle "9d" } s1
  \mark \markup { \circle "10a" } s1
  \mark \markup { \circle "10b" } s1
  \mark \markup { \circle "10c" } s1
  \mark \markup { \circle "10d" } s1
  \mark \markup { \circle "11a" } s1
  \mark \markup { \circle "11b" } s1
  \mark \markup { \circle "11c" } s1
  \mark \markup { \circle "11d" } s1
  \mark \markup { \circle "12a" } s1
  \mark \markup { \circle "12b" } s1
  \mark \markup { \circle "12c" } s1
  \mark \markup { \circle "12d" } s8
}

soprano = \relative c' {
  \global
  r1 % 1a
  r1 % 1b
  r1 % 1c
  r1 % 1d
  r1 % 2a
  r1 % 2b
  c16-> 16-> 16-> r r8 c16 c16 8 16 16 16 16 16 16 % 2c
  c8 16 16 16 16 16 16 8 16 16 16 16 r c % 2d
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} % 2e
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} % 3a
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} % 3b
  c16 r r c c8 r16 c c8 r16 c c8 r16 c16 % 3c
  c8 r r c16 c c c r8 r c16 c % 3d
  c16 c r8 r4 r2 % 4a
  r1 % 4b
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} % 4c
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} % 4d
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} r2 % 4e
  r4 r16 c32-. 32-. 16-. 16-. r16 c-. r c-. r8 c8->~ % 5a
  c8 c8-. r16 c32-. c32-. c16-. c16-. r c32-. c-. c16-. c-. r4 % 5b
  c16 c c8~c16 c16-. r8 c16 c c8~c16 c16-. r8 % 5c
  c16 c16 c8~ c16 c16 r8 c16 c16 c8~c16 c16 r8 % 5d
  c16 c c c c c c c c c c c c c c c % 6a
  c16 c c c c c c c c c c c c c c c % 6b
  r2 r16 c16 c8 r4 % 6c
  r16 c c8 r4 r16 c c8 r4 % 6d
  r8 c16 c c c r8 r c16 c c c  r8 % 7a
  r4 r16 c16-. r c-. r8 c4->c8 % 7b
  r8 c16 c r4 c8 c r4 % 7c
  r2 c16-> c-> c-> r r4 % 7d
  c16 c c8 c16 c c8 c r r4 % 8a
  c16 c c8 c16 c c8 c8 r r c16 c % 8b
  c8 c16 c c c r8 c4 c % 8c
  c4 r8 c16 c c8 c16 c c c c c % 8d
  c8 c16 c c c c c c8 c16 c c c r c % 9a
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} % 9b
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} % 9c
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} % 9d
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} c8 c % 10a
  c4 r r c8-^ c-^ % 10b
  c8-^ r c-^ c-^ c-^ c-^ c-^ c-^ % 10c
  c8-^ r c-^ c-^ c-^ c-^ c-^ c-^ % 10d
  c8-^ r c-^ c-^ c-^ c-^ c-^ c-^ % 11a
  c8-^ c-^ c-^ c-^ c-^ c-^ c-^ c-^ % 11b
  c8-^ c-^ c-^ c-^ c-^ c-^ r4 % 11c
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} r2 % 11d
  r1 % 12a
  c1~ % 12b
  c1 % 12c
  c16-> c-> c8->
  \bar "|."
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1 % 1a
  s1 % 1b
  s1 % 1c
  s1 % 1d
  s1 % 2a
  s1 % 2b
  s4^\f r8 s^\p s2 % 2c
  s1 % 2d
  s1 % 2e
  s1^\pp % 3a
  s1 % 3b
  s16^\f s s s^\mf s4 s s % 3c
  s1 % 3d
  s1 % 4a
  s1 % 4b
  s1^\p % 4c
  s1^\pp % 4d
  s1 % 4e
  s4 s16 s^\mf s8 s 4s % 5a
  s1 % 5b
  s1 % 5c
  s1 % 5d
  s1 % 6a
  s1 % 6b
  s2 s16 s^\pp s8 s4 % 6c
  s1 % 6d
  s8 s^\pp s4 s s % 7a
  s4 s16 s^\mf s s s2 % 7b
  s8 s^\p s4 s s % 7c
  s2 s^\ff % 7d
  s1^\mf % 8a
  s1 % 8b
  s2 s^\ff % 8c
  s4 s8 s^\mf s2 % 8d
  s1 % 9a
  s1 % 9b
  s2^\pp^\cresc s^\p % 9c
  s2^\mf s^\f % 9d
  s4^\ff \> s s^\p \! s^\f  % 10a
  s4 s s s^\f % 10b
  s1 % 10c
  s1 % 10d
  s1 % 11a
  s1 % 11b
  s1 % 11c
  s1 % 11d
  s1 % 12a
  s1^\fp^\cresc % 12b
  s1^\f ^\markup{\italic{cresc. molto}} % 12c
  s4^\ff % 12d
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
%  Trin- i- dad!
%  And the big Mis- sis- sip- 
%  and the  town Hon- o- lu- lu
%  and the lake Ti- ti- ca- ca.
%  The Po- po- ca- te- pet- l is not in Can- a- da,
%  rath- er in Mex- i- co, Mex- i- co, Mex- i- co!
%  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
%  Yes, Ti- bet, Ti- bet, Ti- bet, Ti- bet,
%  Na- ga- sa- ki! Yo- ko- ha- ma!

}

alto = \relative c' {
  \global
  r1
  r1
  r1
  c16-> 16-> 16-> r r8 c16 c16 8 16 16 16 16 16 16
  c8 16 16 16 16 16 16 8 16 16 16 16 r c
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16}
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16}
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16}
  c16 r r c c8 r16 c c8 r16 c c8 r16 c16 % 2e
  c8 c16 c c8 c r c16 c c8 c % 3a
  r8 c16 c c8 c r c16 c c8 c % 3b
  r16 c c8 r16 c c8 r16 c c8 r16 c c8 % 3c
  r8 c16 c c c r8 r c16 c c c r8 % 3d
  \times 2/3 {c16  c c} \times 2/3 {c16  c c} \times 2/3 {c16  c c} \times 2/3 {c16  c c} \times 2/3 {c16  c c} \times 2/3 {c16  c c} \times 2/3 {c16  c c} \times 2/3 {c16  c c} % 4a
  \times 2/3 {c16  c c} \times 2/3 {c16  c c} \times 2/3 {c16  c c} \times 2/3 {c16  c c} \times 2/3 {c16  c c} \times 2/3 {c16  c c} \times 2/3 {c16  c c} \times 2/3 {c16  c c} % 4b
  r1 % 4c
  r16 c16 c8 r4 r16 c32 c c16 c r8 c16 c % 4d
  c16 c r8 r16 c32-. c-. c16-. c-. r c-. r c-. r8 c8~ % 4e
  c8 c-. r4 r2 % 5a
  r16 c c8-. r4 r r8 c16 c % 5b
  c8. c16 r8 c16 c c8. c16 r8 c16 c % 5c
  c8. c16 r8 c16 c c8. c16 r8 r16 c % 5d
  c8 r16 c c8 r16 c c8 r16 c c8 r % 6a
  r1 % 6b
  r4 c16-> c-> c-> r r8 16 c c8 c16 c % 6c
  c16 c c c c8 c16 c c c c c c8 c16 c % 6d
  c16 c r8 r4 r r8 r16 c % 7a
  \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} % 7b
  r2 r16 c r c r8 c->~ % 7c
  c8 c r4 r2 % 7d
  c16 c c r r8 c16 c c8 c16 c c c c c % 8a
  c8 c16 c c c c c c8 c16 c c c r8 % 8b
  r1 % 8c
  c4 c c c16 c c8 % 8d
  c16 c c c c c c8 c16 c c c c c c8 % 9a
  c16 c c c r8 r16 c \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} % 9b
  \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} % 9c
  \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} \times 2/3 {c16 c c} % 9d
  r4 c16-> c-> c-> r r2 % 10a
  r8 c16 c c8 c16 c c c r8 r4 % 10b
  r8 c16 c c8 c16 c c c r8 r4 % 10c
  r8 c16 c c8 c16 c c c r8 r4 % 10d
  c16 c c8 c16 c c c c c c8 c16 c c c % 11a
  c16 c c8 c16 c c c c c c c c c c c % 11b
  c16 c c c c c c c c c c c c c c c % 11c
  c16 c c c r4 \times 2/3 { c16-> c c} \times 2/3 { c16-> c c} \times 2/3 { c16-> c c} \times 2/3 { c16-> c c} % 12c
  r1 % 12a
  c16-> c-> c8-> r4 c16-> c-> c8-> r4 % 12b
  c16 c c8 c16 c c8 c16 c c8 c16 c c8 % 12c
  c16-> c-> c8->
%  \bar "|."
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1 % 1a
  s1 % 1b
  s1 % 1c
  s4^\f s8 s^\p s4 s % 1d
  s1 % 2a
  s1 % 2b
  s1^\pp % 2c
  s1 % 2d
  s1 % 2e
  s8 s^\mf s2. % 3a
  s1 % 3b
  s16 s^\mf s8 s2. % 3c
  s1 % 3d
  s2 s^\dim % 4a
  s1^\p % 4b
  s1 % 4c
  s16 s^\f s8 s4 s16 s^\mf s8 s4 % 4d
  s1 % 4e
  s1 % 5a
  s2 s4 s8 s^\p % 5b
  s1 % 5c
  s2 s4 s8 s16 s^\f % 5d
  s1 % 6a
  s1 % 6b
  s4 s^\ff s8 s^\mf s s % 6c
  s1 % 6d
  s2 s4 s8 s16 s^\pp % 7a
  s1 % 7b
  s1 % 7c
  s1 % 7d
  s4^\ff s8 s^\f s4 s % 8a
  s1 % 8b
  s1 % 8c
  s4^\ff s s s^\mf % 8d
  s1 % 9a
  s1 % 9b
  s2^\pp^\cresc s^\p % 9c
  s2^\mf s^\f % 9d
  s4 s^\ff s s % 10a
  s8 s^\p \< s^\f \! s^\p \< s^\f \! s s s % 10b
  s8 s^\p \< s^\f \! s^\p \< s^\f \! s s s % 10c
  s8 s^\p \< s^\f \! s^\p \< s^\f \! s s s % 10d
  s8^\p \> s^\f s2.^\markup{\italic{sim. sempre}} % 11a
  s1 % 11b
  s1 % 11c
  s1 % 11d
  s1 % 12a
  s1 % 12b
  s8 s^\markup{\italic{cresc. molto}} s2. % 12c
  s4^\ff % 12d
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

tenor = \relative c' {
  \global
  \clef "treble_8"
  c16-> 16-> 16-> r r8 c16 16 8 16 16 16 16 16 16
  8 16 16 16 16 16 16 8 16 16 16 16 r c
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16}
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16}
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16}
  16 r r c16 8 r16 c c8 r16 c16 8 r16 c
  c8 16 16 8 8 r8 c16 16 8 8
  r8 c16 16 8 8 r8 c16 16 8 8
  r16 c16 8 r16 c c8 r16 c c8 r16 c16 8 % 2e
  r1 % 3a
  r1 % 3b
  r1 % 3c
  r1 % 3d
  r1 % 4a
  r1 % 4b
  r1 % 4c
  c16 c c r r8 c16 c c8 c16 c c c c c % 4d
  c8 c16 c c c c c c8 c16 c c c r c % 4e
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} % 5a
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} % 5b
  r8 c16 c c8. c16-. r8 c16 c c8. c16-. % 5c
  r8 c16 c c8. c16 r8 c16 c c8. c16 % 5d
  r16 c16 c8 r16 c c8 r16 c c8 r16 c c8 % 6a
  r4 r16 c32-. c-. c16-. c-. r c r c r8 c-> ~ % 6b
  c8 c r4 r r16 c c8 % 6c
  r4 r16 c c8 r r4 r16 c % 6d
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} % 7a
  r8 c16 c c8 c r c16 c c8 c % 7b
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} % 7c
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} % 7d  
  r1 % 8a
  r8 c16 c c8 r c16 c c8 c16 c c c % 8b
  c16 c c8 c16 c c c c c c8 c16 c c c % 8c
  c16 c c c r4 c c % 8d
  c4 r8 c16 c c8 c16 c c c c c % 9a
  c8 c16 c c c c c c8 c16 c c c r c % 9b
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} % 9c
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} % 9d
  c8-> c-> c4-> r4 r8 c16 c % 10a
  c8 c16 c c c r8 r4 r8 c16 c % 10b
  c8 c16 c c c r8 r4 r8 c16 c % 10c
  c8 c16 c c c r8 r4 r8 c16 c % 10d
  c8 c16 c c c c c c8 c16 c c c c c % 11a
  c8 c16 c c c c c c c c c c c c c % 11b
  c16 c c c c c c c c c c c c c c c % 11c
  c16 c c c c8-^ c-^ c-^ c-^ c-^ c-^ % 11d
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} 2 % 12a
  r8 c16-> c-> c8-> r8 r c16-> c-> c8-> r % 12b
  r8 c16 c c8 c16 c c8 c16 c c8 c16 c % 12c
  c8 r
  \bar "|."
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s4^\f s8 s^\p s2% 1a
  s1 % 1b
  s1 % 1c
  s1^\pp % 1d
  s1 % 2a
  s1 % 2b
  s8 s^\pp s4 s2 % 2c
  s1 % 2d
  s1 % 2e
  s1 % 3a
  s1 % 3b
  s1 % 3c
  s1 % 3d
  s1 % 4a
  s1 % 4b
  s1 % 4c
  s4^\ff s8 s^\f s2 % 4d
  s1 % 4e
  s1^\mf % 5a
  s8 s^\markup{\italic dim.} s4 s2 % 5b
  s8 s^\p s4 s2 % 5c
  s1 % 5d
  s16 s^\f s8 s4 s2 % 6a
  s4 s16 s^\ppp s8 s2 % 6b
  s2 s4 s16 s^\pp s8 % 6c
  s2 s4 s8 s16 s^\mf % 6d
  s1 % 7a
  s1 % 7b
  s1^\p % 7c
  s1 % 7d
  s1 % 8a
  s8 s^\ff s4 s2^\mf % 8b
  s1 % 8c
  s1 % 8d
  s4 s8 s^\mf s2 % 9a
  s1 % 9b
  s2^\pp^\cresc s2^\p % 9c
  s2^\mf s^\f % 9d
  s2^\ff s4 s8 s16.^\p \< s32 \! % 10a
  s8^\f s^\p \< s4^\f \!  s4 s8 s16.^\p \< s32 \! % 10b
  s8^\f s^\p \< s4^\f \!  s4 s8 s16.^\p \< s32 \! % 10c
  s8^\f s^\p \< s4^\f \!  s4 s8 s16.^\p \< s32 \! % 10d
  s8^\f s^\markup{\italic{sim. sempre}} s4 s2 % 11a
  s1 % 11b
  s1 % 11c
  s1 % 11d
  s1 % 12a
  s1 % 12b
  s8 s^\markup{\italic{ cresc. molto}} s4 s2 % 12c
  s4^\ff % 12d
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
%  Trin- i- dad!
%  And the big Mis- sis- sip- pi
%  and the  town Hon- o- lu- lu
%  and the lake Ti- ti- ca- ca.
%  The Po- po- ca- te- pet- l is not in Can- a- da,
%  rath- er in Mex- i- co, Mex- i- co, Mex- i- co!
%  Can- a- da, Má- la- ga, Ri- mi- ni, Brin- di- si
%  Yes, Ti- bet, Ti- bet, Ti- bet, Ti- bet,
%  Na- ga- sa- ki! Yo- ko- ha- ma!

bass= \relative c' {
  \global
  \clef bass
  r1 % 1a
  r1 % 1b
  r1 % 1c
  r1 % 1d
  r1 % 2a
  r1 % 2b
  r1 % 2c
  r1 % 2d
  r1 % 2e
  c16-> 16-> 16-> r r8 c16 16 8 16 16 16 16 16 16 % 3a
  8 16 16 16 16 16 16 8 16 16 16 16 r c % 3b
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} % 3c
  \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} \times 2/3 {c16 16 16} % 3d
  c16 r r c16 8 r16 c c8 r16 c16 8 r16 c % 4a
  c8 c r16 c16 c c r8 c16 c r4 % 4b
  c8 c r4 r2 % 4c
  r1 % 4d
  r1 % 4e
  r1 % 5a
  r8 r16 c32-. c-. c16-. c-. r16 c32-. c-. c16-. c-. r8 c16 c c8~ % 5b
  c16 c-. r8 c16 c c8~c16 c r8 c16 c c8~ % 5c
  c16 c16 r8 c16 c c8~c16 c r8 r c16 c % 5d
  c16 c c c c c c c c c c c c c c c % 6a
  c16 c r8 r4 r2 % 6b
  c16 c c r r8 c16 c c8 c16 c c c c c % 6c
  c8 c16 c c c c c c8 c16 c c c r8 % 6d
  r4 r8 c16 c c c r8 r c16 c % 7a
  c16 c r8 r c16 c c8 c r c16 c % 7b
  r4 c8 c r2 % 7c
  r2 r4 c8 c % 7d
  c8 r c c c r c c % 8a
  c8 c c c c r c c % 8b
  c8 c c c c r c c % 8c
  c8 c r4 r2 % 8d
  c4 c c r8 c16 c % 9a
  c8 c16 c c c c c c8 c16 c c c c c % 9b
  c8 c16 c c c r c \times 2/3 {c16 c c} \times 2/3 {c c c} \times2/3 {c c c} \times 2/3 {c c c} % 9c
  \times 2/3 {c16 c c}  \times 2/3 {c16 c c}  \times 2/3 {c16 c c}  \times 2/3 {c16 c c} \times 2/3 {c16 c c}  \times 2/3 {c16 c c}  \times 2/3 {c16 c c}  \times 2/3 {c16 c c} % 9d
  r4 r8 c4 c8 c r % 10a
  r4 r8 c16 c c8c 16 c c c r8 % 10b
  r4 r8 c16 c c8 c16 c c c r8% 10c
  r4 r8 c16 c c8 c16 c c c r8% 10d
  r8 c16 c c8 c16 c c c c c c8c 16 c % 11a
  c16 c c c c8 c16 c c c c c c c c c % 11b
  c16 c c c c c c c c c c c c c c c % 11c
  c16 c c c c c c c c c c c c c c c % 11d
  c16 c c c c c c c \times 2/3 {c16-> c c} \times 2/3 {c16-> c c} \times 2/3 {c16-> c c} \times 2/3 {c16-> c c} % 12a
  \times 2/3 {c16-> c c} \times 2/3 {c16-> c c} \times 2/3 {c16-> c c} \times 2/3 {c16-> c c} \times 2/3 {c16-> c c} \times 2/3 {c16-> c c} \times 2/3 {c16-> c c} \times 2/3 {c16-> c c} % 12b
  \times2/3 {c16 c c} \times2/3 {c16 c c} \times2/3 {c16 c c} \times2/3 {c16 c c} \times2/3 {c16 c c} \times2/3 {c16 c c} \times2/3 {c16 c c} \times2/3 {c16 c c} % 12c
  c16-> c-> c8-> % 12d
%  \bar "|."
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1 % 1a
  s1 % 1b
  s1 % 1c
  s1 % 1d
  s1 % 2a
  s1 % 2b
  s1 % 2c
  s1 % 2d
  s1 % 2e
  s4^\ff s8 s^\f s2 % 3a
  s1 % 3b
  s1^\p % 3c
  s1 % 3d
  s1 % 4a
  s8 s^\mf s4 s2 % 4b
  s1 % 4c
  s1 % 4d
  s1 % 4e
  s1 % 5a
  s2 s4 s^\p % 5b
  s1 % 5c
  s1 % 5d
  s1 % 6a
  s1 % 6b
  s4^\ff s8 s^\mf s2 % 6c
  s1 % 6d
  s4 s8 s^\pp s2 % 7a
  s4 s8 s^\mf s2 % 7b
  s4 s^\p s2 % 7c
  s2 s4 s^\ff % 7d
  s4 s^\mf s2 % 8a
  s1 % 8b
  s1 % 8c
  s1 % 8d
  s2^\f s4 s8 s^\mf % 9a
  s1 % 9b
  s2 s^\p^\cresc % 9c
  s2^\mf s^\f % 9d
  s4 s8 s^\ff s2 % 10a
  s4 s8 s^\p \< s^\f \! s^\p \< s^\f \! s % 10b
  s4 s8 s^\p \< s^\f \! s^\p \< s^\f \! s % 10c
  s4 s8 s^\p \< s^\f \! s^\p \< s^\f \! s % 10d
  s8 s^\p s^\f s^\markup{\italic{sim. sempre}} s2  % 11a
  s1 % 11b
  s1 % 11c
  s1 % 11d
  s1 % 12a
  s1 % 12b
  s1^\markup{\italic{cresc. molto}} % 12c
  s4^\ff % 12d
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

\score {
  <<
    \new ChoirStaff <<
% Single soprano staff
      \new Dynamics \dynamicsSop
      \new RhythmicStaff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
        \new Voice \RehearsalTrack
        \new Voice = "soprano" \soprano
        \new Lyrics \lyricsto "soprano" \wordsSop
      >>
% Single alto staff
      \new Dynamics \dynamicsAlto
      \new RhythmicStaff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
        \new Voice = "alto" \transpose c g \alto
        \new Lyrics \lyricsto "alto" \wordsAlto
      >>
% Single tenor staff
      \new Dynamics \dynamicsTenor
      \new RhythmicStaff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
        \new Voice = "tenor" \transpose c g, \tenor
        \new Lyrics \lyricsto "tenor" \wordsTenor
      >>
% Single bass staff
      \new Dynamics \dynamicsBass
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
  \midi {}
}
