\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Songs of Praise."
  subtitle    = "Sankey No. 248"
  subsubtitle = "Sankey 880 No. 686"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. Gauntlett."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "James Montgomery."
  meter       = \markup\smallCaps "7s."
  piece       = \markup\smallCaps "University College."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 f d' c
  bes4 a g2
  a4 f c' c
  c4 b c2
  a4 g f d' % B
  c4 bes a2
  a4 4 c a
  a4 g f2
}

alto = \relative {
  \autoBeamOff
  f'4 4 4 4
  g4 f e2
  f4 4 a g
  f4 4 e2
  f4 e f f % B
  f4 8[e] f2
  e4 f e f
  f4 e f2
}

tenor = \relative {
  \autoBeamOff
  c'4 a bes c
  c4 4 2
  c4 4 4 4
  d4 4 g,2
  a4 c8[bes] a4 bes8[a] % B
  g4 c4 2
  a4 g a a8[bes]
  c4 8[bes] a2
}

bass = \relative {
  \autoBeamOff
  f4 4 bes a
  e4 f c2
  f4 a f e
  d4 4 c2
  g4 c d bes % B
  c4 4 f2
  cis4 d c f
  c4 4 f2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  Songs of praise the an -- gels sang,
  Heaven with hal -- le -- lu -- jahs rang,
  When Je -- ho -- vah's work be -- gun,
  When he spake, and it was done.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Songs of praise a -- woke the morn,
  When the Prince of Peace was born;
  Songs of praise a -- rose, when He
  Cap -- tive led cap -- ti -- vi -- ty.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Heaven and earth must pass a -- way,
  Songs of praise shall crown that day;
  God will make new heavens and earth,
  Songs of praise shall hail their birth.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  And will man a -- lone be dumb,
  Till that glo -- rious King -- dom come?
  No: the Church de -- lights to raise
  Psalms, and hymns, and songs of praise.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Saints be -- low, with ehart and voice,
  Still in songs of praise re -- joice;
  Learn -- ing here, by faith and love,
  Songs of praise to sing a -- bove.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Borne up -- on their la -- test breath,
  Songs of praise shall con -- quer death;
  Then, a -- midst e -- ter -- nal joy,
  Songs of praise their powers em -- ploy.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Songs " "of " "praise " "the " an "gels " "sang, "
  "\nHeaven " "with " hal le lu "jahs " "rang, "
  "\nWhen " Je ho "vah's " "work " be "gun, "
  "\nWhen " "he " "spake, " "and " "it " "was " "done. "

  \set stanza = "2."
  "\nSongs " "of " "praise " a "woke " "the " "morn, "
  "\nWhen " "the " "Prince " "of " "Peace " "was " "born; "
  "\nSongs " "of " "praise " a "rose, " "when " "He "
  "\nCap" "tive " "led " cap ti vi "ty. "

  \set stanza = "3."
  "\nHeaven " "and " "earth " "must " "pass " a "way, "
  "\nSongs " "of " "praise " "shall " "crown " "that " "day; "
  "\nGod " "will " "make " "new " "heavens " "and " "earth, "
  "\nSongs " "of " "praise " "shall " "hail " "their " "birth. "

  \set stanza = "4."
  "\nAnd " "will " "man " a "lone " "be " "dumb, "
  "\nTill " "that " glo "rious " King "dom " "come? "
  "\nNo: " "the " "Church " de "lights " "to " "raise "
  "\nPsalms, " "and " "hymns, " "and " "songs " "of " "praise. "

  \set stanza = "5."
  "\nSaints " be "low, " "with " "ehart " "and " "voice, "
  "\nStill " "in " "songs " "of " "praise " re "joice; "
  "\nLearn" "ing " "here, " "by " "faith " "and " "love, "
  "\nSongs " "of " "praise " "to " "sing " a "bove. "

  \set stanza = "6."
  "\nBorne " up "on " "their " la "test " "breath, "
  "\nSongs " "of " "praise " "shall " con "quer " "death; "
  "\nThen, " a "midst " e ter "nal " "joy, "
  "\nSongs " "of " "praise " "their " "powers " em "ploy. "
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
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
                                              \wordsSix   \chorus
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
                                              \wordsSix   \chorus
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
