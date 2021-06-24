\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Mighty to Save!"
  subtitle    = "Sankey No. 122"
  subsubtitle = "Sankey 880 No. 456"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "R. W. Todd."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
  \mark \markup { \box "E" } s1*4
  \mark \markup { \box "D" } s1*3 s2.
}

TempoTrack = {
%  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  d'4
  b'4 4 a g
  d2 4 g8[fis]
  e4 g b a
  a2. \bar "|" \break \partial 4 b8[c]
  d4 b g fis8[g] % B
  a4 g e4. 8
  d4 g a b
  g2. r4 \break
  d4 d d d % C
  g4 a b4. r8
  b2 a4 g
  a2. r4 \break
  b4 8[c] d4 g, % D
  c4 d e4. r8
  d2 b4 a
  g2. r4
  \break b2^\markup\smallCaps Chorus. g4 e % E
  d2. r4
  d'2 b4 g
  a2. r4 \break
  b4 8[c] d4 g, % D
  c4 d e4. r8
  d2 b4 a
  g2.
}

alto = \relative {
  \autoBeamOff
  b4
  d4 d c b
  b4(c) d d
  c4 d cis cis
  d2. 4
  g4 d d d % B
  e4 4 c4. 8
  b4 d d d
  d2. r4
  b4 4 a8[b] c4 % C
  d4 4 4. r8
  d2 4 cis
  d2. r4
  d4 d g g % D
  g4 4 4. r8
  g2 4 d
  d2. r4
  d2 b4 c % E
  b4 c d r
  g2 4 d
  fis4 e d r
  d4 d g g % D
  g4 4 4. r8
  g2 4 d
  d2.
}

tenor = \relative {
  \autoBeamOff
  g4
  g4 4 4 4
  g4(a) b g
  g4 4 4 4
  fis2. g8[a]
  b4 g b d % B
  c4 4 g4. 8
  g4 b c d
  b2. r4
  g4 4 fis8[g] a4 % C
  g4 fis g4. r8
  g2 a4 4
  fis2. r4
  g4 8[a] b4 d % D
  c4 b c4. r8
  b2 d4 c
  b2. r4
  g2 4 4 % E
  g4 a b r
  b2 d4 4
  a4 g fis r
  g4 8[a] b4 d % D
  c4 b c4. r8
  b2 d4 c
  b2.
}

bass= \relative {
  \autoBeamOff
  g,4
  g4 4 4 4
  g2 4 b
  c4 b a a
  d2. g4
  g4 4 4 b, % B
  c4 4 4. 8
  d4 4 4 4
  g,2. r4
  g4 4 d' d % C
  b4 d g4. r8
  g2 fis4 e
  d2. r4
  g4 4 4 f % D
  e4 d c4. r8
  d2 4 4
  g,2. r4
  g'2 4 c, % E
  g2. r4
  g'2 4 b,
  d2. r4
  g4 4 4 f % D
  e4 d c4. r8
  d2 4 4
  g,2.
}

chorus = \lyricmode {
  Migh -- ty to save!
  Migh -- ty to save!
  Lord, I'll trust Thy won -- drous love,
  "\"Migh" -- ty to "save!\""
}

chorusTwo = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _
  to save!
  _ _ _ _
  to save!
  _ _ _ _ _ _ _ _ _ _
  _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, who is this that com -- eth
  From E -- dom's crim -- son plain,
  With wound -- ed side, with gar -- ments dyed?
  Oh, tell me now Thy name.
  "\"I" that saw thy soul's dis -- tress,
  A ran -- som gave;
  I that speak in righ -- teous -- ness,
  Migh -- ty to "save!\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, why is Thine ap -- par -- el
  So ve -- ry deep -- ly dyed?—
  Like them that tread the wine -- press red?
  Oh why this crom -- son tide?
  "\"I" the win -- press trod a -- lone,
  'Neath dark -- 'ning skies;
  Of the peo -- ple there was none
  Migh -- ty to "save!\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O bleed -- ing Lamb, my Sa -- viour,
  How couldst Thou bear this shame?
  With mer -- cy fraught,
  Thine arm hath brought
  Sal -- va -- tion in Thy name!
  "\"I" the voc -- to -- ry have won,
  Con -- quered the grave:
  Now the year of joy has come,—
  Migh -- ty to "save!\""
}
  
wordsMidiOne = \lyricmode {
  \set stanza = "1."
  "Oh, " "who " "is " "this " "that " com "eth "
  "\nFrom " E "dom's " crim "son " "plain, "
  "\nWith " wound "ed " "side, " "with " gar "ments " "dyed? "
  "\nOh, " "tell " "me " "now " "Thy " "name. "
  "\n\"I " "that " "saw " "thy " "soul's " dis "tress, "
  "\nA " ran "som " "gave; "
  "\nI " "that " "speak " "in " righ teous "ness, "
  "\nMigh" "ty " "to " "save!\" "
  "\nMigh" "ty " "to " "save! "
  "\nMigh" "ty " "to " "save! "
  "\nLord, " "I'll " "trust " "Thy " won "drous " "love, "
  "\n"\"Migh"" "ty " "to " "save!\" "

  \set stanza = "2."
  "\nOh, " "why " "is " "Thine " ap par "el "
  "\nSo " ve "ry " deep "ly " "dyed?— "
  "\nLike " "them " "that " "tread " "the " wine "press " "red? "
  "\nOh " "why " "this " crom "son " "tide? "
  "\n\"I " "the " win "press " "trod " a "lone, "
  "\n'Neath " dark "'ning " "skies; "
  "\nOf " "the " peo "ple " "there " "was " "none "
  "\nMigh" "ty " "to " "save!\" "
  "\nMigh" "ty " "to " "save! "
  "\nMigh" "ty " "to " "save! "
  "\nLord, " "I'll " "trust " "Thy " won "drous " "love, "
  "\n"\"Migh"" "ty " "to " "save!\" "

  \set stanza = "3."
  "\nO " bleed "ing " "Lamb, " "my " Sa "viour, "
  "\nHow " "couldst " "Thou " "bear " "this " "shame? "
  "\nWith " mer "cy " "fraught, "
  "\nThine " "arm " "hath " "brought "
  "\nSal" va "tion " "in " "Thy " "name! "
  "\n\"I " "the " voc to "ry " "have " "won, "
  "\nCon" "quered " "the " "grave: "
  "\nNow " "the " "year " "of " "joy " "has " "come,— "
  "\nMigh" "ty " "to " "save!\" "
  "\nMigh" "ty " "to " "save! "
  "\nMigh" "ty " "to " "save! "
  "\nLord, " "I'll " "trust " "Thy " won "drous " "love, "
  "\n"\"Migh"" "ty " "to " "save!\" "
}
  
wordsMidiTwo = \lyricmode {
  \set stanza = "1."
  "Oh, " "who " "is " "this " "that " com "eth "
  "\nFrom " E "dom's " crim "son " "plain, "
  "\nWith " wound "ed " "side, " "with " gar "ments " "dyed? "
  "\nOh, " "tell " "me " "now " "Thy " "name. "
  "\n\"I " "that " "saw " "thy " "soul's " dis "tress, "
  "\nA " ran "som " "gave; "
  "\nI " "that " "speak " "in " righ teous "ness, "
  "\nMigh" "ty " "to " "save!\" "
  "\nMigh" "ty " "to " "save! " "to " "save! "
  "\nMigh" "ty " "to " "save! " "to " "save! "
  "\nLord, " "I'll " "trust " "Thy " won "drous " "love, "
  "\n"\"Migh"" "ty " "to " "save!\" "

  \set stanza = "2."
  "\nOh, " "why " "is " "Thine " ap par "el "
  "\nSo " ve "ry " deep "ly " "dyed?— "
  "\nLike " "them " "that " "tread " "the " wine "press " "red? "
  "\nOh " "why " "this " crom "son " "tide? "
  "\n\"I " "the " win "press " "trod " a "lone, "
  "\n'Neath " dark "'ning " "skies; "
  "\nOf " "the " peo "ple " "there " "was " "none "
  "\nMigh" "ty " "to " "save!\" "
  "\nMigh" "ty " "to " "save! " "to " "save! "
  "\nMigh" "ty " "to " "save! " "to " "save! "
  "\nLord, " "I'll " "trust " "Thy " won "drous " "love, "
  "\n"\"Migh"" "ty " "to " "save!\" "

  \set stanza = "3."
  "\nO " bleed "ing " "Lamb, " "my " Sa "viour, "
  "\nHow " "couldst " "Thou " "bear " "this " "shame? "
  "\nWith " mer "cy " "fraught, "
  "\nThine " "arm " "hath " "brought "
  "\nSal" va "tion " "in " "Thy " "name! "
  "\n\"I " "the " voc to "ry " "have " "won, "
  "\nCon" "quered " "the " "grave: "
  "\nNow " "the " "year " "of " "joy " "has " "come,— "
  "\nMigh" "ty " "to " "save!\" "
  "\nMigh" "ty " "to " "save! " "to " "save! "
  "\nMigh" "ty " "to " "save! " "to " "save! "
  "\nLord, " "I'll " "trust " "Thy " won "drous " "love, "
  "\n"\"Migh"" "ty " "to " "save!\" "
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
            \new NullVoice = alignerA  \alto
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto alignerA    \chorusTwo
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
            \new NullVoice = alignerA  { \alto    \alto    \alto    }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
            \new Lyrics \lyricsto alignerA { \chorusTwo \chorusTwo \chorusTwo }
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
            \new NullVoice = alignerA  { \alto    \alto    \alto    }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
            \new Lyrics \lyricsto alignerA { \chorusTwo \chorusTwo \chorusTwo }
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
  \bookOutputSuffix "midi-sopbass"
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
            \addlyrics \wordsMidiOne
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-altotenor"
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
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
            \addlyrics \wordsMidiTwo
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
