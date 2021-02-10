\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus Knows Thy Sorrow"
  subtitle    = "Sankey No. 48"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Ira D. Sankey"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "W. O. Cushing"
  meter       = "6.5. D."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s1*5
  \mark \markup { \box "B" } s1*6
  \mark \markup { \box "C" } s1*5
}

soprano = \relative {
  \global
  ees'4 ees ees ees
  aes2 aes
  bes4 bes g g
  aes1
  ees4 ees ees ees
  aes2 c % B
  bes4  aes g f
  ees1
  ees4 g bes des
  des2 c
  c4 aes ees' c
  c2(bes) % C
  aes4 c c ees
  ees4 d aes bes
  c2 bes
  aes1
}

alto = \relative {
  \global
  c'4 c des c
  f2 f
  f4 f ees ees
  ees1
  c4 c des c
  c2 ees % B
  ees4 ees ees d
  ees1
  ees4 ees g g
  g2 aes
  ees4 ees ees aes
  aes2(g) % C
  aes4 ges ges ges
  f4 f f fes
  ees4(aes) g2
  aes1
}

tenor = \relative {
  \global
  aes4 aes bes aes
  c2 c
  des4 des bes des
  c1
  aes4 aes bes aes
  aes2 aes % B
  g4 c bes aes
  g1
  g4 bes des bes
  bes2 aes
  c4 c aes ees'
  ees2.(des4) % C
  c4 aes aes aes
  aes4 aes aes aes
  aes4(c) ees(des)
  c1
}

bass= \relative {
  \global
  aes4 aes g aes
  f2 f
  d4 d ees ees
  aes,1
  aes'4 aes g aes
  g2 aes, % B
  bes4 bes bes bes
  f1
  f4 f f f
  f2 aes
  aes4 aes, c aes8(c)
  ees1 % C
  f4 ees ees aes.
  des4 des des des
  ees2 ees
  aes,1
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus knows thy sor -- row,
  Knows thine ev -- 'rt care:
  Knows thy deep con -- tri -- tion,
  Hears thy feeb -- lest prayer;
  Do not fear to trust Him—
  Tell Him all thy grief:
  Cast on Hime thy bur -- den,
  He will bring re -- lief.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Trust the heart of Je -- sus.
  Thou art prec 00 ious there;
  Sure -- ly He would shield thee
  From the tempt -- er's snare;
  Safe -- ly He would lead thee,
  By His own sweet way,
  Out in -- to the glo 00 ry
  Of a bright -- er day.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Je -- sus knows thy con -- flict,
  Hears the bur -- den'd sigh;
  When thy heart is wound -- ed,
  Hears they plaint -- ive cry;
  He thy soul will strength -- en,
  O -- ver -- come thy fears;
  He will send thee com -- fort,
  Wipe a -- wat thy tears.
}
  
wordsMidi = \lyricmode {
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice \RehearsalTrack
%            \new Voice {
%               \RehearsalTrack
%               \RehearsalTrack
%               \RehearsalTrack
%            }
%            \new Voice \TempoTrack
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" \soprano
%            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \soprano \bar "|." } \alto
%            \new Voice = "women" \partCombine { \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
%                                               { \alto \alto \alto \alto \alto \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
                                %            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
%                                              \wordsTwo   \chorus
%                                              \wordsThree \chorus
%                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice = "men" \partCombine \tenor \bass
%            \new Voice = "men" \partCombine { \tenor \tenor \tenor \tenor \tenor \tenor }
%                                            { \bass \bass \bass \bass \bass \basss }
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
