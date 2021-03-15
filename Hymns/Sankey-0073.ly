\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Wonderful Story."
  subtitle    = "Sankey No. 73"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Chas. H. Gabriel."
%  arranger    = "arranger"
%  opus        = "opus"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key des \major
  \time 9/8
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4.*12
  \mark \markup { \box "B" } s4.*12
  \mark \markup { \box "C" } s4.*9
  \mark \markup { \box "D" } s4.*7
  \mark \markup { \box "E" } s4.*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4.*45 s4
  \tempo 4=100 s8 s4. s4. \tempo 4=120
}

soprano = \relative {
  aes'4.
  aes4.~8 g aes bes aes ges
  f4. aes des
  des4.~8 c des ees des bes
  aes4.~aes \bar "|" \break \partial 4. f4.
  ges4.~8 f ges bes aes ges % B
  f4. aes des
  c4.~8 bes aes bes aes g
  aes4.~aes \bar "|" \break \partial 4. aes4.^\markup\smallCaps Chorus.
  des4.~8 c des ees des bes
  aes4. f aes
  des4.~8 c des \bar "|" \break \partial 4. bes8 c des
  ees4.~8 aes, bes c des ees % D
  f4.~8 ees des c des bes
  aes4. f des' % D
  c4.~8 bes aes c bes aes^\markup\bold\italic rit.
  des4.~des
}

alto = \relative {
  f'4.
  f4.~8 e f ges f ees
  des4. f aes
  ges4.~8 8 8 8 8 8
  f4.~f des
  ees4.~8 d ees ges f ees % B
  des4. f f
  ees4.~8 des c des c des
  c4.~c ges'
  f8 f f f4. ges4 8 % C
  f8 f f des4 8 f4.
  f8 f f f4. g4 8
  aes8 8 8 8 \partCombineApart r r r4.\partCombineAutomatic
  aes4 8 8 ges f ges ges ges
  f8 f f des4 8 f4. % E
  ges8 ges ges ges4. ges4 ges8
  f8 f ges f4.
}

tenor = \relative {
  des'4.
  des4.~8 8 8 8 8 aes
  aes4. des ces
  bes~8 a bes bes bes des
  des4.~des aes
  aes4.~8 8 8 8 8 8 % B
  aes4. des aes
  aes4.~8 g aes g aes bes
  aes4.~aes aes
  aes8 aes aes aes4. bes4 des8 % C
  des8 des des aes4 aes8 des4.
  des8 8 8 bes4. des8(c) bes
  c8 8 8 8 r r r4. % D
  des4 8 8 8 aes bes bes des
  des8 des des aes4 8 4. % E
  aes8 aes aes ees'4. aes,4 8
  aes8 aes bes aes4.
}

bass= \relative {
  des4.
  des4.~8 8 8 8 8 8
  des4. des f
  ges4.~8 8 8 8 8 8
  des4.~des des
  aes4.~8 8 8 8 8 8 % B
  des4. des des
  ees4.~8 8 8 8 8 8
  aes,4.~aes aes'
  des,8 f aes des,4. 4 8 % C
  des8 8 8 4 8 4.
  bes8 bes bes bes4. ees4 8
  aes,8 c ees aes r r r4. % D
  des,4 8 8 8 8 8 8 8
  des8 8 8 4 8 4. % E
  aes'8 aes aes aes4. aes,4 aes'8
  des,8 8 8 4.
}

chorusSop = \lyricmode {
  \set stanza = "Sop."
  Oh, won -- der -- ful, won -- der -- ful sto -- ry!
  The dear -- est that ev -- er was told; __
  I'll re -- peat it in glo -- ry.
  The won -- der -- ful sto -- ry,
  Where I __ shall His beau -- ty be -- hold. __
}

chorus = \lyricmode {
  \set stanza = "Oth."
  Oh, won -- der -- ful stor -- ry!
  Oh, won -- der -- ful sto -- ry!
  The dear -- est that ev -- er that ev -- er was told; __
  I'll re -- peat it in glo -- ry.
  The won -- der -- ful sto -- ry,
  Where I __ shall His beau -- ty, His beau -- ty be -- hold.
}

emptyVerse = \lyricmode {
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, sweet is the sto -- ry of Je -- sus,
  The won -- der -- ful Sa -- viour of men,
  Who suf -- fer'd and died for the sin -- ner—
  I'll tell it a -- gain and a -- gain!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He came from the man -- sions of glo -- ry;
  His blood as a ran -- som He gave
  To pur -- chase e -- ter -- nal re -- demp -- tion—
  And Oh, He is migh -- ty to save!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  His mer -- cy flows on like a ri -- ver;
  His love is un -- meas -- ured and free;
  His grace is for ev -- er suf -- fi -- cient,
  It reach -- es and saves e -- ven me.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "\nOh, " "sweet " "is " "the " sto "ry " "of " Je "sus, "
  "\nThe " won der "ful " Sa "viour " "of " "men, "
  "\nWho " suf "fer'd " "and " "died " "for " "the " sin "ner— "
  "\nI'll " "tell " "it " a "gain " "and " a "gain! "
  "\nOh, " won der "ful, " won der "ful " sto "ry! "
  "\nThe " dear "est " "that " ev "er " "was " "told; " 
  "\nI'll " re "peat " "it " "in " glo "ry. "
  "\nThe " won der "ful " sto "ry, "
  "\nWhere " "I "  "shall " "His " beau "ty " be "hold. " 

  \set stanza = "2."
  "\nHe " "came " "from " "the " man "sions " "of " glo "ry; "
  "\nHis " "blood " "as " "a " ran "som " "He " "gave "
  "\nTo " pur "chase " e ter "nal " re demp "tion— "
  "\nAnd " "Oh, " "He " "is " migh "ty " "to " "save! "
  "\nOh, " won der "ful, " won der "ful " sto "ry! "
  "\nThe " dear "est " "that " ev "er " "was " "told; " 
  "\nI'll " re "peat " "it " "in " glo "ry. "
  "\nThe " won der "ful " sto "ry, "
  "\nWhere " "I "  "shall " "His " beau "ty " be "hold. " 

  \set stanza = "3."
  "\nHis " mer "cy " "flows " "on " "like " "a " ri "ver; "
  "\nHis " "love " "is " un meas "ured " "and " "free; "
  "\nHis " "grace " "is " "for " ev "er " suf fi "cient, "
  "\nIt " reach "es " "and " "saves " e "ven " "me. "
  "\nOh, " won der "ful, " won der "ful " sto "ry! "
  "\nThe " dear "est " "that " ev "er " "was " "told; " 
  "\nI'll " re "peat " "it " "in " glo "ry. "
  "\nThe " won der "ful " sto "ry, "
  "\nWhere " "I "  "shall " "His " beau "ty " be "hold. " 
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "sweet " "is " "the " sto "ry " "of " Je "sus, "
  "\nThe " won der "ful " Sa "viour " "of " "men, "
  "\nWho " suf "fer'd " "and " "died " "for " "the " sin "ner— "
  "\nI'll " "tell " "it " a "gain " "and " a "gain! "
  "\nOh, " won der "ful " stor "ry! "
  "\nOh, " won der "ful " sto "ry! "
  "\nThe " dear "est " "that " ev "er " "that " ev "er " "was " "told; " 
  "\nI'll " re "peat " "it " "in " glo "ry. "
  "\nThe " won der "ful " sto "ry, "
  "\nWhere " "I "  "shall " "His " beau "ty, " "His " beau "ty " be "hold. "

  \set stanza = "2."
  "\nHe " "came " "from " "the " man "sions " "of " glo "ry; "
  "\nHis " "blood " "as " "a " ran "som " "He " "gave "
  "\nTo " pur "chase " e ter "nal " re demp "tion— "
  "\nAnd " "Oh, " "He " "is " migh "ty " "to " "save! "
  "\nOh, " won der "ful " stor "ry! "
  "\nOh, " won der "ful " sto "ry! "
  "\nThe " dear "est " "that " ev "er " "that " ev "er " "was " "told; " 
  "\nI'll " re "peat " "it " "in " glo "ry. "
  "\nThe " won der "ful " sto "ry, "
  "\nWhere " "I "  "shall " "His " beau "ty, " "His " beau "ty " be "hold. "

  \set stanza = "3."
  "\nHis " mer "cy " "flows " "on " "like " "a " ri "ver; "
  "\nHis " "love " "is " un meas "ured " "and " "free; "
  "\nHis " "grace " "is " "for " ev "er " suf fi "cient, "
  "\nIt " reach "es " "and " "saves " e "ven " "me. "
  "\nOh, " won der "ful " stor "ry! "
  "\nOh, " won der "ful " sto "ry! "
  "\nThe " dear "est " "that " ev "er " "that " ev "er " "was " "told; " 
  "\nI'll " re "peat " "it " "in " glo "ry. "
  "\nThe " won der "ful " sto "ry, "
  "\nWhere " "I "  "shall " "His " beau "ty, " "His " beau "ty " be "hold. "
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
            \new NullVoice = "alignerS" \soprano
            \new NullVoice = "alignerA" \alto
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "alignerS" { \wordsOne \chorusSop }
            \new Lyrics \lyricsto "alignerS"   \wordsTwo
            \new Lyrics \lyricsto "alignerS"   \wordsThree
            \new Lyrics \lyricsto "alignerA"   { \emptyVerse \chorus }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "alignerS" { \soprano \soprano \soprano }
            \new NullVoice = "alignerA" { \alto \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "alignerS" { \wordsOne   \chorusSop
                                               \wordsTwo   \chorusSop
                                               \wordsThree \chorusSop
                                            }
            \new Lyrics \lyricsto "alignerA" { \emptyVerse \chorus
                                               \emptyVerse \chorus
                                               \emptyVerse \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
  \bookOutputSuffix "midi-sop"
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "alignerS" { \soprano \soprano \soprano }
            \new NullVoice = "alignerA" { \alto \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "alignerS" \wordsMidiSop
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-other"
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "alignerS" { \soprano \soprano \soprano }
            \new NullVoice = "alignerA" { \alto \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "alignerA" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
