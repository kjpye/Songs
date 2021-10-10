\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "How can I Keep from Singing!"
  subtitle    = "Sankey No. 250"
  subsubtitle = "Sankey 880 No. 356"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "R. Lowry."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 3/4
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4. s2.*3 s4.
  \mark \markup { \box "B" } s4. s2.*3 s4.
  \mark \markup { \box "C" } s4. s2.*3 s4.
  \mark \markup { \box "D" } s4. s2.*3 s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4.
  s2.*15
  s4 \tempo 4=20 s8
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'8 fis g
  a4. d8 cis b
  a2 4
  a4. e8 fis g
  g4 fis8 \bar "|" \break a8 fis g
  a4. d8 cis b % B
  a2 4
  cis4. d8 cis b
  b4 a8 \bar "|" \break a8 8 b
  cis4. a8 cis d % C
  e2 d4
  d4. a8 g fis
  fis4 e8 \bar "|" \break e8 fis g
  a4. d8 e d % D
  b2 d4
  a4. 8 b8. 16
  cis4 d8\fermata


}

alto = \relative {
  \autoBeamOff
  fis'8 d e
  fis4. 8 a g
  fis2 4
  e4. cis8 d e
  e4 d8 fis d e
  fis4. 8 a g % B
  fis2 4
  e4. 8 8 d
  d4 cis8 a'8 g g
  g4. 8 8 fis % C
  g2 fis4
  fis4. d8 cis d
  d4 cis8 8 d cis
  d4. fis8 g g % D
  g2 eis4
  fis4. 8 g8. 16
  e4 fis8\fermata
}

tenor = \relative {
  \autoBeamOff
  d'8 a a
  d4. a8 a d
  d2 4
  cis4. a8 8 8
  a4 8 d a a
  d4. a8 8 d % B
  d2 4
  a4. b8 a gis
  a4 8 8 cis d
  e4. cis8 e d % C
  cis2 d4
  a4. 8 8 8
  a4 8 8 8 8
  a4. 8 b b % D
  d2 b4
  d4. 8 8. a16
  a4 8\fermata
}

bass = \relative {
  \autoBeamOff
  d8 8 8
  d4. 8 8 8
  d2 8[fis]
  a4. 8 a, a
  d4 8 8 8 8
  d4. 8 8 8 % B
  d2 4
  e4. 8 8 8
  a,4 8 a'8 8 8
  a4. 8 8 8 % C
  a2 d,4
  d4. fis8 e d
  a4 8 8 d e
  fis4. d8 g g % D
  g2 gis4
  a4. 8 a,8. 16
  a4 d8\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  My life flows on in end -- less song;
  A -- bove earth's lam -- en -- ta -- tion
  I hear the  sweet tho' far -- off hymn
  That hails a new cre -- a -- tion:
  Thro' all the tu -- mult and the strife
  I hear the mu -- sic ring -- ing;
  It finds an e -- cho in my soul—
  How can I keep from sing -- ing!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  What tho' my joys and com -- forts die!
  The Lord my Sa -- viour liv -- eth;
  What tho' the dark -- ness ga -- ther round!
  Songs in the night He giv -- eth:
  No storm can shake my in -- most calm
  While to that ref -- uge cling -- ing;
  Since Christ is Lord of heaven and earth,
  How can I keep from sing -- ing!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I lift mine eyes: the cloud grows thin;
  I see the blue a -- bove it;
  And day by day this path -- way smooths
  Since first I learned to love it.
  The peace of Christ makes fresh my heart,
  A foun -- tain ev -- er spring -- ing;
  All things are mine since I am His—
  How can I keep from sing -- ing!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "My " "life " "flows " "on " "in " end "less " "song; "
  "\nA" "bove " "earth's " lam en ta "tion "
  "\nI " "hear " "the "  "sweet " "tho' " far "off " "hymn "
  "\nThat " "hails " "a " "new " cre a "tion: "
  "\nThro' " "all " "the " tu "mult " "and " "the " "strife "
  "\nI " "hear " "the " mu "sic " ring "ing; "
  "\nIt " "finds " "an " e "cho " "in " "my " "soul— "
  "\nHow " "can " "I " "keep " "from " sing "ing! "

  \set stanza = "2."
  "\nWhat " "tho' " "my " "joys " "and " com "forts " "die! "
  "\nThe " "Lord " "my " Sa "viour " liv "eth; "
  "\nWhat " "tho' " "the " dark "ness " ga "ther " "round! "
  "\nSongs " "in " "the " "night " "He " giv "eth: "
  "\nNo " "storm " "can " "shake " "my " in "most " "calm "
  "\nWhile " "to " "that " ref "uge " cling "ing; "
  "\nSince " "Christ " "is " "Lord " "of " "heaven " "and " "earth, "
  "\nHow " "can " "I " "keep " "from " sing "ing! "

  \set stanza = "3."
  "\nI " "lift " "mine " "eyes: " "the " "cloud " "grows " "thin; "
  "\nI " "see " "the " "blue " a "bove " "it; "
  "\nAnd " "day " "by " "day " "this " path "way " "smooths "
  "\nSince " "first " "I " "learned " "to " "love " "it. "
  "\nThe " "peace " "of " "Christ " "makes " "fresh " "my " "heart, "
  "\nA " foun "tain " ev "er " spring "ing; "
  "\nAll " "things " "are " "mine " "since " "I " "am " "His— "
  "\nHow " "can " "I " "keep " "from " sing "ing! "
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
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
    \midi {}
  }
}

\book {
  \bookOutputSuffix "repeat"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    paper-height = 2000\mm
%    ragged-bottom = true
%    system-system-spacing.basic-distance = #22
%    system-separator-markup = \slashSeparator
%  }
  \score {
%    \unfoldRepeats
%    \articulate
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
%            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice \TempoTrack
%            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" \soprano
%            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
%            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
%                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
%            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
%                                              \wordsTwo   \chorus
%                                              \wordsThree \chorus
%                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
%            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
%                                            { \global \repeat unfold \verses \bass }
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
