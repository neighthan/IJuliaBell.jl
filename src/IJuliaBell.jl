module IJuliaBell

using Base64: base64encode
using IJulia: display

export @bell

BELL_FILE = joinpath(@__DIR__, "..", "audio", "bell.wav")

function get_html(bell_file::String)::String
  bell_b64 = open(f -> base64encode(f), bell_file);
  return """
  <div style="display:none">
    <audio autoplay src="data:audio/wav;base64,$bell_b64" onended="this.parentNode.removeChild(this)">
      Audio not supported.
    </audio>
  </div>
  """
end

AUDIO_HTML = get_html(BELL_FILE)

function bell()
  display("text/html", AUDIO_HTML)
end

macro bell()
  :(bell())
end

macro bell(ex)
  :(
    try
      $ex
    finally
      bell()
    end
  )
end

end # module
