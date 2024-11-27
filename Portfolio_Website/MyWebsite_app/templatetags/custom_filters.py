from django import template
import re
from django.utils.safestring import mark_safe

register = template.Library()

@register.filter
def highlight(value, search_term):
    if not search_term:
        return value  # If no search term, return the original value
    # Use a case-insensitive regex to wrap the search term with a <span>
    highlighted = re.sub(
        f"({re.escape(search_term)})", 
        r'<span class="highlight">\1</span>', 
        value, 
        flags=re.IGNORECASE
    )
    return highlighted