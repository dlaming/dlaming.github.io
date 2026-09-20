def generate_svg(viewbox):
    return f"""<svg xmlns="http://www.w3.org/2000/svg" viewBox="{viewbox}">
<g transform="translate(0,256) scale(0.1,-0.1)" fill="#22c55e" stroke="none">
<path d="M480 1360 l0 -560 240 0 240 0 0 80 0 80 80 0 80 0 0 400 0 400 -80 0 -80 0 0 80 0 80 -240 0 -240 0 0 -560z m480 0 l0 -400 -160 0 -160 0 0 400 0 400 160 0 160 0 0 -400z"/>
<path d="M1440 1360 l0 -560 320 0 320 0 0 80 0 80 -240 0 -240 0 0 480 0 480 -80 0 -80 0 0 -560z"/>
</g>
</svg>"""

with open("public/favicon.svg", "w") as f:
    f.write(generate_svg("38 58 180 180"))
