\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Ye Servants of God."
  subtitle    = "Sankey No. 212"
  subsubtitle = "Sankey 880 No. 738"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. Croft"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Wesley."
  meter       = \markup\smallCaps "5.5.6.5."
  piece       = \markup\smallCaps "Hanover"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key a \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*5
  \mark \markup { \box "B" } s2.*5
  \mark \markup { \box "C" } s2.*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'4
  a4 4 b
  cis2 e4
  a,4 b gis
  a2 b4
  cis4 b a
  gis2 a4 % B
  b4 a8[gis] fis4
  e2 gis4
  a4 b cis
  a4 fis d'
  cis4 b a % C
  e'2 e,4
  fis4 gis a
  b4 e, cis'
  fis,4 b gis
  a2
}

alto = \relative {
  \autoBeamOff
  cis'4
  e4 4 4
  e2 4
  fis4 4 d
  cis2 e4
  e4 4 8[dis]
    e2 4 % B
    e4 fis8[e] dis4
    e2 eis4
    fis4 4 eis
    fis4 4 e
    e4 4 8[dis] % C
    e2 4
    d4 e e
    d4 cis e
    d4 fis d
    cis2
}

tenor = \relative {
  \autoBeamOff
  a4
  cis4 a gis
  a2 b4
  cis4 d b
  a2 gis4
  a4 b cis8[a]
  b2 cis4 % B
  b4 cis a
  gis2 cis4
  cis4 b gis8[cis]
  cis4 4 b
  a4 b cis8[a] % C
  gis2 a4
  a4 d cis
  e,4 gis a
  a4 d b
  a2
}

bass = \relative {
  \autoBeamOff
  a,4
  a4 cis e
  a2 gis4
  fis4 d e
  a,2 e'4
  a4 gis fis
  e2 cis4 % B
  gis4 a b
  e2 cis4
  fis4 d cis
  fis4 a gis
  a4 gis fis % C
  e2 cis4
  d4 b a
  gis4 cis a
  d4 b e
  a,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Ye ser -- vants of God,
  Your mas -- ter pro -- claim,
  And pub -- lish a -- broad
  His won -- der -- ful name;
  The name all- -- vic -- tor -- ious
  Of Je -- sus ex -- tol;
  His king -- dom is glo -- rious,
  And rules o -- ver all.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  God rul -- eth on high,
  Al -- migh -- ty to save;
  And still He is nigh,
  His pre -- sence we have!
  The great con -- gre -- ga -- tion
  His tri -- umph shall sing,
  A -- scrib -- ing sal -- va -- tion
  To Je -- sus our King.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Sal -- va -- tion to God,
  Who sits on the throne;
  Let all cry a -- loud,
  And hon -- our the Son;
  The prai -- ses of Je -- sus
  All an -- gels pro -- claim,
  Fall down on their fa -- ces,
  And wor -- ship the Lamb.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Then let us a -- dore
  And give Him His right;
  All glo -- ry and power,
  All wis -- dom and might;
  All hon -- our and bless -- ing,
  With an -- gels a -- bove;
  And thanks nev -- er- -- ceas -- ing,
  And in -- fi -- nite love.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Ye " ser "vants " "of " "God, "
  "\nYour " mas "ter " pro "claim, "
  "\nAnd " pub "lish " a "broad "
  "\nHis " won der "ful " "name; "
  "\nThe " "name " all- vic tor "ious "
  "\nOf " Je "sus " ex "tol; "
  "\nHis " king "dom " "is " glo "rious, "
  "\nAnd " "rules " o "ver " "all. "

  \set stanza = "2."
  "\nGod " rul "eth " "on " "high, "
  "\nAl" migh "ty " "to " "save; "
  "\nAnd " "still " "He " "is " "nigh, "
  "\nHis " pre "sence " "we " "have! "
  "\nThe " "great " con gre ga "tion "
  "\nHis " tri "umph " "shall " "sing, "
  "\nA" scrib "ing " sal va "tion "
  "\nTo " Je "sus " "our " "King. "

  \set stanza = "3."
  "\nSal" va "tion " "to " "God, "
  "\nWho " "sits " "on " "the " "throne; "
  "\nLet " "all " "cry " a "loud, "
  "\nAnd " hon "our " "the " "Son; "
  "\nThe " prai "ses " "of " Je "sus "
  "\nAll " an "gels " pro "claim, "
  "\nFall " "down " "on " "their " fa "ces, "
  "\nAnd " wor "ship " "the " "Lamb. "

  \set stanza = "4."
  "\nThen " "let " "us " a "dore "
  "\nAnd " "give " "Him " "His " "right; "
  "\nAll " glo "ry " "and " "power, "
  "\nAll " wis "dom " "and " "might; "
  "\nAll " hon "our " "and " bless "ing, "
  "\nWith " an "gels " a "bove; "
  "\nAnd " "thanks " nev er- ceas "ing, "
  "\nAnd " in fi "nite " "love. "
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
            \new Voice {
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
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
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
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
