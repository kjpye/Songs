
\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh where is He that Trod the Sea?"
  subtitle    = "Sankey No. 53"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup \smallCaps "Dr. Croft."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup \smallCaps "T. T. Lynch."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 3/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s2.*5
  \mark \markup { \box "B" } s2.*5
  \mark \markup { \box "C" } s2.*6
  \mark \markup { \box "D" } s2.*6
  \mark \markup { \box "E" } s2.*5 s2
}

soprano = \relative {
  g'4
  e2 g4
  c2 e4
  d4(c) b
  c2 e4
  d2 g,4
  a4(g) fis % B
  g2 d'4 b2 g4
  c2 e4
  e4(d) c
  c4(b) g % C
  c2 e4
  d4(c) b
  c2 e,4
  e2 a4
  gis2 a4
  b4(a) gis % D
  a2 b4
  c2 b8(a)
  g2 fis4
  e2 g4
  g2 a4
  a2 a4 % E
  d2 c4
  c4(b) g
  c2 e4
  d4(c) b
  c2
}

alto = \relative {
  e'4
  c2 d4
  e2 g4
  f4(e) d
  e2 g4
  g2 e4
  e4(d) d % B
  d2 g4
  g2 d4
  g2 g4
  a2 a4
  g2 g4 % C
  g2 g4
  f4(e) d
  e2 c4
  c2 e4
  e2 c4
  f4(e) d % D
  c2 e4
  e2 e4
  e2 dis4
  e2 e4
  e2 e4
  f2 f4 % E
  fis2 fis4
  a4(g) d
  g2 g4
  f4(e) d
  e2
}

tenor = \relative {
  g4
  g2 d'4
  c2 c4
  a4(g) g
  g2 c4
  d2 b4
  c4(b) a % B
  b2 b4
  d2 b4
  c2 c4
  a2 d4
  d2 b4 % C
  c2 c4
  a4(g) g
  g2 a4
  a2 c4
  b2 a4
  d4(c) b % D
  a2 gis4
  a2 b8(c)
  b2 a4
  g2 c4
  c2 g4
  a2 c4 % E
  d2 d4
  d2 b4
  c2 c4
  a4(g) g
  g2
}

bass= \relative {
  c4
  c2 b4
  a2 e'4
  f4(g) g,
  c2 c4
  b2 e4
  c4(d) d % B
  g,2 g'4
  g2 f4
  e2 c4
  f2 fis4
  g2 f4 % C
  e2 c4
  f4(g) g,
  c2 a4
  c2 a4
  e'2 f4
  d4(e) e % D
  a,2 e'4
  a,2 g8(a)
  b2 b4
  e2 c4
  e2 c4
  f2 f4 % E
  d2 d4
  g2 g4
  e2 c4
  f4(g) g
  c,2
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, where is He that trod the sea?
  Oh, where is He that spake,
  And de -- mons from their vic -- tims flee,
  The dead their slum -- ber break?—
  The pal -- sied rise in free -- dom strong,
  The dumb men talk and sing,
  And from blind eyes, be -- night -- ed long,
  Bright beams of morn -- ing spring.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, where is He that trod the sea?
  'Tis on -- ly He can save;
  To thou -- sands hun -- g'ring wea -- ri -- ly
  A won -- drous meal He gave:
  The word, who all the worlds had made,
  To His own crea -- tures spake;
  'Twas spring -- tide when He blest the bread,
  And har -- vest when He brake.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, where is He that trod the sea?
  My soul, the Lord is here!
  Let all thy fears be hush'd in thee,
  Be thine to know him near:
  Thy ut -- most needs He'll sat -- is -- fy:
  Art thou dis -- eased or dumb,
  Or dost thou in thy hun -- ger cry?
  "\"I" "come.\"" saith Christ. "\"I" "come!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "where " "is " "He " "that " "trod " "the " "sea? "
  "\nOh, " "where " "is " "He " "that " "spake, "
  "\nAnd " de "mons " "from " "their " vic "tims " "flee, "
  "\nThe " "dead " "their " slum "ber " "break?— "
  "\nThe " pal "sied " "rise " "in " free "dom " "strong, "
  "\nThe " "dumb " "men " "talk " "and " "sing, "
  "\nAnd " "from " "blind " "eyes, " be night "ed " "long, "
  "\nBright " "beams " "of " morn "ing " "spring. "

  \set stanza = "2."
  "\nOh, " "where " "is " "He " "that " "trod " "the " "sea? "
  "\n'Tis " on "ly " "He " "can " "save; "
  "\nTo " thou "sands " hun "g'ring " wea ri "ly "
  "\nA " won "drous " "meal " "He " "gave: "
  "\nThe " "word, " "who " "all " "the " "worlds " "had " "made, "
  "\nTo " "His " "own " crea "tures " "spake; "
  "\n'Twas " spring "tide " "when " "He " "blest " "the " "bread, "
  "\nAnd " har "vest " "when " "He " "brake. "

  \set stanza = "3."
  "\nOh, " "where " "is " "He " "that " "trod " "the " "sea? "
  "\nMy " "soul, " "the " "Lord " "is " "here! "
  "\nLet " "all " "thy " "fears " "be " "hush'd " "in " "thee, "
  "\nBe " "thine " "to " "know " "him " "near: "
  "\nThy " ut "most " "needs " "He'll " sat is "fy: "
  "\nArt " "thou " dis "eased " "or " "dumb, "
  "\nOr " "dost " "thou " "in " "thy " hun "ger " "cry? "
  "\n\"I " "come.\" " "saith " "Christ. " "\"I " "come!\" "
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
            \new Voice = "men" \partCombine { \global \tenor \tenor }
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
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
