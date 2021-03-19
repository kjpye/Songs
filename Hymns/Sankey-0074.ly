\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Go and Tell Jesus"
  subtitle    = "Sankey No. 74"
  subsubtitle = "Sankey 880 No. 521"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Theo. F. Seward."
%  arranger    = "arranger"
%  opus        = "opus"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s1*2
  \mark \markup { \box "B" } s1*3
  \mark \markup { \box "C" } s1*3
  \mark \markup { \box "D" } \repeat volta 2 { s1*2 } s1
  \mark \markup { \box "E" } s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s1*8
  \repeat volta 2 {s1 s1}
  s1
  s2. \tempo 4=40 s4 \tempo 4=120
  s1
  s1
}

soprano = \relative {
  ees'8 8 4 4 c'
  bes8 aes f aes ees4. 8
  ees8 f g aes bes4 aes8(g) % B
  aes4 c bes2
  ees,4 8 8 4 c'
  bes8 aes f aes ees4. 8 % C
  f4 f ees aes
  g8 aes bes g aes2
  \repeat volta 2 {
    bes8^\markup\smallCaps Chorus. 8 4 4 ees8 des % D
    c8 bes aes f ees2
  }
  ees8 8 4 4 aes
  f8 8 4 4 aes4\fermata % E
  g8 8 4 aes ees8 aes
  g8 aes bes g aes2
}

alto = \relative {
  c'8 8 4 4 ees
  des8 8 8 8 c4. c8
  ees8 ees ees ees ees4 ees % B
  ees4 ees ges2
  c,4 8 8 4 ees
  des8 8 8 8 c4. 8 % C
  des4 des ees ees
  ees8 8 8 8 2
  \repeat volta 2 {
    g8 8 4 4 8 8 % D
    aes8 ees ees des c2
  }
  c8 8 4 4 4
  des8 8 4 4 f\fermata % E
  ees8 8 4 4 c8 ees
  ees8 8 8 8 2
}

tenor = \relative {
  aes8 8 4 4 4
  f8 f aes aes aes4. aes8
  g8 aes bes c des4 c8(bes) % B
  aes4 aes8(c) ees2
  aes,4 8 8 4 4
  f8 f aes aes aes4. 8 % C
  aes4 4 4 c
  bes8 c des bes c2
  \repeat volta 2 {
    ees8 8 4 4 8 8 % D
    ees8 des c aes aes2
  }
  aes8 8 4 4 4
  aes8 8 4 4 des\fermata % E
  bes8 8 4 aes aes8 aes
  bes8 c des bes c2
}

bass= \relative {
  aes,8 8 4 4 4
  des8 8 8 f aes4. aes,8
  ees'8 8 8 8 4 4 % B
  aes4 aes8(c) ees,2
  aes,4 8 8 4 4
  des8 8 8 f aes4. aes,8 % C
  des4 4 c aes
  ees'8 8 8 8 aes,2
  \repeat volta 2 {
    ees'8 8 4 4 8 8
    aes8 8 8 8 2
  }
  aes,8 8 4 4 4
  ees'8 8 4 4 4\fermata % E
  ees8 8 4 c aes8 c
  ees8 8 8 8 aes,2
}

chorusOne = \lyricmode {
  Go and tell Je -- sus,
  He on -- ly can for -- give:
  Go and tell Je -- sus!
  Go and tell Je -- sus!
  Go and tell Je -- sus!—
  He on -- ly can for -- give:
}

chorusTwo = \lyricmode {
  Go and tell Je -- sus,
  Oh, turn to Him and live!
  _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _
}

chorusFull = \lyricmode {
  Go and tell Je -- sus,
  He on -- ly can for -- give:
  Go and tell Je -- sus,
  Oh, turn to Him and live!
  Go and tell Je -- sus!
  Go and tell Je -- sus!
  Go and tell Je -- sus!—
  He on -- ly can for -- give:
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Go and tell Je -- sus,
  wea -- ry, sin -- sick soul!
  He'll ease thee of thy bur -- den. make thee whole;
  Look up to Him, He on -- ly can for -- give;
  Be -- lieve on Him, and thou shalt sure -- ly live.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Go and tell Je -- sus,
  when your sins a -- rise
  Like moun -- tains of dark guilt be -- fore your eyes;
  His blood was shed, His pre -- cious life He gave,
  That mer -- cy, peace, and par -- don you might have.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Go and tell Je -- sus,
  He'll dis -- pel thy fears,
  Will calm thy doubts, and wipe a -- way thy tears;
  He'll take thee in His arms, and on His breast
  Thou may'st be hap -- py, and for ev -- er blest.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nGo " "and " "tell " Je "sus, "
  "\nwea" "ry, " sin "sick " "soul! "
  "\nHe'll " "ease " "thee " "of " "thy " bur "den. " "make " "thee " "whole; "
  "\nLook " "up " "to " "Him, " "He " on "ly " "can " for "give; "
  "\nBe" "lieve " "on " "Him, " "and " "thou " "shalt " sure "ly " "live. "
  "\nGo " "and " "tell " Je "sus, "
  "\nHe " on "ly " "can " for "give: "
  "\nGo " "and " "tell " Je "sus, "
  "\nOh, " "turn " "to " "Him " "and " "live! "
  "\nGo " "and " "tell " Je "sus! "
  "\nGo " "and " "tell " Je "sus! "
  "\nGo " "and " "tell " Je "sus!— "
  "\nHe " on "ly " "can " for "give: "

  \set stanza = "2."
  "\nGo " "and " "tell " Je "sus, "
  "\nwhen " "your " "sins " a "rise "
  "\nLike " moun "tains " "of " "dark " "guilt " be "fore " "your " "eyes; "
  "\nHis " "blood " "was " "shed, " "His " pre "cious " "life " "He " "gave, "
  "\nThat " mer "cy, " "peace, " "and " par "don " "you " "might " "have. "
  "\nGo " "and " "tell " Je "sus, "
  "\nHe " on "ly " "can " for "give: "
  "\nGo " "and " "tell " Je "sus, "
  "\nOh, " "turn " "to " "Him " "and " "live! "
  "\nGo " "and " "tell " Je "sus! "
  "\nGo " "and " "tell " Je "sus! "
  "\nGo " "and " "tell " Je "sus!— "
  "\nHe " on "ly " "can " for "give: "

  \set stanza = "3."
  "\nGo " "and " "tell " Je "sus, "
  "\nHe'll " dis "pel " "thy " "fears, "
  "\nWill " "calm " "thy " "doubts, " "and " "wipe " a "way " "thy " "tears; "
  "\nHe'll " "take " "thee " "in " "His " "arms, " "and " "on " "His " "breast "
  "\nThou " "may'st " "be " hap "py, " "and " "for " ev "er " "blest. "
  "\nGo " "and " "tell " Je "sus, "
  "\nHe " on "ly " "can " for "give: "
  "\nGo " "and " "tell " Je "sus, "
  "\nOh, " "turn " "to " "Him " "and " "live! "
  "\nGo " "and " "tell " Je "sus! "
  "\nGo " "and " "tell " Je "sus! "
  "\nGo " "and " "tell " Je "sus!— "
  "\nHe " on "ly " "can " for "give: "
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
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorusOne }
            \new Lyrics \lyricsto "aligner" { \wordsTwo \chorusTwo }
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
    \unfoldRepeats
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
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorusFull
                                              \wordsTwo   \chorusFull
                                              \wordsThree \chorusFull
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass  \bass  \bass  }
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
    \unfoldRepeats
%    \articulate
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
            \new Lyrics \lyricsto "aligner" \wordsMidi
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
