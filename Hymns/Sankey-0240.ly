\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "His Praises I will Sing."
  subtitle    = "Sankey No. 240"
  subsubtitle = "N. H. No. 62"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. B. Aitchinson."
  meter       = \markup\smallCaps "c.m."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*4 s2
  \mark \markup { \box "B" } s2 s1*5
  \mark \markup { \box "C" }    s1*5 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4
  a4. g8 f g a8. bes16
  c2. 4
  d4. c8 c[bes] a4
  g2. f4
  a4. g8 \bar "|" \break f8 g a8. bes16
  c2. d4 % B
  c4. f,8 a4 g
  f2. \bar "||" 4^\markup\smallCaps Chorus.
  d'4. 8 4 4
  d4(c2) 4
  c4. a8 g4 f % C
  g4(c2) bes4
  a4. bes8 c a g f
  bes4(c d) f
  c4. f,8 a4 g
  f2.
}

alto = \relative {
  \autoBeamOff
  c'4
  f4. c8 8 8 f8. g16
  a2. f4
  f4. 8 e4 f
  e2. f4
  f4. c8 8 8 f8. 16
  f2. 4 % B
  f4. 8 4 e
  f2. 4
  f4. 8 4 4
  f2. 4
  f4. 8 c4 d
  e2. 4
  f4. g8 a f8 8 8
  f2. 4
  f4. 8 4 e
  f2.
}

tenor = \relative {
  \autoBeamOff
  a4
  c4. bes8 a bes c8. f16
  f2. c4
  bes4. c8 4 4
  c2. a4
  c4. bes8 a8 bes c8. g16
  a2. bes4 % B
  a4. 8 c4 bes
  a2. 4
  bes4. 8 4 4
  bes4(a2) 4
  a4. c8 4 a % C
  c4(g2) c4
  c4. 8 f c bes a
  bes4(a bes) gis
  a4. 8 c4 bes
  a2.
}

bass = \relative {
  \autoBeamOff
  f4
  f4. 8 8 8 8. 16
  f2. a4
  bes4. a8 g4 f
  c2. f4
  f4. 8 8 8 8. 16
  f2. bes,4 % B
  c4. d8 c4 4
  f2. 4
  bes,4. 8 8[c] d[e]
  f2. 4
  f4. 8 e4 d % C
  c2. 4
  f4. 8 8 8 8 8
  d4(c bes) b
  c4. d8 c4 4
  f2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  His prai -- ses I will sing!
  He is my Lord and King!
  And now with all my ran -- somed powers
  His prai -- ses I will sing!
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  I've learned to sing a glad new song
  Of praise un -- to our King!
  And now with all my ran -- somed powers
  His prai -- ses I will sing.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I've learned to sing the song of peace:
  'Tis sweet -- er ev -- 'ry day,
  Since Je -- sus calmed my troub -- led soul.
  And bore my sins a -- way.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I sing the song of per -- fect love,
  It cast -- eth out all fear!
  Oh breadth, oh length, oh depth, oh height!
  Oh love, so full of cheer!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I've learned to sing the song of joy;
  My cup is run -- ning o'er
  With bless -- ings full of peace and love:
  And still there's more and more.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Soon I shall sing the new, new song
  Of Mo -- ses and the Lamb,
  With all the sain -- ted hosts a -- bove,
  Be -- fore the great I AM!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I've " "learned " "to " "sing " "a " "glad " "new " "song "
  "\nOf " "praise " un "to " "our " "King! "
  "\nAnd " "now " "with " "all " "my " ran "somed " "powers "
  "\nHis " prai "ses " "I " "will " "sing. "
  "\nHis " prai "ses " "I " "will " "sing! "
  "\nHe " "is " "my " "Lord " "and " "King! "
  "\nAnd " "now " "with " "all " "my " ran "somed " "powers "
  "\nHis " prai "ses " "I " "will " "sing! "

  \set stanza = "2."
  "\nI've " "learned " "to " "sing " "the " "song " "of " "peace: "
  "\n'Tis " sweet "er " ev "'ry " "day, "
  "\nSince " Je "sus " "calmed " "my " troub "led " "soul. "
  "\nAnd " "bore " "my " "sins " a "way. "
  "\nHis " prai "ses " "I " "will " "sing! "
  "\nHe " "is " "my " "Lord " "and " "King! "
  "\nAnd " "now " "with " "all " "my " ran "somed " "powers "
  "\nHis " prai "ses " "I " "will " "sing! "

  \set stanza = "3."
  "\nI " "sing " "the " "song " "of " per "fect " "love, "
  "\nIt " cast "eth " "out " "all " "fear! "
  "\nOh " "breadth, " "oh " "length, " "oh " "depth, " "oh " "height! "
  "\nOh " "love, " "so " "full " "of " "cheer! "
  "\nHis " prai "ses " "I " "will " "sing! "
  "\nHe " "is " "my " "Lord " "and " "King! "
  "\nAnd " "now " "with " "all " "my " ran "somed " "powers "
  "\nHis " prai "ses " "I " "will " "sing! "

  \set stanza = "4."
  "\nI've " "learned " "to " "sing " "the " "song " "of " "joy; "
  "\nMy " "cup " "is " run "ning " "o'er "
  "\nWith " bless "ings " "full " "of " "peace " "and " "love: "
  "\nAnd " "still " "there's " "more " "and " "more. "
  "\nHis " prai "ses " "I " "will " "sing! "
  "\nHe " "is " "my " "Lord " "and " "King! "
  "\nAnd " "now " "with " "all " "my " ran "somed " "powers "
  "\nHis " prai "ses " "I " "will " "sing! "

  \set stanza = "5."
  "\nSoon " "I " "shall " "sing " "the " "new, " "new " "song "
  "\nOf " Mo "ses " "and " "the " "Lamb, "
  "\nWith " "all " "the " sain "ted " "hosts " a "bove, "
  "\nBe" "fore " "the " "great " "I " "AM! "
  "\nHis " prai "ses " "I " "will " "sing! "
  "\nHe " "is " "my " "Lord " "and " "King! "
  "\nAnd " "now " "with " "all " "my " ran "somed " "powers "
  "\nHis " prai "ses " "I " "will " "sing! "
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
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
                                              \wordsFive  \chorus
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack }
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
    \midi {}
  }
}
