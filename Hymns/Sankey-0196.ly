\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, Holy Ghost, in Love."
  subtitle    = "Sankey No. 196"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "F. Giardini."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Robert II. of France. (Tr. Ray Palmer, D.D.)"
  meter       = \markup\smallCaps "6.6.4.6.6.6.4."
  piece       = \markup\smallCaps "Moscow."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*6
  \mark \markup { \box "B" } s2.*5
  \mark \markup { \box "C" } s2.*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d''4 b g
  a2 fis4
  g2.
  g4 a b
  c2 b4
  a2.
  d4 b g % B
  d2.
  a'4 b c
  b4. a8 g4
  a4 b c
  b4. a8 g4 % C
  g4 4 4
  d'4. c8 b4
  a4 g fis
  g2.
}

alto = \relative {
  \autoBeamOff
  g'4 d g
  e2 d4
  d2.
  d4 fis g
  g2 4
  g4(fis8[e] fis4)
  d'4 b g % B
  d2.
  fis4 g a
  g4. d8 4
  a'4 g g
  g4. fis8 g4 % C
  g4 fis e
  d4. fis8 g4
  e4 d d
  d2.
}

tenor = \relative {
  \autoBeamOff
  b4 g b
  c2 a4
  b2.
  b4 c d
  e2 d4
  d2.
  d4 b g % B
  d2.
  d'4 d d
  d4. c8 b4
  d4 4 e
  d4. c8 b4 % C
  b4 4 c
  g4. a8 b4
  c4 b a
  b2.
}

bass = \relative {
  \autoBeamOff
  g,4 b e
  c2 d4
  g,2.
  b'4 a g
  c,2 g'4
  d2.
  d'4 b g % B
  d2.
  d4 g f
  g4. 8 4
  f4 g c,
  g'4. 8 4 % C
  e4 d c
  b4. a8 g4
  c4 d d
  g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, Ho -- ly Ghost, in love,
  Shed on us from a -- bove __
  Thine own bright ray
  Di -- vine -- ly good Thou art;
  Thy sac -- red gifts im -- part
  To glad -- den each sad heart:
  Oh come to -- day!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come, ten -- d'rest Friend and best,
  Our most de -- light -- ful Guest,
  With sooth -- ing power;
  Rest, which the wea -- ry know;
  Shade, 'mid the noon -- tide glow;
  Peace, when deep griefs o'er -- flow:
  Cheer us this hour.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come, Light se -- rene and still,
  Our in -- most bo -- soms fill;
  Dwell in each breast!
  We know no dawn but Thine!
  Send forth Thy beams Di -- vine
  On our dark souls to shine,
  And make us blest.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Ex -- alt our low des -- ires,
  Ex -- tin -- guish pas -- sion's fires,
  Heal ev -- 'ry woundl
  Our stub -- born spi -- rits bend,
  Our i -- cy cold -- ness end,
  Our de -- vious steps at -- tend
  While heav'n -- ward bound.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Come, all the faith -- ful bless:
  Let all who Christ con -- fess
  His praise em -- plotl
  Give vir -- tue's rich re -- ward;
  Vic -- to -- rious death ac -- cord,
  And, with our glo -- rious Lord,
  E -- ter -- nal joy.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " Ho "ly " "Ghost, " "in " "love, "
  "\nShed " "on " "us " "from " a "bove " 
  "\nThine " "own " "bright " "ray "
  "\nDi" vine "ly " "good " "Thou " "art; "
  "\nThy " sac "red " "gifts " im "part "
  "\nTo " glad "den " "each " "sad " "heart: "
  "\nOh " "come " to "day! "

  \set stanza = "2."
  "\nCome, " ten "d'rest " "Friend " "and " "best, "
  "\nOur " "most " de light "ful " "Guest, "
  "\nWith " sooth "ing " "power; "
  "\nRest, " "which " "the " wea "ry " "know; "
  "\nShade, " "'mid " "the " noon "tide " "glow; "
  "\nPeace, " "when " "deep " "griefs " o'er "flow: "
  "\nCheer " "us " "this " "hour. "

  \set stanza = "3."
  "\nCome, " "Light " se "rene " "and " "still, "
  "\nOur " in "most " bo "soms " "fill; "
  "\nDwell " "in " "each " "breast! "
  "\nWe " "know " "no " "dawn " "but " "Thine! "
  "\nSend " "forth " "Thy " "beams " Di "vine "
  "\nOn " "our " "dark " "souls " "to " "shine, "
  "\nAnd " "make " "us " "blest. "

  \set stanza = "4."
  "\nEx" "alt " "our " "low " des "ires, "
  "\nEx" tin "guish " pas "sion's " "fires, "
  "\nHeal " ev "'ry " "woundl "
  "\nOur " stub "born " spi "rits " "bend, "
  "\nOur " i "cy " cold "ness " "end, "
  "\nOur " de "vious " "steps " at "tend "
  "\nWhile " heav'n "ward " "bound. "

  \set stanza = "5."
  "\nCome, " "all " "the " faith "ful " "bless: "
  "\nLet " "all " "who " "Christ " con "fess "
  "\nHis " "praise " em "plotl "
  "\nGive " vir "tue's " "rich " re "ward; "
  "\nVic" to "rious " "death " ac "cord, "
  "\nAnd, " "with " "our " glo "rious " "Lord, "
  "\nE" ter "nal " "joy. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
