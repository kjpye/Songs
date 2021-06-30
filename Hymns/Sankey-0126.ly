\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Sacred Head once Wounded."
  subtitle    = "Sankey No. 126"
  subsubtitle = "Sankey 880 No. 708"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "H. L. Hassler."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Bernard of Clairvaux."
% (Tr. J. W. Alexander.)
  meter       = \markup\smallCaps "7.6.D."
  piece       = \markup\smallCaps "Passion Chorale."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key a \minor
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  e'4
  a4 g f e
  d2 e4 b'
  c4 c b8[a] b4
  a2. \bar "|" \break \partial 4
  e4
  a4 g f e % B
  d2 e4 b'
  c4 c b8[a] b4
  a2. \bar "|" \break \partial 4 c4
  b4 g a b % C
  c2 4 g
  a4 g f f
  e2. \bar "|" \break \partial 4 c'4
  b4 d c b % D
  a2 b4 e,
  f4 e d g
  e2.
}

alto = \relative {
  \autoBeamOff
  c'4
  c8[d] e4 a,8[b] c4
  c4(b) c e
  e4 4 4 8[d]
  c2. 4
  c8[d] e4 a,8[b] c4 % B
  c4(b) c e
  e4 4 4 8[d]
  c2. e4
  d4 8[c] 4 f % C
  f4(e8[d]) e4 4
  e8[d] e4 4 d
  cis2. d4
  d4 4 e8[fis] g4 % D
  g4(fis) g c,
  c8[d] c4 4 b
  c2.
}

tenor = \relative {
  \autoBeamOff
  a4
  a8[b] c4 d g,
  a4(g) g b
  a4 4 4 gis
  a2. 4
  a8[b] c4 d g, % B
  a4(g) g b
  a4 4 4 gis
  a2. 8[g]
  f4 g g f8[g] % C
  a4(g8[f]) g4 c8[bes]
  a4 4 4 4
  a2. 4
  g4 a g8[a] b[g]
  e'4(d) d g,
  f4 g a g
  g2.
}

bass= \relative {
  \autoBeamOff
  a8[g]
  f4 e d c
  f,4(g) c gis
  a8[b] c[d] e4 4
  a,2. a'8[g]
  f4 e d c % B
  f,4(g) c gis
  a8[b] c[d] e4 e
  a,2. 4
  d4 e f8[e] d4 % C
  c2 4 4
  f4 cis d8[e] f[g]
  a2. fis4
  g4 fis e d % D
  c4(d) f, c'8[b]
  a4 g f g
  c2.
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  O sa -- cred head once wound -- ed,
  With grief and pain weigh'd down,
  How scorn -- ful -- ly sur -- round -- ed
  With thorns, Thine on -- ly crown!
  How art Thou pale with an -- guish,
  With sore a -- buse and scorn!
  How does that vis -- age lan -- guish,
  Which once was bright as morn!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O sa -- cred Head, what glo -- ry,
  What bliss till now was Thine!
  Yet, though des -- pised and go -- ry,
  I joy to call Thee mine:
  Thy grief and Thy com -- pas -- sion
  Were all for sin -- ners gain;
  Mine, mine was the trans -- gres -- sion,
  But Thine the dead -- ly pain.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  What lan -- guage shall i bor -- row,
  To praise Thee, heaven -- ly friend,
  For this Thy dy -- ing sor -- row,
  Thy pi -- ty with -- out end?
  Lord, make me Thine for ev -- er,
  Nor let me faith -- less prove;
  Oh, let me nev -- er, nev -- er,
  A -- buse such dy -- ing love!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " sa "cred " "head " "once " wound "ed, "
  "\nWith " "grief " "and " "pain " "weigh'd " "down, "
  "\nHow " scorn ful "ly " sur round "ed "
  "\nWith " "thorns, " "Thine " on "ly " "crown! "
  "\nHow " "art " "Thou " "pale " "with " an "guish, "
  "\nWith " "sore " a "buse " "and " "scorn! "
  "\nHow " "does " "that " vis "age " lan "guish, "
  "\nWhich " "once " "was " "bright " "as " "morn! "

  \set stanza = "2."
  "\nO " sa "cred " "Head, " "what " glo "ry, "
  "\nWhat " "bliss " "till " "now " "was " "Thine! "
  "\nYet, " "though " des "pised " "and " go "ry, "
  "\nI " "joy " "to " "call " "Thee " "mine: "
  "\nThy " "grief " "and " "Thy " com pas "sion "
  "\nWere " "all " "for " sin "ners " "gain; "
  "\nMine, " "mine " "was " "the " trans gres "sion, "
  "\nBut " "Thine " "the " dead "ly " "pain. "

  \set stanza = "3."
  "\nWhat " lan "guage " "shall " "i " bor "row, "
  "\nTo " "praise " "Thee, " heaven "ly " "friend, "
  "\nFor " "this " "Thy " dy "ing " sor "row, "
  "\nThy " pi "ty " with "out " "end? "
  "\nLord, " "make " "me " "Thine " "for " ev "er, "
  "\nNor " "let " "me " faith "less " "prove; "
  "\nOh, " "let " "me " nev "er, " nev "er, "
  "\nA" "buse " "such " dy "ing " "love! "
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
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
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
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
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
