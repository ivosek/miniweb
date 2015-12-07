# Introduction #

MiniWeb is a mini HTTP server implementation written in C language, featuring low system resource consumption, high efficiency, good flexibility and high portability. It is capable to serve multiple clients with a single thread, supporting GET and POST methods, authentication, dynamic contents (dynamic web page and page variable substitution) and file uploading. MiniWeb runs on POSIX complaint OS, like Linux, as well as Microsoft Windows (Cygwin, MinGW and native build with Visual Studio). The binary size of MiniWeb can be as small as 20KB (on x86 Linux). The target of the project is to provide a fast, functional and low resource consuming HTTP server that is embeddable in other applications (as a static or dynamic library) as well as a standalone web server.

MiniWeb supports transparent 7-zip decompression. Web contents can be compressed into 7-zip archieves and clients can access the contents inside the 7-zip archive just like in a directory.

MiniWeb can also be used in audio/video streaming applications, or more specific, VOD (video-on-demand) service. Currently a VOD client/server is being developed on MiniWeb.

# Details #

Add your content here.  Format your content with:
  * Text in **bold** or _italic_
  * Headings, paragraphs, and lists
  * Automatic links to other wiki pages