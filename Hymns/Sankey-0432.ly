\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Handwriting on the Wall."
  subtitle    = "Sankey No. 432"
  subsubtitle = "Sankey 880 No. 549"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Knowles Shaw."
  arranger    = \markup{Arr. \smallCaps "Ira D. Sankey."}
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4     s1   s2.
  \mark \markup { \box "B" } s4     s1   s2.
  \mark \markup { \box "C" } s4     s1   s2.
  \mark \markup { \box "D" } s4     s1   s2.
  \mark \markup { \box "E" } s4     s1*2 s2.
  \mark \markup { \box "F" } s4     s1*2 s4..
  \mark \markup { \box "G" } s16 s2 s1   s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=100
  s4
  s1*7
  s2 \tempo 4=33 s4 \tempo 4=100 s4
  s1*3
  s2 \tempo 4=33 s4 \tempo 4=100 s4 % F
  s1*2
  s2 s8 \tempo 4=17 s8 \tempo 4=100 s4
  s2.
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'8. bes16
  c4 c,8. 16 16 8. f8 g
  a8. g16 a8 bes c4 \bar "|" \break 8 8
  d8. bes16 8 d8 16 c8. a8 g % B
  f8. 16 e8. f16 g4 \bar "|" \break a8. bes16
  c4 c,8. 16 16 8. f8 g % C
  \tag #'dash       {a8. g16 a8 bes c4 \bar "|" \break \slurDashed c8(8) \slurSolid}
  \tag #'v3         {a8. g16 a8 bes c4 \bar "|" \break             c               }
  \tag #'(v1 v2 v4) {a8. g16 a8 bes c4 \bar "|" \break             c8 8            }
  d8. bes16 8 d c16 a8 r16 f8 g % D
  a8. 16 8. g16 f4\fermata \bar "|" \break a8.^\markup\smallCaps Chorus. bes16
  c4 4 4 a8. g16 % E
  f2. 8 8
  g4 4 4 \bar "|" \break d'8. c16
  c2.\fermata a8. bes16 % F
  c16 8. d c16 16 a8. r8 f
  g16 f8. 8. \bar "|" \break d16 16 c8 r16 f8. g16
  a4 f g8 c\fermata a8. g16 % G
  f2.^\markup\italic rit.
}

alto = \relative {
  \autoBeamOff
  f'8. 16
  f4 c8. 16 16 8. 8 e
  f8. e16 f8 g a4 f8 8
  f8. 16 8 8 16 8. 8 e % B
  d8. 16 e8. 16 e4 f8. 16
  f4 c8. 16 16 8. 8 e % C
  \tag #'dash       {f8. e16 f8 g a4 \slurDashed f8(8) \slurSolid}
  \tag #'v3         {f8. e16 f8 g a4             f               }
  \tag #'(v1 v2 v4) {f8. e16 f8 g a4             f8 8            }
  f8. 16 8 8 16 8 r16 8 8 % D
  f8. 16 8. e16 f4\fermata f8. 16
  f4 e f \once\partCombineApart r % E
  c8 8 d8. 16 c4 8 8
  e4 4 4 \once\partCombineApart r
  f8 8 e8. 16 f4\fermata 8. 16 % F
  f16 8. 8. 16 16 8. r8 f
  d16 8. 8. bes16 16 a8 r16 c8. 16
  c4 4 e8 8\fermata \once\partCombineApart r4 % G
  c8 8 d8. 16 c4
}

tenor = \relative {
  \autoBeamOff
  f8. g16
  a4 8. 16 16 8. c8 8
  c8. 16 8 8 4 a8 8
  bes8. d16 8 bes8 16 a8. c8 bes % B
  a8. 16 b8. 16 c4f,8. g16
  a4 8. 16 16 8. c8 8 % C
  \tag #'dash       {c8. 16 8 8 4 \slurDashed 8(8) \slurSolid}
  \tag #'v3         {c8. 16 8 8 4             4              }
  \tag #'(v1 v2 v4) {c8. 16 8 8 4             8 8            }
  bes8. d16 8 bes a16 c8 r16 a8 b % D
  c8. 16 8. bes16 a4\fermata f8. g16
  a4 g a r % E
  a8 8 bes8. 16 a4 8 8
  c4 g c r
  a8 8 g8. 16 a4\fermata f8. g16 % F
  a16 8. bes a16 16 c8. r8 a
  bes16 8. 8. f16 16 8 r16 8. 16
  f4 a g8 8\fermata r4 % G
  a8 8 bes8. 16 a4


}

bass = \relative {
  \autoBeamOff
  f8. g16
  a4 8. 16 16 8. a,8 c
  f8. bes16 a8 g f4 8 8
  bes,8. 16 8 8 f'16 8. 8 c % B
  d8. 16 g8. 16 c,4 f8. 16
  f4 8. 16 16 8. a,8 c % C
  \tag #'dash       {f8. bes16 a8 g f4 \slurDashed 8(8) \slurSolid}
  \tag #'v3         {f8. bes16 a8 g f4             4              }
  \tag #'(v1 v2 v4) {f8. bes16 a8 g f4             8 8            }
  bes,8. 16 8 8 f'16 8 r16 8 d % D
  c8. 16 8. 16 f4\fermata f8. 16
  f4 c f r % E
  f8 8 8. 16 4 8 8
  c4 4 4 r
  f8 8 c8. 16 f4\fermata 8. 16 % F
  f16 8. 8. 16 16 8. r8 f
  bes,16 8. 8. 16 f16 8 r16 a8. bes16
  c4 4 8 8\fermata r4 % G
  f8 8 bes,8. 16 f4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  'Tis the hand of God on the wall! __
  'Tis the hand of God on the wall! __
  Shall the re -- cord be— "\"Found" want -- "ing!\""
  or shall it be— "\"Found" trust -- "ing!\""
  While that Hand is wri -- ting on the wall? __
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ wri -- ting on the wall!
  _ _ _ _ _ wri -- ting on the wall!
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _  wri -- ting on the wall?
}

chorusMenSingle = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ wri -- ting on the wall!
  _ _ _ _ _ wri -- ting on the wall!
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _  wri -- ting on the wall?

  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ wri -- ting on the wall!
  _ _ _ _ _ wri -- ting on the wall!
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _  wri -- ting on the wall?

  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ wri -- ting on the wall!
  _ _ _ _ _ wri -- ting on the wall!
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _  wri -- ting on the wall?

  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ wri -- ting on the wall!
  _ _ _ _ _ wri -- ting on the wall!
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _  wri -- ting on the wall?
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  At the feast of Bel -- shaz -- zar
  and a thou -- sand of his lords,
  While they drank from gol -- den ves -- sels,
  As the Book of Truth re -- cords:
  In the night, as they rev -- elled
  in the roy -- al pal -- ace hall,
  \nom They were \yesm seized with con -- ster -- na -- tion—
  "'t was" the Hand up -- on the wall!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  See the brave cap -- tive, Dan -- iel,
  as he stood be -- fore the throng,
  And re -- buked the haugh -- ty mon -- arch
  for his migh -- ty deeds of wrong:
  As he read out the wri -- ting—
  'twas the doom of one and all,
  \nom For the \yesm king -- dom now was fin -- ished—
  said the Hand up -- on the wall!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  See the faith, zeal and cour -- age,
  that would dare to do the right,
  Which the Spi -- rit gave to Dan -- iel—
  'twas the se -- cret of his might;
  In his home in Ju -- de -- a,
  or a cap -- tive in the hall,
  He un -- der -- stood the writ -- ing
  of his God up -- on the wall!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  So our deeds are re -- cord -- ed—
  there's a Hand that's wri -- ting now:
  Sin -- ner, give your heart to Je -- sus,—
  to His roy -- al man -- date bow;
  For the day is ap -- roach -- ing—
  it must come to one and all,
  \nom When the \yesm sin -- ner's con -- dem -- na -- tion
  will be writ -- ten on the wall!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "At " "the " "feast " "of " Bel shaz "zar "
  "\nand " "a " thou "sand " "of " "his " "lords, "
  "\nWhile " "they " "drank " "from " gol "den " ves "sels, "
  "\nAs " "the " "Book " "of " "Truth " re "cords: "
  "\nIn " "the " "night, " "as " "they " rev "elled "
  "\nin " "the " roy "al " pal "ace " "hall, "
  "\nThey " "were " "seized " "with " con ster na "tion— "
  "\n't was " "the " "Hand " up "on " "the " "wall! "
  "\n'Tis " "the " "hand " "of " "God " "on " "the " "wall! " 
  "\n'Tis " "the " "hand " "of " "God " "on " "the " "wall! " 
  "\nShall " "the " re "cord " "be— " "\"Found " want "ing!\" "
  "\nor " "shall " "it " "be— " "\"Found " trust "ing!\" "
  "\nWhile " "that " "Hand " "is " wri "ting " "on " "the " "wall?\n" 

  \set stanza = "2."
  "\nSee " "the " "brave " cap "tive, " Dan "iel, "
  "\nas " "he " "stood " be "fore " "the " "throng, "
  "\nAnd " re "buked " "the " haugh "ty " mon "arch "
  "\nfor " "his " migh "ty " "deeds " "of " "wrong: "
  "\nAs " "he " "read " "out " "the " wri "ting— "
  "\n'twas " "the " "doom " "of " "one " "and " "all, "
  "\nFor " "the " king "dom " "now " "was " fin "ished— "
  "\nsaid " "the " "Hand " up "on " "the " "wall! "
  "\n'Tis " "the " "hand " "of " "God " "on " "the " "wall! " 
  "\n'Tis " "the " "hand " "of " "God " "on " "the " "wall! " 
  "\nShall " "the " re "cord " "be— " "\"Found " want "ing!\" "
  "\nor " "shall " "it " "be— " "\"Found " trust "ing!\" "
  "\nWhile " "that " "Hand " "is " wri "ting " "on " "the " "wall?\n" 

  \set stanza = "3."
  "\nSee " "the " "faith, " "zeal " "and " cour "age, "
  "\nthat " "would " "dare " "to " "do " "the " "right, "
  "\nWhich " "the " Spi "rit " "gave " "to " Dan "iel— "
  "\n'twas " "the " se "cret " "of " "his " "might; "
  "\nIn " "his " "home " "in " Ju de "a, "
  "\nor " "a " cap "tive " "in " "the " "hall, "
  "\nHe " un der "stood " "the " writ "ing "
  "\nof " "his " "God " up "on " "the " "wall! "
  "\n'Tis " "the " "hand " "of " "God " "on " "the " "wall! " 
  "\n'Tis " "the " "hand " "of " "God " "on " "the " "wall! " 
  "\nShall " "the " re "cord " "be— " "\"Found " want "ing!\" "
  "\nor " "shall " "it " "be— " "\"Found " trust "ing!\" "
  "\nWhile " "that " "Hand " "is " wri "ting " "on " "the " "wall?\n" 

  \set stanza = "4."
  "\nSo " "our " "deeds " "are " re cord "ed— "
  "\nthere's " "a " "Hand " "that's " wri "ting " "now: "
  "\nSin" "ner, " "give " "your " "heart " "to " Je "sus,— "
  "\nto " "His " roy "al " man "date " "bow; "
  "\nFor " "the " "day " "is " ap roach "ing— "
  "\nit " "must " "come " "to " "one " "and " "all, "
  "\nWhen " "the " sin "ner's " con dem na "tion "
  "\nwill " "be " writ "ten " "on " "the " "wall! "
  "\n'Tis " "the " "hand " "of " "God " "on " "the " "wall! " 
  "\n'Tis " "the " "hand " "of " "God " "on " "the " "wall! " 
  "\nShall " "the " re "cord " "be— " "\"Found " want "ing!\" "
  "\nor " "shall " "it " "be— " "\"Found " trust "ing!\" "
  "\nWhile " "that " "Hand " "is " wri "ting " "on " "the " "wall?\n" 
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "At " "the " "feast " "of " Bel shaz "zar "
  "\nand " "a " thou "sand " "of " "his " "lords, "
  "\nWhile " "they " "drank " "from " gol "den " ves "sels, "
  "\nAs " "the " "Book " "of " "Truth " re "cords: "
  "\nIn " "the " "night, " "as " "they " rev "elled "
  "\nin " "the " roy "al " pal "ace " "hall, "
  "\nThey " "were " "seized " "with " con ster na "tion— "
  "\n't was " "the " "Hand " up "on " "the " "wall! "
  "\n'Tis " "the " "hand " "of " "God " wri "ting " "on " "the " "wall! " 
  "\n'Tis " "the " "hand " "of " "God " wri "ting " "on " "the " "wall! " 
  "\nShall " "the " re "cord " "be— " "\"Found " want "ing!\" "
  "\nor " "shall " "it " "be— " "\"Found " trust "ing!\" "
  "\nWhile " "that " "Hand " "is " wri "ting, "
  "\nwrit" "ing " "on " "the " "wall?\n" 

  \set stanza = "2."
  "\nSee " "the " "brave " cap "tive, " Dan "iel, "
  "\nas " "he " "stood " be "fore " "the " "throng, "
  "\nAnd " re "buked " "the " haugh "ty " mon "arch "
  "\nfor " "his " migh "ty " "deeds " "of " "wrong: "
  "\nAs " "he " "read " "out " "the " wri "ting— "
  "\n'twas " "the " "doom " "of " "one " "and " "all, "
  "\nFor " "the " king "dom " "now " "was " fin "ished— "
  "\nsaid " "the " "Hand " up "on " "the " "wall! "
  "\n'Tis " "the " "hand " "of " "God " wri "ting " "on " "the " "wall! " 
  "\n'Tis " "the " "hand " "of " "God " wri "ting " "on " "the " "wall! " 
  "\nShall " "the " re "cord " "be— " "\"Found " want "ing!\" "
  "\nor " "shall " "it " "be— " "\"Found " trust "ing!\" "
  "\nWhile " "that " "Hand " "is " wri "ting, "
  "\nwrit" "ing " "on " "the " "wall?\n" 

  \set stanza = "3."
  "\nSee " "the " "faith, " "zeal " "and " cour "age, "
  "\nthat " "would " "dare " "to " "do " "the " "right, "
  "\nWhich " "the " Spi "rit " "gave " "to " Dan "iel— "
  "\n'twas " "the " se "cret " "of " "his " "might; "
  "\nIn " "his " "home " "in " Ju de "a, "
  "\nor " "a " cap "tive " "in " "the " "hall, "
  "\nHe " un der "stood " "the " writ "ing "
  "\nof " "his " "God " up "on " "the " "wall! "
  "\n'Tis " "the " "hand " "of " "God " wri "ting " "on " "the " "wall! " 
  "\n'Tis " "the " "hand " "of " "God " wri "ting " "on " "the " "wall! " 
  "\nShall " "the " re "cord " "be— " "\"Found " want "ing!\" "
  "\nor " "shall " "it " "be— " "\"Found " trust "ing!\" "
  "\nWhile " "that " "Hand " "is " wri "ting, "
  "\nwrit" "ing " "on " "the " "wall?\n" 

  \set stanza = "4."
  "\nSo " "our " "deeds " "are " re cord "ed— "
  "\nthere's " "a " "Hand " "that's " wri "ting " "now: "
  "\nSin" "ner, " "give " "your " "heart " "to " Je "sus,— "
  "\nto " "His " roy "al " man "date " "bow; "
  "\nFor " "the " "day " "is " ap roach "ing— "
  "\nit " "must " "come " "to " "one " "and " "all, "
  "\nWhen " "the " sin "ner's " con dem na "tion "
  "\nwill " "be " writ "ten " "on " "the " "wall! "
  "\n'Tis " "the " "hand " "of " "God " wri "ting " "on " "the " "wall! " 
  "\n'Tis " "the " "hand " "of " "God " wri "ting " "on " "the " "wall! " 
  "\nShall " "the " re "cord " "be— " "\"Found " want "ing!\" "
  "\nor " "shall " "it " "be— " "\"Found " trust "ing!\" "
  "\nWhile " "that " "Hand " "is " wri "ting, "
  "\nwrit" "ing " "on " "the " "wall? " 
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \keepWithTag #'v4 \alto \nl
                         \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                         \keepWithTag #'v4 \tenor
                       }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                         \keepWithTag #'v4 \bass
                       }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \keepWithTag #'v4 \alto \nl
                         \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                         \keepWithTag #'v4 \tenor
                       }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                         \keepWithTag #'v4 \bass
                       }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "alignerS" \keepWithTag #'dash \soprano
            \new Voice \partCombine { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "alignerS" { \wordsOne \chorus }
            \new Lyrics \lyricsto "alignerS"   \wordsTwo
            \new Lyrics \lyricsto "alignerS"   \wordsThree
            \new Lyrics \lyricsto "alignerS"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
              \keepWithTag #'v4 \soprano
            }
            \new Voice \partCombine { \global
                                      \keepWithTag #'v1 \soprano
                                      \keepWithTag #'v2 \soprano
                                      \keepWithTag #'v3 \soprano
                                      \keepWithTag #'v4 \soprano
                                      \bar "|." }
            { \global
              \keepWithTag #'v1 \alto \nl
              \keepWithTag #'v2 \alto \nl
              \keepWithTag #'v3 \alto \nl
              \keepWithTag #'v4 \alto \nl
              \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global
                                      \keepWithTag #'v1 \tenor
                                      \keepWithTag #'v2 \tenor
                                      \keepWithTag #'v3 \tenor
                                      \keepWithTag #'v4 \tenor
                                    }
            { \global
              \keepWithTag #'v1 \bass
              \keepWithTag #'v2 \bass
              \keepWithTag #'v3 \bass
              \keepWithTag #'v4 \bass
            }
            \new NullVoice = alignerT {
              \keepWithTag #'v1 \tenor
              \keepWithTag #'v2 \tenor
              \keepWithTag #'v3 \tenor
              \keepWithTag #'v4 \tenor
            }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMenSingle
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
