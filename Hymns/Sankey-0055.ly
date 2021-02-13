\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Hem of His Garment!"
  subtitle    = "Sankey No. 55"
  subsubtitle = "Sankey 880 No. 293"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup \smallCaps "Geo. F. Root."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup \smallCaps "G. F. R."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s8 s2.*2
  \mark \markup { \box "B" } s2.*3
  \mark \markup { \box "C" } s2.*2 s4. s4
  \mark \markup { \box "D" } s8 s2.*3 s4. s4
  \mark \markup { \box "E" } s8 s2.*3 s4. s4
}

TempoTrack = {
  \tempo 4=120
  s8
  s2.*13
  s2 \tempo 4=30 s8 \tempo 4=120 s8
  s2.
  s4. s4
}

soprano = \relative {
  a'8
  a4 a8 a4 a8
  a8 gis a b a g
  e4 fis8 a4 g8 % B
  fis4.~4 a8
  a4 a8 a4 a8
  a8 gis a b a b % C
  cis4 d8 cis4 b8
  a4.~4 \bar "|" \break \partial 8 a8^\markup\smallCaps Chorus.
  d4 d8 cis b a % D
  b4. a4 a8
  b4 d8 a4 fis8
  e4.~4 \bar "|" \break \partial 8 e8
  fis4 fis8 a4 a8 % E
  d4 d8 e(d\fermata) b
  a4 a8 b4 cis8
  d4.~4
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  fis'8
  fis4 fis8 fis4 fis8
  fis8 eis fis g fis d
  cis4 d8 fis4 e8 % B
  d4.~4 fis8
  fis4 fis8 fis4 fis8
  fis8 eis fis g fis fis % C
  e4 e8 e4 e8
  e4.~4 a8
  fis4 fis8 a g fis % D
  g4. fis4 fis8
  g4 b8 a4 d,8
  cis4.~4 cis8
  d4 d8 cis4 cis8 % E
  d4 a'8 g4\fermata g8
  fis4 fis8 g4 g8
  fis4.~4
}

tenor = \relative {
  d'8
  d4 d8 d4 d8
  d8 d d d d a
  a4 a8 a4 a8 % B
  a4.~4 d8
  d4 d8 d4 d8
  d8 d d d a a % C
  a4 b8 cis4 d8
  cis4.~4 a8
  a4 d8 d d d % D
  d4. d4 d8
  d4 d8 d4 a8
  a4.~4 a8
  a4 a8 a4 a8 % E
  a4 a8 b4\fermata d8
  d4 d8 cis4 e8
  d4.~4
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative {
  d8
  d4 d8 d4 d8
  d8 d d d d d
  a4 a8 a4 a8 % B
  d4.~4 d8
  d4 d8 d4 d8
  d8 d d d d d % C
  e4 e8 e4 e8
  a4.~4 a8
  d,4 d8 d d d % D
  d4. d4 d8
  g4 g8 fis4 d8
  a4.~4 a8
  d4 d8 e4 e8 % E
  fis4 fis8 g4\fermata g8
  a4 a8 a4 a8
  d,4.~4
}

chorus = \lyricmode {
  Oh, touch the hem of His gar -- ment!
  And thou, too, shalt be free!
  His sav -- ing power this ve -- ry hour
  Shall give new life to thee!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  She on -- ly touched the hem of His gar -- ment
  As to His side she stole,
  A -- mid the crowd that ga -- thered a -- round Him;
  And straight -- way she was whole.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  She came in fear and trem -- bling be -- fore Him,
  She knew her Lord had copme,
  She felt that from Him vir -- tue had healed her;
  The migh -- ty deed was done.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He turned with "\"Daugh" -- ter, be of good com -- fort,
  Thy faith hath made thee "whole!\""
  And peace that pass -- eth all un -- der -- stand -- ing
  With glad -- ness filled her soul.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "She " on "ly " "touched " "the " "hem " "of " "His " gar "ment "
  "\nAs " "to " "His " "side " "she " "stole, "
  "\nA" "mid " "the " "crowd " "that " ga "thered " a "round " "Him; "
  "\nAnd " straight "way " "she " "was " "whole. "
  "\nOh, " "touch " "the " "hem " "of " "His " gar "ment! "
  "\nAnd " "thou, " "too, " "shalt " "be " "free! "
  "\nHis " sav "ing " "power " "this " ve "ry " "hour "
  "\nShall " "give " "new " "life " "to " "thee! "

  \set stanza = "2."
  "\nShe " "came " "in " "fear " "and " trem "bling " be "fore " "Him, "
  "\nShe " "knew " "her " "Lord " "had " "copme, "
  "\nShe " "felt " "that " "from " "Him " vir "tue " "had " "healed " "her; "
  "\nThe " migh "ty " "deed " "was " "done. "
  "\nOh, " "touch " "the " "hem " "of " "His " gar "ment! "
  "\nAnd " "thou, " "too, " "shalt " "be " "free! "
  "\nHis " sav "ing " "power " "this " ve "ry " "hour "
  "\nShall " "give " "new " "life " "to " "thee! "

  \set stanza = "3."
  "\nHe " "turned " "with " "\"Daugh" "ter, " "be " "of " "good " com "fort, "
  "\nThy " "faith " "hath " "made " "thee " "whole!\" "
  "\nAnd " "peace " "that " pass "eth " "all " un der stand "ing "
  "\nWith " glad "ness " "filled " "her " "soul. "
  "\nOh, " "touch " "the " "hem " "of " "His " gar "ment! "
  "\nAnd " "thou, " "too, " "shalt " "be " "free! "
  "\nHis " sav "ing " "power " "this " ve "ry " "hour "
  "\nShall " "give " "new " "life " "to " "thee! "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
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
          \new Dynamics \dynamicsMen
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
          \new Dynamics \dynamicsMen
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
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
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
    \midi {}
  }
}
