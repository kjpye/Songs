\version "2.22.1"

\include "articulate.ly"

verses = 3

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, and let us Worship."
  subtitle    = "Sankey No. 236"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Lyman G. Cuyler."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }    s1*3
  \mark \markup { \box "B" }    s1*3 s2
  \mark \markup { \box "C" } s2 s1*3
  \mark \markup { \box "D" }    s1*3
  \mark \markup { \box "E" }    s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4. c8 b fis a g
  g2 fis4(e)
  d4. g8 8 8 fis g
  a2(d4 c) % B
  b4. c8 bes fis a g
  g2 fis4(e)
  d4. e8 \bar "|" \break fis8 c' b8. a16
  g2. r4 % C \bar "||"
  a4.^\markup\smallCaps Chorus. g8 fis g a c
  b2 d4 r
  d4. 8 cis d e8. cis16 % D
  d2(cis4 c)
  b4. d8 c b a e
  g2 fis4(e) % E
  d4. e8 fis c' b8. a16
  g2. r4
}

alto = \relative {
  \autoBeamOff
  d'4. e8 d d d dis
  e2 d4(c)
  b4. d8 8 8 8 8
  fis2.(a4) % B
  g4. 8 8 d d dis
  e2 d4(c)
  c4. b8
  c fis8 8. 16
  g2. r4 % C
  fis4. g8 d e fis a
  g2 4 r
  fis4. 8 g fis g8. 16 % D
  fis2(g4 a)
  g4. f8 e f e e
  d2 4(c) $ E
  c4. b8 c fis fis8. 16
  g2. r4
}

tenor = \relative {
  \autoBeamOff
  g4. 8 8 c b b
  g2 2
  b4. 8 8 d c b
  d1 % B
  d4. e8 d c b b
  g2 2
  f4. g8 a e' d8. c16
  b2. r4 % C
  c4. b8 a a d d
  d2 b4 r
  d4. 8 e d cis8. e16 % D
  d2(a4 d)
  d4. b8 c d c g
  g2 2 % E
  fis4. g8 a e' d8. c16
  b2. r4
}

bass = \relative {
  \autoBeamOff
  g,4. 8 8 a b b
  c2 d4(e)
  g4. 8 8 b a g
  d2.(fis4) % B
  g4. 8 g, a b b
  c2 2
  d4. 8 8 8 8. 16
  g2. r4 % C
  d4. 8 8 8 8 fis
  g2 4 r
  a4. 8 8 8 <a, a'>8. 16 % D
  d2(e4 fis)
  g4. 8 8 8 c, c
  b2 c % E
  d4. 8 8 8 8. 16
  <g, g'>2. r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Come, oh come, and let us wor -- ship,
  Bring -- ing songs of love and praise. __
  Un -- to Him whose lov -- ing- -- kind -- ness
  Has been o'er us all our days.
  Come, oh come, and let us wor -- ship,
  Bring -- ing songs of love and praise. __
  Un -- to Him whose lov -- ing- -- kind -- ness
  Has been o'er us all our days.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, oh come, and let us wor -- ship,
  Ga -- thered in the house of prayer; __
  Praise the God of our sal -- va -- tion
  While He waits to meet us there.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He hath par -- doned our trans -- gres -- sions,
  Ta -- ken all our sins a -- way; __
  He will lead us, by His Spi -- rit,
  Safe -- ly to the per -- fect day.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Soon our tri -- als will be end -- ed,
  And, a -- mong the loved and blest, __
  We shall join the bright im -- mor -- tals
  Un that home of joy and rest.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " "oh " "come, " "and " "let " "us " wor "ship, "
  "\nGa" "thered " "in " "the " "house " "of " "prayer; " 
  "\nPraise " "the " "God " "of " "our " sal va "tion "
  "\nWhile " "He " "waits " "to " "meet " "us " "there. "
  "\nCome, " "oh " "come, " "and " "let " "us " wor "ship, "
  "\nBring" "ing " "songs " "of " "love " "and " "praise. " 
  "\nUn" "to " "Him " "whose " lov ing- kind "ness "
  "\nHas " "been " "o'er " "us " "all " "our " "days. "

  \set stanza = "2."
  "\nHe " "hath " par "doned " "our " trans gres "sions, "
  "\nTa" "ken " "all " "our " "sins " a "way; " 
  "\nHe " "will " "lead " "us, " "by " "His " Spi "rit, "
  "\nSafe" "ly " "to " "the " per "fect " "day. "
  "\nCome, " "oh " "come, " "and " "let " "us " wor "ship, "
  "\nBring" "ing " "songs " "of " "love " "and " "praise. " 
  "\nUn" "to " "Him " "whose " lov ing- kind "ness "
  "\nHas " "been " "o'er " "us " "all " "our " "days. "

  \set stanza = "3."
  "\nSoon " "our " tri "als " "will " "be " end "ed, "
  "\nAnd, " a "mong " "the " "loved " "and " "blest, " 
  "\nWe " "shall " "join " "the " "bright " im mor "tals "
  "\nUn " "that " "home " "of " "joy " "and " "rest. "
  "\nCome, " "oh " "come, " "and " "let " "us " wor "ship, "
  "\nBring" "ing " "songs " "of " "love " "and " "praise. " 
  "\nUn" "to " "Him " "whose " lov ing- kind "ness "
  "\nHas " "been " "o'er " "us " "all " "our " "days. "
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
