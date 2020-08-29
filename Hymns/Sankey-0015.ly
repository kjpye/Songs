\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Love that Gave Jesus to Die!"
  subtitle    = "Sankey No. 15"
  subsubtitle = "Sankey 880 No. 460"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "James McGranahan"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "El Nathan"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

 #(set-global-staff-size 18)

global = {
  \key g \major
  \time 6/8
  \tempo 4.=60
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s8 s2.*3
  \mark \markup { \box "B" } s2.*3
  \mark \markup { \box "C" } s2.*3
  \mark \markup { \box "D" } s2.*4
  \mark \markup { \box "E" } s2.*2 s4. s4
}

TempoTrack = {
}

soprano = \relative c'' {
  \global
  \repeat volta 4 {
    g16 a
    b8. a16 g8 a e fis
    g4.~ g4 g8
    a8 a a b c b \break
    a4.~a4 b16 c % B
    d8. e16 b8 d4 b16 a
    g8. a16 e8 g4 fis16 e \break
    d8 g b a e fis % C
    g4.~g4 \bar "||" g16^\markup REFRAIN b
    d8. a16 a8 a b c \break
    c4.(b4) b8 % D
    b8. fis16 fis8 fis g a
    a4.(g4) e8
    d8 g b d4 f,8 \break
    e8 c'8. c16 c4 c8 % E
    b8. a16 g8 a e fis

    g4.~g4
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative c' {
  \global
  \repeat volta 4 {
    b16 c
    d8. c16 b8 c c c
    b4.~b4 d8
    fis8 fis fis g a g
    fis4.~fis4 g16 a % B
    b8. c16 g8 b4 g16 fis
    e8. c16 c8 e4 d16 c
    b8 b d c c c % C
    b4.~b4 \bar "||" d16 g
    fis8. fis16 fis8 fis g a
    a4.(g4) g16(e) % D
    dis8. dis16 dis8 dis e fis
    fis4.(e4) c8
    b8 d g b4 d,8
    c8 e8. e16 e4 d8 % E
    d8. c16 b8 c c c
    b4.~b4
  }
}

tenor = \relative c' {
  \global
  \repeat volta 4 {
    g16 g
    g8. g16 g8 fis g a
    g4.~g4 d'8
    d8 d d d d d
    d4.~d4 g,16 g % B
    g8. g16 g8 g4 d16 d
    g8. e16 g8 c4 g16 g
    g8 g g fis g a % C
    g4.~g4 \bar "||" b16 b
    a8. d16 d8 d d d
    d4.~d4 g,8 % D
    fis8. b16 b8 b b b
    b4.~b4 a8
    b8 b d g,4 g8
    g8 g8. g16 g4 g8 % E
    g8. g16 g8 fis g a
    g4.~g4
  }
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative c' {
  \global
  \repeat volta 4 {
    g16 g
    g8. g16 g8 d d d
    g,4.~g4 b8
    d8 d d g fis g
    d4.~d4 g16 g % B
    g8. g16 g8 g4 g,16 b
    c8. c16 c8 c4 c16 c
    d8 d d d d d % C
    g,4.~g4 \bar "||" g'16 g
    d8. d16 d8 d d d
    g4.~g4 e8 % D
    b8. b16 b8 b b b
    e4.~e4 fis8
    g8 g g g4 b,8
    c8 c8. c16 c4 c8 % E
    d8. d16 d8 d d d
    g,4.~g4
  }
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Let us sing of the love of the Lord,
  As now to the cross we draw nigh;
  Let us sing to the praise of the God of all grace,
  For the
}

chorus = \lyricmode {
  love that gave Je- sus to die!
  Oh, the love that gave Je- sus to die!
  The love that gave Je- sus to die!
  Praise God, it is mine, this love so Di- vine,—
  The love that gave Je- sus to die!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, how great was the love that was shown
  To us!— we can nev- er tell why—
  Not to an- gels, but \markup{\italic {men};} let us praise Him a- gain
  For the
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Now this love un- to all God com- mends,
  Not one would His mer- cy pass by;
  "\"Who-" so- ev- er shall "call.\""
  there is par- don for all,
  In the
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Who is he that can sep- a- rate those
  Whom God doth in love jus- ti- fy?
  What- so- ev- er we need
  He in- cludes in the deed,
  In the
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nLet " "us " "sing " "of " "the " "love " "of " "the " "Lord, "
  "\nAs " "now " "to " "the " "cross " "we " "draw " "nigh; "
  "\nLet " "us " "sing " "to " "the " "praise " "of " "the " "God " "of " "all " "grace, "
  "\nFor " "the " "love " "that " "gave " Je "sus " "to " "die! "
  "\nOh, " "the " "love " "that " "gave " Je "sus " "to " "die! "
  "\nThe " "love " "that " "gave " Je "sus " "to " "die! "
  "\nPraise " "God, " "it " "is " "mine, " "this " "love " "so " Di "vine,— "
  "\nThe " "love " "that " "gave " Je "sus " "to " "die! "

  \set stanza = "2."
  "\nOh, " "how " "great " "was " "the " "love " "that " "was " "shown "
  "\nTo " "us!— " "we " "can " nev "er " "tell " "why— "
  "\nNot " "to " an "gels, " "but " "men; " "let " "us " "praise " "Him " a "gain"y
  "\nFor " "the " "love " "that " "gave " Je "sus " "to " "die! "
  "\nOh, " "the " "love " "that " "gave " Je "sus " "to " "die! "
  "\nThe " "love " "that " "gave " Je "sus " "to " "die! "
  "\nPraise " "God, " "it " "is " "mine, " "this " "love " "so " Di "vine,— "
  "\nThe " "love " "that " "gave " Je "sus " "to " "die! "

  \set stanza = "3."
  "\nNow " "this " "love " un "to " "all " "God " com "mends, "
  "\nNot " "one " "would " "His " mer "cy " "pass " "by; "
  "\n\"Who" so ev "er " "shall " "call.\" "
  "\nthere " "is " par "don " "for " "all, "
  "\nIn " "the " "love " "that " "gave " Je "sus " "to " "die! "
  "\nOh, " "the " "love " "that " "gave " Je "sus " "to " "die! "
  "\nThe " "love " "that " "gave " Je "sus " "to " "die! "
  "\nPraise " "God, " "it " "is " "mine, " "this " "love " "so " Di "vine,— "
  "\nThe " "love " "that " "gave " Je "sus " "to " "die! "

  \set stanza = "4."
  "\nWho " "is " "he " "that " "can " sep a "rate " "those "
  "\nWhom " "God " "doth " "in " "love " jus ti "fy? "
  "\nWhat" so ev "er " "we " "need "
  "\nHe " in "cludes " "in " "the " "deed, "
  "\nIn " "the " "love " "that " "gave " Je "sus " "to " "die! "
  "\nOh, " "the " "love " "that " "gave " Je "sus " "to " "die! "
  "\nThe " "love " "that " "gave " Je "sus " "to " "die! "
  "\nPraise " "God, " "it " "is " "mine, " "this " "love " "so " Di "vine,— "
  "\nThe " "love " "that " "gave " Je "sus " "to " "die! "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne \chorus }
            \new Lyrics \lyricsto "soprano" \wordsTwo
            \new Lyrics \lyricsto "soprano" \wordsThree
            \new Lyrics \lyricsto "soprano" \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
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
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano \bar "|." }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne \chorus
                                              \wordsTwo \chorus
                                              \wordsThree \chorus
                                              \wordsFour \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
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
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \TempoTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
        >>
      >>
    >>
    \midi {}
  }
}
