\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "An Open Bible for the World."
  subtitle    = "Sankey No. 262"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Henry M. King, D.D."
  meter       = \markup\smallCaps "L.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4  s1*3 s2.
  \mark \markup { \box "B" } s4  s1*3 s2 s8
  \mark \markup { \box "C" } s4. s1   s2 s8
  \mark \markup { \box "D" } s4. s1*2
  \mark \markup { \box "E" }     s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4
  s1*11
  s2 \tempo 4=20 s8 \tempo 4=120 s4.
  s1*3 s2.
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4
  bes4 4 8. f16 d8. ees16
  f2. 4
  g4 4 c8. bes16 a8. bes16
  c2. \bar "|" \break f,4
  bes4 4 8. f16 d8. ees16 % B
  f2. 4
  g4 c bes8. a16 g8. a16
  bes2 r8 \bar "|" \break bes8^\markup\smallCaps Chorus. a8. bes16
  c2~8 8 bes8. c16 % C
  d2~8 \bar "|" \break d c8. d16
  ees4-> d-> c-> bes->
  d2~8\fermata f, g8. a16 \break
  bes4. 8 c4 d % E
  f4(ees)~8 8-> d-> c->
  bes4 4 a c
  bes2.
}

alto = \relative {
  \autoBeamOff
  f'4
  bes4 4 8. f16 d8. ees16
  f2. 4
  ees4 4 e8. 16 8. 16
  f2. 4
  bes4 4 8. f16 d8. ees16 % B
  f2. 4
  ees4 4 d8. f16 e8. ees16
  d2 r8 d c8. d16
  ees2~8 8 d8. ees16 % C
  f2~8 8 8. 16
  ees4-> f-> g-> g->
  f8. 16 8. 16 8\fermata 8 e8. ees16
  d4. 8 g4 4 % E
  g2~8 8-> 8-> 8->
  f4 4 4 4
  f2.
}

tenor = \relative {
  \autoBeamOff
  f4
  bes4 4 8. f16 d8. ees16
  f2. bes4
  bes4 g g8. 16 c8. bes16
  a2. f4
  a4 4 8. f16 d8. ees16 % B
  f2. bes4
  bes4 g f8. c'16 bes8. c16
  bes2 r8 r8 r4
  r8 a8 8. 16 8 r r4 % C
  r8 bes8 8. 16 8 8 c8. bes16
  bes4-> e-> e-> e->
  bes2(a8)\fermata a bes8. c16
  bes4. 8 g4 b % E
  c2~8 8 b c
  d4 4 c ees
  d2.
}

bass = \relative {
  \autoBeamOff
  f4
  bes4 4 8. f16 d8. ees16
  f2. d4
  ees4 4 c8. 16 8. 16
  f2. 4
  bes4 4 8. f16 d8. 16 % B
  f2. d4
  ees4 4 f8. 16 8. 16
  bes,2 r8 r8 r4
  r8 f8 8. 16 8 r r4 % C
  r8 bes8 8. 16 8 bes'8 a8. aes16
  g4-> f-> ees-> e-> % D
  f2~8\fermata 8 8. 16
  g4. 8 ees4 d % E
  c2~8 8 d ees
  f4 4 4 4
  bes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Blest Word of God! __ send forth thy light __
  O'er ev -- 'ry land and ev -- 'ry sea __
  Till all who wan -- der in the night __
  Are led to God and heaven by thee.
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  An o -- pen Bi -- ble for the world—
  May this our glo -- rious mot -- to be!
  On ev -- 'ry breeze its flag un -- furled
  Shall scat -- ter bless -- ings rich and free.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Where -- e'er it goes its gold -- en light,
  Stream -- ing as from an un -- veiled sun,
  Shall dis -- si -- pate the clouds of night,
  Un -- do the work that sin has done.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  It shows to men the Fa -- ther's face,
  All- -- ra -- diant with for -- giv -- ing love;
  And to the lost of A -- dam's race
  Pro -- claims sweet mer -- cy from a -- bove.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  It of -- fers rest to wea -- ry hearts;
  It com -- forts those who sit in tears;
  To all who faint, it strength im -- parts,
  And gilds with hope "th' e" -- ter -- nal years.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "An " o "pen " Bi "ble " "for " "the " "world— "
  "\nMay " "this " "our " glo "rious " mot "to " "be! "
  "\nOn " ev "'ry " "breeze " "its " "flag " un "furled "
  "\nShall " scat "ter " bless "ings " "rich " "and " "free. "
  "\nBlest " "Word " "of " "God! "  "send " "forth " "thy " "light " 
  "\nO'er " ev "'ry " "land " "and " ev "'ry " "sea " 
  "\nTill " "all " "who " wan "der " "in " "the " "night " 
  "\nAre " "led " "to " "God " "and " "heaven " "by " "thee. "

  \set stanza = "2."
  "\nWhere" "e'er " "it " "goes " "its " gold "en " "light, "
  "\nStream" "ing " "as " "from " "an " un "veiled " "sun, "
  "\nShall " dis si "pate " "the " "clouds " "of " "night, "
  "\nUn" "do " "the " "work " "that " "sin " "has " "done. "
  "\nBlest " "Word " "of " "God! "  "send " "forth " "thy " "light " 
  "\nO'er " ev "'ry " "land " "and " ev "'ry " "sea " 
  "\nTill " "all " "who " wan "der " "in " "the " "night " 
  "\nAre " "led " "to " "God " "and " "heaven " "by " "thee. "

  \set stanza = "3."
  "\nIt " "shows " "to " "men " "the " Fa "ther's " "face, "
  "\nAll-" ra "diant " "with " for giv "ing " "love; "
  "\nAnd " "to " "the " "lost " "of " A "dam's " "race "
  "\nPro" "claims " "sweet " mer "cy " "from " a "bove. "
  "\nBlest " "Word " "of " "God! "  "send " "forth " "thy " "light " 
  "\nO'er " ev "'ry " "land " "and " ev "'ry " "sea " 
  "\nTill " "all " "who " wan "der " "in " "the " "night " 
  "\nAre " "led " "to " "God " "and " "heaven " "by " "thee. "

  \set stanza = "4."
  "\nIt " of "fers " "rest " "to " wea "ry " "hearts; "
  "\nIt " com "forts " "those " "who " "sit " "in " "tears; "
  "\nTo " "all " "who " "faint, " "it " "strength " im "parts, "
  "\nAnd " "gilds " "with " "hope " "th' e" ter "nal " "years. "
  "\nBlest " "Word " "of " "God! "  "send " "forth " "thy " "light " 
  "\nO'er " ev "'ry " "land " "and " ev "'ry " "sea " 
  "\nTill " "all " "who " wan "der " "in " "the " "night " 
  "\nAre " "led " "to " "God " "and " "heaven " "by " "thee. "
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout { }
%    \midi {}
  }
}

\book {
  \bookOutputSuffix "repeat"
  \score {
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
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
