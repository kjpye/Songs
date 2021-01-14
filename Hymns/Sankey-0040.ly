\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Seeking for me!"
  subtitle    = "Sankey No. 40"
  subsubtitle = "Sankey 880 No. 481"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Arr. E. E. Hasty"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "A. N."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

verses = 4

global = {
  \key g \major
  \time 6/8
  \tempo 8=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \repeat volta \verses {
    \mark \markup { \box "A" } s2.*3
    \mark \markup { \box "B" } s2.*4
    \mark \markup { \box "C" } s2.*5
    \mark \markup { \box "D" } s2.*4
  }
}

TempoTrack = {
  \repeat volta \verses {
    s2.*16
  }
}

soprano = \relative {
  \global
  \repeat volta \verses {
    d''8. c16 b8 b a g
    a8. g16 e8 e4.
    d8. g16 g8 g a b
    b8. a16 g8 a4. % B
    d8. c16 b8 b8. a16 g8
    a8 g e e4.
    d8 g b a4 g8
    g4.~4 r8 \bar "||" % C
    d8^\markup \smallCaps Refrain. fis a d4 c8
    b4.(g4) r8
    d8 fis a c4 e8
    d4.(b4) r8
    d8. c16 b8 b8. a16 g8 % D
    a8 g e e4.
    d8 g b a4 g8
    g4.~4 r8
  }
}

alto = \relative {
  \global
  \repeat volta \verses {
    g'8. g16 g8 g fis g
    e8. e16 c8 c4.
    b8. d16 d8 d d g
    g8. fis16 g8 fis4. % B
    g8. g16 g8 g8. fis16 g8
    e8 e c c4.
    b8 d d c4 b8
    b4.~4 r8 \bar "||" % C
    d8 d fis fis4 r8
    g8 d d b4 r8
    d8 d f f4 r8
    g8 g g g4 r8
    g8. g16 g8 g8. fis16 g8 % D
    e8 e c c4.
    b8 d d d4 d8
    d4.~4 r8
  }
}

tenor = \relative {
  \global
  \repeat volta \verses {
    b8. e16 d8 d c b
    c8. g16 g8 g4.
    g8. b16 b8 b c d
    d8. c16 b8 d4. % B
    b8. e16 d8 d8. c16 b8
    c8 g g g4.
    g8 b g fis4 g8
    g4.~4 r8 \bar "||" % C
    fis8 a a a4 r8
    g8 g g g4 r8
    fis8 a a a4 r8
    b8 b b d4 r8
    b8. e16 d8 d8. c16 b8 % D
    c8 g g g4.
    g8 b d c4 b8
    b4.~4 r8
  }
}

bass= \relative {
  \global
  \repeat volta \verses {
    g8. g16 g8 g g g
    c,8. c16 c8 c4.
    g'8. g16 g8 g g g
    d8. d16 d8 d4. % B
    g8. g16 g8 g8. g16 g8
    c,8 c c c4.
    d8 d d d4 g,8
    g4.~4 r8 \bar "||" % C
    d'8 d d d4 r8
    g,8 g g g4 r8
    d'8 d d d4 r8
    g8 g g g4 r8
    g8. g16 g8 g8. g16 g8 % D
    c,8 c c c4.
    d8 d d d4 g,8
    g4.~4 r8
  }
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus, my Sa -- viour, to Beth -- le -- hem came,
  Born in a man -- ger to sor -- row and shame;
  Oh, it was won -- der -- ful— blest be His name!
  Seek -- ing for me, for me!
  Seek -- ing for me!
  Seek -- ing for me!
  Seek -- ing for me!
  Seek -- ing for me!
  Oh, it was won -- der -- ful— blest be His name!
  Seek -- ing for me, for me!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Je -- sus, my Sa -- viour, on Cal -- va -- ry's tree,
  Paid the great debt, and my soul He set free;
  Oh, it was won -- der --ful— how could it be?
  Dy -- ing for me, for me!
  Dy -- ing for me!
  Dy -- ing for me!
  Dy -- ing for me!
  Dy -- ing for me!
  Oh, it was won -- der -- ful— how could it be?
  Dy -- ing for me, for me!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Je -- sus, my Sa -- viour, the same as of old,
  While I was wan -- d'ring a -- far from the fold,
  Gen -- tly and long did He plead with my soul,
  Call -- ing for me, for me!
  Call -- ing for me!
  Call -- ing for me!
  Call -- ing for me!
  Call -- ing for me!
  Gen -- tly and long did He plead with my soul,
  Call -- ing for me, for me!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Je -- sus, my Sa -- viour, shall come from on high—
  Sweet is the prom -- ise as wea -- ry years fly;
  Oh, I shall see Him des -- cend from the sky,
  Com -- ing for me, for me!
  Com -- ing for me!
  Com -- ing for me!
  Com -- ing for me!
  Com -- ing for me!
  Oh, I shall see Him des -- cend from the sky,
  Com -- ing for me, for me!
}
  
wordsSop = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  For me! 
  _ _ _ _ For me!
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nJe" "sus, " "my " Sa "viour, " "to " Beth le "hem " "came, "
  "\nBorn " "in " "a " man "ger " "to " sor "row " "and " "shame; "
  "\nOh, " "it " "was " won der "ful— " "blest " "be " "His " "name! "
  "\nSeek" "ing " "for " "me, " "for " "me! "
  "\nSeek" "ing " "for " "me! "
  "\nSeek" "ing " "for " "me! "
  "\nSeek" "ing " "for " "me! "
  "\nSeek" "ing " "for " "me! "
  "\nOh, " "it " "was " won der "ful— " "blest " "be " "His " "name! "
  "\nSeek" "ing " "for " "me, " "for " "me! "

  \set stanza = "2."
  "\nJe" "sus, " "my " Sa "viour, " "on " Cal va "ry's " "tree, "
  "\nPaid " "the " "great " "debt, " "and " "my " "soul " "He " "set " "free; "
  "\nOh, " "it " "was " won der"ful— " "how " "could " "it " "be? "
  "\nDy" "ing " "for " "me, " "for " "me! "
  "\nDy" "ing " "for " "me! "
  "\nDy" "ing " "for " "me! "
  "\nDy" "ing " "for " "me! "
  "\nDy" "ing " "for " "me! "
  "\nOh, " "it " "was " won der "ful— " "how " "could " "it " "be? "
  "\nDy" "ing " "for " "me, " "for " "me! "

  \set stanza = "3."
  "\nJe" "sus, " "my " Sa "viour, " "the " "same " "as " "of " "old, "
  "\nWhile " "I " "was " wan "d'ring " a "far " "from " "the " "fold, "
  "\nGen" "tly " "and " "long " "did " "He " "plead " "with " "my " "soul, "
  "\nCall" "ing " "for " "me, " "for " "me! "
  "\nCall" "ing " "for " "me! "
  "\nCall" "ing " "for " "me! "
  "\nCall" "ing " "for " "me! "
  "\nCall" "ing " "for " "me! "
  "\nGen" "tly " "and " "long " "did " "He " "plead " "with " "my " "soul, "
  "\nCall" "ing " "for " "me, " "for " "me! "

  \set stanza = "4."
  "\nJe" "sus, " "my " Sa "viour, " "shall " "come " "from " "on " "high— "
  "\nSweet " "is " "the " prom "ise " "as " wea "ry " "years " "fly; "
  "\nOh, " "I " "shall " "see " "Him " des "cend " "from " "the " "sky, "
  "\nCom" "ing " "for " "me, " "for " "me! "
  "\nCom" "ing " "for " "me! "
  "\nCom" "ing " "for " "me! "
  "\nCom" "ing " "for " "me! "
  "\nCom" "ing " "for " "me! "
  "\nOh, " "I " "shall " "see " "Him " des "cend " "from " "the " "sky, "
  "\nCom" "ing " "for " "me, " "for " "me! "
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "\nJe" "sus, " "my " Sa "viour, " "to " Beth le "hem " "came, "
  "\nBorn " "in " "a " man "ger " "to " sor "row " "and " "shame; "
  "\nOh, " "it " "was " won der "ful— " "blest " "be " "His " "name! "
  "\nSeek" "ing " "for " "me, " "for " "me! "
  "\nSeek" "ing " "for " "me! " "For " me!
  "\nSeek" "ing " "for " "me! " "For " me!
  "\nOh, " "it " "was " won der "ful— " "blest " "be " "His " "name! "
  "\nSeek" "ing " "for " "me, " "for " "me! "

  \set stanza = "2."
  "\nJe" "sus, " "my " Sa "viour, " "on " Cal va "ry's " "tree, "
  "\nPaid " "the " "great " "debt, " "and " "my " "soul " "He " "set " "free; "
  "\nOh, " "it " "was " won der"ful— " "how " "could " "it " "be? "
  "\nDy" "ing " "for " "me, " "for " "me! "
  "\nDy" "ing " "for " "me, " "for " "me! "
  "\nDy" "ing " "for " "me, " "for " "me! "
  "\nOh, " "it " "was " won der "ful— " "how " "could " "it " "be? "
  "\nDy" "ing " "for " "me, " "for " "me! "

  \set stanza = "3."
  "\nJe" "sus, " "my " Sa "viour, " "the " "same " "as " "of " "old, "
  "\nWhile " "I " "was " wan "d'ring " a "far " "from " "the " "fold, "
  "\nGen" "tly " "and " "long " "did " "He " "plead " "with " "my " "soul, "
  "\nCall" "ing " "for " "me, " "for " "me! "
  "\nCall" "ing " "for " "me, " "for " "me! "
  "\nCall" "ing " "for " "me, " "for " "me! "
  "\nGen" "tly " "and " "long " "did " "He " "plead " "with " "my " "soul, "
  "\nCall" "ing " "for " "me, " "for " "me! "

  \set stanza = "4."
  "\nJe" "sus, " "my " Sa "viour, " "shall " "come " "from " "on " "high— "
  "\nSweet " "is " "the " prom "ise " "as " wea "ry " "years " "fly; "
  "\nOh, " "I " "shall " "see " "Him " des "cend " "from " "the " "sky, "
  "\nCom" "ing " "for " "me, " "for " "me! "
  "\nCom" "ing " "for " "me, " "for " "me! "
  "\nCom" "ing " "for " "me, " "for " "me! "
  "\nOh, " "I " "shall " "see " "Him " des "cend " "from " "the " "sky, "
  "\nCom" "ing " "for " "me, " "for " "me! "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
%    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Lyrics = "sopranoonly"
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice \RehearsalTrack
            \new Voice = "women" \partCombine \soprano \alto
            \new NullVoice  = aligner \alto
            \new NullVoice  = sopranoaligner \soprano
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
%            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
%                                              \wordsTwo   \chorus
%                                              \wordsThree \chorus
%                                              \wordsFour  \chorus
%                                            }
%            \new Lyrics \lyricsto "soprano" \wordsMidi
            \context Lyrics = "sopranoonly" { \lyricsto "sopranoaligner" \wordsSop }

          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
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
          \new Lyrics = "sopranoonly"
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice \RehearsalTrack
            \new Voice = "women" \partCombine {\unfoldRepeats \soprano} {\unfoldRepeats \alto}
            \new NullVoice  = aligner \alto
            \new NullVoice  = sopranoaligner \soprano
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
%            \new Lyrics \lyricsto "soprano" \wordsMidiSop
            \context Lyrics = "sopranoonly" { \lyricsto "sopranoaligner" { \wordsSop \wordsSop \wordsSop \wordsSop } }

          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
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
          \new Lyrics = "sopranoonly"
          \new Staff <<
            \new Voice = "sopraoo" \soprano
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
  
\book {
  \bookOutputSuffix "midi-sop"
  \score {
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
          \new Staff <<
            \new Voice = "soprano" { \voiceOne \soprano}
            \new Voice = "alto"    { \voiceTwo \alto }
            \new Lyrics \lyricsto "soprano" \wordsMidiSop
          >>
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
