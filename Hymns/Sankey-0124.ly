\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Look Up! Ye Weary Ones."
  subtitle    = "Sankey No. 124"
  subsubtitle = "N. H. No. 91"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*3 s4. s4
  \mark \markup { \box "C" } s8 s2.*3 s4. s4
  \mark \markup { \box "D" } s8 s2.*3 s4. s4
  \mark \markup { \box "E" } s8 s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  b'8
  b4 8 a[e] fis
  g4 8 d4 8
  g4 8 a[b] c
  d4.~4 \bar "|" \break \partial 8 d8
  c4 8 b4 8 % B
  a4 8 g4 8
  fis4 8 e4 a8
  a4.~4 \bar "|" \break \partial 8 d,8
  g4 fis8 a 4 g8 % C
  b4. g4 d8
  b'4 a8 c4 b8
  d4. 8[c] \bar "|" \break \partial 8 d8^\markup\smallCaps Chorus.
  e4. c4 e8 % D
  d4. b4 d8
  g,4 8 a4 8
  b4.~8[c] \bar "|" \break \partial 8 d8
  e4. c4 e8 % E
  d4. b4 g8
  a8[b] c b4 a8
  g4.~4
}

alto = \relative {
  \autoBeamOff
  d'8
  d4 8 e4 d8
  e4 8 d4 8
  d4 8 cis4 8
  d4.~4 g8
  g4 8 4 d8 % B
  e4 8 d4 8
  d4 8 cis4 8
  d4.~4 8
  d4 8 4 8 % C
  d4. 4 8
  g4 fis8 a4 g8
  g4. 4 8
  g4. 4 8 % D
  g4. d4 8
  e4 8 fis4 8
  g4.~8[a] b
  c4. g4 8
  g4. d4 8
  e4 8 d4 c8
  b4.~4
}

tenor = \relative {
  \autoBeamOff
  g8
  g4 8 c4 8
  b4 8 g4 8
  g4 8 fis8[g] a
  b4.~4 8
  c4 8 d4 g,8 % B
  c4 8 d4 g,8
  a4 8 g4 8
  fis4.~4 c'8
  b4 a8 c4 b8 % C
  g4. b4 8
  d4 8 4 8
  b4. g8[a] b8
  c4. e4 c8 % D
  b4. g4 b8
  b4 8 d4 8
  d4.~4 8
  c4. e4 c8 % E
  b4. g4 8
  a8[gis] a d,4 fis8
  g4.~4
}

bass= \relative {
  \autoBeamOff
  g8
  g4 8 c,4 d8
  g,4 8 4 8
  b4 8 d4 8
  g4.~4 f8
  e4 8 d4 8 % B
  c4 8 b4 8
  a4 8 4 8
  d4.~4 8
  g,4 8 4 8 % C
  g4. 4 g'8
  g4 8 4 8
  g4. 4 8
  c,4. 4 8 % D
  g'4. 4 8
  e 4 8 d4 8
  g4.~4 8
  c,4. 4 8 % E
  g'4. 4 8
  c,8[b] a d4 8
  g,4.~4
}

chorus = \lyricmode {
  Be -- hold Him! be -- hold Him!
  Your Sa -- viour lives to -- day; __
  Be -- hold Him! be -- hold Him!
  The clouds have rolled a -- way. __
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Look up! look up! ye wea -- ry ones,
  Whose skies are veiled in night;
  For He who knows the path you tread
  Will yet re -- store the light;
  Look up! and hail the dawn -- ing
  Of hopes tri -- umph -- ant morn -- ing.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The gifts you bring with lov -- ing hand
  Your Lord will not diw -- own;
  Their o -- dours sweet to heav'n shall rise
  Like in -- cense round His throne;
  Look up! and hail the dawn -- ing
  Of joy's tran -- scend -- ent morn -- ing.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Re -- joice! the grave is o -- ver -- come,
  And lo! the an -- gels sing;
  The grand -- est tri -- umph ev -- er known
  Has come thro' Christ our King;
  All heav'n pro -- claims the dawn -- ing
  Of love's all -- glo -- rious morn -- ing. 
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Look " "up! " "look " "up! " "ye " wea "ry " "ones, "
  "\nWhose " "skies " "are " "veiled " "in " "night; "
  "\nFor " "He " "who " "knows " "the " "path " "you " "tread "
  "\nWill " "yet " re "store " "the " "light; "
  "\nLook " "up! " "and " "hail " "the " dawn "ing "
  "\nOf " "hopes " tri umph "ant " morn "ing. "
  "\nBe" "hold " "Him! " be "hold " "Him! "
  "\nYour " Sa "viour " "lives " to "day; " 
  "\nBe" "hold " "Him! " be "hold " "Him! "
  "\nThe " "clouds " "have " "rolled " a "way. " 

  \set stanza = "2."
  "\nThe " "gifts " "you " "bring " "with " lov "ing " "hand "
  "\nYour " "Lord " "will " "not " diw "own; "
  "\nTheir " o "dours " "sweet " "to " "heav'n " "shall " "rise "
  "\nLike " in "cense " "round " "His " "throne; "
  "\nLook " "up! " "and " "hail " "the " dawn "ing "
  "\nOf " "joy's " tran scend "ent " morn "ing. "
  "\nBe" "hold " "Him! " be "hold " "Him! "
  "\nYour " Sa "viour " "lives " to "day; " 
  "\nBe" "hold " "Him! " be "hold " "Him! "
  "\nThe " "clouds " "have " "rolled " a "way. " 

  \set stanza = "3."
  "\nRe" "joice! " "the " "grave " "is " o ver "come, "
  "\nAnd " "lo! " "the " an "gels " "sing; "
  "\nThe " grand "est " tri "umph " ev "er " "known "
  "\nHas " "come " "thro' " "Christ " "our " "King; "
  "\nAll " "heav'n " pro "claims " "the " dawn "ing "
  "\nOf " "love's " all glo "rious " morn "ing. " 
  "\nBe" "hold " "Him! " be "hold " "Him! "
  "\nYour " Sa "viour " "lives " to "day; " 
  "\nBe" "hold " "Him! " be "hold " "Him! "
  "\nThe " "clouds " "have " "rolled " a "way. " 
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
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
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
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \new Voice { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
