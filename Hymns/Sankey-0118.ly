\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Christ hath Redeemed us."
  subtitle    = "Sankey No. 118"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "D. W. Whittle."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 6/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1.*2 s2.
  \mark \markup { \box "B" } s2. s1.*3
  \mark \markup { \box "C" } s1.*3
  \mark \markup { \box "D" } s1.*3 s2.
  \mark \markup { \box "E" } s2. s1.*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  bes'4. c8 bes4 g2 bes4
  ees4. d8 c4 bes2 r4
  bes4. c8 bes4 g4. f8 ees4
  g2. f2 r4 % B
  bes4. c8 bes4 g2 bes4
  ees4. d8 c4 bes2 r4
  c4. aes8 c4 bes4. g8 ees4 % C
  f2. ees2 r4
  c'4.^\markup\smallCaps Chorus. b8 c4 ees2 c4
  bes4. a8 bes4 g2 r4 % D
  ees'4 d c d4. c8 bes4
  c2. bes2 r4
  bes4. a8 bes4 ees2 bes4
  g4 aes bes c2 r4 % E
  ees4 d r8 c bes4. g8 ees'4
  d2. ees
}

alto = \relative {
  g'4. aes8 g4 ees2 g4
  g4. bes8 aes4 g2 r4
  g4. aes8 g4 ees4. 8 4
  ees2. d2 r4 % B
  ees4. 8 4 2 g4
  g4. bes8 aes4 g2 r4
  aes4. ees8 aes4 g4. ees8 bes4 % C
  d2. ees2 r4
  ees4. d8 ees4 aes2 4
  g4. fis8 g4 ees2 r4 % D
  g4 4 4 f4. ees8 d4
  ees2. d2 r4
  g4. fis8 g4 g2 4
  ees4 d ees aes2 r4 % E
  c4 bes r8 aes g4. ees8 g4
  aes2. g
}

tenor = \relative {
  ees'4. 8 4 bes2 4
  bes4. ees8 4 2 r4
  ees4. 8 4 bes4. aes8 g4
  bes2. 2 r4 % B
  g4. aes8 g4 bes2 4
  bes4. ees8 4 2 r4
  ees4. c8 ees4 4. bes8 g4 % C
  aes2. g2 r4
  aes4. 8 4 c2 ees4
  ees4. 8 4 bes2 r4 % D
  c4 b c f,4. 8 b4
  a2. bes2 r4
  bes4. c8 bes4 2 4
  bes4 4 ees4 2 r4 % E
  c4 d r8 ees8 4. bes8 4
  bes2. bes
}

bass= \relative {
  ees4. 8 4 2 4
  ees4. 8 4 2 r4
  ees4. 8 4 4. 8 4
  bes2. 2 r4 % B
  ees4. 8 4 2 4
  ees4. 8 4 2 r4
  aes4. 8 4 ees4. 8 4 % C
  bes2. ees2 r4
  aes4. 8 4 2 4
  ees4. 8 4 2 r4 % D
  c4 d ees f4. 8 4
  f2. bes,2 r4
  ees4. 8 4 2 4
  ees4 f g aes2 r4 % E
  aes4 4 r8 8 bes4. 8 4
  bes,2. ees
}

chorus = \lyricmode {
  "\"Christ" hath re -- deemed "us;\""
  Praise to His name!
  Praise Him, ye an -- gels in glo -- ry!
  "\"Christ" hath re -- deemed "us,\""
  bear -- ing our shame;
  Tell out the won -- der -- ful sto -- ry!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  "\"Christ" hath re -- deemed "us;\"" sing the glad word!
  Mer -- cy's sweet mes -- sage be tell -- ing,
  How, thro' the ran -- som made by His blood,
  Christ now with -- in us is dwell -- ing.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"Christ" hath re -- deemed "us;\"" ma -- king us free,
  Free from the sins that en -- slaved us;
  Nev -- er in bond -- age more can we be,
  Trust -- ing in Him who hath saved us.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"Christ" hath re -- deemed "us;\"" we are His own,
  Pur -- chased by blood— He will hold us;
  Nor will He ev -- er leave us a -- lone,
  Safe -- ly His arms shall -- en -- fold us.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  "\"Christ" hath re -- deemed "us;\"" soon with the throng
  Gath -- ered in glo -- ry we'll meet Him;
  Oh, with what rap -- ture join in the song,
  When face to face we shall gret Him!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\"Christ " "hath " re "deemed " "us;\" " "sing " "the " "glad " "word! "
  "\nMer" "cy's " "sweet " mes "sage " "be " tell "ing, "
  "\nHow, " "thro' " "the " ran "som " "made " "by " "His " "blood, "
  "\nChrist " "now " with "in " "us " "is " dwell "ing. "
  "\n\"Christ " "hath " re "deemed " "us;\" "
  "\nPraise " "to " "His " "name! "
  "\nPraise " "Him, " "ye " an "gels " "in " glo "ry! "
  "\n\"Christ " "hath " re "deemed " "us,\" "
  "\nbear" "ing " "our " "shame; "
  "\nTell " "out " "the " won der "ful " sto "ry! "

  \set stanza = "2."
  "\n\"Christ " "hath " re "deemed " "us;\" " ma "king " "us " "free, "
  "\nFree " "from " "the " "sins " "that " en "slaved " "us; "
  "\nNev" "er " "in " bond "age " "more " "can " "we " "be, "
  "\nTrust" "ing " "in " "Him " "who " "hath " "saved " "us. "
  "\n\"Christ " "hath " re "deemed " "us;\" "
  "\nPraise " "to " "His " "name! "
  "\nPraise " "Him, " "ye " an "gels " "in " glo "ry! "
  "\n\"Christ " "hath " re "deemed " "us,\" "
  "\nbear" "ing " "our " "shame; "
  "\nTell " "out " "the " won der "ful " sto "ry! "

  \set stanza = "3."
  "\n\"Christ " "hath " re "deemed " "us;\" " "we " "are " "His " "own, "
  "\nPur" "chased " "by " "blood— " "He " "will " "hold " "us; "
  "\nNor " "will " "He " ev "er " "leave " "us " a "lone, "
  "\nSafe" "ly " "His " "arms " shall en "fold " "us. "
  "\n\"Christ " "hath " re "deemed " "us;\" "
  "\nPraise " "to " "His " "name! "
  "\nPraise " "Him, " "ye " an "gels " "in " glo "ry! "
  "\n\"Christ " "hath " re "deemed " "us,\" "
  "\nbear" "ing " "our " "shame; "
  "\nTell " "out " "the " won der "ful " sto "ry! "

  \set stanza = "4."
  "\n\"Christ " "hath " re "deemed " "us;\" " "soon " "with " "the " "throng "
  "\nGath" "ered " "in " glo "ry " "we'll " "meet " "Him; "
  "\nOh, " "with " "what " rap "ture " "join " "in " "the " "song, "
  "\nWhen " "face " "to " "face " "we " "shall " "gret " "Him! "
  "\n\"Christ " "hath " re "deemed " "us;\" "
  "\nPraise " "to " "His " "name! "
  "\nPraise " "Him, " "ye " an "gels " "in " glo "ry! "
  "\n\"Christ " "hath " re "deemed " "us,\" "
  "\nbear" "ing " "our " "shame; "
  "\nTell " "out " "the " won der "ful " sto "ry! "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
      >>
    >>
    \midi {}
  }
}
