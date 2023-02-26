#!/usr/bin/python3
import flet as ft
import os


def main(page: ft.Page):
	def resize():
		page.window_width = 400
		page.window_height = 275
		page.update()

	def plus(e):
		lab_number.value = str(int(lab_number.value) + 1)
		page.update()

	def minus(e):
		lab_number.value = str(int(lab_number.value) - 1)
		page.update()

	resize()
	page.vertical_alignment = ft.MainAxisAlignment.CENTER
	lab_number = ft.TextField(value="1", color=ft.colors.WHITE, text_align=ft.TextAlign.CENTER, width=96)
	lfa = "LFA"
	tw = "TW"
	sd = "SD"
	poo = "POO"

	page.add(ft.Column([ft.Text(value="Lab number:"),
						ft.Row([
							ft.IconButton(ft.icons.REMOVE, on_click=minus),
							lab_number,
							ft.IconButton(ft.icons.ADD, on_click=plus)
						], alignment=ft.MainAxisAlignment.CENTER)], horizontal_alignment=ft.CrossAxisAlignment.CENTER))
	page.update()

	def lab_tw(e):
		os.system(f"bash lab_tw.sh {lab_number.value}")
		resize()

	def lab_lfa(e):
		os.system(f"bash lab_lfa.sh {lab_number.value}")
		resize()

	def lab_poo(e):
		os.system(f"bash lab_poo.sh {lab_number.value}")
		resize()

	def lab_sd(e):
		os.system(f"bash lab_sd.sh {lab_number.value}")
		resize()

	def lab_bd(e):
		os.system(f"bash lab_bd.sh {lab_number.value}")
		resize()

	page.add(
		ft.Row([
			ft.ElevatedButton("LFA", on_click=lab_lfa),
			ft.ElevatedButton("TW", on_click=lab_tw),
			ft.ElevatedButton("POO", on_click=lab_poo),
			ft.ElevatedButton("BD", on_click=lab_bd),
			ft.ElevatedButton("SD", on_click=lab_sd)
		], alignment=ft.MainAxisAlignment.CENTER)
	)


ft.app(target=main)
