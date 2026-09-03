from manim import *
import random

# TODO: Fix repetition psi_line and point movements.
# TODO: Fix $\psi$ label location.
# TODO: Put pole labels.
# TODO: Add angles \theta and \phi.
# TODO: Change background color.
# TODO: Clear up code and documentation.

class Figure1(ThreeDScene):
    """
    
    """

    def construct(self):
        # Configure parameters

        myTemplate = TexTemplate()
        myTemplate.add_to_preamble(r"\usepackage{braket}")
        MathTex.set_default(tex_template = myTemplate)

        title_size = 48
        font_size = 32

        radius = 2.0
        offset = 1.0

        run_time = 0.75
        wait_time = 0.5
        rate_func = smooth

        # Configure value trackers

        theta = ValueTracker(PI / 4)
        phi = ValueTracker(PI / 4)

        # Configure texts

        title = Tex(
            r"\textbf{Bloch Sphere}",
            font_size = title_size
        )
        title.to_corner(UL)

        text = MathTex(
            r"\ket{\psi(\theta, \phi)} = \cos\left( \frac{\theta}{2} \right)\ket{0} + e^{i\phi}\sin\left( \frac{\theta}{2} \right)\ket{1}",
            font_size = font_size
        )
        text.to_corner(DR)

        # Configure axes

        axes = ThreeDAxes(
            x_range = [-radius - offset, radius + offset, radius + offset],
            y_range = [-radius - offset, radius + offset, radius + offset],
            z_range = [-radius - offset, radius + offset, radius + offset]
        )

        # Configure sphere

        sphere = Sphere(
            center = ORIGIN,
            radius = radius
        )
        sphere.set_fill([PURPLE_E, BLUE_E], opacity=0.10)

        # Configure line

        line_psi = always_redraw(
            lambda: Line(
                start = ORIGIN,
                end = radius * np.array([
                    np.sin(theta.get_value()) * np.cos(phi.get_value()),
                    np.sin(theta.get_value()) * np.sin(phi.get_value()),
                    np.cos(theta.get_value())
                ]),
                color = RED
            )
        )

        # Configure point

        point = always_redraw(
            lambda: Dot3D(
                radius * np.array([
                    np.sin(theta.get_value()) * np.cos(phi.get_value()),
                    np.sin(theta.get_value()) * np.sin(phi.get_value()),
                    np.cos(theta.get_value())
                ]),
                color = RED
            )
        )

        # Configure scene

        self.set_camera_orientation(
            phi = 2 * PI / 5, 
            theta = PI / 5
        )

        self.add_fixed_in_frame_mobjects(title, text)
        self.add(axes, sphere)
        self.add(line_psi)
        self.add(point)

        # Play animation

        for _ in range(4):
            self.play(
                theta.animate.set_value(random.uniform(0, PI)),
                phi.animate.set_value(random.uniform(0, 2 * PI)),
                run_time = run_time,
                rate_func = rate_func
            )
            self.wait(wait_time)

            self.play(
                theta.animate.set_value(PI / 4),
                phi.animate.set_value(PI / 4),
                run_time = run_time,
                rate_func = rate_func
            )
            self.wait(wait_time)
        
        return
