\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I heard the Voice of Jesus say."
  subtitle    = "Sankey No. 216"
  subsubtitle = "Sankey 880 No. 610"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup {\smallCaps "Dr. J. B. Dykes," "by per."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. Bonar, D.D."
  meter       = \markup\smallCaps "d.c.m."
  piece       = \markup\smallCaps "Vox Dilecti"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
%  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4
  s1
  \tempo 4=110 s2 \tempo 4=40 s4 \tempo 4=120 s4
  s1*13
  s2.
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4^\p
  d4 g g a
  bes4.^\markup\bold\italic rall. 8 a4\fermata 4^\mf^\markup\bold\italic "a tempo"
  g4 4 4 4
  fis2. \bar "|" \break d4^\cresc
  d4 g g a % B
  bes4. 8 a4 d
  c4 bes a g
  d2. \bar "|" \key g \major \break d4^\p
  d4 bes' a g % C
  \tag #'dash    { g4 e \slurDashed d(d) \slurSolid }
  \tag #'v1      { g4 e             d2              }
  \tag #'(v2 v3) { g4 e             d d             }
  \tag #'dash    { g4 \slurDashed a8(b) \slurSolid c4 b8[a] }
  \tag #'v1      { g4             a8 b             c4 b8[a] }
  \tag #'(v2 v3) { g4             a8(b)            c4 b8[a] }
  a2. \bar "|" \break a4^\<
  d4.\! c8 b4^\cresc b%\< % D
  e4.\! d8 c4 a^\ff
  g4 b d4.-> fis,8
  g2.
}

alto = \relative {
  \autoBeamOff
  d'4^\p
  d4 g g a
  bes4. 8 a4\fermata ees^\mf
  d4 d c ees
  d2. d4^\cresc
  d4 4 ees4 4 % B
  d4. 8 4 a'
  c,4 d ees ees
  d2. \key g \major d8^\p[c]
  b4 d c b % C
  \tag #'dash    { e4 c \slurDashed b(4) \slurSolid }
  \tag #'v1      { e4 c             b2              }
  \tag #'(v2 v3) { e4 c             b b             }
  \tag #'dash    { b4  \slurDashed c8(d) \slurSolid e8[fis] g4 }
  \tag #'v1      { b,4             c8 d             e8[fis] g4 }
  \tag #'(v2 v3) { b,4             c8(d)            e8[fis] g4 }
  fis2. d4^\<
  d4.\! 8 4^\cresc e^\< % D
  e4.\! 8 4 8^\ff [fis]
  g4 4 fis4.-> d8
  d2.
}

tenor = \relative {
  \autoBeamOff
  d4\omit\p
  d4 g g a
  bes4. 8 a4\fermata c
  bes4 4 g c
  a2. 4\omit\cresc
  bes4 4 4 c % B
  bes4 g a a
  g4 4 a a8[g]
  fis2. \key g \major b8\omit\p [a]
  g4. d8 e[fis] g4 % C
  \tag #'dash    { g4 g \slurDashed g(g) \slurSolid }
  \tag #'v1      { g4 g             g2              }
  \tag #'(v2 v3) { g4 g             g g             }
  \tag #'dash    { g4 \slurDashed 8(fis) \slurSolid g8[a] b[c] }
  \tag #'v1      { g4             8 fis             g8[a] b[c] }
  \tag #'(v2 v3) { g4             8(fis)            g8[a] b[c] }
  d2. fis,8\omit\< [g]
  a4.\! 8 g4\omit\cresc gis8\omit\< [a] % D
  b4.\! 8 a4 c\omit\ff
  b4 d c4. 8
  b2.
}

bass = \relative {
  \autoBeamOff
  d4\omit\p
  d4 g g a
  bes4. 8 a4\fermata f
  g4 4 ees c
  d2. fis4
  g4 4 ees c % B
  g4 g' f4 4
  ees4 d c cis
  d2. \key g \major d4\omit\p
  g4 g, g g % C
  \tag #'dash    { c4 e \slurDashed g{fis} \slurSolid }
  \tag #'v1      { c4 e             g{fis}            }
  \tag #'(v2 v3) { c4 e             g fis             }
  \tag #'dash    { e4 \slurDashed 8(d) \slurSolid c4 g' }
  \tag #'v1      { e4             8 d             c4 g' }
  \tag #'(v2 v3) { e4             8(d)            c4 g' }
  d2. 8\omit\< [e]
  fis4.\! 8 g4\omit\cresc e8\omit\< [fis] % D
  gis4.\! 8 a4 c,\omit\ff
  d4 4 4. 8
  g,2.
}

accRH = \relative {
  \global \tiny
  s4
  <bes d>2. <c f>4
  <d f>2 <c f>4\omit\fermata s
  s1*13 s2.
}

accLH = \relative {
  \global \tiny
  s4
  <g, g'>2. <f f'>4~
  <bes f'>2 <f f'>4\omit\fermata s
  s1*13 s2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  I heard the voice of Je -- sus say,
  "\"Come" un -- to Me, and rest:
  Lay down, thou wea -- ry one, lay down
  Thy head up -- on My "breast\""
  I came to Je -- sus as I was—
  \nom Wea -- ry and worn, \yesm and sad;
  I found in Him a rest -- ing place,
  And He has made me glad.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I heard the voice of Je -- sus say,
  "\"Be" -- hold, I free -- ly give
  The liv -- ing wa -- ter— thirs -- ty one,
  Stoop down, and drink, and "live.\""
  I came to Je -- sus, and \nom I drank
  \yesm Of that life -- giv -- ing stream;
  My thirst was quench'd, my soul re -- vived,
  And now I live in Him.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I heard the voice of Je -- sus say,
  "\"I" am this dark world's Light;
  Look un -- to Me, thy morn shall rise,
  And all that day be "bright.\""
  I looked to Je -- sus, and I \nom found
  In \yesm Him my star, my Sun;
  And in that light of life I'll walk,
  Till trav -- 'lling days are done.
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  I heard the voice of Je -- sus say,
  "\"Come" un -- to Me, and rest:
  Lay down, thou wea -- ry one, lay down
  Thy head up -- on My "breast\""
  I came to Je -- sus as I was—
  Wea -- ry and worn, and sad;
  I found in Him a rest -- ing place,
  And He has made me glad.

  \set stanza = "2."
  I heard the voice of Je -- sus say,
  "\"Be" -- hold, I free -- ly give
  The liv -- ing wa -- ter— thirs -- ty one,
  Stoop down, and drink, and "live.\""
  I came to Je -- sus, and I drank
  Of that life -- giv -- ing stream;
  My thirst was quench'd, my soul re -- vived,
  And now I live in Him.

  \set stanza = "3."
  I heard the voice of Je -- sus say,
  "\"I" am this dark world's Light;
  Look un -- to Me, thy morn shall rise,
  And all that day be "bright.\""
  I looked to Je -- sus, and I found
  In Him my star, my Sun;
  And in that light of life I'll walk,
  Till trav -- 'lling days are done.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "heard " "the " "voice " "of " Je "sus " "say, "
  "\n\"Come " un "to " "Me, " "and " "rest: "
  "\nLay " "down, " "thou " wea "ry " "one, " "lay " "down "
  "\nThy " "head " up "on " "My " "breast\" "
  "\nI " "came " "to " Je "sus " "as " "I " "was— "
  "\nWea" "ry " "and " "worn, " "and " "sad; "
  "\nI " "found " "in " "Him " "a " rest "ing " "place, "
  "\nAnd " "He " "has " "made " "me " "glad. "

  \set stanza = "2."
  "\nI " "heard " "the " "voice " "of " Je "sus " "say, "
  "\n\"Be" "hold, " "I " free "ly " "give "
  "\nThe " liv "ing " wa "ter— " thirs "ty " "one, "
  "\nStoop " "down, " "and " "drink, " "and " "live.\" "
  "\nI " "came " "to " Je "sus, " "and " "I " "drank "
  "\nOf " "that " life giv "ing " "stream; "
  "\nMy " "thirst " "was " "quench'd, " "my " "soul " re "vived, "
  "\nAnd " "now " "I " "live " "in " "Him. "

  \set stanza = "3."
  "\nI " "heard " "the " "voice " "of " Je "sus " "say, "
  "\n\"I " "am " "this " "dark " "world's " "Light; "
  "\nLook " un "to " "Me, " "thy " "morn " "shall " "rise, "
  "\nAnd " "all " "that " "day " "be " "bright.\" "
  "\nI " "looked " "to " Je "sus, " "and " "I " "found "
  "\nIn " "Him " "my " "star, " "my " "Sun; "
  "\nAnd " "in " "that " "light " "of " "life " "I'll " "walk, "
  "\nTill " trav "'lling " "days " "are " "done. "
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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice = "women" \partCombine { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Voice { \voiceFour \accRH }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new Voice { \voiceFour \accLH }
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
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
            }
            \new Voice { \voiceFour \accRH \accRH \accRH}
            \new Voice = "women" \partCombine { \global
                                                \keepWithTag #'v1 \soprano
                                                \keepWithTag #'v2 \soprano
                                                \keepWithTag #'v3 \soprano
                                                \bar "|." }
                                              { \global
                                                \keepWithTag #'v1 \alto \nl
                                                \keepWithTag #'v2 \alto \nl
                                                \keepWithTag #'v3 \alto
                                              }
            \new Lyrics \lyricsto "aligner"   \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice { \voiceFour \accLH \accLH \accLH }
            \new Voice = "men" \partCombine { \global
                                              \keepWithTag #'v1 \tenor
                                              \keepWithTag #'v2 \tenor
                                              \keepWithTag #'v3 \tenor
                                            }
                                            { \global
                                              \keepWithTag #'v1 \bass
                                              \keepWithTag #'v2 \bass
                                              \keepWithTag #'v3 \bass
                                            }
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
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
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
            }
            \new Voice { \voiceFour \accRH \accRH \accRH}
            \new Voice = "women" \partCombine { \global
                                                \keepWithTag #'v1 \soprano
                                                \keepWithTag #'v2 \soprano
                                                \keepWithTag #'v3 \soprano
                                                \bar "|." }
                                              { \global
                                                \keepWithTag #'v1 \alto \nl
                                                \keepWithTag #'v2 \alto \nl
                                                \keepWithTag #'v3 \alto
                                              }
            \new Lyrics \lyricsto "aligner"   \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice { \voiceFour \accLH \accLH \accLH }
            \new Voice = "men" \partCombine { \global
                                              \keepWithTag #'v1 \tenor
                                              \keepWithTag #'v2 \tenor
                                              \keepWithTag #'v3 \tenor
                                            }
                                            { \global
                                              \keepWithTag #'v1 \bass
                                              \keepWithTag #'v2 \bass
                                              \keepWithTag #'v3 \bass
                                            }
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \bar "|."
                       }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice                        { \global
                                                \keepWithTag #'v1 \alto \nl
                                                \keepWithTag #'v2 \alto \nl
                                                \keepWithTag #'v3 \alto
                                              }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice  { \global
                                              \keepWithTag #'v1 \tenor
                                              \keepWithTag #'v2 \tenor
                                              \keepWithTag #'v3 \tenor
                                            }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice                      { \global
                                              \keepWithTag #'v1 \bass
                                              \keepWithTag #'v2 \bass
                                              \keepWithTag #'v3 \bass
                                            }
          >>
          \new Staff = acc <<
            \new Voice { \voiceFour \accLH \accLH \accLH }
            \new Voice { \voiceFour \accRH \accRH \accRH}
          >>
        >>
    \midi {}
  }
}
