module ApplicationHelper
  INSTAGRAM_URL    = "https://www.instagram.com/ai._.tv123/".freeze
  INSTAGRAM_HANDLE = "@ai._.tv123".freeze

  def nav_link(label, path)
    css = current_page?(path) ? "nav-link active" : "nav-link"
    link_to label, path, class: css
  end

  def instagram_link(text = nil, css: "btn btn-insta")
    link_to (text || "Follow #{INSTAGRAM_HANDLE} on Instagram"), INSTAGRAM_URL,
            class: css, target: "_blank", rel: "noopener noreferrer"
  end

  def instagram_icon
    raw <<~SVG
      <svg class="icon" viewBox="0 0 24 24" width="20" height="20" aria-hidden="true" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
        <rect x="3" y="3" width="18" height="18" rx="5"></rect>
        <circle cx="12" cy="12" r="4"></circle>
        <circle cx="17.5" cy="6.5" r="1" fill="currentColor" stroke="none"></circle>
      </svg>
    SVG
  end
end
