! ***********************************************************************
!
!   Copyright (C) 2010  The MESA Team
!
!   This program is free software: you can redistribute it and/or modify
!   it under the terms of the GNU Lesser General Public License
!   as published by the Free Software Foundation,
!   either version 3 of the License, or (at your option) any later version.
!
!   This program is distributed in the hope that it will be useful,
!   but WITHOUT ANY WARRANTY; without even the implied warranty of
!   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
!   See the GNU Lesser General Public License for more details.
!
!   You should have received a copy of the GNU Lesser General Public License
!   along with this program. If not, see <https://www.gnu.org/licenses/>.
!
! ***********************************************************************

      module pgstar_ctrls_io

      use const_def, only: dp
      use star_private_def
      use star_pgstar

      implicit none

      include "pgstar_controls.inc"

      namelist /pgstar/ &

            file_device, &
            file_digits, &
            pgstar_interval, &
            pause_flag, &
            pause_interval, &
            pgstar_sleep, &
            clear_history, &

            delta_HR_limit_for_file_output, &
            file_white_on_black_flag, &
            win_white_on_black_flag, &
            pgstar_show_model_number, &
            pgstar_show_age, &
            pgstar_show_age_in_seconds, &
            pgstar_show_age_in_minutes, &
            pgstar_show_age_in_hours, &
            pgstar_show_age_in_days, &
            pgstar_show_age_in_years, &
            pgstar_show_log_age_in_years, &

            pgstar_report_writing_files, &

            pgstar_show_title, &
            pgstar_title_scale, &
            pgstar_title_disp, &
            pgstar_title_coord, &
            pgstar_title_fjust, &
            pgstar_title_lw, &

            pgstar_grid_show_title, &
            pgstar_grid_title_scale, &
            pgstar_grid_title_disp, &
            pgstar_grid_title_coord, &
            pgstar_grid_title_fjust, &
            pgstar_grid_title_lw, &

            pgstar_age_scale, &
            pgstar_age_disp, &
            pgstar_age_coord, &
            pgstar_age_fjust, &
            pgstar_age_lw, &

            pgstar_model_scale, &
            pgstar_model_disp, &
            pgstar_model_coord, &
            pgstar_model_fjust, &
            pgstar_model_lw, &

            pgstar_xaxis_label_scale, &
            pgstar_left_yaxis_label_scale, &
            pgstar_right_yaxis_label_scale, &
            pgstar_xaxis_label_lw, &
            pgstar_left_yaxis_label_lw, &
            pgstar_right_yaxis_label_lw, &
            pgstar_xaxis_label_disp, &
            pgstar_left_yaxis_label_disp, &
            pgstar_right_yaxis_label_disp, &
            pgstar_num_scale, &
            pgstar_lw, &
            pgstar_profile_line_style, &
            pgstar_history_line_style, &
            pgstar_model_lw, &
            pgstar_box_lw, &

            Profile_Panels_show_Mach_1_location, &
            Profile_Panels_show_photosphere_location, &
            Profile_Panels_xwidth_left_div_shock_value, &
            Profile_Panels_xwidth_right_div_shock_value, &
            Profile_Panels_xwidth_left_of_shock, &
            Profile_Panels_xwidth_right_of_shock, &

            Profile_Panels1_win_flag, &
            Profile_Panels1_file_flag, &
            do_Profile_Panels1_win, &
            do_Profile_Panels1_file, &
            id_Profile_Panels1_win, &
            id_Profile_Panels1_file, &
            Profile_Panels1_file_interval, &
            Profile_Panels1_file_dir, &
            Profile_Panels1_file_prefix, &
            Profile_Panels1_xaxis_reversed, &
            Profile_Panels1_xaxis_name, &
            Profile_Panels1_title, &
            Profile_Panels1_xmin, &
            Profile_Panels1_xmax, &
            Profile_Panels1_xmargin, &
            Profile_Panels1_show_mix_regions_on_xaxis, &
            Profile_Panels1_win_width, &
            Profile_Panels1_win_aspect_ratio, &
            Profile_Panels1_xleft, &
            Profile_Panels1_xright, &
            Profile_Panels1_ybot, &
            Profile_Panels1_ytop, &
            Profile_Panels1_txt_scale, &
            prev_Profile_Panels1_win_width, &
            prev_Profile_Panels1_win_ratio, &
            Profile_Panels1_file_width, &
            Profile_Panels1_file_aspect_ratio, &
            prev_Profile_Panels1_file_width, &
            prev_Profile_Panels1_file_ratio, &
            Profile_Panels1_num_panels, &
            Profile_Panels1_yaxis_name, &
            Profile_Panels1_other_yaxis_name, &
            Profile_Panels1_yaxis_reversed, &
            Profile_Panels1_other_yaxis_reversed, &
            Profile_Panels1_yaxis_log, &
            Profile_Panels1_other_yaxis_log, &
            Profile_Panels1_same_yaxis_range, &
            Profile_Panels1_ymin, &
            Profile_Panels1_other_ymin, &
            Profile_Panels1_ymax, &
            Profile_Panels1_other_ymax, &
            Profile_Panels1_ycenter, &
            Profile_Panels1_other_ycenter, &
            Profile_Panels1_ymargin, &
            Profile_Panels1_other_ymargin, &
            Profile_Panels1_dymin, &
            Profile_Panels1_other_dymin, &
            Profile_Panels1_show_grid, &
            Profile_Panels1_use_decorator, &

            Profile_Panels2_win_flag, &
            Profile_Panels2_file_flag, &
            do_Profile_Panels2_win, &
            do_Profile_Panels2_file, &
            id_Profile_Panels2_win, &
            id_Profile_Panels2_file, &
            Profile_Panels2_file_interval, &
            Profile_Panels2_file_dir, &
            Profile_Panels2_file_prefix, &
            Profile_Panels2_xaxis_reversed, &
            Profile_Panels2_xaxis_name, &
            Profile_Panels2_title, &
            Profile_Panels2_xmin, &
            Profile_Panels2_xmax, &
            Profile_Panels2_xmargin, &
            Profile_Panels2_show_mix_regions_on_xaxis, &
            Profile_Panels2_win_width, &
            Profile_Panels2_win_aspect_ratio, &
            Profile_Panels2_xleft, &
            Profile_Panels2_xright, &
            Profile_Panels2_ybot, &
            Profile_Panels2_ytop, &
            Profile_Panels2_txt_scale, &
            prev_Profile_Panels2_win_width, &
            prev_Profile_Panels2_win_ratio, &
            Profile_Panels2_file_width, &
            Profile_Panels2_file_aspect_ratio, &
            prev_Profile_Panels2_file_width, &
            prev_Profile_Panels2_file_ratio, &
            Profile_Panels2_num_panels, &
            Profile_Panels2_yaxis_name, &
            Profile_Panels2_other_yaxis_name, &
            Profile_Panels2_yaxis_reversed, &
            Profile_Panels2_other_yaxis_reversed, &
            Profile_Panels2_yaxis_log, &
            Profile_Panels2_other_yaxis_log, &
            Profile_Panels2_same_yaxis_range, &
            Profile_Panels2_ymin, &
            Profile_Panels2_other_ymin, &
            Profile_Panels2_ymax, &
            Profile_Panels2_other_ymax, &
            Profile_Panels2_ycenter, &
            Profile_Panels2_other_ycenter, &
            Profile_Panels2_ymargin, &
            Profile_Panels2_other_ymargin, &
            Profile_Panels2_dymin, &
            Profile_Panels2_other_dymin, &
            Profile_Panels2_show_grid, &
            Profile_Panels2_use_decorator, &

            Profile_Panels3_win_flag, &
            Profile_Panels3_file_flag, &
            do_Profile_Panels3_win, &
            do_Profile_Panels3_file, &
            id_Profile_Panels3_win, &
            id_Profile_Panels3_file, &
            Profile_Panels3_file_interval, &
            Profile_Panels3_file_dir, &
            Profile_Panels3_file_prefix, &
            Profile_Panels3_xaxis_reversed, &
            Profile_Panels3_xaxis_name, &
            Profile_Panels3_title, &
            Profile_Panels3_xmin, &
            Profile_Panels3_xmax, &
            Profile_Panels3_xmargin, &
            Profile_Panels3_show_mix_regions_on_xaxis, &
            Profile_Panels3_win_width, &
            Profile_Panels3_win_aspect_ratio, &
            Profile_Panels3_xleft, &
            Profile_Panels3_xright, &
            Profile_Panels3_ybot, &
            Profile_Panels3_ytop, &
            Profile_Panels3_txt_scale, &
            prev_Profile_Panels3_win_width, &
            prev_Profile_Panels3_win_ratio, &
            Profile_Panels3_file_width, &
            Profile_Panels3_file_aspect_ratio, &
            prev_Profile_Panels3_file_width, &
            prev_Profile_Panels3_file_ratio, &
            Profile_Panels3_num_panels, &
            Profile_Panels3_yaxis_name, &
            Profile_Panels3_other_yaxis_name, &
            Profile_Panels3_yaxis_reversed, &
            Profile_Panels3_other_yaxis_reversed, &
            Profile_Panels3_yaxis_log, &
            Profile_Panels3_other_yaxis_log, &
            Profile_Panels3_same_yaxis_range, &
            Profile_Panels3_ymin, &
            Profile_Panels3_other_ymin, &
            Profile_Panels3_ymax, &
            Profile_Panels3_other_ymax, &
            Profile_Panels3_ycenter, &
            Profile_Panels3_other_ycenter, &
            Profile_Panels3_ymargin, &
            Profile_Panels3_other_ymargin, &
            Profile_Panels3_dymin, &
            Profile_Panels3_other_dymin, &
            Profile_Panels3_show_grid, &
            Profile_Panels3_use_decorator, &

            Profile_Panels4_win_flag, &
            Profile_Panels4_file_flag, &
            do_Profile_Panels4_win, &
            do_Profile_Panels4_file, &
            id_Profile_Panels4_win, &
            id_Profile_Panels4_file, &
            Profile_Panels4_file_interval, &
            Profile_Panels4_file_dir, &
            Profile_Panels4_file_prefix, &
            Profile_Panels4_xaxis_reversed, &
            Profile_Panels4_xaxis_name, &
            Profile_Panels4_title, &
            Profile_Panels4_xmin, &
            Profile_Panels4_xmax, &
            Profile_Panels4_xmargin, &
            Profile_Panels4_show_mix_regions_on_xaxis, &
            Profile_Panels4_win_width, &
            Profile_Panels4_win_aspect_ratio, &
            Profile_Panels4_xleft, &
            Profile_Panels4_xright, &
            Profile_Panels4_ybot, &
            Profile_Panels4_ytop, &
            Profile_Panels4_txt_scale, &
            prev_Profile_Panels4_win_width, &
            prev_Profile_Panels4_win_ratio, &
            Profile_Panels4_file_width, &
            Profile_Panels4_file_aspect_ratio, &
            prev_Profile_Panels4_file_width, &
            prev_Profile_Panels4_file_ratio, &
            Profile_Panels4_num_panels, &
            Profile_Panels4_yaxis_name, &
            Profile_Panels4_other_yaxis_name, &
            Profile_Panels4_yaxis_reversed, &
            Profile_Panels4_other_yaxis_reversed, &
            Profile_Panels4_yaxis_log, &
            Profile_Panels4_other_yaxis_log, &
            Profile_Panels4_same_yaxis_range, &
            Profile_Panels4_ymin, &
            Profile_Panels4_other_ymin, &
            Profile_Panels4_ymax, &
            Profile_Panels4_other_ymax, &
            Profile_Panels4_ycenter, &
            Profile_Panels4_other_ycenter, &
            Profile_Panels4_ymargin, &
            Profile_Panels4_other_ymargin, &
            Profile_Panels4_dymin, &
            Profile_Panels4_other_dymin, &
            Profile_Panels4_show_grid, &
            Profile_Panels4_use_decorator, &


            Profile_Panels5_win_flag, &
            Profile_Panels5_file_flag, &
            do_Profile_Panels5_win, &
            do_Profile_Panels5_file, &
            id_Profile_Panels5_win, &
            id_Profile_Panels5_file, &
            Profile_Panels5_file_interval, &
            Profile_Panels5_file_dir, &
            Profile_Panels5_file_prefix, &
            Profile_Panels5_xaxis_reversed, &
            Profile_Panels5_xaxis_name, &
            Profile_Panels5_title, &
            Profile_Panels5_xmin, &
            Profile_Panels5_xmax, &
            Profile_Panels5_xmargin, &
            Profile_Panels5_show_mix_regions_on_xaxis, &
            Profile_Panels5_win_width, &
            Profile_Panels5_win_aspect_ratio, &
            Profile_Panels5_xleft, &
            Profile_Panels5_xright, &
            Profile_Panels5_ybot, &
            Profile_Panels5_ytop, &
            Profile_Panels5_txt_scale, &
            prev_Profile_Panels5_win_width, &
            prev_Profile_Panels5_win_ratio, &
            Profile_Panels5_file_width, &
            Profile_Panels5_file_aspect_ratio, &
            prev_Profile_Panels5_file_width, &
            prev_Profile_Panels5_file_ratio, &
            Profile_Panels5_num_panels, &
            Profile_Panels5_yaxis_name, &
            Profile_Panels5_other_yaxis_name, &
            Profile_Panels5_yaxis_reversed, &
            Profile_Panels5_other_yaxis_reversed, &
            Profile_Panels5_yaxis_log, &
            Profile_Panels5_other_yaxis_log, &
            Profile_Panels5_same_yaxis_range, &
            Profile_Panels5_ymin, &
            Profile_Panels5_other_ymin, &
            Profile_Panels5_ymax, &
            Profile_Panels5_other_ymax, &
            Profile_Panels5_ycenter, &
            Profile_Panels5_other_ycenter, &
            Profile_Panels5_ymargin, &
            Profile_Panels5_other_ymargin, &
            Profile_Panels5_dymin, &
            Profile_Panels5_other_dymin, &
            Profile_Panels5_show_grid, &
            Profile_Panels5_use_decorator, &


            Profile_Panels6_win_flag, &
            Profile_Panels6_file_flag, &
            do_Profile_Panels6_win, &
            do_Profile_Panels6_file, &
            id_Profile_Panels6_win, &
            id_Profile_Panels6_file, &
            Profile_Panels6_file_interval, &
            Profile_Panels6_file_dir, &
            Profile_Panels6_file_prefix, &
            Profile_Panels6_xaxis_reversed, &
            Profile_Panels6_xaxis_name, &
            Profile_Panels6_title, &
            Profile_Panels6_xmin, &
            Profile_Panels6_xmax, &
            Profile_Panels6_xmargin, &
            Profile_Panels6_show_mix_regions_on_xaxis, &
            Profile_Panels6_win_width, &
            Profile_Panels6_win_aspect_ratio, &
            Profile_Panels6_xleft, &
            Profile_Panels6_xright, &
            Profile_Panels6_ybot, &
            Profile_Panels6_ytop, &
            Profile_Panels6_txt_scale, &
            prev_Profile_Panels6_win_width, &
            prev_Profile_Panels6_win_ratio, &
            Profile_Panels6_file_width, &
            Profile_Panels6_file_aspect_ratio, &
            prev_Profile_Panels6_file_width, &
            prev_Profile_Panels6_file_ratio, &
            Profile_Panels6_num_panels, &
            Profile_Panels6_yaxis_name, &
            Profile_Panels6_other_yaxis_name, &
            Profile_Panels6_yaxis_reversed, &
            Profile_Panels6_other_yaxis_reversed, &
            Profile_Panels6_yaxis_log, &
            Profile_Panels6_other_yaxis_log, &
            Profile_Panels6_same_yaxis_range, &
            Profile_Panels6_ymin, &
            Profile_Panels6_other_ymin, &
            Profile_Panels6_ymax, &
            Profile_Panels6_other_ymax, &
            Profile_Panels6_ycenter, &
            Profile_Panels6_other_ycenter, &
            Profile_Panels6_ymargin, &
            Profile_Panels6_other_ymargin, &
            Profile_Panels6_dymin, &
            Profile_Panels6_other_dymin, &
            Profile_Panels6_show_grid, &
            Profile_Panels6_use_decorator, &


            Profile_Panels7_win_flag, &
            Profile_Panels7_file_flag, &
            do_Profile_Panels7_win, &
            do_Profile_Panels7_file, &
            id_Profile_Panels7_win, &
            id_Profile_Panels7_file, &
            Profile_Panels7_file_interval, &
            Profile_Panels7_file_dir, &
            Profile_Panels7_file_prefix, &
            Profile_Panels7_xaxis_reversed, &
            Profile_Panels7_xaxis_name, &
            Profile_Panels7_title, &
            Profile_Panels7_xmin, &
            Profile_Panels7_xmax, &
            Profile_Panels7_xmargin, &
            Profile_Panels7_show_mix_regions_on_xaxis, &
            Profile_Panels7_win_width, &
            Profile_Panels7_win_aspect_ratio, &
            Profile_Panels7_xleft, &
            Profile_Panels7_xright, &
            Profile_Panels7_ybot, &
            Profile_Panels7_ytop, &
            Profile_Panels7_txt_scale, &
            prev_Profile_Panels7_win_width, &
            prev_Profile_Panels7_win_ratio, &
            Profile_Panels7_file_width, &
            Profile_Panels7_file_aspect_ratio, &
            prev_Profile_Panels7_file_width, &
            prev_Profile_Panels7_file_ratio, &
            Profile_Panels7_num_panels, &
            Profile_Panels7_yaxis_name, &
            Profile_Panels7_other_yaxis_name, &
            Profile_Panels7_yaxis_reversed, &
            Profile_Panels7_other_yaxis_reversed, &
            Profile_Panels7_yaxis_log, &
            Profile_Panels7_other_yaxis_log, &
            Profile_Panels7_same_yaxis_range, &
            Profile_Panels7_ymin, &
            Profile_Panels7_other_ymin, &
            Profile_Panels7_ymax, &
            Profile_Panels7_other_ymax, &
            Profile_Panels7_ycenter, &
            Profile_Panels7_other_ycenter, &
            Profile_Panels7_ymargin, &
            Profile_Panels7_other_ymargin, &
            Profile_Panels7_dymin, &
            Profile_Panels7_other_dymin, &
            Profile_Panels7_show_grid, &
            Profile_Panels7_use_decorator, &


            Profile_Panels8_win_flag, &
            Profile_Panels8_file_flag, &
            do_Profile_Panels8_win, &
            do_Profile_Panels8_file, &
            id_Profile_Panels8_win, &
            id_Profile_Panels8_file, &
            Profile_Panels8_file_interval, &
            Profile_Panels8_file_dir, &
            Profile_Panels8_file_prefix, &
            Profile_Panels8_xaxis_reversed, &
            Profile_Panels8_xaxis_name, &
            Profile_Panels8_title, &
            Profile_Panels8_xmin, &
            Profile_Panels8_xmax, &
            Profile_Panels8_xmargin, &
            Profile_Panels8_show_mix_regions_on_xaxis, &
            Profile_Panels8_win_width, &
            Profile_Panels8_win_aspect_ratio, &
            Profile_Panels8_xleft, &
            Profile_Panels8_xright, &
            Profile_Panels8_ybot, &
            Profile_Panels8_ytop, &
            Profile_Panels8_txt_scale, &
            prev_Profile_Panels8_win_width, &
            prev_Profile_Panels8_win_ratio, &
            Profile_Panels8_file_width, &
            Profile_Panels8_file_aspect_ratio, &
            prev_Profile_Panels8_file_width, &
            prev_Profile_Panels8_file_ratio, &
            Profile_Panels8_num_panels, &
            Profile_Panels8_yaxis_name, &
            Profile_Panels8_other_yaxis_name, &
            Profile_Panels8_yaxis_reversed, &
            Profile_Panels8_other_yaxis_reversed, &
            Profile_Panels8_yaxis_log, &
            Profile_Panels8_other_yaxis_log, &
            Profile_Panels8_same_yaxis_range, &
            Profile_Panels8_ymin, &
            Profile_Panels8_other_ymin, &
            Profile_Panels8_ymax, &
            Profile_Panels8_other_ymax, &
            Profile_Panels8_ycenter, &
            Profile_Panels8_other_ycenter, &
            Profile_Panels8_ymargin, &
            Profile_Panels8_other_ymargin, &
            Profile_Panels8_dymin, &
            Profile_Panels8_other_dymin, &
            Profile_Panels8_show_grid, &
            Profile_Panels8_use_decorator, &


            Profile_Panels9_win_flag, &
            Profile_Panels9_file_flag, &
            do_Profile_Panels9_win, &
            do_Profile_Panels9_file, &
            id_Profile_Panels9_win, &
            id_Profile_Panels9_file, &
            Profile_Panels9_file_interval, &
            Profile_Panels9_file_dir, &
            Profile_Panels9_file_prefix, &
            Profile_Panels9_xaxis_reversed, &
            Profile_Panels9_xaxis_name, &
            Profile_Panels9_title, &
            Profile_Panels9_xmin, &
            Profile_Panels9_xmax, &
            Profile_Panels9_xmargin, &
            Profile_Panels9_show_mix_regions_on_xaxis, &
            Profile_Panels9_win_width, &
            Profile_Panels9_win_aspect_ratio, &
            Profile_Panels9_xleft, &
            Profile_Panels9_xright, &
            Profile_Panels9_ybot, &
            Profile_Panels9_ytop, &
            Profile_Panels9_txt_scale, &
            prev_Profile_Panels9_win_width, &
            prev_Profile_Panels9_win_ratio, &
            Profile_Panels9_file_width, &
            Profile_Panels9_file_aspect_ratio, &
            prev_Profile_Panels9_file_width, &
            prev_Profile_Panels9_file_ratio, &
            Profile_Panels9_num_panels, &
            Profile_Panels9_yaxis_name, &
            Profile_Panels9_other_yaxis_name, &
            Profile_Panels9_yaxis_reversed, &
            Profile_Panels9_other_yaxis_reversed, &
            Profile_Panels9_yaxis_log, &
            Profile_Panels9_other_yaxis_log, &
            Profile_Panels9_same_yaxis_range, &
            Profile_Panels9_ymin, &
            Profile_Panels9_other_ymin, &
            Profile_Panels9_ymax, &
            Profile_Panels9_other_ymax, &
            Profile_Panels9_ycenter, &
            Profile_Panels9_other_ycenter, &
            Profile_Panels9_ymargin, &
            Profile_Panels9_other_ymargin, &
            Profile_Panels9_dymin, &
            Profile_Panels9_other_dymin, &
            Profile_Panels9_show_grid, &
            Profile_Panels9_use_decorator, &


            Text_Summary1_win_flag, &
            Text_Summary1_file_flag, &
            Text_Summary1_file_interval, &
            Text_Summary1_file_dir, &
            Text_Summary1_file_prefix, &
            Text_Summary1_num_cols, Text_Summary1_num_rows, Text_Summary1_name, &
            Text_Summary1_win_width, &
            Text_Summary1_win_aspect_ratio, &
            Text_Summary1_file_width, &
            Text_Summary1_file_aspect_ratio, &
            Text_Summary1_title, Text_Summary1_xleft, Text_Summary1_xright, &
            Text_Summary1_ybot, Text_Summary1_ytop, Text_Summary1_txt_scale, Text_Summary1_dxval, &

            Text_Summary2_win_flag, &
            Text_Summary2_file_flag, &
            Text_Summary2_file_interval, &
            Text_Summary2_file_dir, &
            Text_Summary2_file_prefix, &
            Text_Summary2_num_cols, Text_Summary2_num_rows, Text_Summary2_name, &
            Text_Summary2_win_width, &
            Text_Summary2_win_aspect_ratio, &
            Text_Summary2_file_width, &
            Text_Summary2_file_aspect_ratio, &
            Text_Summary2_title, Text_Summary2_xleft, Text_Summary2_xright, &
            Text_Summary2_ybot, Text_Summary2_ytop, Text_Summary2_txt_scale, Text_Summary2_dxval, &

            Text_Summary3_win_flag, &
            Text_Summary3_file_flag, &
            Text_Summary3_file_interval, &
            Text_Summary3_file_dir, &
            Text_Summary3_file_prefix, &
            Text_Summary3_num_cols, Text_Summary3_num_rows, Text_Summary3_name, &
            Text_Summary3_win_width, &
            Text_Summary3_win_aspect_ratio, &
            Text_Summary3_file_width, &
            Text_Summary3_file_aspect_ratio, &
            Text_Summary3_title, Text_Summary3_xleft, Text_Summary3_xright, &
            Text_Summary3_ybot, Text_Summary3_ytop, Text_Summary3_txt_scale, Text_Summary3_dxval, &

            Text_Summary4_win_flag, &
            Text_Summary4_file_flag, &
            Text_Summary4_file_interval, &
            Text_Summary4_file_dir, &
            Text_Summary4_file_prefix, &
            Text_Summary4_num_cols, Text_Summary4_num_rows, Text_Summary4_name, &
            Text_Summary4_win_width, &
            Text_Summary4_win_aspect_ratio, &
            Text_Summary4_file_width, &
            Text_Summary4_file_aspect_ratio, &
            Text_Summary4_title, Text_Summary4_xleft, Text_Summary4_xright, &
            Text_Summary4_ybot, Text_Summary4_ytop, Text_Summary4_txt_scale, Text_Summary4_dxval, &

            Text_Summary5_win_flag, &
            Text_Summary5_file_flag, &
            Text_Summary5_file_interval, &
            Text_Summary5_file_dir, &
            Text_Summary5_file_prefix, &
            Text_Summary5_num_cols, Text_Summary5_num_rows, Text_Summary5_name, &
            Text_Summary5_win_width, &
            Text_Summary5_win_aspect_ratio, &
            Text_Summary5_file_width, &
            Text_Summary5_file_aspect_ratio, &
            Text_Summary5_title, Text_Summary5_xleft, Text_Summary5_xright, &
            Text_Summary5_ybot, Text_Summary5_ytop, Text_Summary5_txt_scale, Text_Summary5_dxval, &

            Text_Summary6_win_flag, &
            Text_Summary6_file_flag, &
            Text_Summary6_file_interval, &
            Text_Summary6_file_dir, &
            Text_Summary6_file_prefix, &
            Text_Summary6_num_cols, Text_Summary6_num_rows, Text_Summary6_name, &
            Text_Summary6_win_width, &
            Text_Summary6_win_aspect_ratio, &
            Text_Summary6_file_width, &
            Text_Summary6_file_aspect_ratio, &
            Text_Summary6_title, Text_Summary6_xleft, Text_Summary6_xright, &
            Text_Summary6_ybot, Text_Summary6_ytop, Text_Summary6_txt_scale, Text_Summary6_dxval, &

            Text_Summary7_win_flag, &
            Text_Summary7_file_flag, &
            Text_Summary7_file_interval, &
            Text_Summary7_file_dir, &
            Text_Summary7_file_prefix, &
            Text_Summary7_num_cols, Text_Summary7_num_rows, Text_Summary7_name, &
            Text_Summary7_win_width, &
            Text_Summary7_win_aspect_ratio, &
            Text_Summary7_file_width, &
            Text_Summary7_file_aspect_ratio, &
            Text_Summary7_title, Text_Summary7_xleft, Text_Summary7_xright, &
            Text_Summary7_ybot, Text_Summary7_ytop, Text_Summary7_txt_scale, Text_Summary7_dxval, &

            Text_Summary8_win_flag, &
            Text_Summary8_file_flag, &
            Text_Summary8_file_interval, &
            Text_Summary8_file_dir, &
            Text_Summary8_file_prefix, &
            Text_Summary8_num_cols, Text_Summary8_num_rows, Text_Summary8_name, &
            Text_Summary8_win_width, &
            Text_Summary8_win_aspect_ratio, &
            Text_Summary8_file_width, &
            Text_Summary8_file_aspect_ratio, &
            Text_Summary8_title, Text_Summary8_xleft, Text_Summary8_xright, &
            Text_Summary8_ybot, Text_Summary8_ytop, Text_Summary8_txt_scale, Text_Summary8_dxval, &

            Text_Summary9_win_flag, &
            Text_Summary9_file_flag, &
            Text_Summary9_file_interval, &
            Text_Summary9_file_dir, &
            Text_Summary9_file_prefix, &
            Text_Summary9_num_cols, Text_Summary9_num_rows, Text_Summary9_name, &
            Text_Summary9_win_width, &
            Text_Summary9_win_aspect_ratio, &
            Text_Summary9_file_width, &
            Text_Summary9_file_aspect_ratio, &
            Text_Summary9_title, Text_Summary9_xleft, Text_Summary9_xright, &
            Text_Summary9_ybot, Text_Summary9_ytop, Text_Summary9_txt_scale, Text_Summary9_dxval, &

            logg_Teff_win_flag, &
            logg_Teff_file_flag, &
            show_logg_Teff_target_box, &
            logg_Teff_target_n_sigma, &
            logg_Teff_target_logg, &
            logg_Teff_target_logg_sigma, &
            logg_Teff_target_Teff, &
            logg_Teff_target_Teff_sigma, &
            logg_Teff_file_interval, &
            logg_Teff_step_min, &
            logg_Teff_step_max, &
            logg_Teff_file_dir, &
            logg_Teff_file_prefix, &
            show_logg_Teff_annotation1, &
            show_logg_Teff_annotation2, &
            show_logg_Teff_annotation3, &
            logg_Teff_fname, &
            logg_Teff_title, &
            logg_Teff_logg_min, &
            logg_Teff_logg_max, &
            logg_Teff_Teff_min, &
            logg_Teff_Teff_max, &
            logg_Teff_Teff_margin, &
            logg_Teff_logg_margin, &
            logg_Teff_dTeff_min, &
            logg_Teff_dlogg_min, &
            logg_Teff_win_width, &
            logg_Teff_xleft, &
            logg_Teff_xright, &
            logg_Teff_ybot, &
            logg_Teff_ytop, &
            logg_Teff_txt_scale, &
            logg_Teff_win_aspect_ratio, &
            logg_Teff_file_width, &
            logg_Teff_file_aspect_ratio, &
            logg_Teff_use_decorator, &

            logL_Teff_win_flag, &
            logL_Teff_file_flag, &
            show_logL_Teff_target_box, &
            logL_Teff_target_n_sigma, &
            logL_Teff_target_logL, &
            logL_Teff_target_logL_sigma, &
            logL_Teff_target_Teff, &
            logL_Teff_target_Teff_sigma, &
            logL_Teff_file_interval, &
            logL_Teff_step_min, &
            logL_Teff_step_max, &
            logL_Teff_file_dir, &
            logL_Teff_file_prefix, &
            show_logL_Teff_annotation1, &
            show_logL_Teff_annotation2, &
            show_logL_Teff_annotation3, &
            logL_Teff_fname, &
            logL_Teff_title, &
            logL_Teff_logL_min, &
            logL_Teff_logL_max, &
            logL_Teff_Teff_min, &
            logL_Teff_Teff_max, &
            logL_Teff_Teff_margin, &
            logL_Teff_logL_margin, &
            logL_Teff_dTeff_min, &
            logL_Teff_dlogL_min, &
            logL_Teff_win_width, &
            logL_Teff_xleft, &
            logL_Teff_xright, &
            logL_Teff_ybot, &
            logL_Teff_ytop, &
            logL_Teff_txt_scale, &
            logL_Teff_win_aspect_ratio, &
            logL_Teff_file_width, &
            logL_Teff_file_aspect_ratio, &
            logL_Teff_use_decorator, &

            logL_R_win_flag, &
            logL_R_file_flag, &
            show_logL_R_target_box, &
            logL_R_target_n_sigma, &
            logL_R_target_logL, &
            logL_R_target_logL_sigma, &
            logL_R_target_R, &
            logL_R_target_R_sigma, &
            logL_R_file_interval, &
            logL_R_step_min, &
            logL_R_step_max, &
            logL_R_file_dir, &
            logL_R_file_prefix, &
            show_logL_R_annotation1, &
            show_logL_R_annotation2, &
            show_logL_R_annotation3, &
            logL_R_fname, &
            logL_R_title, &
            show_logL_photosphere_r, &
            logL_R_logL_min, &
            logL_R_logL_max, &
            logL_R_R_min, &
            logL_R_R_max, &
            logL_R_R_margin, &
            logL_R_logL_margin, &
            logL_R_dR_min, &
            logL_R_dlogL_min, &
            logL_R_win_width, &
            logL_R_xleft, &
            logL_R_xright, &
            logL_R_ybot, &
            logL_R_ytop, &
            logL_R_txt_scale, &
            logL_R_win_aspect_ratio, &
            logL_R_file_width, &
            logL_R_file_aspect_ratio, &
            logL_R_use_decorator, &

            logL_v_win_flag, &
            logL_v_file_flag, &
            show_logL_v_target_box, &
            logL_v_target_n_sigma, &
            logL_v_target_logL, &
            logL_v_target_logL_sigma, &
            logL_v_target_v, &
            logL_v_target_v_sigma, &
            logL_v_file_interval, &
            logL_v_step_min, &
            logL_v_step_max, &
            logL_v_file_dir, &
            logL_v_file_prefix, &
            show_logL_v_annotation1, &
            show_logL_v_annotation2, &
            show_logL_v_annotation3, &
            logL_v_fname, &
            logL_v_title, &
            show_logL_photosphere_v, &
            logL_v_logL_min, &
            logL_v_logL_max, &
            logL_v_v_min, &
            logL_v_v_max, &
            logL_v_v_margin, &
            logL_v_logL_margin, &
            logL_v_dv_min, &
            logL_v_dlogL_min, &
            logL_v_win_width, &
            logL_v_xleft, &
            logL_v_xright, &
            logL_v_ybot, &
            logL_v_ytop, &
            logL_v_txt_scale, &
            logL_v_win_aspect_ratio, &
            logL_v_file_width, &
            logL_v_file_aspect_ratio, &
            logL_v_use_decorator, &

            L_Teff_win_flag, &
            L_Teff_file_flag, &
            show_L_Teff_target_box, &
            L_Teff_target_n_sigma, &
            L_Teff_target_L, &
            L_Teff_target_L_sigma, &
            L_Teff_target_Teff, &
            L_Teff_target_Teff_sigma, &
            L_Teff_file_interval, &
            L_Teff_step_min, &
            L_Teff_step_max, &
            L_Teff_file_dir, &
            L_Teff_file_prefix, &
            show_L_Teff_annotation1, &
            show_L_Teff_annotation2, &
            show_L_Teff_annotation3, &
            L_Teff_fname, &
            L_Teff_title, &
            L_Teff_L_min, &
            L_Teff_L_max, &
            L_Teff_Teff_min, &
            L_Teff_Teff_max, &
            L_Teff_Teff_margin, &
            L_Teff_L_margin, &
            L_Teff_dTeff_min, &
            L_Teff_dL_min, &
            L_Teff_win_width, &
            L_Teff_xleft, &
            L_Teff_xright, &
            L_Teff_ybot, &
            L_Teff_ytop, &
            L_Teff_txt_scale, &
            L_Teff_win_aspect_ratio, &
            L_Teff_file_width, &
            L_Teff_file_aspect_ratio, &
            L_Teff_use_decorator, &

            L_v_win_flag, &
            L_v_file_flag, &
            show_L_v_target_box, &
            L_v_target_n_sigma, &
            L_v_target_L, &
            L_v_target_L_sigma, &
            L_v_target_v, &
            L_v_target_v_sigma, &
            L_v_file_interval, &
            L_v_step_min, &
            L_v_step_max, &
            L_v_file_dir, &
            L_v_file_prefix, &
            show_L_v_annotation1, &
            show_L_v_annotation2, &
            show_L_v_annotation3, &
            L_v_fname, &
            L_v_title, &
            L_v_L_min, &
            L_v_L_max, &
            L_v_v_min, &
            L_v_v_max, &
            L_v_v_margin, &
            L_v_L_margin, &
            L_v_dv_min, &
            L_v_dL_min, &
            L_v_win_width, &
            L_v_xleft, &
            L_v_xright, &
            L_v_ybot, &
            L_v_ytop, &
            L_v_txt_scale, &
            L_v_win_aspect_ratio, &
            L_v_file_width, &
            L_v_file_aspect_ratio, &
            L_V_use_decorator, &

            L_R_win_flag, &
            L_R_file_flag, &
            show_L_R_target_box, &
            L_R_target_n_sigma, &
            L_R_target_L, &
            L_R_target_L_sigma, &
            L_R_target_R, &
            L_R_target_R_sigma, &
            L_R_file_interval, &
            L_R_step_min, &
            L_R_step_max, &
            L_R_file_dir, &
            L_R_file_prefix, &
            show_L_R_annotation1, &
            show_L_R_annotation2, &
            show_L_R_annotation3, &
            L_R_fname, &
            L_R_title, &
            L_R_L_min, &
            L_R_L_max, &
            L_R_R_min, &
            L_R_R_max, &
            L_R_R_margin, &
            L_R_L_margin, &
            L_R_dR_min, &
            L_R_dL_min, &
            L_R_win_width, &
            L_R_xleft, &
            L_R_xright, &
            L_R_ybot, &
            L_R_ytop, &
            L_R_txt_scale, &
            L_R_win_aspect_ratio, &
            L_R_file_width, &
            L_R_file_aspect_ratio, &
            L_R_use_decorator, &

            R_Teff_win_flag, &
            R_Teff_file_flag, &
            show_R_Teff_target_box, &
            R_Teff_target_n_sigma, &
            R_Teff_target_R, &
            R_Teff_target_R_sigma, &
            R_Teff_target_Teff, &
            R_Teff_target_Teff_sigma, &
            R_Teff_file_interval, &
            R_Teff_step_min, &
            R_Teff_step_max, &
            R_Teff_file_dir, &
            R_Teff_file_prefix, &
            show_R_Teff_annotation1, &
            show_R_Teff_annotation2, &
            show_R_Teff_annotation3, &
            R_Teff_fname, &
            R_Teff_title, &
            R_Teff_R_min, &
            R_Teff_R_max, &
            R_Teff_Teff_min, &
            R_Teff_Teff_max, &
            R_Teff_Teff_margin, &
            R_Teff_R_margin, &
            R_Teff_dTeff_min, &
            R_Teff_dR_min, &
            R_Teff_win_width, &
            R_Teff_xleft, &
            R_Teff_xright, &
            R_Teff_ybot, &
            R_Teff_ytop, &
            R_Teff_txt_scale, &
            R_Teff_win_aspect_ratio, &
            R_Teff_file_width, &
            R_Teff_file_aspect_ratio, &
            R_Teff_use_decorator, &

            R_L_win_flag, &
            R_L_file_flag, &
            show_R_L_target_box, &
            R_L_target_n_sigma, &
            R_L_target_R, &
            R_L_target_R_sigma, &
            R_L_target_L, &
            R_L_target_L_sigma, &
            R_L_file_interval, &
            R_L_step_min, &
            R_L_step_max, &
            R_L_file_dir, &
            R_L_file_prefix, &
            show_R_L_annotation1, &
            show_R_L_annotation2, &
            show_R_L_annotation3, &
            R_L_fname, &
            R_L_title, &
            R_L_R_min, &
            R_L_R_max, &
            R_L_L_min, &
            R_L_L_max, &
            R_L_L_margin, &
            R_L_R_margin, &
            R_L_dL_min, &
            R_L_dR_min, &
            R_L_win_width, &
            R_L_xleft, &
            R_L_xright, &
            R_L_ybot, &
            R_L_ytop, &
            R_L_txt_scale, &
            R_L_win_aspect_ratio, &
            R_L_file_width, &
            R_L_file_aspect_ratio, &
            R_L_use_decorator, &

            logg_logT_win_flag, &
            logg_logT_file_flag, &
            show_logg_logT_target_box, &
            logg_logT_target_n_sigma, &
            logg_logT_target_logg, &
            logg_logT_target_logg_sigma, &
            logg_logT_target_logT, &
            logg_logT_target_logT_sigma, &
            logg_logT_file_interval, &
            logg_logT_step_min, &
            logg_logT_step_max, &
            logg_logT_file_dir, &
            logg_logT_file_prefix, &
            show_logg_logT_annotation1, &
            show_logg_logT_annotation2, &
            show_logg_logT_annotation3, &
            logg_logT_fname, &
            logg_logT_logg_min, &
            logg_logT_logg_max, &
            logg_logT_logT_min, &
            logg_logT_logT_max, &
            logg_logT_logg_margin, &
            logg_logT_logT_margin, &
            logg_logT_dlogT_min, &
            logg_logT_dlogg_min, &
            logg_logT_win_width, &
            logg_logT_win_aspect_ratio, &
            logg_logT_file_width, &
            logg_logT_file_aspect_ratio, &
            logg_logT_xleft, &
            logg_logT_xright, &
            logg_logT_ybot, &
            logg_logT_ytop, &
            logg_logT_txt_scale, &
            logg_logT_title, &
            logg_logT_use_decorator, &

            HR_win_flag, &
            HR_file_flag, &
            HR_file_interval, &
            HR_step_min, &
            HR_step_max, &
            show_HR_classical_instability_strip, &
            show_HR_Mira_instability_region, &
            show_HR_WD_instabilities, &
            show_HR_target_box, &
            HR_target_n_sigma, &
            HR_target_logL, &
            HR_target_logL_sigma, &
            HR_target_logT, &
            HR_target_logT_sigma, &
            HR_file_dir, &
            HR_file_prefix, &
            show_HR_annotation1, &
            show_HR_annotation2, &
            show_HR_annotation3, &
            HR_fname, &
            HR_logT_min, &
            HR_logT_max, &
            HR_logL_min, &
            HR_logL_max, &
            HR_logL_margin, &
            HR_logT_margin, &
            HR_dlogT_min, &
            HR_dlogL_min, &
            HR_win_width, &
            HR_win_aspect_ratio, &
            HR_file_width, &
            HR_file_aspect_ratio, &
            HR_xleft, &
            HR_xright, &
            HR_ybot, &
            HR_ytop, &
            HR_txt_scale, &
            HR_title, &
            HR_use_decorator, &

            TRho_win_flag, &
            TRho_file_flag, &
            TRho_file_interval, &
            TRho_step_max, &
            TRho_step_min, &
            TRho_file_dir, &
            TRho_file_prefix, &
            show_TRho_annotation1, &
            show_TRho_annotation2, &
            show_TRho_annotation3, &
            show_TRho_degeneracy_line, &
            TRho_fname, &
            TRho_logT_min, &
            TRho_logT_max, &
            TRho_logRho_min, &
            TRho_logRho_max, &
            TRho_logT_margin, &
            TRho_logRho_margin, &
            TRho_logRho_dlogRho_min, &
            TRho_logT_dlogT_min, &
            TRho_win_width, &
            TRho_win_aspect_ratio, &
            TRho_file_width, &
            TRho_file_aspect_ratio, &
            TRho_xleft, &
            TRho_xright, &
            TRho_ybot, &
            TRho_ytop, &
            TRho_txt_scale, &
            TRho_title, &
            TRho_use_decorator, &

            TmaxRho_win_flag, &
            TmaxRho_file_flag, &
            TmaxRho_file_interval, &
            TmaxRho_step_max, &
            TmaxRho_step_min, &
            TmaxRho_file_dir, &
            TmaxRho_file_prefix, &
            show_TmaxRho_annotation1, &
            show_TmaxRho_annotation2, &
            show_TmaxRho_annotation3, &
            show_TmaxRho_degeneracy_line, &
            TmaxRho_fname, &
            TmaxRho_logT_min, &
            TmaxRho_logT_max, &
            TmaxRho_logRho_min, &
            TmaxRho_logRho_max, &
            TmaxRho_logT_margin, &
            TmaxRho_logRho_margin, &
            TmaxRho_logRho_dlogRho_min, &
            TmaxRho_logT_dlogT_min, &
            TmaxRho_win_width, &
            TmaxRho_win_aspect_ratio, &
            TmaxRho_file_width, &
            TmaxRho_file_aspect_ratio, &
            TmaxRho_xleft, &
            TmaxRho_xright, &
            TmaxRho_ybot, &
            TmaxRho_ytop, &
            TmaxRho_txt_scale, &
            TmaxRho_title, &
            TmaxRho_use_decorator, &

            History_Track1_win_flag, &
            History_Track1_file_flag, &
            History_Track1_file_interval, &
            History_Track1_step_min, &
            History_Track1_step_max, &
            show_History_Track1_target_box, &
            History_Track1_n_sigma, &
            History_Track1_xtarget, &
            History_Track1_xsigma, &
            History_Track1_ytarget, &
            History_Track1_ysigma, &
            History_Track1_xname, &
            History_Track1_xaxis_label, &
            History_Track1_yname, &
            History_Track1_yaxis_label, &
            History_Track1_file_dir, &
            History_Track1_file_prefix, &
            show_History_Track1_annotation1, &
            show_History_Track1_annotation2, &
            show_History_Track1_annotation3, &
            History_Track1_fname, &
            History_Track1_reverse_xaxis, &
            History_Track1_reverse_yaxis, &
            History_Track1_log_xaxis, &
            History_Track1_log_yaxis, &
            History_Track1_xmin, &
            History_Track1_xmax, &
            History_Track1_ymin, &
            History_Track1_ymax, &
            History_Track1_xmargin, &
            History_Track1_ymargin, &
            History_Track1_dxmin, &
            History_Track1_dymin, &
            History_Track1_win_width, &
            History_Track1_win_aspect_ratio, &
            History_Track1_file_width, &
            History_Track1_file_aspect_ratio, &
            History_Track1_xleft, &
            History_Track1_xright, &
            History_Track1_ybot, &
            History_Track1_ytop, &
            History_Track1_txt_scale, &
            History_Track1_title, &
            History_Track1_use_decorator, &

            History_Track2_win_flag, &
            History_Track2_file_flag, &
            History_Track2_file_interval, &
            History_Track2_step_min, &
            History_Track2_step_max, &
            show_History_Track2_target_box, &
            History_Track2_n_sigma, &
            History_Track2_xtarget, &
            History_Track2_xsigma, &
            History_Track2_ytarget, &
            History_Track2_ysigma, &
            History_Track2_xname, &
            History_Track2_xaxis_label, &
            History_Track2_yname, &
            History_Track2_yaxis_label, &
            History_Track2_file_dir, &
            History_Track2_file_prefix, &
            show_History_Track2_annotation1, &
            show_History_Track2_annotation2, &
            show_History_Track2_annotation3, &
            History_Track2_fname, &
            History_Track2_reverse_xaxis, &
            History_Track2_reverse_yaxis, &
            History_Track2_log_xaxis, &
            History_Track2_log_yaxis, &
            History_Track2_xmin, &
            History_Track2_xmax, &
            History_Track2_ymin, &
            History_Track2_ymax, &
            History_Track2_xmargin, &
            History_Track2_ymargin, &
            History_Track2_dxmin, &
            History_Track2_dymin, &
            History_Track2_win_width, &
            History_Track2_win_aspect_ratio, &
            History_Track2_file_width, &
            History_Track2_file_aspect_ratio, &
            History_Track2_xleft, &
            History_Track2_xright, &
            History_Track2_ybot, &
            History_Track2_ytop, &
            History_Track2_txt_scale, &
            History_Track2_title, &
            History_Track2_use_decorator, &

            History_Track3_win_flag, &
            History_Track3_file_flag, &
            History_Track3_file_interval, &
            History_Track3_step_min, &
            History_Track3_step_max, &
            show_History_Track3_target_box, &
            History_Track3_n_sigma, &
            History_Track3_xtarget, &
            History_Track3_xsigma, &
            History_Track3_ytarget, &
            History_Track3_ysigma, &
            History_Track3_xname, &
            History_Track3_xaxis_label, &
            History_Track3_yname, &
            History_Track3_yaxis_label, &
            History_Track3_file_dir, &
            History_Track3_file_prefix, &
            show_History_Track3_annotation1, &
            show_History_Track3_annotation2, &
            show_History_Track3_annotation3, &
            History_Track3_fname, &
            History_Track3_reverse_xaxis, &
            History_Track3_reverse_yaxis, &
            History_Track3_log_xaxis, &
            History_Track3_log_yaxis, &
            History_Track3_xmin, &
            History_Track3_xmax, &
            History_Track3_ymin, &
            History_Track3_ymax, &
            History_Track3_xmargin, &
            History_Track3_ymargin, &
            History_Track3_dxmin, &
            History_Track3_dymin, &
            History_Track3_win_width, &
            History_Track3_win_aspect_ratio, &
            History_Track3_file_width, &
            History_Track3_file_aspect_ratio, &
            History_Track3_xleft, &
            History_Track3_xright, &
            History_Track3_ybot, &
            History_Track3_ytop, &
            History_Track3_txt_scale, &
            History_Track3_title, &
            History_Track3_use_decorator, &

            History_Track4_win_flag, &
            History_Track4_file_flag, &
            History_Track4_file_interval, &
            History_Track4_step_min, &
            History_Track4_step_max, &
            show_History_Track4_target_box, &
            History_Track4_n_sigma, &
            History_Track4_xtarget, &
            History_Track4_xsigma, &
            History_Track4_ytarget, &
            History_Track4_ysigma, &
            History_Track4_xname, &
            History_Track4_xaxis_label, &
            History_Track4_yname, &
            History_Track4_yaxis_label, &
            History_Track4_file_dir, &
            History_Track4_file_prefix, &
            show_History_Track4_annotation1, &
            show_History_Track4_annotation2, &
            show_History_Track4_annotation3, &
            History_Track4_fname, &
            History_Track4_reverse_xaxis, &
            History_Track4_reverse_yaxis, &
            History_Track4_log_xaxis, &
            History_Track4_log_yaxis, &
            History_Track4_xmin, &
            History_Track4_xmax, &
            History_Track4_ymin, &
            History_Track4_ymax, &
            History_Track4_xmargin, &
            History_Track4_ymargin, &
            History_Track4_dxmin, &
            History_Track4_dymin, &
            History_Track4_win_width, &
            History_Track4_win_aspect_ratio, &
            History_Track4_file_width, &
            History_Track4_file_aspect_ratio, &
            History_Track4_xleft, &
            History_Track4_xright, &
            History_Track4_ybot, &
            History_Track4_ytop, &
            History_Track4_txt_scale, &
            History_Track4_title, &
            History_Track4_use_decorator, &

            History_Track5_win_flag, &
            History_Track5_file_flag, &
            History_Track5_file_interval, &
            History_Track5_step_min, &
            History_Track5_step_max, &
            show_History_Track5_target_box, &
            History_Track5_n_sigma, &
            History_Track5_xtarget, &
            History_Track5_xsigma, &
            History_Track5_ytarget, &
            History_Track5_ysigma, &
            History_Track5_xname, &
            History_Track5_xaxis_label, &
            History_Track5_yname, &
            History_Track5_yaxis_label, &
            History_Track5_file_dir, &
            History_Track5_file_prefix, &
            show_History_Track5_annotation1, &
            show_History_Track5_annotation2, &
            show_History_Track5_annotation3, &
            History_Track5_fname, &
            History_Track5_reverse_xaxis, &
            History_Track5_reverse_yaxis, &
            History_Track5_log_xaxis, &
            History_Track5_log_yaxis, &
            History_Track5_xmin, &
            History_Track5_xmax, &
            History_Track5_ymin, &
            History_Track5_ymax, &
            History_Track5_xmargin, &
            History_Track5_ymargin, &
            History_Track5_dxmin, &
            History_Track5_dymin, &
            History_Track5_win_width, &
            History_Track5_win_aspect_ratio, &
            History_Track5_file_width, &
            History_Track5_file_aspect_ratio, &
            History_Track5_xleft, &
            History_Track5_xright, &
            History_Track5_ybot, &
            History_Track5_ytop, &
            History_Track5_txt_scale, &
            History_Track5_title, &
            History_Track5_use_decorator, &

            History_Track6_win_flag, &
            History_Track6_file_flag, &
            History_Track6_file_interval, &
            History_Track6_step_min, &
            History_Track6_step_max, &
            show_History_Track6_target_box, &
            History_Track6_n_sigma, &
            History_Track6_xtarget, &
            History_Track6_xsigma, &
            History_Track6_ytarget, &
            History_Track6_ysigma, &
            History_Track6_xname, &
            History_Track6_xaxis_label, &
            History_Track6_yname, &
            History_Track6_yaxis_label, &
            History_Track6_file_dir, &
            History_Track6_file_prefix, &
            show_History_Track6_annotation1, &
            show_History_Track6_annotation2, &
            show_History_Track6_annotation3, &
            History_Track6_fname, &
            History_Track6_reverse_xaxis, &
            History_Track6_reverse_yaxis, &
            History_Track6_log_xaxis, &
            History_Track6_log_yaxis, &
            History_Track6_xmin, &
            History_Track6_xmax, &
            History_Track6_ymin, &
            History_Track6_ymax, &
            History_Track6_xmargin, &
            History_Track6_ymargin, &
            History_Track6_dxmin, &
            History_Track6_dymin, &
            History_Track6_win_width, &
            History_Track6_win_aspect_ratio, &
            History_Track6_file_width, &
            History_Track6_file_aspect_ratio, &
            History_Track6_xleft, &
            History_Track6_xright, &
            History_Track6_ybot, &
            History_Track6_ytop, &
            History_Track6_txt_scale, &
            History_Track6_title, &
            History_Track6_use_decorator, &

            History_Track7_win_flag, &
            History_Track7_file_flag, &
            History_Track7_file_interval, &
            History_Track7_step_min, &
            History_Track7_step_max, &
            show_History_Track7_target_box, &
            History_Track7_n_sigma, &
            History_Track7_xtarget, &
            History_Track7_xsigma, &
            History_Track7_ytarget, &
            History_Track7_ysigma, &
            History_Track7_xname, &
            History_Track7_xaxis_label, &
            History_Track7_yname, &
            History_Track7_yaxis_label, &
            History_Track7_file_dir, &
            History_Track7_file_prefix, &
            show_History_Track7_annotation1, &
            show_History_Track7_annotation2, &
            show_History_Track7_annotation3, &
            History_Track7_fname, &
            History_Track7_reverse_xaxis, &
            History_Track7_reverse_yaxis, &
            History_Track7_log_xaxis, &
            History_Track7_log_yaxis, &
            History_Track7_xmin, &
            History_Track7_xmax, &
            History_Track7_ymin, &
            History_Track7_ymax, &
            History_Track7_xmargin, &
            History_Track7_ymargin, &
            History_Track7_dxmin, &
            History_Track7_dymin, &
            History_Track7_win_width, &
            History_Track7_win_aspect_ratio, &
            History_Track7_file_width, &
            History_Track7_file_aspect_ratio, &
            History_Track7_xleft, &
            History_Track7_xright, &
            History_Track7_ybot, &
            History_Track7_ytop, &
            History_Track7_txt_scale, &
            History_Track7_title, &
            History_Track7_use_decorator, &

            History_Track8_win_flag, &
            History_Track8_file_flag, &
            History_Track8_file_interval, &
            History_Track8_step_min, &
            History_Track8_step_max, &
            show_History_Track8_target_box, &
            History_Track8_n_sigma, &
            History_Track8_xtarget, &
            History_Track8_xsigma, &
            History_Track8_ytarget, &
            History_Track8_ysigma, &
            History_Track8_xname, &
            History_Track8_xaxis_label, &
            History_Track8_yname, &
            History_Track8_yaxis_label, &
            History_Track8_file_dir, &
            History_Track8_file_prefix, &
            show_History_Track8_annotation1, &
            show_History_Track8_annotation2, &
            show_History_Track8_annotation3, &
            History_Track8_fname, &
            History_Track8_reverse_xaxis, &
            History_Track8_reverse_yaxis, &
            History_Track8_log_xaxis, &
            History_Track8_log_yaxis, &
            History_Track8_xmin, &
            History_Track8_xmax, &
            History_Track8_ymin, &
            History_Track8_ymax, &
            History_Track8_xmargin, &
            History_Track8_ymargin, &
            History_Track8_dxmin, &
            History_Track8_dymin, &
            History_Track8_win_width, &
            History_Track8_win_aspect_ratio, &
            History_Track8_file_width, &
            History_Track8_file_aspect_ratio, &
            History_Track8_xleft, &
            History_Track8_xright, &
            History_Track8_ybot, &
            History_Track8_ytop, &
            History_Track8_txt_scale, &
            History_Track8_title, &
            History_Track8_use_decorator, &

            History_Track9_win_flag, &
            History_Track9_file_flag, &
            History_Track9_file_interval, &
            History_Track9_step_min, &
            History_Track9_step_max, &
            show_History_Track9_target_box, &
            History_Track9_n_sigma, &
            History_Track9_xtarget, &
            History_Track9_xsigma, &
            History_Track9_ytarget, &
            History_Track9_ysigma, &
            History_Track9_xname, &
            History_Track9_xaxis_label, &
            History_Track9_yname, &
            History_Track9_yaxis_label, &
            History_Track9_file_dir, &
            History_Track9_file_prefix, &
            show_History_Track9_annotation1, &
            show_History_Track9_annotation2, &
            show_History_Track9_annotation3, &
            History_Track9_fname, &
            History_Track9_reverse_xaxis, &
            History_Track9_reverse_yaxis, &
            History_Track9_log_xaxis, &
            History_Track9_log_yaxis, &
            History_Track9_xmin, &
            History_Track9_xmax, &
            History_Track9_ymin, &
            History_Track9_ymax, &
            History_Track9_xmargin, &
            History_Track9_ymargin, &
            History_Track9_dxmin, &
            History_Track9_dymin, &
            History_Track9_win_width, &
            History_Track9_win_aspect_ratio, &
            History_Track9_file_width, &
            History_Track9_file_aspect_ratio, &
            History_Track9_xleft, &
            History_Track9_xright, &
            History_Track9_ybot, &
            History_Track9_ytop, &
            History_Track9_txt_scale, &
            History_Track9_title, &
            History_Track9_use_decorator, &

            Kipp_win_flag, &
            Kipp_file_flag, &
            Kipp_file_interval, &
            Kipp_xmax, &
            Kipp_xmin, &
            Kipp_max_width, &
            Kipp_step_xmax, &
            Kipp_step_xmin, &
            Kipp_xaxis_name, &
            Kipp_xaxis_log, &
            Kipp_xmargin, &
            Kipp_xaxis_reversed, &
            Kipp_xaxis_in_seconds, &
            Kipp_xaxis_in_Myr, &
            Kipp_xaxis_time_from_present, &
            Kipp_file_dir, &
            Kipp_file_prefix, &
            show_Kipp_annotation1, &
            show_Kipp_annotation2, &
            show_Kipp_annotation3, &
            Kipp_show_burn, &
            Kipp_show_mixing, &
            Kipp_show_luminosities, &
            Kipp_show_mass_boundaries, &
            Kipp_mix_line_weight, &
            Kipp_mix_interval, &
            Kipp_burn_line_weight, &
            Kipp_burn_type_cutoff, &
            Kipp_luminosities_line_weight, &
            Kipp_masses_line_weight, &
            Kipp_mass_max, &
            Kipp_mass_min, &
            Kipp_lgL_max, &
            Kipp_lgL_min, &
            Kipp_mass_margin, &
            Kipp_lgL_margin, &
            Kipp_win_width, &
            Kipp_win_aspect_ratio, &
            Kipp_file_width, &
            Kipp_file_aspect_ratio, &
            Kipp_xleft, &
            Kipp_xright, &
            Kipp_ybot, &
            Kipp_ytop, &
            Kipp_txt_scale, &
            Kipp_title, &
            kipp_use_decorator, &

            rti_win_flag, &
            rti_file_flag, &
            rti_file_interval, &
            rti_xmax, &
            rti_xmin, &
            rti_max_width, &
            rti_step_xmax, &
            rti_step_xmin, &
            rti_xaxis_name, &
            rti_xaxis_log, &
            rti_xmargin, &
            rti_xaxis_reversed, &
            rti_xaxis_in_seconds, &
            rti_xaxis_in_Myr, &
            rti_xaxis_time_from_present, &
            rti_mass_max, &
            rti_mass_min, &
            rti_mass_margin, &
            rti_file_dir, &
            rti_file_prefix, &
            show_rti_annotation1, &
            show_rti_annotation2, &
            show_rti_annotation3, &
            rti_line_weight, &
            rti_interval, &
            rti_win_width, &
            rti_win_aspect_ratio, &
            rti_file_width, &
            rti_file_aspect_ratio, &
            rti_xleft, &
            rti_xright, &
            rti_ybot, &
            rti_ytop, &
            rti_txt_scale, &
            rti_title, &
            rti_use_decorator, &

            TRho_Profile_win_flag, &
            TRho_switch_to_Column_Depth, &
            TRho_switch_to_mass, &
            TRho_Profile_file_flag, &
            TRho_Profile_file_interval, &
            TRho_Profile_file_dir, &
            TRho_Profile_file_prefix, &
            show_TRho_Profile_text_info, &
            show_TRho_Profile_legend, &
            show_TRho_Profile_mass_locs, &
            show_TRho_Profile_burn_labels, &
            show_TRho_Profile_kap_regions, &
            show_TRho_Profile_eos_regions, &
            show_TRho_Profile_gamma1_4_3rd, &
            show_TRho_Profile_burn_lines, &
            show_TRho_Profile_degeneracy_line, &
            show_TRho_Profile_Pgas_Prad_line, &
            show_TRho_Profile_annotation1, &
            show_TRho_Profile_annotation2, &
            show_TRho_Profile_annotation3, &
            TRho_Profile_fname, &
            show_TRho_accretion_mesh_borders, &
            TRho_Profile_text_info_xfac, &
            TRho_Profile_text_info_dxfac, &
            TRho_Profile_text_info_yfac, &
            TRho_Profile_text_info_dyfac, &
            TRho_Profile_xmin, &
            TRho_Profile_xmax, &
            TRho_Profile_ymin, &
            TRho_Profile_ymax, &
            TRho_Profile_legend_coord, &
            TRho_Profile_legend_fjust, &
            TRho_Profile_legend_disp1, &
            TRho_Profile_legend_del_disp, &
            TRho_Profile_legend_txt_scale, &
            TRho_Profile_win_width, &
            TRho_Profile_win_aspect_ratio, &
            TRho_Profile_xleft, &
            TRho_Profile_xright, &
            TRho_Profile_ybot, &
            TRho_Profile_ytop, &
            TRho_Profile_txt_scale, &
            TRho_Profile_title, &
            TRho_Profile_file_width, &
            TRho_Profile_file_aspect_ratio, &
            num_profile_mass_points, &
            profile_mass_point_q, &
            profile_mass_point_color_index, &
            profile_mass_point_symbol, &
            profile_mass_point_symbol_scale, &
            profile_mass_point_str, &
            profile_mass_point_str_clr, &
            profile_mass_point_str_scale, &
            TRho_Profile_use_decorator, &

            Dynamo_win_flag, &
            Dynamo_file_flag, &
            Dynamo_file_interval, &
            Dynamo_file_dir, &
            Dynamo_file_prefix, &
            show_Dynamo_annotation1, &
            show_Dynamo_annotation2, &
            show_Dynamo_annotation3, &
            Dynamo_xaxis_name, &
            Dynamo_xaxis_reversed, &
            Dynamo_xmin, &
            Dynamo_xmax, &
            Dynamo_ymin_left, &
            Dynamo_ymax_left, &
            Dynamo_dymin_left, &
            Dynamo_ymin_right, &
            Dynamo_ymax_right, &
            Dynamo_dymin_right, &
            Dynamo_win_width, &
            Dynamo_win_aspect_ratio, &
            Dynamo_file_width, &
            Dynamo_file_aspect_ratio, &
            Dynamo_xleft, &
            Dynamo_xright, &
            Dynamo_ybot, &
            Dynamo_ytop, &
            Dynamo_txt_scale, &
            Dynamo_title, &
            Dynamo_legend_txt_scale_factor, &
            Dynamo_use_decorator, &

            Mixing_win_flag, &
            Mixing_file_flag, &
            Mixing_file_interval, &
            Mixing_file_dir, &
            Mixing_file_prefix, &
            show_Mixing_annotation1, &
            show_Mixing_annotation2, &
            show_Mixing_annotation3, &
            Mixing_xaxis_name, &
            Mixing_xaxis_reversed, &
            Mixing_legend_txt_scale_factor, &
            Mixing_show_rotation_details, &
            Mixing_xmin, &
            Mixing_xmax, &
            Mixing_ymin, &
            Mixing_ymax, &
            Mixing_dymin, &
            Mixing_win_width, &
            Mixing_win_aspect_ratio, &
            Mixing_file_width, &
            Mixing_file_aspect_ratio, &
            Mixing_xleft, &
            Mixing_xright, &
            Mixing_ybot, &
            Mixing_ytop, &
            Mixing_txt_scale, &
            Mixing_title, &
            Mixing_use_decorator, &

            History_Panels1_win_flag, &
            History_Panels1_win_width, &
            History_Panels1_win_aspect_ratio, &
            History_Panels1_xleft, &
            History_Panels1_xright, &
            History_Panels1_ybot, &
            History_Panels1_ytop, &
            History_Panels1_txt_scale, &
            History_Panels1_title, &
            History_Panels1_xmax, &
            History_Panels1_xmin, &
            History_Panels1_dxmin, &
            History_Panels1_max_width, &
            History_Panels1_num_panels, &
            History_Panels1_xaxis_name, &
            History_Panels1_automatic_star_age_units, &
            History_Panels1_yaxis_name, &
            History_Panels1_xaxis_reversed, &
            History_Panels1_yaxis_reversed, &
            History_Panels1_yaxis_log, &
            History_Panels1_ymin, &
            History_Panels1_ymax, &
            History_Panels1_dymin, &
            History_Panels1_other_yaxis_name, &
            History_Panels1_other_yaxis_reversed, &
            History_Panels1_xaxis_log, &
            History_Panels1_other_yaxis_log, &
            History_Panels1_same_yaxis_range, &
            History_Panels1_other_ymin, &
            History_Panels1_other_ymax, &
            History_Panels1_other_dymin, &
            History_Panels1_points_name, &
            History_Panels1_file_flag, &
            History_Panels1_file_dir, &
            History_Panels1_file_prefix, &
            History_Panels1_file_interval, &
            History_Panels1_file_width, &
            History_Panels1_file_aspect_ratio, &
            History_Panels1_xmargin, &
            History_Panels1_ymargin, &
            History_Panels1_other_ymargin, &
            History_Panels1_use_decorator, &

            History_Panels2_win_flag, &
            History_Panels2_win_width, &
            History_Panels2_win_aspect_ratio, &
            History_Panels2_xleft, &
            History_Panels2_xright, &
            History_Panels2_ybot, &
            History_Panels2_ytop, &
            History_Panels2_txt_scale, &
            History_Panels2_title, &
            History_Panels2_xmax, &
            History_Panels2_xmin, &
            History_Panels2_dxmin, &
            History_Panels2_max_width, &
            History_Panels2_num_panels, &
            History_Panels2_xaxis_name, &
            History_Panels2_automatic_star_age_units, &
            History_Panels2_yaxis_name, &
            History_Panels2_xaxis_reversed, &
            History_Panels2_yaxis_reversed, &
            History_Panels2_yaxis_log, &
            History_Panels2_ymin, &
            History_Panels2_ymax, &
            History_Panels2_dymin, &
            History_Panels2_other_yaxis_name, &
            History_Panels2_other_yaxis_reversed, &
            History_Panels2_xaxis_log, &
            History_Panels2_other_yaxis_log, &
            History_Panels2_same_yaxis_range, &
            History_Panels2_other_ymin, &
            History_Panels2_other_ymax, &
            History_Panels2_other_dymin, &
            History_Panels2_points_name, &
            History_Panels2_file_flag, &
            History_Panels2_file_dir, &
            History_Panels2_file_prefix, &
            History_Panels2_file_interval, &
            History_Panels2_file_width, &
            History_Panels2_file_aspect_ratio, &
            History_Panels2_xmargin, &
            History_Panels2_ymargin, &
            History_Panels2_other_ymargin, &
            History_Panels2_use_decorator, &

            History_Panels3_win_flag, &
            History_Panels3_win_width, &
            History_Panels3_win_aspect_ratio, &
            History_Panels3_xleft, &
            History_Panels3_xright, &
            History_Panels3_ybot, &
            History_Panels3_ytop, &
            History_Panels3_txt_scale, &
            History_Panels3_title, &
            History_Panels3_xmax, &
            History_Panels3_xmin, &
            History_Panels3_dxmin, &
            History_Panels3_max_width, &
            History_Panels3_num_panels, &
            History_Panels3_xaxis_name, &
            History_Panels3_automatic_star_age_units, &
            History_Panels3_yaxis_name, &
            History_Panels3_xaxis_reversed, &
            History_Panels3_yaxis_reversed, &
            History_Panels3_yaxis_log, &
            History_Panels3_ymin, &
            History_Panels3_ymax, &
            History_Panels3_dymin, &
            History_Panels3_other_yaxis_name, &
            History_Panels3_other_yaxis_reversed, &
            History_Panels3_xaxis_log, &
            History_Panels3_other_yaxis_log, &
            History_Panels3_same_yaxis_range, &
            History_Panels3_other_ymin, &
            History_Panels3_other_ymax, &
            History_Panels3_other_dymin, &
            History_Panels3_points_name, &
            History_Panels3_file_flag, &
            History_Panels3_file_dir, &
            History_Panels3_file_prefix, &
            History_Panels3_file_interval, &
            History_Panels3_file_width, &
            History_Panels3_file_aspect_ratio, &
            History_Panels3_xmargin, &
            History_Panels3_ymargin, &
            History_Panels3_other_ymargin, &
            History_Panels3_use_decorator, &

            History_Panels4_win_flag, &
            History_Panels4_win_width, &
            History_Panels4_win_aspect_ratio, &
            History_Panels4_xleft, &
            History_Panels4_xright, &
            History_Panels4_ybot, &
            History_Panels4_ytop, &
            History_Panels4_txt_scale, &
            History_Panels4_title, &
            History_Panels4_xmax, &
            History_Panels4_xmin, &
            History_Panels4_dxmin, &
            History_Panels4_max_width, &
            History_Panels4_num_panels, &
            History_Panels4_xaxis_name, &
            History_Panels4_automatic_star_age_units, &
            History_Panels4_yaxis_name, &
            History_Panels4_xaxis_reversed, &
            History_Panels4_yaxis_reversed, &
            History_Panels4_yaxis_log, &
            History_Panels4_ymin, &
            History_Panels4_ymax, &
            History_Panels4_dymin, &
            History_Panels4_other_yaxis_name, &
            History_Panels4_other_yaxis_reversed, &
            History_Panels4_xaxis_log, &
            History_Panels4_other_yaxis_log, &
            History_Panels4_same_yaxis_range, &
            History_Panels4_other_ymin, &
            History_Panels4_other_ymax, &
            History_Panels4_other_dymin, &
            History_Panels4_points_name, &
            History_Panels4_file_flag, &
            History_Panels4_file_dir, &
            History_Panels4_file_prefix, &
            History_Panels4_file_interval, &
            History_Panels4_file_width, &
            History_Panels4_file_aspect_ratio, &
            History_Panels4_xmargin, &
            History_Panels4_ymargin, &
            History_Panels4_other_ymargin, &
            History_Panels4_use_decorator, &

            History_Panels5_win_flag, &
            History_Panels5_win_width, &
            History_Panels5_win_aspect_ratio, &
            History_Panels5_xleft, &
            History_Panels5_xright, &
            History_Panels5_ybot, &
            History_Panels5_ytop, &
            History_Panels5_txt_scale, &
            History_Panels5_title, &
            History_Panels5_xmax, &
            History_Panels5_xmin, &
            History_Panels5_dxmin, &
            History_Panels5_max_width, &
            History_Panels5_num_panels, &
            History_Panels5_xaxis_name, &
            History_Panels5_automatic_star_age_units, &
            History_Panels5_yaxis_name, &
            History_Panels5_xaxis_reversed, &
            History_Panels5_yaxis_reversed, &
            History_Panels5_yaxis_log, &
            History_Panels5_ymin, &
            History_Panels5_ymax, &
            History_Panels5_dymin, &
            History_Panels5_other_yaxis_name, &
            History_Panels5_other_yaxis_reversed, &
            History_Panels5_xaxis_log, &
            History_Panels5_other_yaxis_log, &
            History_Panels5_same_yaxis_range, &
            History_Panels5_other_ymin, &
            History_Panels5_other_ymax, &
            History_Panels5_other_dymin, &
            History_Panels5_points_name, &
            History_Panels5_file_flag, &
            History_Panels5_file_dir, &
            History_Panels5_file_prefix, &
            History_Panels5_file_interval, &
            History_Panels5_file_width, &
            History_Panels5_file_aspect_ratio, &
            History_Panels5_xmargin, &
            History_Panels5_ymargin, &
            History_Panels5_other_ymargin, &
            History_Panels5_use_decorator, &

            History_Panels6_win_flag, &
            History_Panels6_win_width, &
            History_Panels6_win_aspect_ratio, &
            History_Panels6_xleft, &
            History_Panels6_xright, &
            History_Panels6_ybot, &
            History_Panels6_ytop, &
            History_Panels6_txt_scale, &
            History_Panels6_title, &
            History_Panels6_xmax, &
            History_Panels6_xmin, &
            History_Panels6_dxmin, &
            History_Panels6_max_width, &
            History_Panels6_num_panels, &
            History_Panels6_xaxis_name, &
            History_Panels6_automatic_star_age_units, &
            History_Panels6_yaxis_name, &
            History_Panels6_xaxis_reversed, &
            History_Panels6_yaxis_reversed, &
            History_Panels6_yaxis_log, &
            History_Panels6_ymin, &
            History_Panels6_ymax, &
            History_Panels6_dymin, &
            History_Panels6_other_yaxis_name, &
            History_Panels6_other_yaxis_reversed, &
            History_Panels6_xaxis_log, &
            History_Panels6_other_yaxis_log, &
            History_Panels6_same_yaxis_range, &
            History_Panels6_other_ymin, &
            History_Panels6_other_ymax, &
            History_Panels6_other_dymin, &
            History_Panels6_points_name, &
            History_Panels6_file_flag, &
            History_Panels6_file_dir, &
            History_Panels6_file_prefix, &
            History_Panels6_file_interval, &
            History_Panels6_file_width, &
            History_Panels6_file_aspect_ratio, &
            History_Panels6_xmargin, &
            History_Panels6_ymargin, &
            History_Panels6_other_ymargin, &
            History_Panels6_use_decorator, &

            History_Panels7_win_flag, &
            History_Panels7_win_width, &
            History_Panels7_win_aspect_ratio, &
            History_Panels7_xleft, &
            History_Panels7_xright, &
            History_Panels7_ybot, &
            History_Panels7_ytop, &
            History_Panels7_txt_scale, &
            History_Panels7_title, &
            History_Panels7_xmax, &
            History_Panels7_xmin, &
            History_Panels7_dxmin, &
            History_Panels7_max_width, &
            History_Panels7_num_panels, &
            History_Panels7_xaxis_name, &
            History_Panels7_automatic_star_age_units, &
            History_Panels7_yaxis_name, &
            History_Panels7_xaxis_reversed, &
            History_Panels7_yaxis_reversed, &
            History_Panels7_yaxis_log, &
            History_Panels7_ymin, &
            History_Panels7_ymax, &
            History_Panels7_dymin, &
            History_Panels7_other_yaxis_name, &
            History_Panels7_other_yaxis_reversed, &
            History_Panels7_xaxis_log, &
            History_Panels7_other_yaxis_log, &
            History_Panels7_same_yaxis_range, &
            History_Panels7_other_ymin, &
            History_Panels7_other_ymax, &
            History_Panels7_other_dymin, &
            History_Panels7_points_name, &
            History_Panels7_file_flag, &
            History_Panels7_file_dir, &
            History_Panels7_file_prefix, &
            History_Panels7_file_interval, &
            History_Panels7_file_width, &
            History_Panels7_file_aspect_ratio, &
            History_Panels7_xmargin, &
            History_Panels7_ymargin, &
            History_Panels7_other_ymargin, &
            History_Panels7_use_decorator, &

            History_Panels8_win_flag, &
            History_Panels8_win_width, &
            History_Panels8_win_aspect_ratio, &
            History_Panels8_xleft, &
            History_Panels8_xright, &
            History_Panels8_ybot, &
            History_Panels8_ytop, &
            History_Panels8_txt_scale, &
            History_Panels8_title, &
            History_Panels8_xmax, &
            History_Panels8_xmin, &
            History_Panels8_dxmin, &
            History_Panels8_max_width, &
            History_Panels8_num_panels, &
            History_Panels8_xaxis_name, &
            History_Panels8_automatic_star_age_units, &
            History_Panels8_yaxis_name, &
            History_Panels8_xaxis_reversed, &
            History_Panels8_yaxis_reversed, &
            History_Panels8_yaxis_log, &
            History_Panels8_ymin, &
            History_Panels8_ymax, &
            History_Panels8_dymin, &
            History_Panels8_other_yaxis_name, &
            History_Panels8_other_yaxis_reversed, &
            History_Panels8_xaxis_log, &
            History_Panels8_other_yaxis_log, &
            History_Panels8_same_yaxis_range, &
            History_Panels8_other_ymin, &
            History_Panels8_other_ymax, &
            History_Panels8_other_dymin, &
            History_Panels8_points_name, &
            History_Panels8_file_flag, &
            History_Panels8_file_dir, &
            History_Panels8_file_prefix, &
            History_Panels8_file_interval, &
            History_Panels8_file_width, &
            History_Panels8_file_aspect_ratio, &
            History_Panels8_xmargin, &
            History_Panels8_ymargin, &
            History_Panels8_other_ymargin, &
            History_Panels8_use_decorator, &

            History_Panels9_win_flag, &
            History_Panels9_win_width, &
            History_Panels9_win_aspect_ratio, &
            History_Panels9_xleft, &
            History_Panels9_xright, &
            History_Panels9_ybot, &
            History_Panels9_ytop, &
            History_Panels9_txt_scale, &
            History_Panels9_title, &
            History_Panels9_xmax, &
            History_Panels9_xmin, &
            History_Panels9_dxmin, &
            History_Panels9_max_width, &
            History_Panels9_num_panels, &
            History_Panels9_xaxis_name, &
            History_Panels9_automatic_star_age_units, &
            History_Panels9_yaxis_name, &
            History_Panels9_xaxis_reversed, &
            History_Panels9_yaxis_reversed, &
            History_Panels9_yaxis_log, &
            History_Panels9_ymin, &
            History_Panels9_ymax, &
            History_Panels9_dymin, &
            History_Panels9_other_yaxis_name, &
            History_Panels9_other_yaxis_reversed, &
            History_Panels9_xaxis_log, &
            History_Panels9_other_yaxis_log, &
            History_Panels9_same_yaxis_range, &
            History_Panels9_other_ymin, &
            History_Panels9_other_ymax, &
            History_Panels9_other_dymin, &
            History_Panels9_points_name, &
            History_Panels9_file_flag, &
            History_Panels9_file_dir, &
            History_Panels9_file_prefix, &
            History_Panels9_file_interval, &
            History_Panels9_file_width, &
            History_Panels9_file_aspect_ratio, &
            History_Panels9_xmargin, &
            History_Panels9_ymargin, &
            History_Panels9_other_ymargin, &
            History_Panels9_use_decorator, &

            History_Panel_points_error_bars, &
            History_Panel_points_interval, &
            History_Panel_points_marker, &
            History_Panel_points_ci, &
            History_Panel_points_lw, &
            History_Panel_points_ch, &

            Color_Magnitude1_win_flag, &
            Color_Magnitude1_win_width, &
            Color_Magnitude1_win_aspect_ratio, &
            Color_Magnitude1_xleft, &
            Color_Magnitude1_xright, &
            Color_Magnitude1_ybot, &
            Color_Magnitude1_ytop, &
            Color_Magnitude1_txt_scale, &
            Color_Magnitude1_title, &
            Color_Magnitude1_xmax, &
            Color_Magnitude1_xmin, &
            Color_Magnitude1_dxmin, &
            Color_Magnitude1_max_width, &
            Color_Magnitude1_num_panels, &
            Color_Magnitude1_xaxis1_name, &
            Color_Magnitude1_xaxis2_name, &
            Color_Magnitude1_yaxis1_name, &
            Color_Magnitude1_yaxis2_name, &
            Color_Magnitude1_xaxis_reversed, &
            Color_Magnitude1_yaxis_reversed, &
            Color_Magnitude1_yaxis_log, &
            Color_Magnitude1_ymin, &
            Color_Magnitude1_ymax, &
            Color_Magnitude1_dymin, &
            Color_Magnitude1_other_yaxis1_name, &
            Color_Magnitude1_other_yaxis2_name, &
            Color_Magnitude1_other_yaxis_reversed, &
            Color_Magnitude1_xaxis_log, &
            Color_Magnitude1_other_yaxis_log, &
            Color_Magnitude1_other_ymin, &
            Color_Magnitude1_other_ymax, &
            Color_Magnitude1_other_dymin, &
            Color_Magnitude1_file_flag, &
            Color_Magnitude1_file_dir, &
            Color_Magnitude1_file_prefix, &
            Color_Magnitude1_file_interval, &
            Color_Magnitude1_file_width, &
            Color_Magnitude1_file_aspect_ratio, &
            Color_Magnitude1_xmargin, &
            Color_Magnitude1_ymargin, &
            Color_Magnitude1_other_ymargin, &
            Color_Magnitude1_use_decorator, &

            Color_Magnitude2_win_flag, &
            Color_Magnitude2_win_width, &
            Color_Magnitude2_win_aspect_ratio, &
            Color_Magnitude2_xleft, &
            Color_Magnitude2_xright, &
            Color_Magnitude2_ybot, &
            Color_Magnitude2_ytop, &
            Color_Magnitude2_txt_scale, &
            Color_Magnitude2_title, &
            Color_Magnitude2_xmax, &
            Color_Magnitude2_xmin, &
            Color_Magnitude2_dxmin, &
            Color_Magnitude2_max_width, &
            Color_Magnitude2_num_panels, &
            Color_Magnitude2_xaxis1_name, &
            Color_Magnitude2_xaxis2_name, &
            Color_Magnitude2_yaxis1_name, &
            Color_Magnitude2_yaxis2_name, &
            Color_Magnitude2_xaxis_reversed, &
            Color_Magnitude2_yaxis_reversed, &
            Color_Magnitude2_yaxis_log, &
            Color_Magnitude2_ymin, &
            Color_Magnitude2_ymax, &
            Color_Magnitude2_dymin, &
            Color_Magnitude2_other_yaxis1_name, &
            Color_Magnitude2_other_yaxis2_name, &
            Color_Magnitude2_other_yaxis_reversed, &
            Color_Magnitude2_xaxis_log, &
            Color_Magnitude2_other_yaxis_log, &
            Color_Magnitude2_other_ymin, &
            Color_Magnitude2_other_ymax, &
            Color_Magnitude2_other_dymin, &
            Color_Magnitude2_file_flag, &
            Color_Magnitude2_file_dir, &
            Color_Magnitude2_file_prefix, &
            Color_Magnitude2_file_interval, &
            Color_Magnitude2_file_width, &
            Color_Magnitude2_file_aspect_ratio, &
            Color_Magnitude2_xmargin, &
            Color_Magnitude2_ymargin, &
            Color_Magnitude2_other_ymargin, &
            Color_Magnitude2_use_decorator, &

            Color_Magnitude3_win_flag, &
            Color_Magnitude3_win_width, &
            Color_Magnitude3_win_aspect_ratio, &
            Color_Magnitude3_xleft, &
            Color_Magnitude3_xright, &
            Color_Magnitude3_ybot, &
            Color_Magnitude3_ytop, &
            Color_Magnitude3_txt_scale, &
            Color_Magnitude3_title, &
            Color_Magnitude3_xmax, &
            Color_Magnitude3_xmin, &
            Color_Magnitude3_dxmin, &
            Color_Magnitude3_max_width, &
            Color_Magnitude3_num_panels, &
            Color_Magnitude3_xaxis1_name, &
            Color_Magnitude3_xaxis2_name, &
            Color_Magnitude3_yaxis1_name, &
            Color_Magnitude3_yaxis2_name, &
            Color_Magnitude3_xaxis_reversed, &
            Color_Magnitude3_yaxis_reversed, &
            Color_Magnitude3_yaxis_log, &
            Color_Magnitude3_ymin, &
            Color_Magnitude3_ymax, &
            Color_Magnitude3_dymin, &
            Color_Magnitude3_other_yaxis1_name, &
            Color_Magnitude3_other_yaxis2_name, &
            Color_Magnitude3_other_yaxis_reversed, &
            Color_Magnitude3_xaxis_log, &
            Color_Magnitude3_other_yaxis_log, &
            Color_Magnitude3_other_ymin, &
            Color_Magnitude3_other_ymax, &
            Color_Magnitude3_other_dymin, &
            Color_Magnitude3_file_flag, &
            Color_Magnitude3_file_dir, &
            Color_Magnitude3_file_prefix, &
            Color_Magnitude3_file_interval, &
            Color_Magnitude3_file_width, &
            Color_Magnitude3_file_aspect_ratio, &
            Color_Magnitude3_xmargin, &
            Color_Magnitude3_ymargin, &
            Color_Magnitude3_other_ymargin, &
            Color_Magnitude3_use_decorator, &

            Color_Magnitude4_win_flag, &
            Color_Magnitude4_win_width, &
            Color_Magnitude4_win_aspect_ratio, &
            Color_Magnitude4_xleft, &
            Color_Magnitude4_xright, &
            Color_Magnitude4_ybot, &
            Color_Magnitude4_ytop, &
            Color_Magnitude4_txt_scale, &
            Color_Magnitude4_title, &
            Color_Magnitude4_xmax, &
            Color_Magnitude4_xmin, &
            Color_Magnitude4_dxmin, &
            Color_Magnitude4_max_width, &
            Color_Magnitude4_num_panels, &
            Color_Magnitude4_xaxis1_name, &
            Color_Magnitude4_xaxis2_name, &
            Color_Magnitude4_yaxis1_name, &
            Color_Magnitude4_yaxis2_name, &
            Color_Magnitude4_xaxis_reversed, &
            Color_Magnitude4_yaxis_reversed, &
            Color_Magnitude4_yaxis_log, &
            Color_Magnitude4_ymin, &
            Color_Magnitude4_ymax, &
            Color_Magnitude4_dymin, &
            Color_Magnitude4_other_yaxis1_name, &
            Color_Magnitude4_other_yaxis2_name, &
            Color_Magnitude4_other_yaxis_reversed, &
            Color_Magnitude4_xaxis_log, &
            Color_Magnitude4_other_yaxis_log, &
            Color_Magnitude4_other_ymin, &
            Color_Magnitude4_other_ymax, &
            Color_Magnitude4_other_dymin, &
            Color_Magnitude4_file_flag, &
            Color_Magnitude4_file_dir, &
            Color_Magnitude4_file_prefix, &
            Color_Magnitude4_file_interval, &
            Color_Magnitude4_file_width, &
            Color_Magnitude4_file_aspect_ratio, &
            Color_Magnitude4_xmargin, &
            Color_Magnitude4_ymargin, &
            Color_Magnitude4_other_ymargin, &
            Color_Magnitude4_use_decorator, &

            Color_Magnitude5_win_flag, &
            Color_Magnitude5_win_width, &
            Color_Magnitude5_win_aspect_ratio, &
            Color_Magnitude5_xleft, &
            Color_Magnitude5_xright, &
            Color_Magnitude5_ybot, &
            Color_Magnitude5_ytop, &
            Color_Magnitude5_txt_scale, &
            Color_Magnitude5_title, &
            Color_Magnitude5_xmax, &
            Color_Magnitude5_xmin, &
            Color_Magnitude5_dxmin, &
            Color_Magnitude5_max_width, &
            Color_Magnitude5_num_panels, &
            Color_Magnitude5_xaxis1_name, &
            Color_Magnitude5_xaxis2_name, &
            Color_Magnitude5_yaxis1_name, &
            Color_Magnitude5_yaxis2_name, &
            Color_Magnitude5_xaxis_reversed, &
            Color_Magnitude5_yaxis_reversed, &
            Color_Magnitude5_yaxis_log, &
            Color_Magnitude5_ymin, &
            Color_Magnitude5_ymax, &
            Color_Magnitude5_dymin, &
            Color_Magnitude5_other_yaxis1_name, &
            Color_Magnitude5_other_yaxis2_name, &
            Color_Magnitude5_other_yaxis_reversed, &
            Color_Magnitude5_xaxis_log, &
            Color_Magnitude5_other_yaxis_log, &
            Color_Magnitude5_other_ymin, &
            Color_Magnitude5_other_ymax, &
            Color_Magnitude5_other_dymin, &
            Color_Magnitude5_file_flag, &
            Color_Magnitude5_file_dir, &
            Color_Magnitude5_file_prefix, &
            Color_Magnitude5_file_interval, &
            Color_Magnitude5_file_width, &
            Color_Magnitude5_file_aspect_ratio, &
            Color_Magnitude5_xmargin, &
            Color_Magnitude5_ymargin, &
            Color_Magnitude5_other_ymargin, &
            Color_Magnitude5_use_decorator, &

            Color_Magnitude6_win_flag, &
            Color_Magnitude6_win_width, &
            Color_Magnitude6_win_aspect_ratio, &
            Color_Magnitude6_xleft, &
            Color_Magnitude6_xright, &
            Color_Magnitude6_ybot, &
            Color_Magnitude6_ytop, &
            Color_Magnitude6_txt_scale, &
            Color_Magnitude6_title, &
            Color_Magnitude6_xmax, &
            Color_Magnitude6_xmin, &
            Color_Magnitude6_dxmin, &
            Color_Magnitude6_max_width, &
            Color_Magnitude6_num_panels, &
            Color_Magnitude6_xaxis1_name, &
            Color_Magnitude6_xaxis2_name, &
            Color_Magnitude6_yaxis1_name, &
            Color_Magnitude6_yaxis2_name, &
            Color_Magnitude6_xaxis_reversed, &
            Color_Magnitude6_yaxis_reversed, &
            Color_Magnitude6_yaxis_log, &
            Color_Magnitude6_ymin, &
            Color_Magnitude6_ymax, &
            Color_Magnitude6_dymin, &
            Color_Magnitude6_other_yaxis1_name, &
            Color_Magnitude6_other_yaxis2_name, &
            Color_Magnitude6_other_yaxis_reversed, &
            Color_Magnitude6_xaxis_log, &
            Color_Magnitude6_other_yaxis_log, &
            Color_Magnitude6_other_ymin, &
            Color_Magnitude6_other_ymax, &
            Color_Magnitude6_other_dymin, &
            Color_Magnitude6_file_flag, &
            Color_Magnitude6_file_dir, &
            Color_Magnitude6_file_prefix, &
            Color_Magnitude6_file_interval, &
            Color_Magnitude6_file_width, &
            Color_Magnitude6_file_aspect_ratio, &
            Color_Magnitude6_xmargin, &
            Color_Magnitude6_ymargin, &
            Color_Magnitude6_other_ymargin, &
            Color_Magnitude6_use_decorator, &

            Color_Magnitude7_win_flag, &
            Color_Magnitude7_win_width, &
            Color_Magnitude7_win_aspect_ratio, &
            Color_Magnitude7_xleft, &
            Color_Magnitude7_xright, &
            Color_Magnitude7_ybot, &
            Color_Magnitude7_ytop, &
            Color_Magnitude7_txt_scale, &
            Color_Magnitude7_title, &
            Color_Magnitude7_xmax, &
            Color_Magnitude7_xmin, &
            Color_Magnitude7_dxmin, &
            Color_Magnitude7_max_width, &
            Color_Magnitude7_num_panels, &
            Color_Magnitude7_xaxis1_name, &
            Color_Magnitude7_xaxis2_name, &
            Color_Magnitude7_yaxis1_name, &
            Color_Magnitude7_yaxis2_name, &
            Color_Magnitude7_xaxis_reversed, &
            Color_Magnitude7_yaxis_reversed, &
            Color_Magnitude7_yaxis_log, &
            Color_Magnitude7_ymin, &
            Color_Magnitude7_ymax, &
            Color_Magnitude7_dymin, &
            Color_Magnitude7_other_yaxis1_name, &
            Color_Magnitude7_other_yaxis2_name, &
            Color_Magnitude7_other_yaxis_reversed, &
            Color_Magnitude7_xaxis_log, &
            Color_Magnitude7_other_yaxis_log, &
            Color_Magnitude7_other_ymin, &
            Color_Magnitude7_other_ymax, &
            Color_Magnitude7_other_dymin, &
            Color_Magnitude7_file_flag, &
            Color_Magnitude7_file_dir, &
            Color_Magnitude7_file_prefix, &
            Color_Magnitude7_file_interval, &
            Color_Magnitude7_file_width, &
            Color_Magnitude7_file_aspect_ratio, &
            Color_Magnitude7_xmargin, &
            Color_Magnitude7_ymargin, &
            Color_Magnitude7_other_ymargin, &
            Color_Magnitude7_use_decorator, &

            Color_Magnitude8_win_flag, &
            Color_Magnitude8_win_width, &
            Color_Magnitude8_win_aspect_ratio, &
            Color_Magnitude8_xleft, &
            Color_Magnitude8_xright, &
            Color_Magnitude8_ybot, &
            Color_Magnitude8_ytop, &
            Color_Magnitude8_txt_scale, &
            Color_Magnitude8_title, &
            Color_Magnitude8_xmax, &
            Color_Magnitude8_xmin, &
            Color_Magnitude8_dxmin, &
            Color_Magnitude8_max_width, &
            Color_Magnitude8_num_panels, &
            Color_Magnitude8_xaxis1_name, &
            Color_Magnitude8_xaxis2_name, &
            Color_Magnitude8_yaxis1_name, &
            Color_Magnitude8_yaxis2_name, &
            Color_Magnitude8_xaxis_reversed, &
            Color_Magnitude8_yaxis_reversed, &
            Color_Magnitude8_yaxis_log, &
            Color_Magnitude8_ymin, &
            Color_Magnitude8_ymax, &
            Color_Magnitude8_dymin, &
            Color_Magnitude8_other_yaxis1_name, &
            Color_Magnitude8_other_yaxis2_name, &
            Color_Magnitude8_other_yaxis_reversed, &
            Color_Magnitude8_xaxis_log, &
            Color_Magnitude8_other_yaxis_log, &
            Color_Magnitude8_other_ymin, &
            Color_Magnitude8_other_ymax, &
            Color_Magnitude8_other_dymin, &
            Color_Magnitude8_file_flag, &
            Color_Magnitude8_file_dir, &
            Color_Magnitude8_file_prefix, &
            Color_Magnitude8_file_interval, &
            Color_Magnitude8_file_width, &
            Color_Magnitude8_file_aspect_ratio, &
            Color_Magnitude8_xmargin, &
            Color_Magnitude8_ymargin, &
            Color_Magnitude8_other_ymargin, &
            Color_Magnitude8_use_decorator, &

            Color_Magnitude9_win_flag, &
            Color_Magnitude9_win_width, &
            Color_Magnitude9_win_aspect_ratio, &
            Color_Magnitude9_xleft, &
            Color_Magnitude9_xright, &
            Color_Magnitude9_ybot, &
            Color_Magnitude9_ytop, &
            Color_Magnitude9_txt_scale, &
            Color_Magnitude9_title, &
            Color_Magnitude9_xmax, &
            Color_Magnitude9_xmin, &
            Color_Magnitude9_dxmin, &
            Color_Magnitude9_max_width, &
            Color_Magnitude9_num_panels, &
            Color_Magnitude9_xaxis1_name, &
            Color_Magnitude9_xaxis2_name, &
            Color_Magnitude9_yaxis1_name, &
            Color_Magnitude9_yaxis2_name, &
            Color_Magnitude9_xaxis_reversed, &
            Color_Magnitude9_yaxis_reversed, &
            Color_Magnitude9_yaxis_log, &
            Color_Magnitude9_ymin, &
            Color_Magnitude9_ymax, &
            Color_Magnitude9_dymin, &
            Color_Magnitude9_other_yaxis1_name, &
            Color_Magnitude9_other_yaxis2_name, &
            Color_Magnitude9_other_yaxis_reversed, &
            Color_Magnitude9_xaxis_log, &
            Color_Magnitude9_other_yaxis_log, &
            Color_Magnitude9_other_ymin, &
            Color_Magnitude9_other_ymax, &
            Color_Magnitude9_other_dymin, &
            Color_Magnitude9_file_flag, &
            Color_Magnitude9_file_dir, &
            Color_Magnitude9_file_prefix, &
            Color_Magnitude9_file_interval, &
            Color_Magnitude9_file_width, &
            Color_Magnitude9_file_aspect_ratio, &
            Color_Magnitude9_xmargin, &
            Color_Magnitude9_ymargin, &
            Color_Magnitude9_other_ymargin, &
            Color_Magnitude9_use_decorator, &


            Mode_Prop_win_flag, &
            Mode_Prop_file_flag, &
            Mode_Prop_file_interval, &
            Mode_Prop_file_dir, &
            Mode_Prop_file_prefix, &
            Mode_Prop_xaxis_name, &
            Mode_Prop_xaxis_reversed, &
            Mode_Prop_xmin, &
            Mode_Prop_xmax, &
            Mode_Prop_ymin, &
            Mode_Prop_ymax, &
            Mode_Prop_win_width, &
            Mode_Prop_win_aspect_ratio, &
            Mode_Prop_file_width, &
            Mode_Prop_file_aspect_ratio, &
            Mode_Prop_nu_max_obs, &
            Mode_Prop_xleft, &
            Mode_Prop_xright, &
            Mode_Prop_ybot, &
            Mode_Prop_ytop, &
            Mode_Prop_txt_scale, &
            Mode_Prop_title, &
            Mode_Prop_use_decorator, &

            Network_win_flag, &
            Network_file_flag, &
            Network_file_interval, &
            Network_file_dir, &
            Network_file_prefix, &
            Network_nmin, &
            Network_nmax, &
            Network_zmin, &
            Network_zmax, &
            Network_show_mass_fraction, &
            Network_log_mass_frac_min, &
            Network_log_mass_frac_max, &
            Network_show_element_names, &
            Network_win_width, &
            Network_win_aspect_ratio, &
            Network_file_width, &
            Network_file_aspect_ratio, &
            Network_xleft, &
            Network_xright, &
            Network_ybot, &
            Network_ytop, &
            Network_txt_scale, &
            Network_title, &
            Network_use_decorator, &
            Network_show_colorbar, &

            Production_win_flag, &
            Production_file_flag, &
            Production_file_interval, &
            Production_file_dir, &
            Production_file_prefix, &
            Production_amin, &
            Production_amax, &
            Production_ymin, &
            Production_ymax, &
            Production_min_mass, &
            Production_max_mass, &
            Production_min_mass_frac, &
            Production_show_element_names, &
            Production_win_width, &
            Production_win_aspect_ratio, &
            Production_file_width, &
            Production_file_aspect_ratio, &
            Production_xleft, &
            Production_xright, &
            Production_ybot, &
            Production_ytop, &
            Production_txt_scale, &
            Production_title, &
            Production_use_decorator, &

            Summary_Burn_win_flag, &
            Summary_Burn_file_flag, &
            Summary_Burn_file_interval, &
            Summary_Burn_file_dir, &
            Summary_Burn_file_prefix, &
            Summary_Burn_xaxis_name, &
            Summary_Burn_xaxis_reversed, &
            Summary_Burn_xmin, &
            Summary_Burn_xmax, &
            Summary_Burn_win_width, &
            Summary_Burn_win_aspect_ratio, &
            Summary_Burn_file_width, &
            Summary_Burn_file_aspect_ratio, &
            Summary_Burn_xleft, &
            Summary_Burn_xright, &
            Summary_Burn_ybot, &
            Summary_Burn_ytop, &
            Summary_Burn_txt_scale, &
            Summary_Burn_title, &
            Summary_Burn_title_shift, &
            Summary_Burn_use_decorator, &

            Summary_Profile_win_flag, &
            Summary_Profile_file_flag, &
            Summary_Profile_file_interval, &
            Summary_Profile_file_dir, &
            Summary_Profile_file_prefix, &
            Summary_Profile_xaxis_name, &
            Summary_Profile_xaxis_reversed, &
            Summary_Profile_scaled_value, &
            Summary_Profile_xmin, &
            Summary_Profile_xmax, &
            Summary_Profile_win_width, &
            Summary_Profile_win_aspect_ratio, &
            Summary_Profile_file_width, &
            Summary_Profile_file_aspect_ratio, &
            Summary_Profile_xleft, &
            Summary_Profile_xright, &
            Summary_Profile_ybot, &
            Summary_Profile_ytop, &
            Summary_Profile_txt_scale, &
            Summary_Profile_title, &
            Summary_Profile_name, &
            Summary_Profile_legend, &
            Summary_Profile_num_lines, &
            Summary_Profile_use_decorator, &

            Summary_History_win_flag, &
            Summary_History_file_flag, &
            Summary_History_file_interval, &
            Summary_History_file_dir, &
            Summary_History_file_prefix, &
            Summary_History_scaled_value, &
            Summary_History_xmin, &
            Summary_History_xmax, &
            Summary_History_max_width, &
            Summary_History_win_width, &
            Summary_History_win_aspect_ratio, &
            Summary_History_file_width, &
            Summary_History_file_aspect_ratio, &
            Summary_History_xleft, &
            Summary_History_xright, &
            Summary_History_ybot, &
            Summary_History_ytop, &
            Summary_History_txt_scale, &
            Summary_History_title, &
            Summary_History_name, &
            Summary_History_legend, &
            Summary_History_num_lines, &
            Summary_History_use_decorator, &

            Power_win_flag, &
            Power_file_flag, &
            Power_file_interval, &
            Power_file_dir, &
            Power_file_prefix, &
            Power_xaxis_name, &
            Power_xaxis_reversed, &
            Power_legend_max_cnt, &
            Power_legend_txt_scale_factor, &
            Power_xmin, &
            Power_xmax, &
            Power_ymin, &
            Power_ymax, &
            Power_win_width, &
            Power_win_aspect_ratio, &
            Power_file_width, &
            Power_file_aspect_ratio, &
            Power_xleft, &
            Power_xright, &
            Power_ybot, &
            Power_ytop, &
            Power_txt_scale, &
            Power_title, &
            Power_use_decorator, &

            Abundance_win_flag, &
            Abundance_file_flag, &
            Abundance_file_interval, &
            Abundance_file_dir, &
            Abundance_file_prefix, &
            Abundance_num_isos_to_show, &
            num_abundance_line_labels, &
            Abundance_legend_txt_scale_factor, &
            Abundance_line_txt_scale_factor, &
            Abundance_legend_max_cnt, &
            Abundance_which_isos_to_show, &
            Abundance_xaxis_name, &
            Abundance_xaxis_reversed, &
            Abundance_show_photosphere_location, &
            Abundance_xmin, &
            Abundance_xmax, &
            Abundance_log_mass_frac_min, &
            Abundance_log_mass_frac_max, &
            Abundance_use_decorator, &
            Abundance_win_width, &
            Abundance_win_aspect_ratio, &
            Abundance_file_width, &
            Abundance_file_aspect_ratio, &
            Abundance_xleft, &
            Abundance_xright, &
            Abundance_ybot, &
            Abundance_ytop, &
            Abundance_txt_scale, &
            Abundance_title, &
            Abundance_use_decorator, &


            dPg_dnu_win_flag, &
            dPg_dnu_file_flag, &
            dPg_dnu_file_interval, &
            dPg_dnu_step_min, &
            dPg_dnu_step_max, &
            dPg_dnu_file_dir, &
            dPg_dnu_file_prefix, &
            show_dPg_dnu_annotation1, &
            show_dPg_dnu_annotation2, &
            show_dPg_dnu_annotation3, &
            dPg_dnu_fname, &
            dPg_dnu_delta_nu_min, &
            dPg_dnu_delta_nu_max, &
            dPg_dnu_delta_Pg_min, &
            dPg_dnu_delta_Pg_max, &
            dPg_dnu_delta_nu_margin, &
            dPg_dnu_delta_Pg_margin, &
            dPg_dnu_d_delta_nu_min, &
            dPg_dnu_d_delta_Pg_min, &
            dPg_dnu_win_width, &
            dPg_dnu_win_aspect_ratio, &
            dPg_dnu_xleft, &
            dPg_dnu_xright, &
            dPg_dnu_ybot, &
            dPg_dnu_ytop, &
            dPg_dnu_txt_scale, &
            dPg_dnu_file_width, &
            dPg_dnu_file_aspect_ratio, &
            dPg_dnu_title, &
            dPg_dnu_use_decorator, &


            Grid1_win_flag, &
            Grid1_win_width, &
            Grid1_win_aspect_ratio, &
            Grid1_xleft, &
            Grid1_xright, &
            Grid1_ybot, &
            Grid1_ytop, &
            Grid1_title, &
            Grid1_txt_scale_factor, &
            Grid1_num_cols, &
            Grid1_num_rows, &
            Grid1_num_plots, &
            Grid1_plot_name, &
            Grid1_plot_row, &
            Grid1_plot_rowspan, &
            Grid1_plot_col, &
            Grid1_plot_colspan, &
            Grid1_plot_pad_left, &
            Grid1_plot_pad_right, &
            Grid1_plot_pad_top, &
            Grid1_plot_pad_bot, &
            Grid1_file_flag, &
            Grid1_file_dir, &
            Grid1_file_prefix, &
            Grid1_file_interval, &
            Grid1_file_width, &
            Grid1_file_aspect_ratio, &

            Grid2_win_flag, &
            Grid2_win_width, &
            Grid2_win_aspect_ratio, &
            Grid2_xleft, &
            Grid2_xright, &
            Grid2_ybot, &
            Grid2_ytop, &
            Grid2_title, &
            Grid2_txt_scale_factor, &
            Grid2_num_cols, &
            Grid2_num_rows, &
            Grid2_num_plots, &
            Grid2_plot_name, &
            Grid2_plot_row, &
            Grid2_plot_rowspan, &
            Grid2_plot_col, &
            Grid2_plot_colspan, &
            Grid2_plot_pad_left, &
            Grid2_plot_pad_right, &
            Grid2_plot_pad_top, &
            Grid2_plot_pad_bot, &
            Grid2_file_flag, &
            Grid2_file_dir, &
            Grid2_file_prefix, &
            Grid2_file_interval, &
            Grid2_file_width, &
            Grid2_file_aspect_ratio, &

            Grid3_win_flag, &
            Grid3_win_width, &
            Grid3_win_aspect_ratio, &
            Grid3_xleft, &
            Grid3_xright, &
            Grid3_ybot, &
            Grid3_ytop, &
            Grid3_title, &
            Grid3_txt_scale_factor, &
            Grid3_num_cols, &
            Grid3_num_rows, &
            Grid3_num_plots, &
            Grid3_plot_name, &
            Grid3_plot_row, &
            Grid3_plot_rowspan, &
            Grid3_plot_col, &
            Grid3_plot_colspan, &
            Grid3_plot_pad_left, &
            Grid3_plot_pad_right, &
            Grid3_plot_pad_top, &
            Grid3_plot_pad_bot, &
            Grid3_file_flag, &
            Grid3_file_dir, &
            Grid3_file_prefix, &
            Grid3_file_interval, &
            Grid3_file_width, &
            Grid3_file_aspect_ratio, &

            Grid4_win_flag, &
            Grid4_win_width, &
            Grid4_win_aspect_ratio, &
            Grid4_xleft, &
            Grid4_xright, &
            Grid4_ybot, &
            Grid4_ytop, &
            Grid4_title, &
            Grid4_txt_scale_factor, &
            Grid4_num_cols, &
            Grid4_num_rows, &
            Grid4_num_plots, &
            Grid4_plot_name, &
            Grid4_plot_row, &
            Grid4_plot_rowspan, &
            Grid4_plot_col, &
            Grid4_plot_colspan, &
            Grid4_plot_pad_left, &
            Grid4_plot_pad_right, &
            Grid4_plot_pad_top, &
            Grid4_plot_pad_bot, &
            Grid4_file_flag, &
            Grid4_file_dir, &
            Grid4_file_prefix, &
            Grid4_file_interval, &
            Grid4_file_width, &
            Grid4_file_aspect_ratio, &

            Grid5_win_flag, &
            Grid5_win_width, &
            Grid5_win_aspect_ratio, &
            Grid5_xleft, &
            Grid5_xright, &
            Grid5_ybot, &
            Grid5_ytop, &
            Grid5_title, &
            Grid5_txt_scale_factor, &
            Grid5_num_cols, &
            Grid5_num_rows, &
            Grid5_num_plots, &
            Grid5_plot_name, &
            Grid5_plot_row, &
            Grid5_plot_rowspan, &
            Grid5_plot_col, &
            Grid5_plot_colspan, &
            Grid5_plot_pad_left, &
            Grid5_plot_pad_right, &
            Grid5_plot_pad_top, &
            Grid5_plot_pad_bot, &
            Grid5_file_flag, &
            Grid5_file_dir, &
            Grid5_file_prefix, &
            Grid5_file_interval, &
            Grid5_file_width, &
            Grid5_file_aspect_ratio, &

            Grid6_win_flag, &
            Grid6_win_width, &
            Grid6_win_aspect_ratio, &
            Grid6_xleft, &
            Grid6_xright, &
            Grid6_ybot, &
            Grid6_ytop, &
            Grid6_title, &
            Grid6_txt_scale_factor, &
            Grid6_num_cols, &
            Grid6_num_rows, &
            Grid6_num_plots, &
            Grid6_plot_name, &
            Grid6_plot_row, &
            Grid6_plot_rowspan, &
            Grid6_plot_col, &
            Grid6_plot_colspan, &
            Grid6_plot_pad_left, &
            Grid6_plot_pad_right, &
            Grid6_plot_pad_top, &
            Grid6_plot_pad_bot, &
            Grid6_file_flag, &
            Grid6_file_dir, &
            Grid6_file_prefix, &
            Grid6_file_interval, &
            Grid6_file_width, &
            Grid6_file_aspect_ratio, &

            Grid7_win_flag, &
            Grid7_win_width, &
            Grid7_win_aspect_ratio, &
            Grid7_xleft, &
            Grid7_xright, &
            Grid7_ybot, &
            Grid7_ytop, &
            Grid7_title, &
            Grid7_txt_scale_factor, &
            Grid7_num_cols, &
            Grid7_num_rows, &
            Grid7_num_plots, &
            Grid7_plot_name, &
            Grid7_plot_row, &
            Grid7_plot_rowspan, &
            Grid7_plot_col, &
            Grid7_plot_colspan, &
            Grid7_plot_pad_left, &
            Grid7_plot_pad_right, &
            Grid7_plot_pad_top, &
            Grid7_plot_pad_bot, &
            Grid7_file_flag, &
            Grid7_file_dir, &
            Grid7_file_prefix, &
            Grid7_file_interval, &
            Grid7_file_width, &
            Grid7_file_aspect_ratio, &

            Grid8_win_flag, &
            Grid8_win_width, &
            Grid8_win_aspect_ratio, &
            Grid8_xleft, &
            Grid8_xright, &
            Grid8_ybot, &
            Grid8_ytop, &
            Grid8_title, &
            Grid8_txt_scale_factor, &
            Grid8_num_cols, &
            Grid8_num_rows, &
            Grid8_num_plots, &
            Grid8_plot_name, &
            Grid8_plot_row, &
            Grid8_plot_rowspan, &
            Grid8_plot_col, &
            Grid8_plot_colspan, &
            Grid8_plot_pad_left, &
            Grid8_plot_pad_right, &
            Grid8_plot_pad_top, &
            Grid8_plot_pad_bot, &
            Grid8_file_flag, &
            Grid8_file_dir, &
            Grid8_file_prefix, &
            Grid8_file_interval, &
            Grid8_file_width, &
            Grid8_file_aspect_ratio, &

            Grid9_win_flag, &
            Grid9_win_width, &
            Grid9_win_aspect_ratio, &
            Grid9_xleft, &
            Grid9_xright, &
            Grid9_ybot, &
            Grid9_ytop, &
            Grid9_title, &
            Grid9_txt_scale_factor, &
            Grid9_num_cols, &
            Grid9_num_rows, &
            Grid9_num_plots, &
            Grid9_plot_name, &
            Grid9_plot_row, &
            Grid9_plot_rowspan, &
            Grid9_plot_col, &
            Grid9_plot_colspan, &
            Grid9_plot_pad_left, &
            Grid9_plot_pad_right, &
            Grid9_plot_pad_top, &
            Grid9_plot_pad_bot, &
            Grid9_file_flag, &
            Grid9_file_dir, &
            Grid9_file_prefix, &
            Grid9_file_interval, &
            Grid9_file_width, &
            Grid9_file_aspect_ratio, &


            annotation1_ci, &
            annotation1_ch, &
            annotation1_lw, &
            annotation1_cf, &
            annotation1_text, &
            annotation1_side, &
            annotation1_disp, &
            annotation1_coord, &
            annotation1_fjust, &

            annotation2_ci, &
            annotation2_ch, &
            annotation2_lw, &
            annotation2_cf, &
            annotation2_text, &
            annotation2_side, &
            annotation2_disp, &
            annotation2_coord, &
            annotation2_fjust, &

            annotation3_ci, &
            annotation3_ch, &
            annotation3_lw, &
            annotation3_cf, &
            annotation3_text, &
            annotation3_side, &
            annotation3_disp, &
            annotation3_coord, &
            annotation3_fjust, &

            read_extra_pgstar_inlist, &
            extra_pgstar_inlist_name

      contains

      subroutine read_pgstar(s, filename, ierr)
         use star_private_def
         use utils_lib
         type (star_info), pointer :: s
         character(*), intent(in) :: filename
         integer, intent(out) :: ierr
         character (len=strlen) :: pgstar_namelist_name
         pgstar_namelist_name = ''
         ierr = 0
         call set_default_pgstar_controls
         call read_pgstar_file(s, filename, 1, ierr)
      end subroutine read_pgstar


      recursive subroutine read_pgstar_file(s, filename, level, ierr)
         use star_private_def
         use utils_lib
         character(*), intent(in) :: filename
         type (star_info), pointer :: s
         integer, intent(in) :: level
         integer, intent(out) :: ierr
         logical, dimension(max_extra_inlists) :: read_extra
         character (len=strlen), dimension(max_extra_inlists) :: extra
         integer :: unit, i

         ierr = 0

         if (level >= 10) then
            write(*,*) 'ERROR: too many levels of nested extra pgstar inlist files'
            ierr = -1
            return
         end if

         if (len_trim(filename) > 0) then
            open(newunit=unit, file=trim(filename), action='read', delim='quote', status='old', iostat=ierr)
            if (ierr /= 0) then
               write(*, *) 'Failed to open pgstar namelist file ', trim(filename)
               return
            end if
            read(unit, nml=pgstar, iostat=ierr)
            close(unit)
            if (ierr /= 0) then
               write(*, *)
               write(*, *)
               write(*, *)
               write(*, *)
               write(*, '(a)') &
                  'Failed while trying to read pgstar namelist file: ' // trim(filename)
               write(*, '(a)') &
                  'Perhaps the following runtime error message will help you find the problem.'
               write(*, *)
               open(newunit=unit, file=trim(filename), action='read', delim='quote', status='old', iostat=ierr)
               read(unit, nml=pgstar)
               close(unit)
               return
            end if
         end if

         call store_pgstar_controls(s, ierr)

         ! recursive calls to read other inlists
         do i=1, max_extra_inlists
            read_extra(i) = read_extra_pgstar_inlist(i)
            read_extra_pgstar_inlist(i) = .false.
            extra(i) = extra_pgstar_inlist_name(i)
            extra_pgstar_inlist_name(i) = 'undefined'

            if (read_extra(i)) then
               call read_pgstar_file(s, extra(i), level+1, ierr)
               if (ierr /= 0) return
            end if
         end do

      end subroutine read_pgstar_file


      subroutine store_pgstar_controls(s, ierr)
         use star_private_def
         type (star_info), pointer :: s
         integer, intent(out) :: ierr

         ierr = 0

         s% pg% file_device = file_device
         s% pg% file_digits = file_digits
         s% pg% pgstar_interval = pgstar_interval
         s% pg% pause_flag = pause_flag
         s% pg% pause_interval = pause_interval
         s% pg% pgstar_sleep = pgstar_sleep
         s% pg% clear_history = clear_history

         s% pg% file_white_on_black_flag = file_white_on_black_flag
         s% pg% delta_HR_limit_for_file_output = delta_HR_limit_for_file_output
         s% pg% win_white_on_black_flag = win_white_on_black_flag
         s% pg% pgstar_show_model_number = pgstar_show_model_number
         s% pg% pgstar_show_age = pgstar_show_age
         s% pg% pgstar_show_age_in_seconds = pgstar_show_age_in_seconds
         s% pg% pgstar_show_age_in_minutes = pgstar_show_age_in_minutes
         s% pg% pgstar_show_age_in_hours = pgstar_show_age_in_hours
         s% pg% pgstar_show_age_in_days = pgstar_show_age_in_days
         s% pg% pgstar_show_age_in_years = pgstar_show_age_in_years
         s% pg% pgstar_show_log_age_in_years = pgstar_show_log_age_in_years

         s% pg% pgstar_report_writing_files = pgstar_report_writing_files

         s% pg% pgstar_show_title = pgstar_show_title
         s% pg% pgstar_title_scale = pgstar_title_scale
         s% pg% pgstar_title_disp = pgstar_title_disp
         s% pg% pgstar_title_coord = pgstar_title_coord
         s% pg% pgstar_title_fjust = pgstar_title_fjust
         s% pg% pgstar_title_lw = pgstar_title_lw

         s% pg% pgstar_grid_show_title = pgstar_grid_show_title
         s% pg% pgstar_grid_title_scale = pgstar_grid_title_scale
         s% pg% pgstar_grid_title_disp = pgstar_grid_title_disp
         s% pg% pgstar_grid_title_coord = pgstar_grid_title_coord
         s% pg% pgstar_grid_title_fjust = pgstar_grid_title_fjust
         s% pg% pgstar_grid_title_lw = pgstar_grid_title_lw

         s% pg% pgstar_age_scale = pgstar_age_scale
         s% pg% pgstar_age_disp = pgstar_age_disp
         s% pg% pgstar_age_coord = pgstar_age_coord
         s% pg% pgstar_age_fjust = pgstar_age_fjust
         s% pg% pgstar_age_lw = pgstar_age_lw

         s% pg% pgstar_model_scale = pgstar_model_scale
         s% pg% pgstar_model_disp = pgstar_model_disp
         s% pg% pgstar_model_coord = pgstar_model_coord
         s% pg% pgstar_model_fjust = pgstar_model_fjust
         s% pg% pgstar_model_lw = pgstar_model_lw

         s% pg% pgstar_xaxis_label_scale = pgstar_xaxis_label_scale
         s% pg% pgstar_left_yaxis_label_scale = pgstar_left_yaxis_label_scale
         s% pg% pgstar_right_yaxis_label_scale = pgstar_right_yaxis_label_scale
         s% pg% pgstar_xaxis_label_lw = pgstar_xaxis_label_lw
         s% pg% pgstar_left_yaxis_label_lw = pgstar_left_yaxis_label_lw
         s% pg% pgstar_right_yaxis_label_lw = pgstar_right_yaxis_label_lw
         s% pg% pgstar_xaxis_label_disp = pgstar_xaxis_label_disp
         s% pg% pgstar_left_yaxis_label_disp = pgstar_left_yaxis_label_disp
         s% pg% pgstar_right_yaxis_label_disp = pgstar_right_yaxis_label_disp
         s% pg% pgstar_num_scale = pgstar_num_scale
         s% pg% pgstar_lw = pgstar_lw
         s% pg% pgstar_profile_line_style = pgstar_profile_line_style
         s% pg% pgstar_history_line_style = pgstar_history_line_style
         s% pg% pgstar_model_lw = pgstar_model_lw
         s% pg% pgstar_box_lw = pgstar_box_lw

         s% pg% Profile_Panels_show_Mach_1_location = &
            Profile_Panels_show_Mach_1_location
         s% pg% Profile_Panels_show_photosphere_location = &
            Profile_Panels_show_photosphere_location
         s% pg% Profile_Panels_xwidth_left_div_shock_value = &
            Profile_Panels_xwidth_left_div_shock_value
         s% pg% Profile_Panels_xwidth_right_div_shock_value = &
            Profile_Panels_xwidth_right_div_shock_value
         s% pg% Profile_Panels_xwidth_left_of_shock = &
            Profile_Panels_xwidth_left_of_shock
         s% pg% Profile_Panels_xwidth_right_of_shock = &
            Profile_Panels_xwidth_right_of_shock

         s% pg% Profile_Panels1_win_flag = Profile_Panels1_win_flag
         s% pg% Profile_Panels1_file_flag = Profile_Panels1_file_flag
         s% pg% do_Profile_Panels1_win = do_Profile_Panels1_win
         s% pg% do_Profile_Panels1_file = do_Profile_Panels1_file
         s% pg% id_Profile_Panels1_win = id_Profile_Panels1_win
         s% pg% id_Profile_Panels1_file = id_Profile_Panels1_file
         s% pg% Profile_Panels1_file_interval = Profile_Panels1_file_interval
         s% pg% Profile_Panels1_file_dir = Profile_Panels1_file_dir
         s% pg% Profile_Panels1_file_prefix = Profile_Panels1_file_prefix
         s% pg% Profile_Panels1_xaxis_reversed = Profile_Panels1_xaxis_reversed
         s% pg% Profile_Panels1_xaxis_name = Profile_Panels1_xaxis_name
         s% pg% Profile_Panels1_title = Profile_Panels1_title
         s% pg% Profile_Panels1_xmin = Profile_Panels1_xmin
         s% pg% Profile_Panels1_xmax = Profile_Panels1_xmax
         s% pg% Profile_Panels1_xmargin = Profile_Panels1_xmargin
         s% pg% Profile_Panels1_show_mix_regions_on_xaxis = &
            Profile_Panels1_show_mix_regions_on_xaxis
         s% pg% Profile_Panels1_win_width = Profile_Panels1_win_width
         s% pg% Profile_Panels1_win_aspect_ratio = Profile_Panels1_win_aspect_ratio
         s% pg% Profile_Panels1_xleft = Profile_Panels1_xleft
         s% pg% Profile_Panels1_xright = Profile_Panels1_xright
         s% pg% Profile_Panels1_ybot = Profile_Panels1_ybot
         s% pg% Profile_Panels1_ytop = Profile_Panels1_ytop
         s% pg% Profile_Panels1_txt_scale = Profile_Panels1_txt_scale
         s% pg% prev_Profile_Panels1_win_width = prev_Profile_Panels1_win_width
         s% pg% prev_Profile_Panels1_win_ratio = prev_Profile_Panels1_win_ratio
         s% pg% Profile_Panels1_file_width = Profile_Panels1_file_width
         s% pg% Profile_Panels1_file_aspect_ratio = Profile_Panels1_file_aspect_ratio
         s% pg% prev_Profile_Panels1_file_width = prev_Profile_Panels1_file_width
         s% pg% prev_Profile_Panels1_file_ratio = prev_Profile_Panels1_file_ratio
         s% pg% Profile_Panels1_num_panels = Profile_Panels1_num_panels
         s% pg% Profile_Panels1_yaxis_name = Profile_Panels1_yaxis_name
         s% pg% Profile_Panels1_other_yaxis_name = Profile_Panels1_other_yaxis_name
         s% pg% Profile_Panels1_yaxis_reversed = Profile_Panels1_yaxis_reversed
         s% pg% Profile_Panels1_other_yaxis_reversed = Profile_Panels1_other_yaxis_reversed
         s% pg% Profile_Panels1_yaxis_log = Profile_Panels1_yaxis_log
         s% pg% Profile_Panels1_other_yaxis_log = Profile_Panels1_other_yaxis_log
         s% pg% Profile_Panels1_same_yaxis_range = Profile_Panels1_same_yaxis_range
         s% pg% Profile_Panels1_ymin = Profile_Panels1_ymin
         s% pg% Profile_Panels1_other_ymin = Profile_Panels1_other_ymin
         s% pg% Profile_Panels1_ymax = Profile_Panels1_ymax
         s% pg% Profile_Panels1_other_ymax = Profile_Panels1_other_ymax
         s% pg% Profile_Panels1_ycenter = Profile_Panels1_ycenter
         s% pg% Profile_Panels1_other_ycenter = Profile_Panels1_other_ycenter
         s% pg% Profile_Panels1_ymargin = Profile_Panels1_ymargin
         s% pg% Profile_Panels1_other_ymargin = Profile_Panels1_other_ymargin
         s% pg% Profile_Panels1_dymin = Profile_Panels1_dymin
         s% pg% Profile_Panels1_other_dymin = Profile_Panels1_other_dymin
         s% pg% Profile_Panels1_show_grid = Profile_Panels1_show_grid
         s% pg% Profile_Panels1_use_decorator = Profile_Panels1_use_decorator

         s% pg% Profile_Panels2_win_flag = Profile_Panels2_win_flag
         s% pg% Profile_Panels2_file_flag = Profile_Panels2_file_flag
         s% pg% do_Profile_Panels2_win = do_Profile_Panels2_win
         s% pg% do_Profile_Panels2_file = do_Profile_Panels2_file
         s% pg% id_Profile_Panels2_win = id_Profile_Panels2_win
         s% pg% id_Profile_Panels2_file = id_Profile_Panels2_file
         s% pg% Profile_Panels2_file_interval = Profile_Panels2_file_interval
         s% pg% Profile_Panels2_file_dir = Profile_Panels2_file_dir
         s% pg% Profile_Panels2_file_prefix = Profile_Panels2_file_prefix
         s% pg% Profile_Panels2_xaxis_reversed = Profile_Panels2_xaxis_reversed
         s% pg% Profile_Panels2_xaxis_name = Profile_Panels2_xaxis_name
         s% pg% Profile_Panels2_title = Profile_Panels2_title
         s% pg% Profile_Panels2_xmin = Profile_Panels2_xmin
         s% pg% Profile_Panels2_xmax = Profile_Panels2_xmax
         s% pg% Profile_Panels2_xmargin = Profile_Panels2_xmargin
         s% pg% Profile_Panels2_show_mix_regions_on_xaxis = Profile_Panels2_show_mix_regions_on_xaxis
         s% pg% Profile_Panels2_win_width = Profile_Panels2_win_width
         s% pg% Profile_Panels2_win_aspect_ratio = Profile_Panels2_win_aspect_ratio
         s% pg% Profile_Panels2_xleft = Profile_Panels2_xleft
         s% pg% Profile_Panels2_xright = Profile_Panels2_xright
         s% pg% Profile_Panels2_ybot = Profile_Panels2_ybot
         s% pg% Profile_Panels2_ytop = Profile_Panels2_ytop
         s% pg% Profile_Panels2_txt_scale = Profile_Panels2_txt_scale
         s% pg% prev_Profile_Panels2_win_width = prev_Profile_Panels2_win_width
         s% pg% prev_Profile_Panels2_win_ratio = prev_Profile_Panels2_win_ratio
         s% pg% Profile_Panels2_file_width = Profile_Panels2_file_width
         s% pg% Profile_Panels2_file_aspect_ratio = Profile_Panels2_file_aspect_ratio
         s% pg% prev_Profile_Panels2_file_width = prev_Profile_Panels2_file_width
         s% pg% prev_Profile_Panels2_file_ratio = prev_Profile_Panels2_file_ratio
         s% pg% Profile_Panels2_num_panels = Profile_Panels2_num_panels
         s% pg% Profile_Panels2_yaxis_name = Profile_Panels2_yaxis_name
         s% pg% Profile_Panels2_other_yaxis_name = Profile_Panels2_other_yaxis_name
         s% pg% Profile_Panels2_yaxis_reversed = Profile_Panels2_yaxis_reversed
         s% pg% Profile_Panels2_other_yaxis_reversed = Profile_Panels2_other_yaxis_reversed
         s% pg% Profile_Panels2_yaxis_log = Profile_Panels2_yaxis_log
         s% pg% Profile_Panels2_other_yaxis_log = Profile_Panels2_other_yaxis_log
         s% pg% Profile_Panels2_same_yaxis_range = Profile_Panels2_same_yaxis_range
         s% pg% Profile_Panels2_ymin = Profile_Panels2_ymin
         s% pg% Profile_Panels2_other_ymin = Profile_Panels2_other_ymin
         s% pg% Profile_Panels2_ymax = Profile_Panels2_ymax
         s% pg% Profile_Panels2_other_ymax = Profile_Panels2_other_ymax
         s% pg% Profile_Panels2_ycenter = Profile_Panels2_ycenter
         s% pg% Profile_Panels2_other_ycenter = Profile_Panels2_other_ycenter
         s% pg% Profile_Panels2_ymargin = Profile_Panels2_ymargin
         s% pg% Profile_Panels2_other_ymargin = Profile_Panels2_other_ymargin
         s% pg% Profile_Panels2_dymin = Profile_Panels2_dymin
         s% pg% Profile_Panels2_other_dymin = Profile_Panels2_other_dymin
         s% pg% Profile_Panels2_show_grid = Profile_Panels2_show_grid
         s% pg% Profile_Panels2_use_decorator = Profile_Panels2_use_decorator

         s% pg% Profile_Panels3_win_flag = Profile_Panels3_win_flag
         s% pg% Profile_Panels3_file_flag = Profile_Panels3_file_flag
         s% pg% do_Profile_Panels3_win = do_Profile_Panels3_win
         s% pg% do_Profile_Panels3_file = do_Profile_Panels3_file
         s% pg% id_Profile_Panels3_win = id_Profile_Panels3_win
         s% pg% id_Profile_Panels3_file = id_Profile_Panels3_file
         s% pg% Profile_Panels3_file_interval = Profile_Panels3_file_interval
         s% pg% Profile_Panels3_file_dir = Profile_Panels3_file_dir
         s% pg% Profile_Panels3_file_prefix = Profile_Panels3_file_prefix
         s% pg% Profile_Panels3_xaxis_reversed = Profile_Panels3_xaxis_reversed
         s% pg% Profile_Panels3_xaxis_name = Profile_Panels3_xaxis_name
         s% pg% Profile_Panels3_title = Profile_Panels3_title
         s% pg% Profile_Panels3_xmin = Profile_Panels3_xmin
         s% pg% Profile_Panels3_xmargin = Profile_Panels3_xmargin
         s% pg% Profile_Panels3_show_mix_regions_on_xaxis = Profile_Panels3_show_mix_regions_on_xaxis
         s% pg% Profile_Panels3_xmax = Profile_Panels3_xmax
         s% pg% Profile_Panels3_win_width = Profile_Panels3_win_width
         s% pg% Profile_Panels3_win_aspect_ratio = Profile_Panels3_win_aspect_ratio
         s% pg% Profile_Panels3_xleft = Profile_Panels3_xleft
         s% pg% Profile_Panels3_xright = Profile_Panels3_xright
         s% pg% Profile_Panels3_ybot = Profile_Panels3_ybot
         s% pg% Profile_Panels3_ytop = Profile_Panels3_ytop
         s% pg% Profile_Panels3_txt_scale = Profile_Panels3_txt_scale
         s% pg% prev_Profile_Panels3_win_width = prev_Profile_Panels3_win_width
         s% pg% prev_Profile_Panels3_win_ratio = prev_Profile_Panels3_win_ratio
         s% pg% Profile_Panels3_file_width = Profile_Panels3_file_width
         s% pg% Profile_Panels3_file_aspect_ratio = Profile_Panels3_file_aspect_ratio
         s% pg% prev_Profile_Panels3_file_width = prev_Profile_Panels3_file_width
         s% pg% prev_Profile_Panels3_file_ratio = prev_Profile_Panels3_file_ratio
         s% pg% Profile_Panels3_num_panels = Profile_Panels3_num_panels
         s% pg% Profile_Panels3_yaxis_name = Profile_Panels3_yaxis_name
         s% pg% Profile_Panels3_other_yaxis_name = Profile_Panels3_other_yaxis_name
         s% pg% Profile_Panels3_yaxis_reversed = Profile_Panels3_yaxis_reversed
         s% pg% Profile_Panels3_other_yaxis_reversed = Profile_Panels3_other_yaxis_reversed
         s% pg% Profile_Panels3_yaxis_log = Profile_Panels3_yaxis_log
         s% pg% Profile_Panels3_other_yaxis_log = Profile_Panels3_other_yaxis_log
         s% pg% Profile_Panels3_same_yaxis_range = Profile_Panels3_same_yaxis_range
         s% pg% Profile_Panels3_ymin = Profile_Panels3_ymin
         s% pg% Profile_Panels3_other_ymin = Profile_Panels3_other_ymin
         s% pg% Profile_Panels3_ymax = Profile_Panels3_ymax
         s% pg% Profile_Panels3_other_ymax = Profile_Panels3_other_ymax
         s% pg% Profile_Panels3_ycenter = Profile_Panels3_ycenter
         s% pg% Profile_Panels3_other_ycenter = Profile_Panels3_other_ycenter
         s% pg% Profile_Panels3_ymargin = Profile_Panels3_ymargin
         s% pg% Profile_Panels3_other_ymargin = Profile_Panels3_other_ymargin
         s% pg% Profile_Panels3_dymin = Profile_Panels3_dymin
         s% pg% Profile_Panels3_other_dymin = Profile_Panels3_other_dymin
         s% pg% Profile_Panels3_show_grid = Profile_Panels3_show_grid
         s% pg% Profile_Panels3_use_decorator = Profile_Panels3_use_decorator

         s% pg% Profile_Panels4_win_flag = Profile_Panels4_win_flag
         s% pg% Profile_Panels4_file_flag = Profile_Panels4_file_flag
         s% pg% do_Profile_Panels4_win = do_Profile_Panels4_win
         s% pg% do_Profile_Panels4_file = do_Profile_Panels4_file
         s% pg% id_Profile_Panels4_win = id_Profile_Panels4_win
         s% pg% id_Profile_Panels4_file = id_Profile_Panels4_file
         s% pg% Profile_Panels4_file_interval = Profile_Panels4_file_interval
         s% pg% Profile_Panels4_file_dir = Profile_Panels4_file_dir
         s% pg% Profile_Panels4_file_prefix = Profile_Panels4_file_prefix
         s% pg% Profile_Panels4_xaxis_reversed = Profile_Panels4_xaxis_reversed
         s% pg% Profile_Panels4_xaxis_name = Profile_Panels4_xaxis_name
         s% pg% Profile_Panels4_title = Profile_Panels4_title
         s% pg% Profile_Panels4_xmin = Profile_Panels4_xmin
         s% pg% Profile_Panels4_xmax = Profile_Panels4_xmax
         s% pg% Profile_Panels4_xmargin = Profile_Panels4_xmargin
         s% pg% Profile_Panels4_show_mix_regions_on_xaxis = Profile_Panels4_show_mix_regions_on_xaxis
         s% pg% Profile_Panels4_win_width = Profile_Panels4_win_width
         s% pg% Profile_Panels4_win_aspect_ratio = Profile_Panels4_win_aspect_ratio
         s% pg% Profile_Panels4_xleft = Profile_Panels4_xleft
         s% pg% Profile_Panels4_xright = Profile_Panels4_xright
         s% pg% Profile_Panels4_ybot = Profile_Panels4_ybot
         s% pg% Profile_Panels4_ytop = Profile_Panels4_ytop
         s% pg% Profile_Panels4_txt_scale = Profile_Panels4_txt_scale
         s% pg% prev_Profile_Panels4_win_width = prev_Profile_Panels4_win_width
         s% pg% prev_Profile_Panels4_win_ratio = prev_Profile_Panels4_win_ratio
         s% pg% Profile_Panels4_file_width = Profile_Panels4_file_width
         s% pg% Profile_Panels4_file_aspect_ratio = Profile_Panels4_file_aspect_ratio
         s% pg% prev_Profile_Panels4_file_width = prev_Profile_Panels4_file_width
         s% pg% prev_Profile_Panels4_file_ratio = prev_Profile_Panels4_file_ratio
         s% pg% Profile_Panels4_num_panels = Profile_Panels4_num_panels
         s% pg% Profile_Panels4_yaxis_name = Profile_Panels4_yaxis_name
         s% pg% Profile_Panels4_other_yaxis_name = Profile_Panels4_other_yaxis_name
         s% pg% Profile_Panels4_yaxis_reversed = Profile_Panels4_yaxis_reversed
         s% pg% Profile_Panels4_other_yaxis_reversed = Profile_Panels4_other_yaxis_reversed
         s% pg% Profile_Panels4_yaxis_log = Profile_Panels4_yaxis_log
         s% pg% Profile_Panels4_other_yaxis_log = Profile_Panels4_other_yaxis_log
         s% pg% Profile_Panels4_same_yaxis_range = Profile_Panels4_same_yaxis_range
         s% pg% Profile_Panels4_ymin = Profile_Panels4_ymin
         s% pg% Profile_Panels4_other_ymin = Profile_Panels4_other_ymin
         s% pg% Profile_Panels4_ymax = Profile_Panels4_ymax
         s% pg% Profile_Panels4_other_ymax = Profile_Panels4_other_ymax
         s% pg% Profile_Panels4_ycenter = Profile_Panels4_ycenter
         s% pg% Profile_Panels4_other_ycenter = Profile_Panels4_other_ycenter
         s% pg% Profile_Panels4_ymargin = Profile_Panels4_ymargin
         s% pg% Profile_Panels4_other_ymargin = Profile_Panels4_other_ymargin
         s% pg% Profile_Panels4_dymin = Profile_Panels4_dymin
         s% pg% Profile_Panels4_other_dymin = Profile_Panels4_other_dymin
         s% pg% Profile_Panels4_show_grid = Profile_Panels4_show_grid
         s% pg% Profile_Panels4_use_decorator = Profile_Panels4_use_decorator

         s% pg% Profile_Panels5_win_flag = Profile_Panels5_win_flag
         s% pg% Profile_Panels5_file_flag = Profile_Panels5_file_flag
         s% pg% do_Profile_Panels5_win = do_Profile_Panels5_win
         s% pg% do_Profile_Panels5_file = do_Profile_Panels5_file
         s% pg% id_Profile_Panels5_win = id_Profile_Panels5_win
         s% pg% id_Profile_Panels5_file = id_Profile_Panels5_file
         s% pg% Profile_Panels5_file_interval = Profile_Panels5_file_interval
         s% pg% Profile_Panels5_file_dir = Profile_Panels5_file_dir
         s% pg% Profile_Panels5_file_prefix = Profile_Panels5_file_prefix
         s% pg% Profile_Panels5_xaxis_reversed = Profile_Panels5_xaxis_reversed
         s% pg% Profile_Panels5_xaxis_name = Profile_Panels5_xaxis_name
         s% pg% Profile_Panels5_title = Profile_Panels5_title
         s% pg% Profile_Panels5_xmin = Profile_Panels5_xmin
         s% pg% Profile_Panels5_xmax = Profile_Panels5_xmax
         s% pg% Profile_Panels5_xmargin = Profile_Panels5_xmargin
         s% pg% Profile_Panels5_show_mix_regions_on_xaxis = Profile_Panels5_show_mix_regions_on_xaxis
         s% pg% Profile_Panels5_win_width = Profile_Panels5_win_width
         s% pg% Profile_Panels5_win_aspect_ratio = Profile_Panels5_win_aspect_ratio
         s% pg% Profile_Panels5_xleft = Profile_Panels5_xleft
         s% pg% Profile_Panels5_xright = Profile_Panels5_xright
         s% pg% Profile_Panels5_ybot = Profile_Panels5_ybot
         s% pg% Profile_Panels5_ytop = Profile_Panels5_ytop
         s% pg% Profile_Panels5_txt_scale = Profile_Panels5_txt_scale
         s% pg% prev_Profile_Panels5_win_width = prev_Profile_Panels5_win_width
         s% pg% prev_Profile_Panels5_win_ratio = prev_Profile_Panels5_win_ratio
         s% pg% Profile_Panels5_file_width = Profile_Panels5_file_width
         s% pg% Profile_Panels5_file_aspect_ratio = Profile_Panels5_file_aspect_ratio
         s% pg% prev_Profile_Panels5_file_width = prev_Profile_Panels5_file_width
         s% pg% prev_Profile_Panels5_file_ratio = prev_Profile_Panels5_file_ratio
         s% pg% Profile_Panels5_num_panels = Profile_Panels5_num_panels
         s% pg% Profile_Panels5_yaxis_name = Profile_Panels5_yaxis_name
         s% pg% Profile_Panels5_other_yaxis_name = Profile_Panels5_other_yaxis_name
         s% pg% Profile_Panels5_yaxis_reversed = Profile_Panels5_yaxis_reversed
         s% pg% Profile_Panels5_other_yaxis_reversed = Profile_Panels5_other_yaxis_reversed
         s% pg% Profile_Panels5_yaxis_log = Profile_Panels5_yaxis_log
         s% pg% Profile_Panels5_other_yaxis_log = Profile_Panels5_other_yaxis_log
         s% pg% Profile_Panels5_same_yaxis_range = Profile_Panels5_same_yaxis_range
         s% pg% Profile_Panels5_ymin = Profile_Panels5_ymin
         s% pg% Profile_Panels5_other_ymin = Profile_Panels5_other_ymin
         s% pg% Profile_Panels5_ymax = Profile_Panels5_ymax
         s% pg% Profile_Panels5_other_ymax = Profile_Panels5_other_ymax
         s% pg% Profile_Panels5_ycenter = Profile_Panels5_ycenter
         s% pg% Profile_Panels5_other_ycenter = Profile_Panels5_other_ycenter
         s% pg% Profile_Panels5_ymargin = Profile_Panels5_ymargin
         s% pg% Profile_Panels5_other_ymargin = Profile_Panels5_other_ymargin
         s% pg% Profile_Panels5_dymin = Profile_Panels5_dymin
         s% pg% Profile_Panels5_other_dymin = Profile_Panels5_other_dymin
         s% pg% Profile_Panels5_show_grid = Profile_Panels5_show_grid
         s% pg% Profile_Panels5_use_decorator = Profile_Panels5_use_decorator

         s% pg% Profile_Panels6_win_flag = Profile_Panels6_win_flag
         s% pg% Profile_Panels6_file_flag = Profile_Panels6_file_flag
         s% pg% do_Profile_Panels6_win = do_Profile_Panels6_win
         s% pg% do_Profile_Panels6_file = do_Profile_Panels6_file
         s% pg% id_Profile_Panels6_win = id_Profile_Panels6_win
         s% pg% id_Profile_Panels6_file = id_Profile_Panels6_file
         s% pg% Profile_Panels6_file_interval = Profile_Panels6_file_interval
         s% pg% Profile_Panels6_file_dir = Profile_Panels6_file_dir
         s% pg% Profile_Panels6_file_prefix = Profile_Panels6_file_prefix
         s% pg% Profile_Panels6_xaxis_reversed = Profile_Panels6_xaxis_reversed
         s% pg% Profile_Panels6_xaxis_name = Profile_Panels6_xaxis_name
         s% pg% Profile_Panels6_title = Profile_Panels6_title
         s% pg% Profile_Panels6_xmin = Profile_Panels6_xmin
         s% pg% Profile_Panels6_xmax = Profile_Panels6_xmax
         s% pg% Profile_Panels6_xmargin = Profile_Panels6_xmargin
         s% pg% Profile_Panels6_show_mix_regions_on_xaxis = Profile_Panels6_show_mix_regions_on_xaxis
         s% pg% Profile_Panels6_win_width = Profile_Panels6_win_width
         s% pg% Profile_Panels6_win_aspect_ratio = Profile_Panels6_win_aspect_ratio
         s% pg% Profile_Panels6_xleft = Profile_Panels6_xleft
         s% pg% Profile_Panels6_xright = Profile_Panels6_xright
         s% pg% Profile_Panels6_ybot = Profile_Panels6_ybot
         s% pg% Profile_Panels6_ytop = Profile_Panels6_ytop
         s% pg% Profile_Panels6_txt_scale = Profile_Panels6_txt_scale
         s% pg% prev_Profile_Panels6_win_width = prev_Profile_Panels6_win_width
         s% pg% prev_Profile_Panels6_win_ratio = prev_Profile_Panels6_win_ratio
         s% pg% Profile_Panels6_file_width = Profile_Panels6_file_width
         s% pg% Profile_Panels6_file_aspect_ratio = Profile_Panels6_file_aspect_ratio
         s% pg% prev_Profile_Panels6_file_width = prev_Profile_Panels6_file_width
         s% pg% prev_Profile_Panels6_file_ratio = prev_Profile_Panels6_file_ratio
         s% pg% Profile_Panels6_num_panels = Profile_Panels6_num_panels
         s% pg% Profile_Panels6_yaxis_name = Profile_Panels6_yaxis_name
         s% pg% Profile_Panels6_other_yaxis_name = Profile_Panels6_other_yaxis_name
         s% pg% Profile_Panels6_yaxis_reversed = Profile_Panels6_yaxis_reversed
         s% pg% Profile_Panels6_other_yaxis_reversed = Profile_Panels6_other_yaxis_reversed
         s% pg% Profile_Panels6_yaxis_log = Profile_Panels6_yaxis_log
         s% pg% Profile_Panels6_other_yaxis_log = Profile_Panels6_other_yaxis_log
         s% pg% Profile_Panels6_same_yaxis_range = Profile_Panels6_same_yaxis_range
         s% pg% Profile_Panels6_ymin = Profile_Panels6_ymin
         s% pg% Profile_Panels6_other_ymin = Profile_Panels6_other_ymin
         s% pg% Profile_Panels6_ymax = Profile_Panels6_ymax
         s% pg% Profile_Panels6_other_ymax = Profile_Panels6_other_ymax
         s% pg% Profile_Panels6_ycenter = Profile_Panels6_ycenter
         s% pg% Profile_Panels6_other_ycenter = Profile_Panels6_other_ycenter
         s% pg% Profile_Panels6_ymargin = Profile_Panels6_ymargin
         s% pg% Profile_Panels6_other_ymargin = Profile_Panels6_other_ymargin
         s% pg% Profile_Panels6_dymin = Profile_Panels6_dymin
         s% pg% Profile_Panels6_other_dymin = Profile_Panels6_other_dymin
         s% pg% Profile_Panels6_show_grid = Profile_Panels6_show_grid
         s% pg% Profile_Panels6_use_decorator = Profile_Panels6_use_decorator

         s% pg% Profile_Panels7_win_flag = Profile_Panels7_win_flag
         s% pg% Profile_Panels7_file_flag = Profile_Panels7_file_flag
         s% pg% do_Profile_Panels7_win = do_Profile_Panels7_win
         s% pg% do_Profile_Panels7_file = do_Profile_Panels7_file
         s% pg% id_Profile_Panels7_win = id_Profile_Panels7_win
         s% pg% id_Profile_Panels7_file = id_Profile_Panels7_file
         s% pg% Profile_Panels7_file_interval = Profile_Panels7_file_interval
         s% pg% Profile_Panels7_file_dir = Profile_Panels7_file_dir
         s% pg% Profile_Panels7_file_prefix = Profile_Panels7_file_prefix
         s% pg% Profile_Panels7_xaxis_reversed = Profile_Panels7_xaxis_reversed
         s% pg% Profile_Panels7_xaxis_name = Profile_Panels7_xaxis_name
         s% pg% Profile_Panels7_title = Profile_Panels7_title
         s% pg% Profile_Panels7_xmin = Profile_Panels7_xmin
         s% pg% Profile_Panels7_xmax = Profile_Panels7_xmax
         s% pg% Profile_Panels7_xmargin = Profile_Panels7_xmargin
         s% pg% Profile_Panels7_show_mix_regions_on_xaxis = Profile_Panels7_show_mix_regions_on_xaxis
         s% pg% Profile_Panels7_win_width = Profile_Panels7_win_width
         s% pg% Profile_Panels7_win_aspect_ratio = Profile_Panels7_win_aspect_ratio
         s% pg% Profile_Panels7_xleft = Profile_Panels7_xleft
         s% pg% Profile_Panels7_xright = Profile_Panels7_xright
         s% pg% Profile_Panels7_ybot = Profile_Panels7_ybot
         s% pg% Profile_Panels7_ytop = Profile_Panels7_ytop
         s% pg% Profile_Panels7_txt_scale = Profile_Panels7_txt_scale
         s% pg% prev_Profile_Panels7_win_width = prev_Profile_Panels7_win_width
         s% pg% prev_Profile_Panels7_win_ratio = prev_Profile_Panels7_win_ratio
         s% pg% Profile_Panels7_file_width = Profile_Panels7_file_width
         s% pg% Profile_Panels7_file_aspect_ratio = Profile_Panels7_file_aspect_ratio
         s% pg% prev_Profile_Panels7_file_width = prev_Profile_Panels7_file_width
         s% pg% prev_Profile_Panels7_file_ratio = prev_Profile_Panels7_file_ratio
         s% pg% Profile_Panels7_num_panels = Profile_Panels7_num_panels
         s% pg% Profile_Panels7_yaxis_name = Profile_Panels7_yaxis_name
         s% pg% Profile_Panels7_other_yaxis_name = Profile_Panels7_other_yaxis_name
         s% pg% Profile_Panels7_yaxis_reversed = Profile_Panels7_yaxis_reversed
         s% pg% Profile_Panels7_other_yaxis_reversed = Profile_Panels7_other_yaxis_reversed
         s% pg% Profile_Panels7_yaxis_log = Profile_Panels7_yaxis_log
         s% pg% Profile_Panels7_other_yaxis_log = Profile_Panels7_other_yaxis_log
         s% pg% Profile_Panels7_same_yaxis_range = Profile_Panels7_same_yaxis_range
         s% pg% Profile_Panels7_ymin = Profile_Panels7_ymin
         s% pg% Profile_Panels7_other_ymin = Profile_Panels7_other_ymin
         s% pg% Profile_Panels7_ymax = Profile_Panels7_ymax
         s% pg% Profile_Panels7_other_ymax = Profile_Panels7_other_ymax
         s% pg% Profile_Panels7_ycenter = Profile_Panels7_ycenter
         s% pg% Profile_Panels7_other_ycenter = Profile_Panels7_other_ycenter
         s% pg% Profile_Panels7_ymargin = Profile_Panels7_ymargin
         s% pg% Profile_Panels7_other_ymargin = Profile_Panels7_other_ymargin
         s% pg% Profile_Panels7_dymin = Profile_Panels7_dymin
         s% pg% Profile_Panels7_other_dymin = Profile_Panels7_other_dymin
         s% pg% Profile_Panels7_show_grid = Profile_Panels7_show_grid
         s% pg% Profile_Panels7_use_decorator = Profile_Panels7_use_decorator

         s% pg% Profile_Panels8_win_flag = Profile_Panels8_win_flag
         s% pg% Profile_Panels8_file_flag = Profile_Panels8_file_flag
         s% pg% do_Profile_Panels8_win = do_Profile_Panels8_win
         s% pg% do_Profile_Panels8_file = do_Profile_Panels8_file
         s% pg% id_Profile_Panels8_win = id_Profile_Panels8_win
         s% pg% id_Profile_Panels8_file = id_Profile_Panels8_file
         s% pg% Profile_Panels8_file_interval = Profile_Panels8_file_interval
         s% pg% Profile_Panels8_file_dir = Profile_Panels8_file_dir
         s% pg% Profile_Panels8_file_prefix = Profile_Panels8_file_prefix
         s% pg% Profile_Panels8_xaxis_reversed = Profile_Panels8_xaxis_reversed
         s% pg% Profile_Panels8_xaxis_name = Profile_Panels8_xaxis_name
         s% pg% Profile_Panels8_title = Profile_Panels8_title
         s% pg% Profile_Panels8_xmin = Profile_Panels8_xmin
         s% pg% Profile_Panels8_xmax = Profile_Panels8_xmax
         s% pg% Profile_Panels8_xmargin = Profile_Panels8_xmargin
         s% pg% Profile_Panels8_show_mix_regions_on_xaxis = Profile_Panels8_show_mix_regions_on_xaxis
         s% pg% Profile_Panels8_win_width = Profile_Panels8_win_width
         s% pg% Profile_Panels8_win_aspect_ratio = Profile_Panels8_win_aspect_ratio
         s% pg% Profile_Panels8_xleft = Profile_Panels8_xleft
         s% pg% Profile_Panels8_xright = Profile_Panels8_xright
         s% pg% Profile_Panels8_ybot = Profile_Panels8_ybot
         s% pg% Profile_Panels8_ytop = Profile_Panels8_ytop
         s% pg% Profile_Panels8_txt_scale = Profile_Panels8_txt_scale
         s% pg% prev_Profile_Panels8_win_width = prev_Profile_Panels8_win_width
         s% pg% prev_Profile_Panels8_win_ratio = prev_Profile_Panels8_win_ratio
         s% pg% Profile_Panels8_file_width = Profile_Panels8_file_width
         s% pg% Profile_Panels8_file_aspect_ratio = Profile_Panels8_file_aspect_ratio
         s% pg% prev_Profile_Panels8_file_width = prev_Profile_Panels8_file_width
         s% pg% prev_Profile_Panels8_file_ratio = prev_Profile_Panels8_file_ratio
         s% pg% Profile_Panels8_num_panels = Profile_Panels8_num_panels
         s% pg% Profile_Panels8_yaxis_name = Profile_Panels8_yaxis_name
         s% pg% Profile_Panels8_other_yaxis_name = Profile_Panels8_other_yaxis_name
         s% pg% Profile_Panels8_yaxis_reversed = Profile_Panels8_yaxis_reversed
         s% pg% Profile_Panels8_other_yaxis_reversed = Profile_Panels8_other_yaxis_reversed
         s% pg% Profile_Panels8_yaxis_log = Profile_Panels8_yaxis_log
         s% pg% Profile_Panels8_other_yaxis_log = Profile_Panels8_other_yaxis_log
         s% pg% Profile_Panels8_same_yaxis_range = Profile_Panels8_same_yaxis_range
         s% pg% Profile_Panels8_ymin = Profile_Panels8_ymin
         s% pg% Profile_Panels8_other_ymin = Profile_Panels8_other_ymin
         s% pg% Profile_Panels8_ymax = Profile_Panels8_ymax
         s% pg% Profile_Panels8_other_ymax = Profile_Panels8_other_ymax
         s% pg% Profile_Panels8_ycenter = Profile_Panels8_ycenter
         s% pg% Profile_Panels8_other_ycenter = Profile_Panels8_other_ycenter
         s% pg% Profile_Panels8_ymargin = Profile_Panels8_ymargin
         s% pg% Profile_Panels8_other_ymargin = Profile_Panels8_other_ymargin
         s% pg% Profile_Panels8_dymin = Profile_Panels8_dymin
         s% pg% Profile_Panels8_other_dymin = Profile_Panels8_other_dymin
         s% pg% Profile_Panels8_show_grid = Profile_Panels8_show_grid
         s% pg% Profile_Panels8_use_decorator = Profile_Panels8_use_decorator


         s% pg% Profile_Panels9_win_flag = Profile_Panels9_win_flag
         s% pg% Profile_Panels9_file_flag = Profile_Panels9_file_flag
         s% pg% do_Profile_Panels9_win = do_Profile_Panels9_win
         s% pg% do_Profile_Panels9_file = do_Profile_Panels9_file
         s% pg% id_Profile_Panels9_win = id_Profile_Panels9_win
         s% pg% id_Profile_Panels9_file = id_Profile_Panels9_file
         s% pg% Profile_Panels9_file_interval = Profile_Panels9_file_interval
         s% pg% Profile_Panels9_file_dir = Profile_Panels9_file_dir
         s% pg% Profile_Panels9_file_prefix = Profile_Panels9_file_prefix
         s% pg% Profile_Panels9_xaxis_reversed = Profile_Panels9_xaxis_reversed
         s% pg% Profile_Panels9_xaxis_name = Profile_Panels9_xaxis_name
         s% pg% Profile_Panels9_title = Profile_Panels9_title
         s% pg% Profile_Panels9_xmin = Profile_Panels9_xmin
         s% pg% Profile_Panels9_xmax = Profile_Panels9_xmax
         s% pg% Profile_Panels9_xmargin = Profile_Panels9_xmargin
         s% pg% Profile_Panels9_show_mix_regions_on_xaxis = Profile_Panels9_show_mix_regions_on_xaxis
         s% pg% Profile_Panels9_win_width = Profile_Panels9_win_width
         s% pg% Profile_Panels9_win_aspect_ratio = Profile_Panels9_win_aspect_ratio
         s% pg% Profile_Panels9_xleft = Profile_Panels9_xleft
         s% pg% Profile_Panels9_xright = Profile_Panels9_xright
         s% pg% Profile_Panels9_ybot = Profile_Panels9_ybot
         s% pg% Profile_Panels9_ytop = Profile_Panels9_ytop
         s% pg% Profile_Panels9_txt_scale = Profile_Panels9_txt_scale
         s% pg% prev_Profile_Panels9_win_width = prev_Profile_Panels9_win_width
         s% pg% prev_Profile_Panels9_win_ratio = prev_Profile_Panels9_win_ratio
         s% pg% Profile_Panels9_file_width = Profile_Panels9_file_width
         s% pg% Profile_Panels9_file_aspect_ratio = Profile_Panels9_file_aspect_ratio
         s% pg% prev_Profile_Panels9_file_width = prev_Profile_Panels9_file_width
         s% pg% prev_Profile_Panels9_file_ratio = prev_Profile_Panels9_file_ratio
         s% pg% Profile_Panels9_num_panels = Profile_Panels9_num_panels
         s% pg% Profile_Panels9_yaxis_name = Profile_Panels9_yaxis_name
         s% pg% Profile_Panels9_other_yaxis_name = Profile_Panels9_other_yaxis_name
         s% pg% Profile_Panels9_yaxis_reversed = Profile_Panels9_yaxis_reversed
         s% pg% Profile_Panels9_other_yaxis_reversed = Profile_Panels9_other_yaxis_reversed
         s% pg% Profile_Panels9_yaxis_log = Profile_Panels9_yaxis_log
         s% pg% Profile_Panels9_other_yaxis_log = Profile_Panels9_other_yaxis_log
         s% pg% Profile_Panels9_same_yaxis_range = Profile_Panels9_same_yaxis_range
         s% pg% Profile_Panels9_ymin = Profile_Panels9_ymin
         s% pg% Profile_Panels9_other_ymin = Profile_Panels9_other_ymin
         s% pg% Profile_Panels9_ymax = Profile_Panels9_ymax
         s% pg% Profile_Panels9_other_ymax = Profile_Panels9_other_ymax
         s% pg% Profile_Panels9_ycenter = Profile_Panels9_ycenter
         s% pg% Profile_Panels9_other_ycenter = Profile_Panels9_other_ycenter
         s% pg% Profile_Panels9_ymargin = Profile_Panels9_ymargin
         s% pg% Profile_Panels9_other_ymargin = Profile_Panels9_other_ymargin
         s% pg% Profile_Panels9_dymin = Profile_Panels9_dymin
         s% pg% Profile_Panels9_other_dymin = Profile_Panels9_other_dymin
         s% pg% Profile_Panels9_show_grid = Profile_Panels9_show_grid
         s% pg% Profile_Panels9_use_decorator = Profile_Panels9_use_decorator

         s% pg% Text_Summary1_win_flag = Text_Summary1_win_flag
         s% pg% Text_Summary1_file_flag = Text_Summary1_file_flag
         s% pg% Text_Summary1_file_interval = Text_Summary1_file_interval
         s% pg% Text_Summary1_file_dir = Text_Summary1_file_dir
         s% pg% Text_Summary1_file_prefix = Text_Summary1_file_prefix
         s% pg% Text_Summary1_num_cols = Text_Summary1_num_cols
         s% pg% Text_Summary1_num_rows = Text_Summary1_num_rows
         s% pg% Text_Summary1_name = Text_Summary1_name
         s% pg% Text_Summary1_win_width = Text_Summary1_win_width
         s% pg% Text_Summary1_win_aspect_ratio = Text_Summary1_win_aspect_ratio
         s% pg% Text_Summary1_file_width = Text_Summary1_file_width
         s% pg% Text_Summary1_file_aspect_ratio = Text_Summary1_file_aspect_ratio
         s% pg% Text_Summary1_title = Text_Summary1_title
         s% pg% Text_Summary1_xleft = Text_Summary1_xleft
         s% pg% Text_Summary1_xright = Text_Summary1_xright
         s% pg% Text_Summary1_ybot = Text_Summary1_ybot
         s% pg% Text_Summary1_ytop = Text_Summary1_ytop
         s% pg% Text_Summary1_txt_scale = Text_Summary1_txt_scale
         s% pg% Text_Summary1_dxval = Text_Summary1_dxval

         s% pg% Text_Summary2_win_flag = Text_Summary2_win_flag
         s% pg% Text_Summary2_file_flag = Text_Summary2_file_flag
         s% pg% Text_Summary2_file_interval = Text_Summary2_file_interval
         s% pg% Text_Summary2_file_dir = Text_Summary2_file_dir
         s% pg% Text_Summary2_file_prefix = Text_Summary2_file_prefix
         s% pg% Text_Summary2_num_cols = Text_Summary2_num_cols
         s% pg% Text_Summary2_num_rows = Text_Summary2_num_rows
         s% pg% Text_Summary2_name = Text_Summary2_name
         s% pg% Text_Summary2_win_width = Text_Summary2_win_width
         s% pg% Text_Summary2_win_aspect_ratio = Text_Summary2_win_aspect_ratio
         s% pg% Text_Summary2_file_width = Text_Summary2_file_width
         s% pg% Text_Summary2_file_aspect_ratio = Text_Summary2_file_aspect_ratio
         s% pg% Text_Summary2_title = Text_Summary2_title
         s% pg% Text_Summary2_xleft = Text_Summary2_xleft
         s% pg% Text_Summary2_xright = Text_Summary2_xright
         s% pg% Text_Summary2_ybot = Text_Summary2_ybot
         s% pg% Text_Summary2_ytop = Text_Summary2_ytop
         s% pg% Text_Summary2_txt_scale = Text_Summary2_txt_scale
         s% pg% Text_Summary2_dxval = Text_Summary2_dxval

         s% pg% Text_Summary3_win_flag = Text_Summary3_win_flag
         s% pg% Text_Summary3_file_flag = Text_Summary3_file_flag
         s% pg% Text_Summary3_file_interval = Text_Summary3_file_interval
         s% pg% Text_Summary3_file_dir = Text_Summary3_file_dir
         s% pg% Text_Summary3_file_prefix = Text_Summary3_file_prefix
         s% pg% Text_Summary3_num_cols = Text_Summary3_num_cols
         s% pg% Text_Summary3_num_rows = Text_Summary3_num_rows
         s% pg% Text_Summary3_name = Text_Summary3_name
         s% pg% Text_Summary3_win_width = Text_Summary3_win_width
         s% pg% Text_Summary3_win_aspect_ratio = Text_Summary3_win_aspect_ratio
         s% pg% Text_Summary3_file_width = Text_Summary3_file_width
         s% pg% Text_Summary3_file_aspect_ratio = Text_Summary3_file_aspect_ratio
         s% pg% Text_Summary3_title = Text_Summary3_title
         s% pg% Text_Summary3_xleft = Text_Summary3_xleft
         s% pg% Text_Summary3_xright = Text_Summary3_xright
         s% pg% Text_Summary3_ybot = Text_Summary3_ybot
         s% pg% Text_Summary3_ytop = Text_Summary3_ytop
         s% pg% Text_Summary3_txt_scale = Text_Summary3_txt_scale
         s% pg% Text_Summary3_dxval = Text_Summary3_dxval

         s% pg% Text_Summary4_win_flag = Text_Summary4_win_flag
         s% pg% Text_Summary4_file_flag = Text_Summary4_file_flag
         s% pg% Text_Summary4_file_interval = Text_Summary4_file_interval
         s% pg% Text_Summary4_file_dir = Text_Summary4_file_dir
         s% pg% Text_Summary4_file_prefix = Text_Summary4_file_prefix
         s% pg% Text_Summary4_num_cols = Text_Summary4_num_cols
         s% pg% Text_Summary4_num_rows = Text_Summary4_num_rows
         s% pg% Text_Summary4_name = Text_Summary4_name
         s% pg% Text_Summary4_win_width = Text_Summary4_win_width
         s% pg% Text_Summary4_win_aspect_ratio = Text_Summary4_win_aspect_ratio
         s% pg% Text_Summary4_file_width = Text_Summary4_file_width
         s% pg% Text_Summary4_file_aspect_ratio = Text_Summary4_file_aspect_ratio
         s% pg% Text_Summary4_title = Text_Summary4_title
         s% pg% Text_Summary4_xleft = Text_Summary4_xleft
         s% pg% Text_Summary4_xright = Text_Summary4_xright
         s% pg% Text_Summary4_ybot = Text_Summary4_ybot
         s% pg% Text_Summary4_ytop = Text_Summary4_ytop
         s% pg% Text_Summary4_txt_scale = Text_Summary4_txt_scale
         s% pg% Text_Summary4_dxval = Text_Summary4_dxval

         s% pg% Text_Summary5_win_flag = Text_Summary5_win_flag
         s% pg% Text_Summary5_file_flag = Text_Summary5_file_flag
         s% pg% Text_Summary5_file_interval = Text_Summary5_file_interval
         s% pg% Text_Summary5_file_dir = Text_Summary5_file_dir
         s% pg% Text_Summary5_file_prefix = Text_Summary5_file_prefix
         s% pg% Text_Summary5_num_cols = Text_Summary5_num_cols
         s% pg% Text_Summary5_num_rows = Text_Summary5_num_rows
         s% pg% Text_Summary5_name = Text_Summary5_name
         s% pg% Text_Summary5_win_width = Text_Summary5_win_width
         s% pg% Text_Summary5_win_aspect_ratio = Text_Summary5_win_aspect_ratio
         s% pg% Text_Summary5_file_width = Text_Summary5_file_width
         s% pg% Text_Summary5_file_aspect_ratio = Text_Summary5_file_aspect_ratio
         s% pg% Text_Summary5_title = Text_Summary5_title
         s% pg% Text_Summary5_xleft = Text_Summary5_xleft
         s% pg% Text_Summary5_xright = Text_Summary5_xright
         s% pg% Text_Summary5_ybot = Text_Summary5_ybot
         s% pg% Text_Summary5_ytop = Text_Summary5_ytop
         s% pg% Text_Summary5_txt_scale = Text_Summary5_txt_scale
         s% pg% Text_Summary5_dxval = Text_Summary5_dxval

         s% pg% Text_Summary6_win_flag = Text_Summary6_win_flag
         s% pg% Text_Summary6_file_flag = Text_Summary6_file_flag
         s% pg% Text_Summary6_file_interval = Text_Summary6_file_interval
         s% pg% Text_Summary6_file_dir = Text_Summary6_file_dir
         s% pg% Text_Summary6_file_prefix = Text_Summary6_file_prefix
         s% pg% Text_Summary6_num_cols = Text_Summary6_num_cols
         s% pg% Text_Summary6_num_rows = Text_Summary6_num_rows
         s% pg% Text_Summary6_name = Text_Summary6_name
         s% pg% Text_Summary6_win_width = Text_Summary6_win_width
         s% pg% Text_Summary6_win_aspect_ratio = Text_Summary6_win_aspect_ratio
         s% pg% Text_Summary6_file_width = Text_Summary6_file_width
         s% pg% Text_Summary6_file_aspect_ratio = Text_Summary6_file_aspect_ratio
         s% pg% Text_Summary6_title = Text_Summary6_title
         s% pg% Text_Summary6_xleft = Text_Summary6_xleft
         s% pg% Text_Summary6_xright = Text_Summary6_xright
         s% pg% Text_Summary6_ybot = Text_Summary6_ybot
         s% pg% Text_Summary6_ytop = Text_Summary6_ytop
         s% pg% Text_Summary6_txt_scale = Text_Summary6_txt_scale
         s% pg% Text_Summary6_dxval = Text_Summary6_dxval

         s% pg% Text_Summary7_win_flag = Text_Summary7_win_flag
         s% pg% Text_Summary7_file_flag = Text_Summary7_file_flag
         s% pg% Text_Summary7_file_interval = Text_Summary7_file_interval
         s% pg% Text_Summary7_file_dir = Text_Summary7_file_dir
         s% pg% Text_Summary7_file_prefix = Text_Summary7_file_prefix
         s% pg% Text_Summary7_num_cols = Text_Summary7_num_cols
         s% pg% Text_Summary7_num_rows = Text_Summary7_num_rows
         s% pg% Text_Summary7_name = Text_Summary7_name
         s% pg% Text_Summary7_win_width = Text_Summary7_win_width
         s% pg% Text_Summary7_win_aspect_ratio = Text_Summary7_win_aspect_ratio
         s% pg% Text_Summary7_file_width = Text_Summary7_file_width
         s% pg% Text_Summary7_file_aspect_ratio = Text_Summary7_file_aspect_ratio
         s% pg% Text_Summary7_title = Text_Summary7_title
         s% pg% Text_Summary7_xleft = Text_Summary7_xleft
         s% pg% Text_Summary7_xright = Text_Summary7_xright
         s% pg% Text_Summary7_ybot = Text_Summary7_ybot
         s% pg% Text_Summary7_ytop = Text_Summary7_ytop
         s% pg% Text_Summary7_txt_scale = Text_Summary7_txt_scale
         s% pg% Text_Summary7_dxval = Text_Summary7_dxval

         s% pg% Text_Summary8_win_flag = Text_Summary8_win_flag
         s% pg% Text_Summary8_file_flag = Text_Summary8_file_flag
         s% pg% Text_Summary8_file_interval = Text_Summary8_file_interval
         s% pg% Text_Summary8_file_dir = Text_Summary8_file_dir
         s% pg% Text_Summary8_file_prefix = Text_Summary8_file_prefix
         s% pg% Text_Summary8_num_cols = Text_Summary8_num_cols
         s% pg% Text_Summary8_num_rows = Text_Summary8_num_rows
         s% pg% Text_Summary8_name = Text_Summary8_name
         s% pg% Text_Summary8_win_width = Text_Summary8_win_width
         s% pg% Text_Summary8_win_aspect_ratio = Text_Summary8_win_aspect_ratio
         s% pg% Text_Summary8_file_width = Text_Summary8_file_width
         s% pg% Text_Summary8_file_aspect_ratio = Text_Summary8_file_aspect_ratio
         s% pg% Text_Summary8_title = Text_Summary8_title
         s% pg% Text_Summary8_xleft = Text_Summary8_xleft
         s% pg% Text_Summary8_xright = Text_Summary8_xright
         s% pg% Text_Summary8_ybot = Text_Summary8_ybot
         s% pg% Text_Summary8_ytop = Text_Summary8_ytop
         s% pg% Text_Summary8_txt_scale = Text_Summary8_txt_scale
         s% pg% Text_Summary8_dxval = Text_Summary8_dxval

         s% pg% Text_Summary9_win_flag = Text_Summary9_win_flag
         s% pg% Text_Summary9_file_flag = Text_Summary9_file_flag
         s% pg% Text_Summary9_file_interval = Text_Summary9_file_interval
         s% pg% Text_Summary9_file_dir = Text_Summary9_file_dir
         s% pg% Text_Summary9_file_prefix = Text_Summary9_file_prefix
         s% pg% Text_Summary9_num_cols = Text_Summary9_num_cols
         s% pg% Text_Summary9_num_rows = Text_Summary9_num_rows
         s% pg% Text_Summary9_name = Text_Summary9_name
         s% pg% Text_Summary9_win_width = Text_Summary9_win_width
         s% pg% Text_Summary9_win_aspect_ratio = Text_Summary9_win_aspect_ratio
         s% pg% Text_Summary9_file_width = Text_Summary9_file_width
         s% pg% Text_Summary9_file_aspect_ratio = Text_Summary9_file_aspect_ratio
         s% pg% Text_Summary9_title = Text_Summary9_title
         s% pg% Text_Summary9_xleft = Text_Summary9_xleft
         s% pg% Text_Summary9_xright = Text_Summary9_xright
         s% pg% Text_Summary9_ybot = Text_Summary9_ybot
         s% pg% Text_Summary9_ytop = Text_Summary9_ytop
         s% pg% Text_Summary9_txt_scale = Text_Summary9_txt_scale
         s% pg% Text_Summary9_dxval = Text_Summary9_dxval

         s% pg% logg_Teff_win_flag = logg_Teff_win_flag
         s% pg% logg_Teff_file_flag = logg_Teff_file_flag
         s% pg% show_logg_Teff_target_box = show_logg_Teff_target_box
         s% pg% logg_Teff_target_n_sigma = logg_Teff_target_n_sigma
         s% pg% logg_Teff_target_logg = logg_Teff_target_logg
         s% pg% logg_Teff_target_logg_sigma = logg_Teff_target_logg_sigma
         s% pg% logg_Teff_target_Teff = logg_Teff_target_Teff
         s% pg% logg_Teff_target_Teff_sigma = logg_Teff_target_Teff_sigma
         s% pg% logg_Teff_file_interval = logg_Teff_file_interval
         s% pg% logg_Teff_step_min = logg_Teff_step_min
         s% pg% logg_Teff_step_max = logg_Teff_step_max
         s% pg% logg_Teff_file_dir = logg_Teff_file_dir
         s% pg% logg_Teff_file_prefix = logg_Teff_file_prefix
         s% pg% show_logg_Teff_annotation1 = show_logg_Teff_annotation1
         s% pg% show_logg_Teff_annotation2 = show_logg_Teff_annotation2
         s% pg% show_logg_Teff_annotation3 = show_logg_Teff_annotation3
         s% pg% logg_Teff_fname = logg_Teff_fname
         s% pg% logg_Teff_title = logg_Teff_title
         s% pg% logg_Teff_logg_min = logg_Teff_logg_min
         s% pg% logg_Teff_logg_max = logg_Teff_logg_max
         s% pg% logg_Teff_Teff_min = logg_Teff_Teff_min
         s% pg% logg_Teff_Teff_max = logg_Teff_Teff_max
         s% pg% logg_Teff_Teff_margin = logg_Teff_Teff_margin
         s% pg% logg_Teff_logg_margin = logg_Teff_logg_margin
         s% pg% logg_Teff_dTeff_min = logg_Teff_dTeff_min
         s% pg% logg_Teff_dlogg_min = logg_Teff_dlogg_min
         s% pg% logg_Teff_win_width = logg_Teff_win_width
         s% pg% logg_Teff_win_aspect_ratio = logg_Teff_win_aspect_ratio
         s% pg% logg_Teff_xleft = logg_Teff_xleft
         s% pg% logg_Teff_xright = logg_Teff_xright
         s% pg% logg_Teff_ybot = logg_Teff_ybot
         s% pg% logg_Teff_ytop = logg_Teff_ytop
         s% pg% logg_Teff_txt_scale = logg_Teff_txt_scale
         s% pg% logg_Teff_file_width = logg_Teff_file_width
         s% pg% logg_Teff_file_aspect_ratio = logg_Teff_file_aspect_ratio
         s% pg% logg_Teff_use_decorator = logg_Teff_use_decorator

         s% pg% logL_Teff_win_flag = logL_Teff_win_flag
         s% pg% logL_Teff_file_flag = logL_Teff_file_flag
         s% pg% show_logL_Teff_target_box = show_logL_Teff_target_box
         s% pg% logL_Teff_target_n_sigma = logL_Teff_target_n_sigma
         s% pg% logL_Teff_target_logL = logL_Teff_target_logL
         s% pg% logL_Teff_target_logL_sigma = logL_Teff_target_logL_sigma
         s% pg% logL_Teff_target_Teff = logL_Teff_target_Teff
         s% pg% logL_Teff_target_Teff_sigma = logL_Teff_target_Teff_sigma
         s% pg% logL_Teff_file_interval = logL_Teff_file_interval
         s% pg% logL_Teff_step_min = logL_Teff_step_min
         s% pg% logL_Teff_step_max = logL_Teff_step_max
         s% pg% logL_Teff_file_dir = logL_Teff_file_dir
         s% pg% logL_Teff_file_prefix = logL_Teff_file_prefix
         s% pg% show_logL_Teff_annotation1 = show_logL_Teff_annotation1
         s% pg% show_logL_Teff_annotation2 = show_logL_Teff_annotation2
         s% pg% show_logL_Teff_annotation3 = show_logL_Teff_annotation3
         s% pg% logL_Teff_fname = logL_Teff_fname
         s% pg% logL_Teff_title = logL_Teff_title
         s% pg% logL_Teff_logL_min = logL_Teff_logL_min
         s% pg% logL_Teff_logL_max = logL_Teff_logL_max
         s% pg% logL_Teff_Teff_min = logL_Teff_Teff_min
         s% pg% logL_Teff_Teff_max = logL_Teff_Teff_max
         s% pg% logL_Teff_Teff_margin = logL_Teff_Teff_margin
         s% pg% logL_Teff_logL_margin = logL_Teff_logL_margin
         s% pg% logL_Teff_dTeff_min = logL_Teff_dTeff_min
         s% pg% logL_Teff_dlogL_min = logL_Teff_dlogL_min
         s% pg% logL_Teff_win_width = logL_Teff_win_width
         s% pg% logL_Teff_win_aspect_ratio = logL_Teff_win_aspect_ratio
         s% pg% logL_Teff_xleft = logL_Teff_xleft
         s% pg% logL_Teff_xright = logL_Teff_xright
         s% pg% logL_Teff_ybot = logL_Teff_ybot
         s% pg% logL_Teff_ytop = logL_Teff_ytop
         s% pg% logL_Teff_txt_scale = logL_Teff_txt_scale
         s% pg% logL_Teff_file_width = logL_Teff_file_width
         s% pg% logL_Teff_file_aspect_ratio = logL_Teff_file_aspect_ratio
         s% pg% logL_Teff_use_decorator = logL_Teff_use_decorator

         s% pg% logL_R_win_flag = logL_R_win_flag
         s% pg% logL_R_file_flag = logL_R_file_flag
         s% pg% show_logL_R_target_box = show_logL_R_target_box
         s% pg% logL_R_target_n_sigma = logL_R_target_n_sigma
         s% pg% logL_R_target_logL = logL_R_target_logL
         s% pg% logL_R_target_logL_sigma = logL_R_target_logL_sigma
         s% pg% logL_R_target_R = logL_R_target_R
         s% pg% logL_R_target_R_sigma = logL_R_target_R_sigma
         s% pg% logL_R_file_interval = logL_R_file_interval
         s% pg% logL_R_step_min = logL_R_step_min
         s% pg% logL_R_step_max = logL_R_step_max
         s% pg% logL_R_file_dir = logL_R_file_dir
         s% pg% logL_R_file_prefix = logL_R_file_prefix
         s% pg% show_logL_R_annotation1 = show_logL_R_annotation1
         s% pg% show_logL_R_annotation2 = show_logL_R_annotation2
         s% pg% show_logL_R_annotation3 = show_logL_R_annotation3
         s% pg% logL_R_fname = logL_R_fname
         s% pg% logL_R_title = logL_R_title
         s% pg% show_logL_photosphere_r = show_logL_photosphere_r
         s% pg% logL_R_logL_min = logL_R_logL_min
         s% pg% logL_R_logL_max = logL_R_logL_max
         s% pg% logL_R_R_min = logL_R_R_min
         s% pg% logL_R_R_max = logL_R_R_max
         s% pg% logL_R_R_margin = logL_R_R_margin
         s% pg% logL_R_logL_margin = logL_R_logL_margin
         s% pg% logL_R_dR_min = logL_R_dR_min
         s% pg% logL_R_dlogL_min = logL_R_dlogL_min
         s% pg% logL_R_win_width = logL_R_win_width
         s% pg% logL_R_win_aspect_ratio = logL_R_win_aspect_ratio
         s% pg% logL_R_xleft = logL_R_xleft
         s% pg% logL_R_xright = logL_R_xright
         s% pg% logL_R_ybot = logL_R_ybot
         s% pg% logL_R_ytop = logL_R_ytop
         s% pg% logL_R_txt_scale = logL_R_txt_scale
         s% pg% logL_R_file_width = logL_R_file_width
         s% pg% logL_R_file_aspect_ratio = logL_R_file_aspect_ratio
         s% pg% logL_R_use_decorator = logL_R_use_decorator

         s% pg% logL_v_win_flag = logL_v_win_flag
         s% pg% logL_v_file_flag = logL_v_file_flag
         s% pg% show_logL_v_target_box = show_logL_v_target_box
         s% pg% logL_v_target_n_sigma = logL_v_target_n_sigma
         s% pg% logL_v_target_logL = logL_v_target_logL
         s% pg% logL_v_target_logL_sigma = logL_v_target_logL_sigma
         s% pg% logL_v_target_v = logL_v_target_v
         s% pg% logL_v_target_v_sigma = logL_v_target_v_sigma
         s% pg% logL_v_file_interval = logL_v_file_interval
         s% pg% logL_v_step_min = logL_v_step_min
         s% pg% logL_v_step_max = logL_v_step_max
         s% pg% logL_v_file_dir = logL_v_file_dir
         s% pg% logL_v_file_prefix = logL_v_file_prefix
         s% pg% show_logL_v_annotation1 = show_logL_v_annotation1
         s% pg% show_logL_v_annotation2 = show_logL_v_annotation2
         s% pg% show_logL_v_annotation3 = show_logL_v_annotation3
         s% pg% logL_v_fname = logL_v_fname
         s% pg% logL_v_title = logL_v_title
         s% pg% show_logL_photosphere_v = show_logL_photosphere_v
         s% pg% logL_v_logL_min = logL_v_logL_min
         s% pg% logL_v_logL_max = logL_v_logL_max
         s% pg% logL_v_v_min = logL_v_v_min
         s% pg% logL_v_v_max = logL_v_v_max
         s% pg% logL_v_v_margin = logL_v_v_margin
         s% pg% logL_v_logL_margin = logL_v_logL_margin
         s% pg% logL_v_dv_min = logL_v_dv_min
         s% pg% logL_v_dlogL_min = logL_v_dlogL_min
         s% pg% logL_v_win_width = logL_v_win_width
         s% pg% logL_v_win_aspect_ratio = logL_v_win_aspect_ratio
         s% pg% logL_v_xleft = logL_v_xleft
         s% pg% logL_v_xright = logL_v_xright
         s% pg% logL_v_ybot = logL_v_ybot
         s% pg% logL_v_ytop = logL_v_ytop
         s% pg% logL_v_txt_scale = logL_v_txt_scale
         s% pg% logL_v_file_width = logL_v_file_width
         s% pg% logL_v_file_aspect_ratio = logL_v_file_aspect_ratio
         s% pg% logL_v_use_decorator = logL_v_use_decorator

         s% pg% L_Teff_win_flag = L_Teff_win_flag
         s% pg% L_Teff_file_flag = L_Teff_file_flag
         s% pg% show_L_Teff_target_box = show_L_Teff_target_box
         s% pg% L_Teff_target_n_sigma = L_Teff_target_n_sigma
         s% pg% L_Teff_target_L = L_Teff_target_L
         s% pg% L_Teff_target_L_sigma = L_Teff_target_L_sigma
         s% pg% L_Teff_target_Teff = L_Teff_target_Teff
         s% pg% L_Teff_target_Teff_sigma = L_Teff_target_Teff_sigma
         s% pg% L_Teff_file_interval = L_Teff_file_interval
         s% pg% L_Teff_step_min = L_Teff_step_min
         s% pg% L_Teff_step_max = L_Teff_step_max
         s% pg% L_Teff_file_dir = L_Teff_file_dir
         s% pg% L_Teff_file_prefix = L_Teff_file_prefix
         s% pg% show_L_Teff_annotation1 = show_L_Teff_annotation1
         s% pg% show_L_Teff_annotation2 = show_L_Teff_annotation2
         s% pg% show_L_Teff_annotation3 = show_L_Teff_annotation3
         s% pg% L_Teff_fname = L_Teff_fname
         s% pg% L_Teff_title = L_Teff_title
         s% pg% L_Teff_L_min = L_Teff_L_min
         s% pg% L_Teff_L_max = L_Teff_L_max
         s% pg% L_Teff_Teff_min = L_Teff_Teff_min
         s% pg% L_Teff_Teff_max = L_Teff_Teff_max
         s% pg% L_Teff_Teff_margin = L_Teff_Teff_margin
         s% pg% L_Teff_L_margin = L_Teff_L_margin
         s% pg% L_Teff_dTeff_min = L_Teff_dTeff_min
         s% pg% L_Teff_dL_min = L_Teff_dL_min
         s% pg% L_Teff_win_width = L_Teff_win_width
         s% pg% L_Teff_win_aspect_ratio = L_Teff_win_aspect_ratio
         s% pg% L_Teff_xleft = L_Teff_xleft
         s% pg% L_Teff_xright = L_Teff_xright
         s% pg% L_Teff_ybot = L_Teff_ybot
         s% pg% L_Teff_ytop = L_Teff_ytop
         s% pg% L_Teff_txt_scale = L_Teff_txt_scale
         s% pg% L_Teff_file_width = L_Teff_file_width
         s% pg% L_Teff_file_aspect_ratio = L_Teff_file_aspect_ratio
         s% pg% L_Teff_use_decorator = L_Teff_use_decorator

         s% pg% L_v_win_flag = L_v_win_flag
         s% pg% L_v_file_flag = L_v_file_flag
         s% pg% show_L_v_target_box = show_L_v_target_box
         s% pg% L_v_target_n_sigma = L_v_target_n_sigma
         s% pg% L_v_target_L = L_v_target_L
         s% pg% L_v_target_L_sigma = L_v_target_L_sigma
         s% pg% L_v_target_v = L_v_target_v
         s% pg% L_v_target_v_sigma = L_v_target_v_sigma
         s% pg% L_v_file_interval = L_v_file_interval
         s% pg% L_v_step_min = L_v_step_min
         s% pg% L_v_step_max = L_v_step_max
         s% pg% L_v_file_dir = L_v_file_dir
         s% pg% L_v_file_prefix = L_v_file_prefix
         s% pg% show_L_v_annotation1 = show_L_v_annotation1
         s% pg% show_L_v_annotation2 = show_L_v_annotation2
         s% pg% show_L_v_annotation3 = show_L_v_annotation3
         s% pg% L_v_fname = L_v_fname
         s% pg% L_v_title = L_v_title
         s% pg% L_v_L_min = L_v_L_min
         s% pg% L_v_L_max = L_v_L_max
         s% pg% L_v_v_min = L_v_v_min
         s% pg% L_v_v_max = L_v_v_max
         s% pg% L_v_v_margin = L_v_v_margin
         s% pg% L_v_L_margin = L_v_L_margin
         s% pg% L_v_dv_min = L_v_dv_min
         s% pg% L_v_dL_min = L_v_dL_min
         s% pg% L_v_win_width = L_v_win_width
         s% pg% L_v_win_aspect_ratio = L_v_win_aspect_ratio
         s% pg% L_v_xleft = L_v_xleft
         s% pg% L_v_xright = L_v_xright
         s% pg% L_v_ybot = L_v_ybot
         s% pg% L_v_ytop = L_v_ytop
         s% pg% L_v_txt_scale = L_v_txt_scale
         s% pg% L_v_file_width = L_v_file_width
         s% pg% L_v_file_aspect_ratio = L_v_file_aspect_ratio
         s% pg% L_v_use_decorator = L_v_use_decorator

         s% pg% L_R_win_flag = L_R_win_flag
         s% pg% L_R_file_flag = L_R_file_flag
         s% pg% show_L_R_target_box = show_L_R_target_box
         s% pg% L_R_target_n_sigma = L_R_target_n_sigma
         s% pg% L_R_target_L = L_R_target_L
         s% pg% L_R_target_L_sigma = L_R_target_L_sigma
         s% pg% L_R_target_R = L_R_target_R
         s% pg% L_R_target_R_sigma = L_R_target_R_sigma
         s% pg% L_R_file_interval = L_R_file_interval
         s% pg% L_R_step_min = L_R_step_min
         s% pg% L_R_step_max = L_R_step_max
         s% pg% L_R_file_dir = L_R_file_dir
         s% pg% L_R_file_prefix = L_R_file_prefix
         s% pg% show_L_R_annotation1 = show_L_R_annotation1
         s% pg% show_L_R_annotation2 = show_L_R_annotation2
         s% pg% show_L_R_annotation3 = show_L_R_annotation3
         s% pg% L_R_fname = L_R_fname
         s% pg% L_R_title = L_R_title
         s% pg% L_R_L_min = L_R_L_min
         s% pg% L_R_L_max = L_R_L_max
         s% pg% L_R_R_min = L_R_R_min
         s% pg% L_R_R_max = L_R_R_max
         s% pg% L_R_R_margin = L_R_R_margin
         s% pg% L_R_L_margin = L_R_L_margin
         s% pg% L_R_dR_min = L_R_dR_min
         s% pg% L_R_dL_min = L_R_dL_min
         s% pg% L_R_win_width = L_R_win_width
         s% pg% L_R_win_aspect_ratio = L_R_win_aspect_ratio
         s% pg% L_R_xleft = L_R_xleft
         s% pg% L_R_xright = L_R_xright
         s% pg% L_R_ybot = L_R_ybot
         s% pg% L_R_ytop = L_R_ytop
         s% pg% L_R_txt_scale = L_R_txt_scale
         s% pg% L_R_file_width = L_R_file_width
         s% pg% L_R_file_aspect_ratio = L_R_file_aspect_ratio
         s% pg% L_R_use_decorator = L_R_use_decorator

         s% pg% R_Teff_win_flag = R_Teff_win_flag
         s% pg% R_Teff_file_flag = R_Teff_file_flag
         s% pg% show_R_Teff_target_box = show_R_Teff_target_box
         s% pg% R_Teff_target_n_sigma = R_Teff_target_n_sigma
         s% pg% R_Teff_target_R = R_Teff_target_R
         s% pg% R_Teff_target_R_sigma = R_Teff_target_R_sigma
         s% pg% R_Teff_target_Teff = R_Teff_target_Teff
         s% pg% R_Teff_target_Teff_sigma = R_Teff_target_Teff_sigma
         s% pg% R_Teff_file_interval = R_Teff_file_interval
         s% pg% R_Teff_step_min = R_Teff_step_min
         s% pg% R_Teff_step_max = R_Teff_step_max
         s% pg% R_Teff_file_dir = R_Teff_file_dir
         s% pg% R_Teff_file_prefix = R_Teff_file_prefix
         s% pg% show_R_Teff_annotation1 = show_R_Teff_annotation1
         s% pg% show_R_Teff_annotation2 = show_R_Teff_annotation2
         s% pg% show_R_Teff_annotation3 = show_R_Teff_annotation3
         s% pg% R_Teff_fname = R_Teff_fname
         s% pg% R_Teff_title = R_Teff_title
         s% pg% R_Teff_R_min = R_Teff_R_min
         s% pg% R_Teff_R_max = R_Teff_R_max
         s% pg% R_Teff_Teff_min = R_Teff_Teff_min
         s% pg% R_Teff_Teff_max = R_Teff_Teff_max
         s% pg% R_Teff_Teff_margin = R_Teff_Teff_margin
         s% pg% R_Teff_R_margin = R_Teff_R_margin
         s% pg% R_Teff_dTeff_min = R_Teff_dTeff_min
         s% pg% R_Teff_dR_min = R_Teff_dR_min
         s% pg% R_Teff_win_width = R_Teff_win_width
         s% pg% R_Teff_win_aspect_ratio = R_Teff_win_aspect_ratio
         s% pg% R_Teff_xleft = R_Teff_xleft
         s% pg% R_Teff_xright = R_Teff_xright
         s% pg% R_Teff_ybot = R_Teff_ybot
         s% pg% R_Teff_ytop = R_Teff_ytop
         s% pg% R_Teff_txt_scale = R_Teff_txt_scale
         s% pg% R_Teff_file_width = R_Teff_file_width
         s% pg% R_Teff_file_aspect_ratio = R_Teff_file_aspect_ratio
         s% pg% R_Teff_use_decorator = R_Teff_use_decorator

         s% pg% R_L_win_flag = R_L_win_flag
         s% pg% R_L_file_flag = R_L_file_flag
         s% pg% show_R_L_target_box = show_R_L_target_box
         s% pg% R_L_target_n_sigma = R_L_target_n_sigma
         s% pg% R_L_target_R = R_L_target_R
         s% pg% R_L_target_R_sigma = R_L_target_R_sigma
         s% pg% R_L_target_L = R_L_target_L
         s% pg% R_L_target_L_sigma = R_L_target_L_sigma
         s% pg% R_L_file_interval = R_L_file_interval
         s% pg% R_L_step_min = R_L_step_min
         s% pg% R_L_step_max = R_L_step_max
         s% pg% R_L_file_dir = R_L_file_dir
         s% pg% R_L_file_prefix = R_L_file_prefix
         s% pg% show_R_L_annotation1 = show_R_L_annotation1
         s% pg% show_R_L_annotation2 = show_R_L_annotation2
         s% pg% show_R_L_annotation3 = show_R_L_annotation3
         s% pg% R_L_fname = R_L_fname
         s% pg% R_L_title = R_L_title
         s% pg% R_L_R_min = R_L_R_min
         s% pg% R_L_R_max = R_L_R_max
         s% pg% R_L_L_min = R_L_L_min
         s% pg% R_L_L_max = R_L_L_max
         s% pg% R_L_L_margin = R_L_L_margin
         s% pg% R_L_R_margin = R_L_R_margin
         s% pg% R_L_dL_min = R_L_dL_min
         s% pg% R_L_dR_min = R_L_dR_min
         s% pg% R_L_win_width = R_L_win_width
         s% pg% R_L_win_aspect_ratio = R_L_win_aspect_ratio
         s% pg% R_L_xleft = R_L_xleft
         s% pg% R_L_xright = R_L_xright
         s% pg% R_L_ybot = R_L_ybot
         s% pg% R_L_ytop = R_L_ytop
         s% pg% R_L_txt_scale = R_L_txt_scale
         s% pg% R_L_file_width = R_L_file_width
         s% pg% R_L_file_aspect_ratio = R_L_file_aspect_ratio
         s% pg% R_L_use_decorator = R_L_use_decorator

         s% pg% logg_logT_win_flag = logg_logT_win_flag
         s% pg% logg_logT_file_flag = logg_logT_file_flag
         s% pg% show_logg_logT_target_box = show_logg_logT_target_box
         s% pg% logg_logT_target_n_sigma = logg_logT_target_n_sigma
         s% pg% logg_logT_target_logg = logg_logT_target_logg
         s% pg% logg_logT_target_logg_sigma = logg_logT_target_logg_sigma
         s% pg% logg_logT_target_logT = logg_logT_target_logT
         s% pg% logg_logT_target_logT_sigma = logg_logT_target_logT_sigma
         s% pg% logg_logT_file_interval = logg_logT_file_interval
         s% pg% logg_logT_step_min = logg_logT_step_min
         s% pg% logg_logT_step_max = logg_logT_step_max
         s% pg% logg_logT_file_dir = logg_logT_file_dir
         s% pg% logg_logT_file_prefix = logg_logT_file_prefix
         s% pg% show_logg_logT_annotation1 = show_logg_logT_annotation1
         s% pg% show_logg_logT_annotation2 = show_logg_logT_annotation2
         s% pg% show_logg_logT_annotation3 = show_logg_logT_annotation3
         s% pg% logg_logT_fname = logg_logT_fname
         s% pg% logg_logT_logg_min = logg_logT_logg_min
         s% pg% logg_logT_logg_max = logg_logT_logg_max
         s% pg% logg_logT_logT_min = logg_logT_logT_min
         s% pg% logg_logT_logT_max = logg_logT_logT_max
         s% pg% logg_logT_logg_margin = logg_logT_logg_margin
         s% pg% logg_logT_logT_margin = logg_logT_logT_margin
         s% pg% logg_logT_dlogT_min = logg_logT_dlogT_min
         s% pg% logg_logT_dlogg_min = logg_logT_dlogg_min
         s% pg% logg_logT_win_width = logg_logT_win_width
         s% pg% logg_logT_win_aspect_ratio = logg_logT_win_aspect_ratio
         s% pg% logg_logT_file_width = logg_logT_file_width
         s% pg% logg_logT_file_aspect_ratio = logg_logT_file_aspect_ratio
         s% pg% logg_logT_xleft = logg_logT_xleft
         s% pg% logg_logT_xright = logg_logT_xright
         s% pg% logg_logT_ybot = logg_logT_ybot
         s% pg% logg_logT_ytop = logg_logT_ytop
         s% pg% logg_logT_txt_scale = logg_logT_txt_scale
         s% pg% logg_logT_title = logg_logT_title
         s% pg% logg_logT_use_decorator = logg_LogT_use_decorator

         s% pg% HR_win_flag = HR_win_flag
         s% pg% HR_file_flag = HR_file_flag
         s% pg% HR_file_interval = HR_file_interval
         s% pg% HR_step_min = HR_step_min
         s% pg% HR_step_max = HR_step_max
         s% pg% show_HR_classical_instability_strip = show_HR_classical_instability_strip
         s% pg% show_HR_Mira_instability_region = show_HR_Mira_instability_region
         s% pg% show_HR_WD_instabilities = show_HR_WD_instabilities
         s% pg% show_HR_target_box = show_HR_target_box
         s% pg% HR_target_n_sigma = HR_target_n_sigma
         s% pg% HR_target_logL = HR_target_logL
         s% pg% HR_target_logL_sigma = HR_target_logL_sigma
         s% pg% HR_target_logT = HR_target_logT
         s% pg% HR_target_logT_sigma = HR_target_logT_sigma
         s% pg% HR_file_dir = HR_file_dir
         s% pg% HR_file_prefix = HR_file_prefix
         s% pg% show_HR_annotation1 = show_HR_annotation1
         s% pg% show_HR_annotation2 = show_HR_annotation2
         s% pg% show_HR_annotation3 = show_HR_annotation3
         s% pg% HR_fname = HR_fname
         s% pg% HR_logT_min = HR_logT_min
         s% pg% HR_logT_max = HR_logT_max
         s% pg% HR_logL_min = HR_logL_min
         s% pg% HR_logL_max = HR_logL_max
         s% pg% HR_logL_margin = HR_logL_margin
         s% pg% HR_logT_margin = HR_logT_margin
         s% pg% HR_dlogT_min = HR_dlogT_min
         s% pg% HR_dlogL_min = HR_dlogL_min
         s% pg% HR_win_width = HR_win_width
         s% pg% HR_win_aspect_ratio = HR_win_aspect_ratio
         s% pg% HR_file_width = HR_file_width
         s% pg% HR_file_aspect_ratio = HR_file_aspect_ratio
         s% pg% HR_xleft = HR_xleft
         s% pg% HR_xright = HR_xright
         s% pg% HR_ybot = HR_ybot
         s% pg% HR_ytop = HR_ytop
         s% pg% HR_txt_scale = HR_txt_scale
         s% pg% HR_title = HR_title
         s% pg% HR_use_decorator = HR_use_decorator

         s% pg% TRho_win_flag = TRho_win_flag
         s% pg% TRho_file_flag = TRho_file_flag
         s% pg% TRho_file_interval = TRho_file_interval
         s% pg% TRho_step_max = TRho_step_max
         s% pg% TRho_step_min = TRho_step_min
         s% pg% TRho_file_dir = TRho_file_dir
         s% pg% TRho_file_prefix = TRho_file_prefix
         s% pg% show_TRho_annotation1 = show_TRho_annotation1
         s% pg% show_TRho_annotation2 = show_TRho_annotation2
         s% pg% show_TRho_annotation3 = show_TRho_annotation3
         s% pg% show_TRho_degeneracy_line = show_TRho_degeneracy_line
         s% pg% TRho_fname = TRho_fname
         s% pg% TRho_logT_min = TRho_logT_min
         s% pg% TRho_logT_max = TRho_logT_max
         s% pg% TRho_logRho_min = TRho_logRho_min
         s% pg% TRho_logRho_max = TRho_logRho_max
         s% pg% TRho_logT_margin = TRho_logT_margin
         s% pg% TRho_logRho_margin = TRho_logRho_margin
         s% pg% TRho_logRho_dlogRho_min = TRho_logRho_dlogRho_min
         s% pg% TRho_logT_dlogT_min = TRho_logT_dlogT_min
         s% pg% TRho_win_width = TRho_win_width
         s% pg% TRho_win_aspect_ratio = TRho_win_aspect_ratio
         s% pg% TRho_file_width = TRho_file_width
         s% pg% TRho_file_aspect_ratio = TRho_file_aspect_ratio
         s% pg% TRho_xleft = TRho_xleft
         s% pg% TRho_xright = TRho_xright
         s% pg% TRho_ybot = TRho_ybot
         s% pg% TRho_ytop = TRho_ytop
         s% pg% TRho_txt_scale = TRho_txt_scale
         s% pg% TRho_title = TRho_title
         s% pg% TRho_use_decorator = TRho_use_decorator

         s% pg% TmaxRho_win_flag = TmaxRho_win_flag
         s% pg% TmaxRho_file_flag = TmaxRho_file_flag
         s% pg% TmaxRho_file_interval = TmaxRho_file_interval
         s% pg% TmaxRho_step_max = TmaxRho_step_max
         s% pg% TmaxRho_step_min = TmaxRho_step_min
         s% pg% TmaxRho_file_dir = TmaxRho_file_dir
         s% pg% TmaxRho_file_prefix = TmaxRho_file_prefix
         s% pg% show_TmaxRho_annotation1 = show_TmaxRho_annotation1
         s% pg% show_TmaxRho_annotation2 = show_TmaxRho_annotation2
         s% pg% show_TmaxRho_annotation3 = show_TmaxRho_annotation3
         s% pg% show_TmaxRho_degeneracy_line = show_TmaxRho_degeneracy_line
         s% pg% TmaxRho_fname = TmaxRho_fname
         s% pg% TmaxRho_logT_min = TmaxRho_logT_min
         s% pg% TmaxRho_logT_max = TmaxRho_logT_max
         s% pg% TmaxRho_logRho_min = TmaxRho_logRho_min
         s% pg% TmaxRho_logRho_max = TmaxRho_logRho_max
         s% pg% TmaxRho_logT_margin = TmaxRho_logT_margin
         s% pg% TmaxRho_logRho_margin = TmaxRho_logRho_margin
         s% pg% TmaxRho_logRho_dlogRho_min = TmaxRho_logRho_dlogRho_min
         s% pg% TmaxRho_logT_dlogT_min = TmaxRho_logT_dlogT_min
         s% pg% TmaxRho_win_width = TmaxRho_win_width
         s% pg% TmaxRho_win_aspect_ratio = TmaxRho_win_aspect_ratio
         s% pg% TmaxRho_file_width = TmaxRho_file_width
         s% pg% TmaxRho_file_aspect_ratio = TmaxRho_file_aspect_ratio
         s% pg% TmaxRho_xleft = TmaxRho_xleft
         s% pg% TmaxRho_xright = TmaxRho_xright
         s% pg% TmaxRho_ybot = TmaxRho_ybot
         s% pg% TmaxRho_ytop = TmaxRho_ytop
         s% pg% TmaxRho_txt_scale = TmaxRho_txt_scale
         s% pg% TmaxRho_title = TmaxRho_title
         s% pg% TmaxRho_use_decorator = TmaxRho_use_decorator

         s% pg% Dynamo_win_flag = Dynamo_win_flag
         s% pg% Dynamo_file_flag = Dynamo_file_flag
         s% pg% Dynamo_file_interval = Dynamo_file_interval
         s% pg% Dynamo_file_dir = Dynamo_file_dir
         s% pg% Dynamo_file_prefix = Dynamo_file_prefix
         s% pg% show_Dynamo_annotation1 = show_Dynamo_annotation1
         s% pg% show_Dynamo_annotation2 = show_Dynamo_annotation2
         s% pg% show_Dynamo_annotation3 = show_Dynamo_annotation3
         s% pg% Dynamo_xaxis_name = Dynamo_xaxis_name
         s% pg% Dynamo_xaxis_reversed = Dynamo_xaxis_reversed
         s% pg% Dynamo_xmin = Dynamo_xmin
         s% pg% Dynamo_xmax = Dynamo_xmax
         s% pg% Dynamo_ymin_left = Dynamo_ymin_left
         s% pg% Dynamo_ymax_left = Dynamo_ymax_left
         s% pg% Dynamo_dymin_left = Dynamo_dymin_left
         s% pg% Dynamo_ymin_right = Dynamo_ymin_right
         s% pg% Dynamo_ymax_right = Dynamo_ymax_right
         s% pg% Dynamo_dymin_right = Dynamo_dymin_right
         s% pg% Dynamo_win_width = Dynamo_win_width
         s% pg% Dynamo_win_aspect_ratio = Dynamo_win_aspect_ratio
         s% pg% Dynamo_file_width = Dynamo_file_width
         s% pg% Dynamo_file_aspect_ratio = Dynamo_file_aspect_ratio
         s% pg% Dynamo_xleft = Dynamo_xleft
         s% pg% Dynamo_xright = Dynamo_xright
         s% pg% Dynamo_ybot = Dynamo_ybot
         s% pg% Dynamo_ytop = Dynamo_ytop
         s% pg% Dynamo_txt_scale = Dynamo_txt_scale
         s% pg% Dynamo_title = Dynamo_title
         s% pg% Dynamo_legend_txt_scale_factor = Dynamo_legend_txt_scale_factor
         s% pg% Dynamo_use_decorator = Dynamo_use_decorator

         s% pg% Mixing_win_flag = Mixing_win_flag
         s% pg% Mixing_file_flag = Mixing_file_flag
         s% pg% Mixing_file_interval = Mixing_file_interval
         s% pg% Mixing_file_dir = Mixing_file_dir
         s% pg% Mixing_file_prefix = Mixing_file_prefix
         s% pg% show_Mixing_annotation1 = show_Mixing_annotation1
         s% pg% show_Mixing_annotation2 = show_Mixing_annotation2
         s% pg% show_Mixing_annotation3 = show_Mixing_annotation3
         s% pg% Mixing_xaxis_name = Mixing_xaxis_name
         s% pg% Mixing_xaxis_reversed = Mixing_xaxis_reversed
         s% pg% Mixing_legend_txt_scale_factor = Mixing_legend_txt_scale_factor
         s% pg% Mixing_show_rotation_details = Mixing_show_rotation_details
         s% pg% Mixing_xmin = Mixing_xmin
         s% pg% Mixing_xmax = Mixing_xmax
         s% pg% Mixing_ymin = Mixing_ymin
         s% pg% Mixing_ymax = Mixing_ymax
         s% pg% Mixing_dymin = Mixing_dymin
         s% pg% Mixing_win_width = Mixing_win_width
         s% pg% Mixing_win_aspect_ratio = Mixing_win_aspect_ratio
         s% pg% Mixing_file_width = Mixing_file_width
         s% pg% Mixing_file_aspect_ratio = Mixing_file_aspect_ratio
         s% pg% Mixing_xleft = Mixing_xleft
         s% pg% Mixing_xright = Mixing_xright
         s% pg% Mixing_ybot = Mixing_ybot
         s% pg% Mixing_ytop = Mixing_ytop
         s% pg% Mixing_txt_scale = Mixing_txt_scale
         s% pg% Mixing_title = Mixing_title
         s% pg% Mixing_use_decorator = Mixing_use_decorator

         s% pg% Network_win_flag = Network_win_flag
         s% pg% Network_file_flag = Network_file_flag
         s% pg% Network_file_interval = Network_file_interval
         s% pg% Network_file_dir = Network_file_dir
         s% pg% Network_file_prefix = Network_file_prefix
         s% pg% Network_nmin = Network_nmin
         s% pg% Network_nmax = Network_nmax
         s% pg% Network_zmin = Network_zmin
         s% pg% Network_zmax = Network_zmax
         s% pg% Network_show_mass_fraction = Network_show_mass_fraction
         s% pg% Network_log_mass_frac_min = Network_log_mass_frac_min
         s% pg% Network_log_mass_frac_max = Network_log_mass_frac_max
         s% pg% Network_show_element_names = Network_show_element_names
         s% pg% Network_win_width = Network_win_width
         s% pg% Network_win_aspect_ratio = Network_win_aspect_ratio
         s% pg% Network_file_width = Network_file_width
         s% pg% Network_file_aspect_ratio = Network_file_aspect_ratio
         s% pg% Network_xleft = Network_xleft
         s% pg% Network_xright = Network_xright
         s% pg% Network_ybot = Network_ybot
         s% pg% Network_ytop = Network_ytop
         s% pg% Network_txt_scale = Network_txt_scale
         s% pg% Network_title = Network_title
         s% pg% Network_use_decorator = Network_use_decorator
         s% pg% Network_show_colorbar = Network_show_colorbar

         s% pg% Production_win_flag = Production_win_flag
         s% pg% Production_file_flag = Production_file_flag
         s% pg% Production_file_interval = Production_file_interval
         s% pg% Production_file_dir = Production_file_dir
         s% pg% Production_file_prefix = Production_file_prefix
         s% pg% Production_amin = Production_amin
         s% pg% Production_amax = Production_amax
         s% pg% Production_ymin = Production_ymin
         s% pg% Production_ymax = Production_ymax
         s% pg% Production_min_mass = Production_min_mass
         s% pg% Production_max_mass = Production_max_mass
         s% pg% Production_min_mass_frac = Production_min_mass_frac
         s% pg% Production_show_element_names = Production_show_element_names
         s% pg% Production_win_width = Production_win_width
         s% pg% Production_win_aspect_ratio = Production_win_aspect_ratio
         s% pg% Production_file_width = Production_file_width
         s% pg% Production_file_aspect_ratio = Production_file_aspect_ratio
         s% pg% Production_xleft = Production_xleft
         s% pg% Production_xright = Production_xright
         s% pg% Production_ybot = Production_ybot
         s% pg% Production_ytop = Production_ytop
         s% pg% Production_txt_scale = Production_txt_scale
         s% pg% Production_title = Production_title
         s% pg% Production_use_decorator = Production_use_decorator


         s% pg% History_Track1_win_flag = History_Track1_win_flag
         s% pg% History_Track1_file_flag = History_Track1_file_flag
         s% pg% History_Track1_file_interval = History_Track1_file_interval
         s% pg% History_Track1_step_min = History_Track1_step_min
         s% pg% History_Track1_step_max = History_Track1_step_max
         s% pg% show_History_Track1_target_box = show_History_Track1_target_box
         s% pg% History_Track1_n_sigma = History_Track1_n_sigma
         s% pg% History_Track1_xtarget = History_Track1_xtarget
         s% pg% History_Track1_xsigma = History_Track1_xsigma
         s% pg% History_Track1_ytarget = History_Track1_ytarget
         s% pg% History_Track1_ysigma = History_Track1_ysigma
         s% pg% History_Track1_file_dir = History_Track1_file_dir
         s% pg% History_Track1_file_prefix = History_Track1_file_prefix
         s% pg% show_History_Track1_annotation1 = show_History_Track1_annotation1
         s% pg% show_History_Track1_annotation2 = show_History_Track1_annotation2
         s% pg% show_History_Track1_annotation3 = show_History_Track1_annotation3
         s% pg% History_Track1_fname = History_Track1_fname
         s% pg% History_Track1_xname = History_Track1_xname
         s% pg% History_Track1_xaxis_label = History_Track1_xaxis_label
         s% pg% History_Track1_yname = History_Track1_yname
         s% pg% History_Track1_yaxis_label = History_Track1_yaxis_label
         s% pg% History_Track1_reverse_xaxis = History_Track1_reverse_xaxis
         s% pg% History_Track1_reverse_yaxis = History_Track1_reverse_yaxis
         s% pg% History_Track1_log_xaxis = History_Track1_log_xaxis
         s% pg% History_Track1_log_yaxis = History_Track1_log_yaxis
         s% pg% History_Track1_xmin = History_Track1_xmin
         s% pg% History_Track1_xmax = History_Track1_xmax
         s% pg% History_Track1_ymin = History_Track1_ymin
         s% pg% History_Track1_ymax = History_Track1_ymax
         s% pg% History_Track1_xmargin = History_Track1_xmargin
         s% pg% History_Track1_ymargin = History_Track1_ymargin
         s% pg% History_Track1_dxmin = History_Track1_dxmin
         s% pg% History_Track1_dymin = History_Track1_dymin
         s% pg% History_Track1_win_width = History_Track1_win_width
         s% pg% History_Track1_win_aspect_ratio = History_Track1_win_aspect_ratio
         s% pg% History_Track1_file_width = History_Track1_file_width
         s% pg% History_Track1_file_aspect_ratio = History_Track1_file_aspect_ratio
         s% pg% History_Track1_xleft = History_Track1_xleft
         s% pg% History_Track1_xright = History_Track1_xright
         s% pg% History_Track1_ybot = History_Track1_ybot
         s% pg% History_Track1_ytop = History_Track1_ytop
         s% pg% History_Track1_txt_scale = History_Track1_txt_scale
         s% pg% History_Track1_title = History_Track1_title
         s% pg% History_Track1_use_decorator = History_Track1_use_decorator


         s% pg% History_Track2_win_flag = History_Track2_win_flag
         s% pg% History_Track2_file_flag = History_Track2_file_flag
         s% pg% History_Track2_file_interval = History_Track2_file_interval
         s% pg% History_Track2_step_min = History_Track2_step_min
         s% pg% History_Track2_step_max = History_Track2_step_max
         s% pg% show_History_Track2_target_box = show_History_Track2_target_box
         s% pg% History_Track2_n_sigma = History_Track2_n_sigma
         s% pg% History_Track2_xtarget = History_Track2_xtarget
         s% pg% History_Track2_xsigma = History_Track2_xsigma
         s% pg% History_Track2_ytarget = History_Track2_ytarget
         s% pg% History_Track2_ysigma = History_Track2_ysigma
         s% pg% History_Track2_xname = History_Track2_xname
         s% pg% History_Track2_xaxis_label = History_Track2_xaxis_label
         s% pg% History_Track2_yname = History_Track2_yname
         s% pg% History_Track2_yaxis_label = History_Track2_yaxis_label
         s% pg% History_Track2_file_dir = History_Track2_file_dir
         s% pg% History_Track2_file_prefix = History_Track2_file_prefix
         s% pg% show_History_Track2_annotation1 = show_History_Track2_annotation1
         s% pg% show_History_Track2_annotation2 = show_History_Track2_annotation2
         s% pg% show_History_Track2_annotation3 = show_History_Track2_annotation3
         s% pg% History_Track2_fname = History_Track2_fname
         s% pg% History_Track2_reverse_xaxis = History_Track2_reverse_xaxis
         s% pg% History_Track2_reverse_yaxis = History_Track2_reverse_yaxis
         s% pg% History_Track2_log_xaxis = History_Track2_log_xaxis
         s% pg% History_Track2_log_yaxis = History_Track2_log_yaxis
         s% pg% History_Track2_xmin = History_Track2_xmin
         s% pg% History_Track2_xmax = History_Track2_xmax
         s% pg% History_Track2_ymin = History_Track2_ymin
         s% pg% History_Track2_ymax = History_Track2_ymax
         s% pg% History_Track2_xmargin = History_Track2_xmargin
         s% pg% History_Track2_ymargin = History_Track2_ymargin
         s% pg% History_Track2_dxmin = History_Track2_dxmin
         s% pg% History_Track2_dymin = History_Track2_dymin
         s% pg% History_Track2_win_width = History_Track2_win_width
         s% pg% History_Track2_win_aspect_ratio = History_Track2_win_aspect_ratio
         s% pg% History_Track2_file_width = History_Track2_file_width
         s% pg% History_Track2_file_aspect_ratio = History_Track2_file_aspect_ratio
         s% pg% History_Track2_xleft = History_Track2_xleft
         s% pg% History_Track2_xright = History_Track2_xright
         s% pg% History_Track2_ybot = History_Track2_ybot
         s% pg% History_Track2_ytop = History_Track2_ytop
         s% pg% History_Track2_txt_scale = History_Track2_txt_scale
         s% pg% History_Track2_title = History_Track2_title
         s% pg% History_Track2_use_decorator = History_Track2_use_decorator

         s% pg% History_Track3_win_flag = History_Track3_win_flag
         s% pg% History_Track3_file_flag = History_Track3_file_flag
         s% pg% History_Track3_file_interval = History_Track3_file_interval
         s% pg% History_Track3_step_min = History_Track3_step_min
         s% pg% History_Track3_step_max = History_Track3_step_max
         s% pg% show_History_Track3_target_box = show_History_Track3_target_box
         s% pg% History_Track3_n_sigma = History_Track3_n_sigma
         s% pg% History_Track3_xtarget = History_Track3_xtarget
         s% pg% History_Track3_xsigma = History_Track3_xsigma
         s% pg% History_Track3_ytarget = History_Track3_ytarget
         s% pg% History_Track3_ysigma = History_Track3_ysigma
         s% pg% History_Track3_xname = History_Track3_xname
         s% pg% History_Track3_xaxis_label = History_Track3_xaxis_label
         s% pg% History_Track3_yname = History_Track3_yname
         s% pg% History_Track3_yaxis_label = History_Track3_yaxis_label
         s% pg% History_Track3_file_dir = History_Track3_file_dir
         s% pg% History_Track3_file_prefix = History_Track3_file_prefix
         s% pg% show_History_Track3_annotation1 = show_History_Track3_annotation1
         s% pg% show_History_Track3_annotation2 = show_History_Track3_annotation2
         s% pg% show_History_Track3_annotation3 = show_History_Track3_annotation3
         s% pg% History_Track3_fname = History_Track3_fname
         s% pg% History_Track3_reverse_xaxis = History_Track3_reverse_xaxis
         s% pg% History_Track3_reverse_yaxis = History_Track3_reverse_yaxis
         s% pg% History_Track3_log_xaxis = History_Track3_log_xaxis
         s% pg% History_Track3_log_yaxis = History_Track3_log_yaxis
         s% pg% History_Track3_xmin = History_Track3_xmin
         s% pg% History_Track3_xmax = History_Track3_xmax
         s% pg% History_Track3_ymin = History_Track3_ymin
         s% pg% History_Track3_ymax = History_Track3_ymax
         s% pg% History_Track3_xmargin = History_Track3_xmargin
         s% pg% History_Track3_ymargin = History_Track3_ymargin
         s% pg% History_Track3_dxmin = History_Track3_dxmin
         s% pg% History_Track3_dymin = History_Track3_dymin
         s% pg% History_Track3_win_width = History_Track3_win_width
         s% pg% History_Track3_win_aspect_ratio = History_Track3_win_aspect_ratio
         s% pg% History_Track3_file_width = History_Track3_file_width
         s% pg% History_Track3_file_aspect_ratio = History_Track3_file_aspect_ratio
         s% pg% History_Track3_xleft = History_Track3_xleft
         s% pg% History_Track3_xright = History_Track3_xright
         s% pg% History_Track3_ybot = History_Track3_ybot
         s% pg% History_Track3_ytop = History_Track3_ytop
         s% pg% History_Track3_txt_scale = History_Track3_txt_scale
         s% pg% History_Track3_title = History_Track3_title
         s% pg% History_Track3_use_decorator = History_Track3_use_decorator

         s% pg% History_Track4_win_flag = History_Track4_win_flag
         s% pg% History_Track4_file_flag = History_Track4_file_flag
         s% pg% History_Track4_file_interval = History_Track4_file_interval
         s% pg% History_Track4_step_min = History_Track4_step_min
         s% pg% History_Track4_step_max = History_Track4_step_max
         s% pg% show_History_Track4_target_box = show_History_Track4_target_box
         s% pg% History_Track4_n_sigma = History_Track4_n_sigma
         s% pg% History_Track4_xtarget = History_Track4_xtarget
         s% pg% History_Track4_xsigma = History_Track4_xsigma
         s% pg% History_Track4_ytarget = History_Track4_ytarget
         s% pg% History_Track4_ysigma = History_Track4_ysigma
         s% pg% History_Track4_xname = History_Track4_xname
         s% pg% History_Track4_xaxis_label = History_Track4_xaxis_label
         s% pg% History_Track4_yname = History_Track4_yname
         s% pg% History_Track4_yaxis_label = History_Track4_yaxis_label
         s% pg% History_Track4_file_dir = History_Track4_file_dir
         s% pg% History_Track4_file_prefix = History_Track4_file_prefix
         s% pg% show_History_Track4_annotation1 = show_History_Track4_annotation1
         s% pg% show_History_Track4_annotation2 = show_History_Track4_annotation2
         s% pg% show_History_Track4_annotation3 = show_History_Track4_annotation3
         s% pg% History_Track4_fname = History_Track4_fname
         s% pg% History_Track4_reverse_xaxis = History_Track4_reverse_xaxis
         s% pg% History_Track4_reverse_yaxis = History_Track4_reverse_yaxis
         s% pg% History_Track4_log_xaxis = History_Track4_log_xaxis
         s% pg% History_Track4_log_yaxis = History_Track4_log_yaxis
         s% pg% History_Track4_xmin = History_Track4_xmin
         s% pg% History_Track4_xmax = History_Track4_xmax
         s% pg% History_Track4_ymin = History_Track4_ymin
         s% pg% History_Track4_ymax = History_Track4_ymax
         s% pg% History_Track4_xmargin = History_Track4_xmargin
         s% pg% History_Track4_ymargin = History_Track4_ymargin
         s% pg% History_Track4_dxmin = History_Track4_dxmin
         s% pg% History_Track4_dymin = History_Track4_dymin
         s% pg% History_Track4_win_width = History_Track4_win_width
         s% pg% History_Track4_win_aspect_ratio = History_Track4_win_aspect_ratio
         s% pg% History_Track4_file_width = History_Track4_file_width
         s% pg% History_Track4_file_aspect_ratio = History_Track4_file_aspect_ratio
         s% pg% History_Track4_xleft = History_Track4_xleft
         s% pg% History_Track4_xright = History_Track4_xright
         s% pg% History_Track4_ybot = History_Track4_ybot
         s% pg% History_Track4_ytop = History_Track4_ytop
         s% pg% History_Track4_txt_scale = History_Track4_txt_scale
         s% pg% History_Track4_title = History_Track4_title
         s% pg% History_Track4_use_decorator = History_Track4_use_decorator

         s% pg% History_Track5_win_flag = History_Track5_win_flag
         s% pg% History_Track5_file_flag = History_Track5_file_flag
         s% pg% History_Track5_file_interval = History_Track5_file_interval
         s% pg% History_Track5_step_min = History_Track5_step_min
         s% pg% History_Track5_step_max = History_Track5_step_max
         s% pg% show_History_Track5_target_box = show_History_Track5_target_box
         s% pg% History_Track5_n_sigma = History_Track5_n_sigma
         s% pg% History_Track5_xtarget = History_Track5_xtarget
         s% pg% History_Track5_xsigma = History_Track5_xsigma
         s% pg% History_Track5_ytarget = History_Track5_ytarget
         s% pg% History_Track5_ysigma = History_Track5_ysigma
         s% pg% History_Track5_xname = History_Track5_xname
         s% pg% History_Track5_xaxis_label = History_Track5_xaxis_label
         s% pg% History_Track5_yname = History_Track5_yname
         s% pg% History_Track5_yaxis_label = History_Track5_yaxis_label
         s% pg% History_Track5_file_dir = History_Track5_file_dir
         s% pg% History_Track5_file_prefix = History_Track5_file_prefix
         s% pg% show_History_Track5_annotation1 = show_History_Track5_annotation1
         s% pg% show_History_Track5_annotation2 = show_History_Track5_annotation2
         s% pg% show_History_Track5_annotation3 = show_History_Track5_annotation3
         s% pg% History_Track5_fname = History_Track5_fname
         s% pg% History_Track5_reverse_xaxis = History_Track5_reverse_xaxis
         s% pg% History_Track5_reverse_yaxis = History_Track5_reverse_yaxis
         s% pg% History_Track5_log_xaxis = History_Track5_log_xaxis
         s% pg% History_Track5_log_yaxis = History_Track5_log_yaxis
         s% pg% History_Track5_xmin = History_Track5_xmin
         s% pg% History_Track5_xmax = History_Track5_xmax
         s% pg% History_Track5_ymin = History_Track5_ymin
         s% pg% History_Track5_ymax = History_Track5_ymax
         s% pg% History_Track5_xmargin = History_Track5_xmargin
         s% pg% History_Track5_ymargin = History_Track5_ymargin
         s% pg% History_Track5_dxmin = History_Track5_dxmin
         s% pg% History_Track5_dymin = History_Track5_dymin
         s% pg% History_Track5_win_width = History_Track5_win_width
         s% pg% History_Track5_win_aspect_ratio = History_Track5_win_aspect_ratio
         s% pg% History_Track5_file_width = History_Track5_file_width
         s% pg% History_Track5_file_aspect_ratio = History_Track5_file_aspect_ratio
         s% pg% History_Track5_xleft = History_Track5_xleft
         s% pg% History_Track5_xright = History_Track5_xright
         s% pg% History_Track5_ybot = History_Track5_ybot
         s% pg% History_Track5_ytop = History_Track5_ytop
         s% pg% History_Track5_txt_scale = History_Track5_txt_scale
         s% pg% History_Track5_title = History_Track5_title
         s% pg% History_Track5_use_decorator = History_Track5_use_decorator

         s% pg% History_Track6_win_flag = History_Track6_win_flag
         s% pg% History_Track6_file_flag = History_Track6_file_flag
         s% pg% History_Track6_file_interval = History_Track6_file_interval
         s% pg% History_Track6_step_min = History_Track6_step_min
         s% pg% History_Track6_step_max = History_Track6_step_max
         s% pg% show_History_Track6_target_box = show_History_Track6_target_box
         s% pg% History_Track6_n_sigma = History_Track6_n_sigma
         s% pg% History_Track6_xtarget = History_Track6_xtarget
         s% pg% History_Track6_xsigma = History_Track6_xsigma
         s% pg% History_Track6_ytarget = History_Track6_ytarget
         s% pg% History_Track6_ysigma = History_Track6_ysigma
         s% pg% History_Track6_xname = History_Track6_xname
         s% pg% History_Track6_xaxis_label = History_Track6_xaxis_label
         s% pg% History_Track6_yname = History_Track6_yname
         s% pg% History_Track6_yaxis_label = History_Track6_yaxis_label
         s% pg% History_Track6_file_dir = History_Track6_file_dir
         s% pg% History_Track6_file_prefix = History_Track6_file_prefix
         s% pg% show_History_Track6_annotation1 = show_History_Track6_annotation1
         s% pg% show_History_Track6_annotation2 = show_History_Track6_annotation2
         s% pg% show_History_Track6_annotation3 = show_History_Track6_annotation3
         s% pg% History_Track6_fname = History_Track6_fname
         s% pg% History_Track6_reverse_xaxis = History_Track6_reverse_xaxis
         s% pg% History_Track6_reverse_yaxis = History_Track6_reverse_yaxis
         s% pg% History_Track6_log_xaxis = History_Track6_log_xaxis
         s% pg% History_Track6_log_yaxis = History_Track6_log_yaxis
         s% pg% History_Track6_xmin = History_Track6_xmin
         s% pg% History_Track6_xmax = History_Track6_xmax
         s% pg% History_Track6_ymin = History_Track6_ymin
         s% pg% History_Track6_ymax = History_Track6_ymax
         s% pg% History_Track6_xmargin = History_Track6_xmargin
         s% pg% History_Track6_ymargin = History_Track6_ymargin
         s% pg% History_Track6_dxmin = History_Track6_dxmin
         s% pg% History_Track6_dymin = History_Track6_dymin
         s% pg% History_Track6_win_width = History_Track6_win_width
         s% pg% History_Track6_win_aspect_ratio = History_Track6_win_aspect_ratio
         s% pg% History_Track6_file_width = History_Track6_file_width
         s% pg% History_Track6_file_aspect_ratio = History_Track6_file_aspect_ratio
         s% pg% History_Track6_xleft = History_Track6_xleft
         s% pg% History_Track6_xright = History_Track6_xright
         s% pg% History_Track6_ybot = History_Track6_ybot
         s% pg% History_Track6_ytop = History_Track6_ytop
         s% pg% History_Track6_txt_scale = History_Track6_txt_scale
         s% pg% History_Track6_title = History_Track6_title
         s% pg% History_Track6_use_decorator = History_Track6_use_decorator

         s% pg% History_Track7_win_flag = History_Track7_win_flag
         s% pg% History_Track7_file_flag = History_Track7_file_flag
         s% pg% History_Track7_file_interval = History_Track7_file_interval
         s% pg% History_Track7_step_min = History_Track7_step_min
         s% pg% History_Track7_step_max = History_Track7_step_max
         s% pg% show_History_Track7_target_box = show_History_Track7_target_box
         s% pg% History_Track7_n_sigma = History_Track7_n_sigma
         s% pg% History_Track7_xtarget = History_Track7_xtarget
         s% pg% History_Track7_xsigma = History_Track7_xsigma
         s% pg% History_Track7_ytarget = History_Track7_ytarget
         s% pg% History_Track7_ysigma = History_Track7_ysigma
         s% pg% History_Track7_xname = History_Track7_xname
         s% pg% History_Track7_xaxis_label = History_Track7_xaxis_label
         s% pg% History_Track7_yname = History_Track7_yname
         s% pg% History_Track7_yaxis_label = History_Track7_yaxis_label
         s% pg% History_Track7_file_dir = History_Track7_file_dir
         s% pg% History_Track7_file_prefix = History_Track7_file_prefix
         s% pg% show_History_Track7_annotation1 = show_History_Track7_annotation1
         s% pg% show_History_Track7_annotation2 = show_History_Track7_annotation2
         s% pg% show_History_Track7_annotation3 = show_History_Track7_annotation3
         s% pg% History_Track7_fname = History_Track7_fname
         s% pg% History_Track7_reverse_xaxis = History_Track7_reverse_xaxis
         s% pg% History_Track7_reverse_yaxis = History_Track7_reverse_yaxis
         s% pg% History_Track7_log_xaxis = History_Track7_log_xaxis
         s% pg% History_Track7_log_yaxis = History_Track7_log_yaxis
         s% pg% History_Track7_xmin = History_Track7_xmin
         s% pg% History_Track7_xmax = History_Track7_xmax
         s% pg% History_Track7_ymin = History_Track7_ymin
         s% pg% History_Track7_ymax = History_Track7_ymax
         s% pg% History_Track7_xmargin = History_Track7_xmargin
         s% pg% History_Track7_ymargin = History_Track7_ymargin
         s% pg% History_Track7_dxmin = History_Track7_dxmin
         s% pg% History_Track7_dymin = History_Track7_dymin
         s% pg% History_Track7_win_width = History_Track7_win_width
         s% pg% History_Track7_win_aspect_ratio = History_Track7_win_aspect_ratio
         s% pg% History_Track7_file_width = History_Track7_file_width
         s% pg% History_Track7_file_aspect_ratio = History_Track7_file_aspect_ratio
         s% pg% History_Track7_xleft = History_Track7_xleft
         s% pg% History_Track7_xright = History_Track7_xright
         s% pg% History_Track7_ybot = History_Track7_ybot
         s% pg% History_Track7_ytop = History_Track7_ytop
         s% pg% History_Track7_txt_scale = History_Track7_txt_scale
         s% pg% History_Track7_title = History_Track7_title
         s% pg% History_Track7_use_decorator = History_Track7_use_decorator

         s% pg% History_Track8_win_flag = History_Track8_win_flag
         s% pg% History_Track8_file_flag = History_Track8_file_flag
         s% pg% History_Track8_file_interval = History_Track8_file_interval
         s% pg% History_Track8_step_min = History_Track8_step_min
         s% pg% History_Track8_step_max = History_Track8_step_max
         s% pg% show_History_Track8_target_box = show_History_Track8_target_box
         s% pg% History_Track8_n_sigma = History_Track8_n_sigma
         s% pg% History_Track8_xtarget = History_Track8_xtarget
         s% pg% History_Track8_xsigma = History_Track8_xsigma
         s% pg% History_Track8_ytarget = History_Track8_ytarget
         s% pg% History_Track8_ysigma = History_Track8_ysigma
         s% pg% History_Track8_xname = History_Track8_xname
         s% pg% History_Track8_xaxis_label = History_Track8_xaxis_label
         s% pg% History_Track8_yname = History_Track8_yname
         s% pg% History_Track8_yaxis_label = History_Track8_yaxis_label
         s% pg% History_Track8_file_dir = History_Track8_file_dir
         s% pg% History_Track8_file_prefix = History_Track8_file_prefix
         s% pg% show_History_Track8_annotation1 = show_History_Track8_annotation1
         s% pg% show_History_Track8_annotation2 = show_History_Track8_annotation2
         s% pg% show_History_Track8_annotation3 = show_History_Track8_annotation3
         s% pg% History_Track8_fname = History_Track8_fname
         s% pg% History_Track8_reverse_xaxis = History_Track8_reverse_xaxis
         s% pg% History_Track8_reverse_yaxis = History_Track8_reverse_yaxis
         s% pg% History_Track8_log_xaxis = History_Track8_log_xaxis
         s% pg% History_Track8_log_yaxis = History_Track8_log_yaxis
         s% pg% History_Track8_xmin = History_Track8_xmin
         s% pg% History_Track8_xmax = History_Track8_xmax
         s% pg% History_Track8_ymin = History_Track8_ymin
         s% pg% History_Track8_ymax = History_Track8_ymax
         s% pg% History_Track8_xmargin = History_Track8_xmargin
         s% pg% History_Track8_ymargin = History_Track8_ymargin
         s% pg% History_Track8_dxmin = History_Track8_dxmin
         s% pg% History_Track8_dymin = History_Track8_dymin
         s% pg% History_Track8_win_width = History_Track8_win_width
         s% pg% History_Track8_win_aspect_ratio = History_Track8_win_aspect_ratio
         s% pg% History_Track8_file_width = History_Track8_file_width
         s% pg% History_Track8_file_aspect_ratio = History_Track8_file_aspect_ratio
         s% pg% History_Track8_xleft = History_Track8_xleft
         s% pg% History_Track8_xright = History_Track8_xright
         s% pg% History_Track8_ybot = History_Track8_ybot
         s% pg% History_Track8_ytop = History_Track8_ytop
         s% pg% History_Track8_txt_scale = History_Track8_txt_scale
         s% pg% History_Track8_title = History_Track8_title
         s% pg% History_Track8_use_decorator = History_Track8_use_decorator

         s% pg% History_Track9_win_flag = History_Track9_win_flag
         s% pg% History_Track9_file_flag = History_Track9_file_flag
         s% pg% History_Track9_file_interval = History_Track9_file_interval
         s% pg% History_Track9_step_min = History_Track9_step_min
         s% pg% History_Track9_step_max = History_Track9_step_max
         s% pg% show_History_Track9_target_box = show_History_Track9_target_box
         s% pg% History_Track9_n_sigma = History_Track9_n_sigma
         s% pg% History_Track9_xtarget = History_Track9_xtarget
         s% pg% History_Track9_xsigma = History_Track9_xsigma
         s% pg% History_Track9_ytarget = History_Track9_ytarget
         s% pg% History_Track9_ysigma = History_Track9_ysigma
         s% pg% History_Track9_xname = History_Track9_xname
         s% pg% History_Track9_xaxis_label = History_Track9_xaxis_label
         s% pg% History_Track9_yname = History_Track9_yname
         s% pg% History_Track9_yaxis_label = History_Track9_yaxis_label
         s% pg% History_Track9_file_dir = History_Track9_file_dir
         s% pg% History_Track9_file_prefix = History_Track9_file_prefix
         s% pg% show_History_Track9_annotation1 = show_History_Track9_annotation1
         s% pg% show_History_Track9_annotation2 = show_History_Track9_annotation2
         s% pg% show_History_Track9_annotation3 = show_History_Track9_annotation3
         s% pg% History_Track9_fname = History_Track9_fname
         s% pg% History_Track9_reverse_xaxis = History_Track9_reverse_xaxis
         s% pg% History_Track9_reverse_yaxis = History_Track9_reverse_yaxis
         s% pg% History_Track9_log_xaxis = History_Track9_log_xaxis
         s% pg% History_Track9_log_yaxis = History_Track9_log_yaxis
         s% pg% History_Track9_xmin = History_Track9_xmin
         s% pg% History_Track9_xmax = History_Track9_xmax
         s% pg% History_Track9_ymin = History_Track9_ymin
         s% pg% History_Track9_ymax = History_Track9_ymax
         s% pg% History_Track9_xmargin = History_Track9_xmargin
         s% pg% History_Track9_ymargin = History_Track9_ymargin
         s% pg% History_Track9_dxmin = History_Track9_dxmin
         s% pg% History_Track9_dymin = History_Track9_dymin
         s% pg% History_Track9_win_width = History_Track9_win_width
         s% pg% History_Track9_win_aspect_ratio = History_Track9_win_aspect_ratio
         s% pg% History_Track9_file_width = History_Track9_file_width
         s% pg% History_Track9_file_aspect_ratio = History_Track9_file_aspect_ratio
         s% pg% History_Track9_xleft = History_Track9_xleft
         s% pg% History_Track9_xright = History_Track9_xright
         s% pg% History_Track9_ybot = History_Track9_ybot
         s% pg% History_Track9_ytop = History_Track9_ytop
         s% pg% History_Track9_txt_scale = History_Track9_txt_scale
         s% pg% History_Track9_title = History_Track9_title
         s% pg% History_Track9_use_decorator = History_Track9_use_decorator

         s% pg% Kipp_win_flag = Kipp_win_flag
         s% pg% Kipp_file_flag = Kipp_file_flag
         s% pg% Kipp_file_interval = Kipp_file_interval
         s% pg% Kipp_xmax = Kipp_xmax
         s% pg% Kipp_xmin = Kipp_xmin
         s% pg% Kipp_max_width = Kipp_max_width
         s% pg% Kipp_step_xmax = Kipp_step_xmax
         s% pg% Kipp_step_xmin = Kipp_step_xmin
         s% pg% Kipp_xaxis_name = Kipp_xaxis_name
         s% pg% Kipp_xaxis_log = Kipp_xaxis_log
         s% pg% Kipp_xmargin = Kipp_xmargin
         s% pg% Kipp_xaxis_reversed = Kipp_xaxis_reversed
         s% pg% Kipp_xaxis_in_seconds = Kipp_xaxis_in_seconds
         s% pg% Kipp_xaxis_in_Myr = Kipp_xaxis_in_Myr
         s% pg% Kipp_xaxis_time_from_present = Kipp_xaxis_time_from_present
         s% pg% Kipp_file_dir = Kipp_file_dir
         s% pg% Kipp_file_prefix = Kipp_file_prefix
         s% pg% show_Kipp_annotation1 = show_Kipp_annotation1
         s% pg% show_Kipp_annotation2 = show_Kipp_annotation2
         s% pg% show_Kipp_annotation3 = show_Kipp_annotation3
         s% pg% Kipp_show_burn = Kipp_show_burn
         s% pg% Kipp_show_mixing = Kipp_show_mixing
         s% pg% Kipp_show_luminosities = Kipp_show_luminosities
         s% pg% Kipp_show_mass_boundaries = Kipp_show_mass_boundaries
         s% pg% Kipp_mix_line_weight = Kipp_mix_line_weight
         s% pg% Kipp_mix_interval = Kipp_mix_interval
         s% pg% Kipp_burn_line_weight = Kipp_burn_line_weight
         s% pg% Kipp_burn_type_cutoff = Kipp_burn_type_cutoff
         s% pg% Kipp_luminosities_line_weight = Kipp_luminosities_line_weight
         s% pg% Kipp_masses_line_weight = Kipp_masses_line_weight
         s% pg% Kipp_mass_max = Kipp_mass_max
         s% pg% Kipp_mass_min = Kipp_mass_min
         s% pg% Kipp_lgL_max = Kipp_lgL_max
         s% pg% Kipp_lgL_min = Kipp_lgL_min
         s% pg% Kipp_mass_margin = Kipp_mass_margin
         s% pg% Kipp_lgL_margin = Kipp_lgL_margin
         s% pg% Kipp_win_width = Kipp_win_width
         s% pg% Kipp_win_aspect_ratio = Kipp_win_aspect_ratio
         s% pg% Kipp_file_width = Kipp_file_width
         s% pg% Kipp_file_aspect_ratio = Kipp_file_aspect_ratio
         s% pg% Kipp_xleft = Kipp_xleft
         s% pg% Kipp_xright = Kipp_xright
         s% pg% Kipp_ybot = Kipp_ybot
         s% pg% Kipp_ytop = Kipp_ytop
         s% pg% Kipp_txt_scale = Kipp_txt_scale
         s% pg% Kipp_title = Kipp_title
         s% pg% kipp_use_decorator = kipp_use_decorator

         s% pg% rti_win_flag = rti_win_flag
         s% pg% rti_file_flag = rti_file_flag
         s% pg% rti_file_interval = rti_file_interval
         s% pg% rti_xmax = rti_xmax
         s% pg% rti_xmin = rti_xmin
         s% pg% rti_max_width = rti_max_width
         s% pg% rti_step_xmax = rti_step_xmax
         s% pg% rti_step_xmin = rti_step_xmin
         s% pg% rti_xaxis_name = rti_xaxis_name
         s% pg% rti_xaxis_log = rti_xaxis_log
         s% pg% rti_xmargin = rti_xmargin
         s% pg% rti_xaxis_reversed = rti_xaxis_reversed
         s% pg% rti_xaxis_in_seconds = rti_xaxis_in_seconds
         s% pg% rti_xaxis_in_Myr = rti_xaxis_in_Myr
         s% pg% rti_xaxis_time_from_present = rti_xaxis_time_from_present
         s% pg% rti_mass_max = rti_mass_max
         s% pg% rti_mass_min = rti_mass_min
         s% pg% rti_mass_margin = rti_mass_margin
         s% pg% rti_file_dir = rti_file_dir
         s% pg% rti_file_prefix = rti_file_prefix
         s% pg% show_rti_annotation1 = show_rti_annotation1
         s% pg% show_rti_annotation2 = show_rti_annotation2
         s% pg% show_rti_annotation3 = show_rti_annotation3
         s% pg% rti_line_weight = rti_line_weight
         s% pg% rti_interval = rti_interval
         s% pg% rti_win_width = rti_win_width
         s% pg% rti_win_aspect_ratio = rti_win_aspect_ratio
         s% pg% rti_file_width = rti_file_width
         s% pg% rti_file_aspect_ratio = rti_file_aspect_ratio
         s% pg% rti_xleft = rti_xleft
         s% pg% rti_xright = rti_xright
         s% pg% rti_ybot = rti_ybot
         s% pg% rti_ytop = rti_ytop
         s% pg% rti_txt_scale = rti_txt_scale
         s% pg% rti_title = rti_title
         s% pg% rti_use_decorator = rti_use_decorator

         s% pg% TRho_Profile_win_flag = TRho_Profile_win_flag
         s% pg% TRho_switch_to_Column_Depth = TRho_switch_to_Column_Depth
         s% pg% TRho_switch_to_mass = TRho_switch_to_mass
         s% pg% TRho_Profile_file_flag = TRho_Profile_file_flag
         s% pg% TRho_Profile_file_interval = TRho_Profile_file_interval
         s% pg% TRho_Profile_file_dir = TRho_Profile_file_dir
         s% pg% TRho_Profile_file_prefix = TRho_Profile_file_prefix
         s% pg% show_TRho_Profile_text_info = show_TRho_Profile_text_info
         s% pg% show_TRho_Profile_legend = show_TRho_Profile_legend
         s% pg% show_TRho_Profile_mass_locs = show_TRho_Profile_mass_locs
         s% pg% show_TRho_Profile_burn_labels = show_TRho_Profile_burn_labels
         s% pg% show_TRho_Profile_kap_regions = show_TRho_Profile_kap_regions
         s% pg% show_TRho_Profile_eos_regions = show_TRho_Profile_eos_regions
         s% pg% show_TRho_Profile_gamma1_4_3rd = show_TRho_Profile_gamma1_4_3rd
         s% pg% show_TRho_Profile_burn_lines = show_TRho_Profile_burn_lines
         s% pg% show_TRho_Profile_degeneracy_line = show_TRho_Profile_degeneracy_line
         s% pg% show_TRho_Profile_Pgas_Prad_line = show_TRho_Profile_Pgas_Prad_line
         s% pg% show_TRho_Profile_annotation1 = show_TRho_Profile_annotation1
         s% pg% show_TRho_Profile_annotation2 = show_TRho_Profile_annotation2
         s% pg% show_TRho_Profile_annotation3 = show_TRho_Profile_annotation3
         s% pg% TRho_Profile_fname = TRho_Profile_fname
         s% pg% show_TRho_accretion_mesh_borders = show_TRho_accretion_mesh_borders
         s% pg% TRho_Profile_text_info_xfac = TRho_Profile_text_info_xfac
         s% pg% TRho_Profile_text_info_dxfac = TRho_Profile_text_info_dxfac
         s% pg% TRho_Profile_text_info_yfac = TRho_Profile_text_info_yfac
         s% pg% TRho_Profile_text_info_dyfac = TRho_Profile_text_info_dyfac
         s% pg% TRho_Profile_xmin = TRho_Profile_xmin
         s% pg% TRho_Profile_xmax = TRho_Profile_xmax
         s% pg% TRho_Profile_ymin = TRho_Profile_ymin
         s% pg% TRho_Profile_ymax = TRho_Profile_ymax
         s% pg% TRho_Profile_legend_coord = TRho_Profile_legend_coord
         s% pg% TRho_Profile_legend_fjust = TRho_Profile_legend_fjust
         s% pg% TRho_Profile_legend_disp1 = TRho_Profile_legend_disp1
         s% pg% TRho_Profile_legend_del_disp = TRho_Profile_legend_del_disp
         s% pg% TRho_Profile_legend_txt_scale = TRho_Profile_legend_txt_scale
         s% pg% TRho_Profile_win_width = TRho_Profile_win_width
         s% pg% TRho_Profile_win_aspect_ratio = TRho_Profile_win_aspect_ratio
         s% pg% TRho_Profile_xleft = TRho_Profile_xleft
         s% pg% TRho_Profile_xright = TRho_Profile_xright
         s% pg% TRho_Profile_ybot = TRho_Profile_ybot
         s% pg% TRho_Profile_ytop = TRho_Profile_ytop
         s% pg% TRho_Profile_txt_scale = TRho_Profile_txt_scale
         s% pg% TRho_Profile_file_width = TRho_Profile_file_width
         s% pg% TRho_Profile_file_aspect_ratio = TRho_Profile_file_aspect_ratio
         s% pg% TRho_Profile_title = TRho_Profile_title
         s% pg% num_profile_mass_points = num_profile_mass_points
         s% pg% profile_mass_point_q = profile_mass_point_q
         s% pg% profile_mass_point_color_index = profile_mass_point_color_index
         s% pg% profile_mass_point_symbol = profile_mass_point_symbol
         s% pg% profile_mass_point_symbol_scale = profile_mass_point_symbol_scale
         s% pg% profile_mass_point_str = profile_mass_point_str
         s% pg% profile_mass_point_str_clr = profile_mass_point_str_clr
         s% pg% profile_mass_point_str_scale = profile_mass_point_str_scale
         s% pg% TRho_Profile_use_decorator = TRho_Profile_use_decorator


         s% pg% History_Panels1_win_flag = History_Panels1_win_flag
         s% pg% History_Panels1_win_width = History_Panels1_win_width
         s% pg% History_Panels1_win_aspect_ratio = History_Panels1_win_aspect_ratio
         s% pg% History_Panels1_xleft = History_Panels1_xleft
         s% pg% History_Panels1_xright = History_Panels1_xright
         s% pg% History_Panels1_ybot = History_Panels1_ybot
         s% pg% History_Panels1_ytop = History_Panels1_ytop
         s% pg% History_Panels1_txt_scale = History_Panels1_txt_scale
         s% pg% History_Panels1_title = History_Panels1_title
         s% pg% History_Panels1_xmax = History_Panels1_xmax
         s% pg% History_Panels1_xmin = History_Panels1_xmin
         s% pg% History_Panels1_dxmin = History_Panels1_dxmin
         s% pg% History_Panels1_max_width = History_Panels1_max_width
         s% pg% History_Panels1_num_panels = History_Panels1_num_panels
         s% pg% History_Panels1_xaxis_name = History_Panels1_xaxis_name
         s% pg% History_Panels1_automatic_star_age_units = History_Panels1_automatic_star_age_units
         s% pg% History_Panels1_yaxis_name = History_Panels1_yaxis_name
         s% pg% History_Panels1_xaxis_reversed = History_Panels1_xaxis_reversed
         s% pg% History_Panels1_yaxis_reversed = History_Panels1_yaxis_reversed
         s% pg% History_Panels1_xaxis_log = History_Panels1_xaxis_log
         s% pg% History_Panels1_yaxis_log = History_Panels1_yaxis_log
         s% pg% History_Panels1_ymin = History_Panels1_ymin
         s% pg% History_Panels1_ymax = History_Panels1_ymax
         s% pg% History_Panels1_dymin = History_Panels1_dymin
         s% pg% History_Panels1_other_yaxis_name = History_Panels1_other_yaxis_name
         s% pg% History_Panels1_other_yaxis_reversed = History_Panels1_other_yaxis_reversed
         s% pg% History_Panels1_other_yaxis_log = History_Panels1_other_yaxis_log
         s% pg% History_Panels1_same_yaxis_range = History_Panels1_same_yaxis_range
         s% pg% History_Panels1_other_ymin = History_Panels1_other_ymin
         s% pg% History_Panels1_other_ymax = History_Panels1_other_ymax
         s% pg% History_Panels1_other_dymin = History_Panels1_other_dymin
         s% pg% History_Panels1_file_flag = History_Panels1_file_flag
         s% pg% History_Panels1_points_name = History_Panels1_points_name
         s% pg% History_Panels1_file_dir = History_Panels1_file_dir
         s% pg% History_Panels1_file_prefix = History_Panels1_file_prefix
         s% pg% History_Panels1_file_interval = History_Panels1_file_interval
         s% pg% History_Panels1_file_width = History_Panels1_file_width
         s% pg% History_Panels1_file_aspect_ratio = History_Panels1_file_aspect_ratio
         s% pg% History_Panels1_xmargin = History_Panels1_xmargin
         s% pg% History_Panels1_ymargin = History_Panels1_ymargin
         s% pg% History_Panels1_other_ymargin = History_Panels1_other_ymargin
         s% pg% History_Panels1_use_decorator = History_Panels1_use_decorator

         s% pg% History_Panels2_win_flag = History_Panels2_win_flag
         s% pg% History_Panels2_win_width = History_Panels2_win_width
         s% pg% History_Panels2_win_aspect_ratio = History_Panels2_win_aspect_ratio
         s% pg% History_Panels2_xleft = History_Panels2_xleft
         s% pg% History_Panels2_xright = History_Panels2_xright
         s% pg% History_Panels2_ybot = History_Panels2_ybot
         s% pg% History_Panels2_ytop = History_Panels2_ytop
         s% pg% History_Panels2_txt_scale = History_Panels2_txt_scale
         s% pg% History_Panels2_title = History_Panels2_title
         s% pg% History_Panels2_xmax = History_Panels2_xmax
         s% pg% History_Panels2_xmin = History_Panels2_xmin
         s% pg% History_Panels2_dxmin = History_Panels2_dxmin
         s% pg% History_Panels2_max_width = History_Panels2_max_width
         s% pg% History_Panels2_num_panels = History_Panels2_num_panels
         s% pg% History_Panels2_xaxis_name = History_Panels2_xaxis_name
         s% pg% History_Panels2_automatic_star_age_units = History_Panels2_automatic_star_age_units
         s% pg% History_Panels2_yaxis_name = History_Panels2_yaxis_name
         s% pg% History_Panels2_xaxis_reversed = History_Panels2_xaxis_reversed
         s% pg% History_Panels2_yaxis_reversed = History_Panels2_yaxis_reversed
         s% pg% History_Panels2_xaxis_log = History_Panels2_xaxis_log
         s% pg% History_Panels2_yaxis_log = History_Panels2_yaxis_log
         s% pg% History_Panels2_ymin = History_Panels2_ymin
         s% pg% History_Panels2_ymax = History_Panels2_ymax
         s% pg% History_Panels2_dymin = History_Panels2_dymin
         s% pg% History_Panels2_other_yaxis_name = History_Panels2_other_yaxis_name
         s% pg% History_Panels2_other_yaxis_reversed = History_Panels2_other_yaxis_reversed
         s% pg% History_Panels2_other_yaxis_log = History_Panels2_other_yaxis_log
         s% pg% History_Panels2_same_yaxis_range = History_Panels2_same_yaxis_range
         s% pg% History_Panels2_other_ymin = History_Panels2_other_ymin
         s% pg% History_Panels2_other_ymax = History_Panels2_other_ymax
         s% pg% History_Panels2_other_dymin = History_Panels2_other_dymin
         s% pg% History_Panels2_file_flag = History_Panels2_file_flag
         s% pg% History_Panels2_points_name = History_Panels2_points_name
         s% pg% History_Panels2_file_dir = History_Panels2_file_dir
         s% pg% History_Panels2_file_prefix = History_Panels2_file_prefix
         s% pg% History_Panels2_file_interval = History_Panels2_file_interval
         s% pg% History_Panels2_file_width = History_Panels2_file_width
         s% pg% History_Panels2_file_aspect_ratio = History_Panels2_file_aspect_ratio
         s% pg% History_Panels2_xmargin = History_Panels2_xmargin
         s% pg% History_Panels2_ymargin = History_Panels2_ymargin
         s% pg% History_Panels2_other_ymargin = History_Panels2_other_ymargin
         s% pg% History_Panels2_use_decorator = History_Panels2_use_decorator

         s% pg% History_Panels3_win_flag = History_Panels3_win_flag
         s% pg% History_Panels3_win_width = History_Panels3_win_width
         s% pg% History_Panels3_win_aspect_ratio = History_Panels3_win_aspect_ratio
         s% pg% History_Panels3_xleft = History_Panels3_xleft
         s% pg% History_Panels3_xright = History_Panels3_xright
         s% pg% History_Panels3_ybot = History_Panels3_ybot
         s% pg% History_Panels3_ytop = History_Panels3_ytop
         s% pg% History_Panels3_txt_scale = History_Panels3_txt_scale
         s% pg% History_Panels3_title = History_Panels3_title
         s% pg% History_Panels3_xmax = History_Panels3_xmax
         s% pg% History_Panels3_xmin = History_Panels3_xmin
         s% pg% History_Panels3_dxmin = History_Panels3_dxmin
         s% pg% History_Panels3_max_width = History_Panels3_max_width
         s% pg% History_Panels3_num_panels = History_Panels3_num_panels
         s% pg% History_Panels3_xaxis_name = History_Panels3_xaxis_name
         s% pg% History_Panels3_automatic_star_age_units = History_Panels3_automatic_star_age_units
         s% pg% History_Panels3_yaxis_name = History_Panels3_yaxis_name
         s% pg% History_Panels3_xaxis_reversed = History_Panels3_xaxis_reversed
         s% pg% History_Panels3_yaxis_reversed = History_Panels3_yaxis_reversed
         s% pg% History_Panels3_xaxis_log = History_Panels3_xaxis_log
         s% pg% History_Panels3_yaxis_log = History_Panels3_yaxis_log
         s% pg% History_Panels3_ymin = History_Panels3_ymin
         s% pg% History_Panels3_ymax = History_Panels3_ymax
         s% pg% History_Panels3_dymin = History_Panels3_dymin
         s% pg% History_Panels3_other_yaxis_name = History_Panels3_other_yaxis_name
         s% pg% History_Panels3_other_yaxis_reversed = History_Panels3_other_yaxis_reversed
         s% pg% History_Panels3_other_yaxis_log = History_Panels3_other_yaxis_log
         s% pg% History_Panels3_same_yaxis_range = History_Panels3_same_yaxis_range
         s% pg% History_Panels3_other_ymin = History_Panels3_other_ymin
         s% pg% History_Panels3_other_ymax = History_Panels3_other_ymax
         s% pg% History_Panels3_other_dymin = History_Panels3_other_dymin
         s% pg% History_Panels3_file_flag = History_Panels3_file_flag
         s% pg% History_Panels3_points_name = History_Panels3_points_name
         s% pg% History_Panels3_file_dir = History_Panels3_file_dir
         s% pg% History_Panels3_file_prefix = History_Panels3_file_prefix
         s% pg% History_Panels3_file_interval = History_Panels3_file_interval
         s% pg% History_Panels3_file_width = History_Panels3_file_width
         s% pg% History_Panels3_file_aspect_ratio = History_Panels3_file_aspect_ratio
         s% pg% History_Panels3_xmargin = History_Panels3_xmargin
         s% pg% History_Panels3_ymargin = History_Panels3_ymargin
         s% pg% History_Panels3_other_ymargin = History_Panels3_other_ymargin
         s% pg% History_Panels3_use_decorator = History_Panels3_use_decorator

         s% pg% History_Panels4_win_flag = History_Panels4_win_flag
         s% pg% History_Panels4_win_width = History_Panels4_win_width
         s% pg% History_Panels4_win_aspect_ratio = History_Panels4_win_aspect_ratio
         s% pg% History_Panels4_xleft = History_Panels4_xleft
         s% pg% History_Panels4_xright = History_Panels4_xright
         s% pg% History_Panels4_ybot = History_Panels4_ybot
         s% pg% History_Panels4_ytop = History_Panels4_ytop
         s% pg% History_Panels4_txt_scale = History_Panels4_txt_scale
         s% pg% History_Panels4_title = History_Panels4_title
         s% pg% History_Panels4_xmax = History_Panels4_xmax
         s% pg% History_Panels4_xmin = History_Panels4_xmin
         s% pg% History_Panels4_dxmin = History_Panels4_dxmin
         s% pg% History_Panels4_max_width = History_Panels4_max_width
         s% pg% History_Panels4_num_panels = History_Panels4_num_panels
         s% pg% History_Panels4_xaxis_name = History_Panels4_xaxis_name
         s% pg% History_Panels4_automatic_star_age_units = History_Panels4_automatic_star_age_units
         s% pg% History_Panels4_yaxis_name = History_Panels4_yaxis_name
         s% pg% History_Panels4_xaxis_reversed = History_Panels4_xaxis_reversed
         s% pg% History_Panels4_yaxis_reversed = History_Panels4_yaxis_reversed
         s% pg% History_Panels4_xaxis_log = History_Panels4_xaxis_log
         s% pg% History_Panels4_yaxis_log = History_Panels4_yaxis_log
         s% pg% History_Panels4_ymin = History_Panels4_ymin
         s% pg% History_Panels4_ymax = History_Panels4_ymax
         s% pg% History_Panels4_dymin = History_Panels4_dymin
         s% pg% History_Panels4_other_yaxis_name = History_Panels4_other_yaxis_name
         s% pg% History_Panels4_other_yaxis_reversed = History_Panels4_other_yaxis_reversed
         s% pg% History_Panels4_other_yaxis_log = History_Panels4_other_yaxis_log
         s% pg% History_Panels4_same_yaxis_range = History_Panels4_same_yaxis_range
         s% pg% History_Panels4_other_ymin = History_Panels4_other_ymin
         s% pg% History_Panels4_other_ymax = History_Panels4_other_ymax
         s% pg% History_Panels4_other_dymin = History_Panels4_other_dymin
         s% pg% History_Panels4_file_flag = History_Panels4_file_flag
         s% pg% History_Panels4_points_name = History_Panels4_points_name
         s% pg% History_Panels4_file_dir = History_Panels4_file_dir
         s% pg% History_Panels4_file_prefix = History_Panels4_file_prefix
         s% pg% History_Panels4_file_interval = History_Panels4_file_interval
         s% pg% History_Panels4_file_width = History_Panels4_file_width
         s% pg% History_Panels4_file_aspect_ratio = History_Panels4_file_aspect_ratio
         s% pg% History_Panels4_xmargin = History_Panels4_xmargin
         s% pg% History_Panels4_ymargin = History_Panels4_ymargin
         s% pg% History_Panels4_other_ymargin = History_Panels4_other_ymargin
         s% pg% History_Panels4_use_decorator = History_Panels4_use_decorator

         s% pg% History_Panels5_win_flag = History_Panels5_win_flag
         s% pg% History_Panels5_win_width = History_Panels5_win_width
         s% pg% History_Panels5_win_aspect_ratio = History_Panels5_win_aspect_ratio
         s% pg% History_Panels5_xleft = History_Panels5_xleft
         s% pg% History_Panels5_xright = History_Panels5_xright
         s% pg% History_Panels5_ybot = History_Panels5_ybot
         s% pg% History_Panels5_ytop = History_Panels5_ytop
         s% pg% History_Panels5_txt_scale = History_Panels5_txt_scale
         s% pg% History_Panels5_title = History_Panels5_title
         s% pg% History_Panels5_xmax = History_Panels5_xmax
         s% pg% History_Panels5_xmin = History_Panels5_xmin
         s% pg% History_Panels5_dxmin = History_Panels5_dxmin
         s% pg% History_Panels5_max_width = History_Panels5_max_width
         s% pg% History_Panels5_num_panels = History_Panels5_num_panels
         s% pg% History_Panels5_xaxis_name = History_Panels5_xaxis_name
         s% pg% History_Panels5_automatic_star_age_units = History_Panels5_automatic_star_age_units
         s% pg% History_Panels5_yaxis_name = History_Panels5_yaxis_name
         s% pg% History_Panels5_xaxis_reversed = History_Panels5_xaxis_reversed
         s% pg% History_Panels5_yaxis_reversed = History_Panels5_yaxis_reversed
         s% pg% History_Panels5_xaxis_log = History_Panels5_xaxis_log
         s% pg% History_Panels5_yaxis_log = History_Panels5_yaxis_log
         s% pg% History_Panels5_ymin = History_Panels5_ymin
         s% pg% History_Panels5_ymax = History_Panels5_ymax
         s% pg% History_Panels5_dymin = History_Panels5_dymin
         s% pg% History_Panels5_other_yaxis_name = History_Panels5_other_yaxis_name
         s% pg% History_Panels5_other_yaxis_reversed = History_Panels5_other_yaxis_reversed
         s% pg% History_Panels5_other_yaxis_log = History_Panels5_other_yaxis_log
         s% pg% History_Panels5_same_yaxis_range = History_Panels5_same_yaxis_range
         s% pg% History_Panels5_other_ymin = History_Panels5_other_ymin
         s% pg% History_Panels5_other_ymax = History_Panels5_other_ymax
         s% pg% History_Panels5_other_dymin = History_Panels5_other_dymin
         s% pg% History_Panels5_file_flag = History_Panels5_file_flag
         s% pg% History_Panels5_points_name = History_Panels5_points_name
         s% pg% History_Panels5_file_dir = History_Panels5_file_dir
         s% pg% History_Panels5_file_prefix = History_Panels5_file_prefix
         s% pg% History_Panels5_file_interval = History_Panels5_file_interval
         s% pg% History_Panels5_file_width = History_Panels5_file_width
         s% pg% History_Panels5_file_aspect_ratio = History_Panels5_file_aspect_ratio
         s% pg% History_Panels5_xmargin = History_Panels5_xmargin
         s% pg% History_Panels5_ymargin = History_Panels5_ymargin
         s% pg% History_Panels5_other_ymargin = History_Panels5_other_ymargin
         s% pg% History_Panels5_use_decorator = History_Panels5_use_decorator

         s% pg% History_Panels6_win_flag = History_Panels6_win_flag
         s% pg% History_Panels6_win_width = History_Panels6_win_width
         s% pg% History_Panels6_win_aspect_ratio = History_Panels6_win_aspect_ratio
         s% pg% History_Panels6_xleft = History_Panels6_xleft
         s% pg% History_Panels6_xright = History_Panels6_xright
         s% pg% History_Panels6_ybot = History_Panels6_ybot
         s% pg% History_Panels6_ytop = History_Panels6_ytop
         s% pg% History_Panels6_txt_scale = History_Panels6_txt_scale
         s% pg% History_Panels6_title = History_Panels6_title
         s% pg% History_Panels6_xmax = History_Panels6_xmax
         s% pg% History_Panels6_xmin = History_Panels6_xmin
         s% pg% History_Panels6_dxmin = History_Panels6_dxmin
         s% pg% History_Panels6_max_width = History_Panels6_max_width
         s% pg% History_Panels6_num_panels = History_Panels6_num_panels
         s% pg% History_Panels6_xaxis_name = History_Panels6_xaxis_name
         s% pg% History_Panels6_automatic_star_age_units = History_Panels6_automatic_star_age_units
         s% pg% History_Panels6_yaxis_name = History_Panels6_yaxis_name
         s% pg% History_Panels6_xaxis_reversed = History_Panels6_xaxis_reversed
         s% pg% History_Panels6_yaxis_reversed = History_Panels6_yaxis_reversed
         s% pg% History_Panels6_xaxis_log = History_Panels6_xaxis_log
         s% pg% History_Panels6_yaxis_log = History_Panels6_yaxis_log
         s% pg% History_Panels6_ymin = History_Panels6_ymin
         s% pg% History_Panels6_ymax = History_Panels6_ymax
         s% pg% History_Panels6_dymin = History_Panels6_dymin
         s% pg% History_Panels6_other_yaxis_name = History_Panels6_other_yaxis_name
         s% pg% History_Panels6_other_yaxis_reversed = History_Panels6_other_yaxis_reversed
         s% pg% History_Panels6_other_yaxis_log = History_Panels6_other_yaxis_log
         s% pg% History_Panels6_same_yaxis_range = History_Panels6_same_yaxis_range
         s% pg% History_Panels6_other_ymin = History_Panels6_other_ymin
         s% pg% History_Panels6_other_ymax = History_Panels6_other_ymax
         s% pg% History_Panels6_other_dymin = History_Panels6_other_dymin
         s% pg% History_Panels6_file_flag = History_Panels6_file_flag
         s% pg% History_Panels6_points_name = History_Panels6_points_name
         s% pg% History_Panels6_file_dir = History_Panels6_file_dir
         s% pg% History_Panels6_file_prefix = History_Panels6_file_prefix
         s% pg% History_Panels6_file_interval = History_Panels6_file_interval
         s% pg% History_Panels6_file_width = History_Panels6_file_width
         s% pg% History_Panels6_file_aspect_ratio = History_Panels6_file_aspect_ratio
         s% pg% History_Panels6_xmargin = History_Panels6_xmargin
         s% pg% History_Panels6_ymargin = History_Panels6_ymargin
         s% pg% History_Panels6_other_ymargin = History_Panels6_other_ymargin
         s% pg% History_Panels6_use_decorator = History_Panels6_use_decorator

         s% pg% History_Panels7_win_flag = History_Panels7_win_flag
         s% pg% History_Panels7_win_width = History_Panels7_win_width
         s% pg% History_Panels7_win_aspect_ratio = History_Panels7_win_aspect_ratio
         s% pg% History_Panels7_xleft = History_Panels7_xleft
         s% pg% History_Panels7_xright = History_Panels7_xright
         s% pg% History_Panels7_ybot = History_Panels7_ybot
         s% pg% History_Panels7_ytop = History_Panels7_ytop
         s% pg% History_Panels7_txt_scale = History_Panels7_txt_scale
         s% pg% History_Panels7_title = History_Panels7_title
         s% pg% History_Panels7_xmax = History_Panels7_xmax
         s% pg% History_Panels7_xmin = History_Panels7_xmin
         s% pg% History_Panels7_dxmin = History_Panels7_dxmin
         s% pg% History_Panels7_max_width = History_Panels7_max_width
         s% pg% History_Panels7_num_panels = History_Panels7_num_panels
         s% pg% History_Panels7_xaxis_name = History_Panels7_xaxis_name
         s% pg% History_Panels7_automatic_star_age_units = History_Panels7_automatic_star_age_units
         s% pg% History_Panels7_yaxis_name = History_Panels7_yaxis_name
         s% pg% History_Panels7_xaxis_reversed = History_Panels7_xaxis_reversed
         s% pg% History_Panels7_yaxis_reversed = History_Panels7_yaxis_reversed
         s% pg% History_Panels7_xaxis_log = History_Panels7_xaxis_log
         s% pg% History_Panels7_yaxis_log = History_Panels7_yaxis_log
         s% pg% History_Panels7_ymin = History_Panels7_ymin
         s% pg% History_Panels7_ymax = History_Panels7_ymax
         s% pg% History_Panels7_dymin = History_Panels7_dymin
         s% pg% History_Panels7_other_yaxis_name = History_Panels7_other_yaxis_name
         s% pg% History_Panels7_other_yaxis_reversed = History_Panels7_other_yaxis_reversed
         s% pg% History_Panels7_other_yaxis_log = History_Panels7_other_yaxis_log
         s% pg% History_Panels7_same_yaxis_range = History_Panels7_same_yaxis_range
         s% pg% History_Panels7_other_ymin = History_Panels7_other_ymin
         s% pg% History_Panels7_other_ymax = History_Panels7_other_ymax
         s% pg% History_Panels7_other_dymin = History_Panels7_other_dymin
         s% pg% History_Panels7_file_flag = History_Panels7_file_flag
         s% pg% History_Panels7_points_name = History_Panels7_points_name
         s% pg% History_Panels7_file_dir = History_Panels7_file_dir
         s% pg% History_Panels7_file_prefix = History_Panels7_file_prefix
         s% pg% History_Panels7_file_interval = History_Panels7_file_interval
         s% pg% History_Panels7_file_width = History_Panels7_file_width
         s% pg% History_Panels7_file_aspect_ratio = History_Panels7_file_aspect_ratio
         s% pg% History_Panels7_xmargin = History_Panels7_xmargin
         s% pg% History_Panels7_ymargin = History_Panels7_ymargin
         s% pg% History_Panels7_other_ymargin = History_Panels7_other_ymargin
         s% pg% History_Panels7_use_decorator = History_Panels7_use_decorator

         s% pg% History_Panels8_win_flag = History_Panels8_win_flag
         s% pg% History_Panels8_win_width = History_Panels8_win_width
         s% pg% History_Panels8_win_aspect_ratio = History_Panels8_win_aspect_ratio
         s% pg% History_Panels8_xleft = History_Panels8_xleft
         s% pg% History_Panels8_xright = History_Panels8_xright
         s% pg% History_Panels8_ybot = History_Panels8_ybot
         s% pg% History_Panels8_ytop = History_Panels8_ytop
         s% pg% History_Panels8_txt_scale = History_Panels8_txt_scale
         s% pg% History_Panels8_title = History_Panels8_title
         s% pg% History_Panels8_xmax = History_Panels8_xmax
         s% pg% History_Panels8_xmin = History_Panels8_xmin
         s% pg% History_Panels8_dxmin = History_Panels8_dxmin
         s% pg% History_Panels8_max_width = History_Panels8_max_width
         s% pg% History_Panels8_num_panels = History_Panels8_num_panels
         s% pg% History_Panels8_xaxis_name = History_Panels8_xaxis_name
         s% pg% History_Panels8_automatic_star_age_units = History_Panels8_automatic_star_age_units
         s% pg% History_Panels8_yaxis_name = History_Panels8_yaxis_name
         s% pg% History_Panels8_xaxis_reversed = History_Panels8_xaxis_reversed
         s% pg% History_Panels8_yaxis_reversed = History_Panels8_yaxis_reversed
         s% pg% History_Panels8_xaxis_log = History_Panels8_xaxis_log
         s% pg% History_Panels8_yaxis_log = History_Panels8_yaxis_log
         s% pg% History_Panels8_ymin = History_Panels8_ymin
         s% pg% History_Panels8_ymax = History_Panels8_ymax
         s% pg% History_Panels8_dymin = History_Panels8_dymin
         s% pg% History_Panels8_other_yaxis_name = History_Panels8_other_yaxis_name
         s% pg% History_Panels8_other_yaxis_reversed = History_Panels8_other_yaxis_reversed
         s% pg% History_Panels8_other_yaxis_log = History_Panels8_other_yaxis_log
         s% pg% History_Panels8_same_yaxis_range = History_Panels8_same_yaxis_range
         s% pg% History_Panels8_other_ymin = History_Panels8_other_ymin
         s% pg% History_Panels8_other_ymax = History_Panels8_other_ymax
         s% pg% History_Panels8_other_dymin = History_Panels8_other_dymin
         s% pg% History_Panels8_file_flag = History_Panels8_file_flag
         s% pg% History_Panels8_points_name = History_Panels8_points_name
         s% pg% History_Panels8_file_dir = History_Panels8_file_dir
         s% pg% History_Panels8_file_prefix = History_Panels8_file_prefix
         s% pg% History_Panels8_file_interval = History_Panels8_file_interval
         s% pg% History_Panels8_file_width = History_Panels8_file_width
         s% pg% History_Panels8_file_aspect_ratio = History_Panels8_file_aspect_ratio
         s% pg% History_Panels8_xmargin = History_Panels8_xmargin
         s% pg% History_Panels8_ymargin = History_Panels8_ymargin
         s% pg% History_Panels8_other_ymargin = History_Panels8_other_ymargin
         s% pg% History_Panels8_use_decorator = History_Panels8_use_decorator

         s% pg% History_Panels9_win_flag = History_Panels9_win_flag
         s% pg% History_Panels9_win_width = History_Panels9_win_width
         s% pg% History_Panels9_win_aspect_ratio = History_Panels9_win_aspect_ratio
         s% pg% History_Panels9_xleft = History_Panels9_xleft
         s% pg% History_Panels9_xright = History_Panels9_xright
         s% pg% History_Panels9_ybot = History_Panels9_ybot
         s% pg% History_Panels9_ytop = History_Panels9_ytop
         s% pg% History_Panels9_txt_scale = History_Panels9_txt_scale
         s% pg% History_Panels9_title = History_Panels9_title
         s% pg% History_Panels9_xmax = History_Panels9_xmax
         s% pg% History_Panels9_xmin = History_Panels9_xmin
         s% pg% History_Panels9_dxmin = History_Panels9_dxmin
         s% pg% History_Panels9_max_width = History_Panels9_max_width
         s% pg% History_Panels9_num_panels = History_Panels9_num_panels
         s% pg% History_Panels9_xaxis_name = History_Panels9_xaxis_name
         s% pg% History_Panels9_automatic_star_age_units = History_Panels9_automatic_star_age_units
         s% pg% History_Panels9_yaxis_name = History_Panels9_yaxis_name
         s% pg% History_Panels9_xaxis_reversed = History_Panels9_xaxis_reversed
         s% pg% History_Panels9_yaxis_reversed = History_Panels9_yaxis_reversed
         s% pg% History_Panels9_xaxis_log = History_Panels9_xaxis_log
         s% pg% History_Panels9_yaxis_log = History_Panels9_yaxis_log
         s% pg% History_Panels9_ymin = History_Panels9_ymin
         s% pg% History_Panels9_ymax = History_Panels9_ymax
         s% pg% History_Panels9_dymin = History_Panels9_dymin
         s% pg% History_Panels9_other_yaxis_name = History_Panels9_other_yaxis_name
         s% pg% History_Panels9_other_yaxis_reversed = History_Panels9_other_yaxis_reversed
         s% pg% History_Panels9_other_yaxis_log = History_Panels9_other_yaxis_log
         s% pg% History_Panels9_same_yaxis_range = History_Panels9_same_yaxis_range
         s% pg% History_Panels9_other_ymin = History_Panels9_other_ymin
         s% pg% History_Panels9_other_ymax = History_Panels9_other_ymax
         s% pg% History_Panels9_other_dymin = History_Panels9_other_dymin
         s% pg% History_Panels9_file_flag = History_Panels9_file_flag
         s% pg% History_Panels9_points_name = History_Panels9_points_name
         s% pg% History_Panels9_file_flag = History_Panels9_file_flag
         s% pg% History_Panels9_file_dir = History_Panels9_file_dir
         s% pg% History_Panels9_file_prefix = History_Panels9_file_prefix
         s% pg% History_Panels9_file_interval = History_Panels9_file_interval
         s% pg% History_Panels9_file_width = History_Panels9_file_width
         s% pg% History_Panels9_file_aspect_ratio = History_Panels9_file_aspect_ratio
         s% pg% History_Panels9_xmargin = History_Panels9_xmargin
         s% pg% History_Panels9_ymargin = History_Panels9_ymargin
         s% pg% History_Panels9_other_ymargin = History_Panels9_other_ymargin
         s% pg% History_Panels9_use_decorator = History_Panels9_use_decorator

         s% pg% History_Panel_points_error_bars = History_Panel_points_error_bars
         s% pg% History_Panel_points_interval = History_Panel_points_interval
         s% pg% History_Panel_points_marker = History_Panel_points_marker
         s% pg% History_Panel_points_ci = History_Panel_points_ci
         s% pg% History_Panel_points_lw = History_Panel_points_lw
         s% pg% History_Panel_points_ch = History_Panel_points_ch

         s% pg% Color_Magnitude1_win_flag = Color_Magnitude1_win_flag
         s% pg% Color_Magnitude1_win_width = Color_Magnitude1_win_width
         s% pg% Color_Magnitude1_win_aspect_ratio = Color_Magnitude1_win_aspect_ratio
         s% pg% Color_Magnitude1_xleft = Color_Magnitude1_xleft
         s% pg% Color_Magnitude1_xright = Color_Magnitude1_xright
         s% pg% Color_Magnitude1_ybot = Color_Magnitude1_ybot
         s% pg% Color_Magnitude1_ytop = Color_Magnitude1_ytop
         s% pg% Color_Magnitude1_txt_scale = Color_Magnitude1_txt_scale
         s% pg% Color_Magnitude1_title = Color_Magnitude1_title
         s% pg% Color_Magnitude1_xmax = Color_Magnitude1_xmax
         s% pg% Color_Magnitude1_xmin = Color_Magnitude1_xmin
         s% pg% Color_Magnitude1_dxmin = Color_Magnitude1_dxmin
         s% pg% Color_Magnitude1_max_width = Color_Magnitude1_max_width
         s% pg% Color_Magnitude1_num_panels = Color_Magnitude1_num_panels
         s% pg% Color_Magnitude1_xaxis1_name = Color_Magnitude1_xaxis1_name
         s% pg% Color_Magnitude1_xaxis2_name = Color_Magnitude1_xaxis2_name
         s% pg% Color_Magnitude1_yaxis1_name = Color_Magnitude1_yaxis1_name
         s% pg% Color_Magnitude1_yaxis2_name = Color_Magnitude1_yaxis2_name
         s% pg% Color_Magnitude1_xaxis_reversed = Color_Magnitude1_xaxis_reversed
         s% pg% Color_Magnitude1_yaxis_reversed = Color_Magnitude1_yaxis_reversed
         s% pg% Color_Magnitude1_xaxis_log = Color_Magnitude1_xaxis_log
         s% pg% Color_Magnitude1_yaxis_log = Color_Magnitude1_yaxis_log
         s% pg% Color_Magnitude1_ymin = Color_Magnitude1_ymin
         s% pg% Color_Magnitude1_ymax = Color_Magnitude1_ymax
         s% pg% Color_Magnitude1_dymin = Color_Magnitude1_dymin
         s% pg% Color_Magnitude1_other_yaxis1_name = Color_Magnitude1_other_yaxis1_name
         s% pg% Color_Magnitude1_other_yaxis2_name = Color_Magnitude1_other_yaxis2_name
         s% pg% Color_Magnitude1_other_yaxis_reversed = Color_Magnitude1_other_yaxis_reversed
         s% pg% Color_Magnitude1_other_yaxis_log = Color_Magnitude1_other_yaxis_log
         s% pg% Color_Magnitude1_other_ymin = Color_Magnitude1_other_ymin
         s% pg% Color_Magnitude1_other_ymax = Color_Magnitude1_other_ymax
         s% pg% Color_Magnitude1_other_dymin = Color_Magnitude1_other_dymin
         s% pg% Color_Magnitude1_file_flag = Color_Magnitude1_file_flag
         s% pg% Color_Magnitude1_file_dir = Color_Magnitude1_file_dir
         s% pg% Color_Magnitude1_file_prefix = Color_Magnitude1_file_prefix
         s% pg% Color_Magnitude1_file_interval = Color_Magnitude1_file_interval
         s% pg% Color_Magnitude1_file_width = Color_Magnitude1_file_width
         s% pg% Color_Magnitude1_file_aspect_ratio = Color_Magnitude1_file_aspect_ratio
         s% pg% Color_Magnitude1_xmargin = Color_Magnitude1_xmargin
         s% pg% Color_Magnitude1_ymargin = Color_Magnitude1_ymargin
         s% pg% Color_Magnitude1_other_ymargin = Color_Magnitude1_other_ymargin
         s% pg% Color_Magnitude1_use_decorator = Color_Magnitude1_use_decorator

         s% pg% Color_Magnitude2_win_flag = Color_Magnitude2_win_flag
         s% pg% Color_Magnitude2_win_width = Color_Magnitude2_win_width
         s% pg% Color_Magnitude2_win_aspect_ratio = Color_Magnitude2_win_aspect_ratio
         s% pg% Color_Magnitude2_xleft = Color_Magnitude2_xleft
         s% pg% Color_Magnitude2_xright = Color_Magnitude2_xright
         s% pg% Color_Magnitude2_ybot = Color_Magnitude2_ybot
         s% pg% Color_Magnitude2_ytop = Color_Magnitude2_ytop
         s% pg% Color_Magnitude2_txt_scale = Color_Magnitude2_txt_scale
         s% pg% Color_Magnitude2_title = Color_Magnitude2_title
         s% pg% Color_Magnitude2_xmax = Color_Magnitude2_xmax
         s% pg% Color_Magnitude2_xmin = Color_Magnitude2_xmin
         s% pg% Color_Magnitude2_dxmin = Color_Magnitude2_dxmin
         s% pg% Color_Magnitude2_max_width = Color_Magnitude2_max_width
         s% pg% Color_Magnitude2_num_panels = Color_Magnitude2_num_panels
         s% pg% Color_Magnitude2_xaxis1_name = Color_Magnitude2_xaxis1_name
         s% pg% Color_Magnitude2_xaxis2_name = Color_Magnitude2_xaxis2_name
         s% pg% Color_Magnitude2_yaxis1_name = Color_Magnitude2_yaxis1_name
         s% pg% Color_Magnitude2_yaxis2_name = Color_Magnitude2_yaxis2_name
         s% pg% Color_Magnitude2_xaxis_reversed = Color_Magnitude2_xaxis_reversed
         s% pg% Color_Magnitude2_yaxis_reversed = Color_Magnitude2_yaxis_reversed
         s% pg% Color_Magnitude2_xaxis_log = Color_Magnitude2_xaxis_log
         s% pg% Color_Magnitude2_yaxis_log = Color_Magnitude2_yaxis_log
         s% pg% Color_Magnitude2_ymin = Color_Magnitude2_ymin
         s% pg% Color_Magnitude2_ymax = Color_Magnitude2_ymax
         s% pg% Color_Magnitude2_dymin = Color_Magnitude2_dymin
         s% pg% Color_Magnitude2_other_yaxis1_name = Color_Magnitude2_other_yaxis1_name
         s% pg% Color_Magnitude2_other_yaxis2_name = Color_Magnitude2_other_yaxis2_name
         s% pg% Color_Magnitude2_other_yaxis_reversed = Color_Magnitude2_other_yaxis_reversed
         s% pg% Color_Magnitude2_other_yaxis_log = Color_Magnitude2_other_yaxis_log
         s% pg% Color_Magnitude2_other_ymin = Color_Magnitude2_other_ymin
         s% pg% Color_Magnitude2_other_ymax = Color_Magnitude2_other_ymax
         s% pg% Color_Magnitude2_other_dymin = Color_Magnitude2_other_dymin
         s% pg% Color_Magnitude2_file_flag = Color_Magnitude2_file_flag
         s% pg% Color_Magnitude2_file_dir = Color_Magnitude2_file_dir
         s% pg% Color_Magnitude2_file_prefix = Color_Magnitude2_file_prefix
         s% pg% Color_Magnitude2_file_interval = Color_Magnitude2_file_interval
         s% pg% Color_Magnitude2_file_width = Color_Magnitude2_file_width
         s% pg% Color_Magnitude2_file_aspect_ratio = Color_Magnitude2_file_aspect_ratio
         s% pg% Color_Magnitude2_xmargin = Color_Magnitude2_xmargin
         s% pg% Color_Magnitude2_ymargin = Color_Magnitude2_ymargin
         s% pg% Color_Magnitude2_other_ymargin = Color_Magnitude2_other_ymargin
         s% pg% Color_Magnitude2_use_decorator = Color_Magnitude2_use_decorator

         s% pg% Color_Magnitude3_win_flag = Color_Magnitude3_win_flag
         s% pg% Color_Magnitude3_win_width = Color_Magnitude3_win_width
         s% pg% Color_Magnitude3_win_aspect_ratio = Color_Magnitude3_win_aspect_ratio
         s% pg% Color_Magnitude3_xleft = Color_Magnitude3_xleft
         s% pg% Color_Magnitude3_xright = Color_Magnitude3_xright
         s% pg% Color_Magnitude3_ybot = Color_Magnitude3_ybot
         s% pg% Color_Magnitude3_ytop = Color_Magnitude3_ytop
         s% pg% Color_Magnitude3_txt_scale = Color_Magnitude3_txt_scale
         s% pg% Color_Magnitude3_title = Color_Magnitude3_title
         s% pg% Color_Magnitude3_xmax = Color_Magnitude3_xmax
         s% pg% Color_Magnitude3_xmin = Color_Magnitude3_xmin
         s% pg% Color_Magnitude3_dxmin = Color_Magnitude3_dxmin
         s% pg% Color_Magnitude3_max_width = Color_Magnitude3_max_width
         s% pg% Color_Magnitude3_num_panels = Color_Magnitude3_num_panels
         s% pg% Color_Magnitude3_xaxis1_name = Color_Magnitude3_xaxis1_name
         s% pg% Color_Magnitude3_xaxis2_name = Color_Magnitude3_xaxis2_name
         s% pg% Color_Magnitude3_yaxis1_name = Color_Magnitude3_yaxis1_name
         s% pg% Color_Magnitude3_yaxis2_name = Color_Magnitude3_yaxis2_name
         s% pg% Color_Magnitude3_xaxis_reversed = Color_Magnitude3_xaxis_reversed
         s% pg% Color_Magnitude3_yaxis_reversed = Color_Magnitude3_yaxis_reversed
         s% pg% Color_Magnitude3_xaxis_log = Color_Magnitude3_xaxis_log
         s% pg% Color_Magnitude3_yaxis_log = Color_Magnitude3_yaxis_log
         s% pg% Color_Magnitude3_ymin = Color_Magnitude3_ymin
         s% pg% Color_Magnitude3_ymax = Color_Magnitude3_ymax
         s% pg% Color_Magnitude3_dymin = Color_Magnitude3_dymin
         s% pg% Color_Magnitude3_other_yaxis1_name = Color_Magnitude3_other_yaxis1_name
         s% pg% Color_Magnitude3_other_yaxis2_name = Color_Magnitude3_other_yaxis2_name
         s% pg% Color_Magnitude3_other_yaxis_reversed = Color_Magnitude3_other_yaxis_reversed
         s% pg% Color_Magnitude3_other_yaxis_log = Color_Magnitude3_other_yaxis_log
         s% pg% Color_Magnitude3_other_ymin = Color_Magnitude3_other_ymin
         s% pg% Color_Magnitude3_other_ymax = Color_Magnitude3_other_ymax
         s% pg% Color_Magnitude3_other_dymin = Color_Magnitude3_other_dymin
         s% pg% Color_Magnitude3_file_flag = Color_Magnitude3_file_flag
         s% pg% Color_Magnitude3_file_dir = Color_Magnitude3_file_dir
         s% pg% Color_Magnitude3_file_prefix = Color_Magnitude3_file_prefix
         s% pg% Color_Magnitude3_file_interval = Color_Magnitude3_file_interval
         s% pg% Color_Magnitude3_file_width = Color_Magnitude3_file_width
         s% pg% Color_Magnitude3_file_aspect_ratio = Color_Magnitude3_file_aspect_ratio
         s% pg% Color_Magnitude3_xmargin = Color_Magnitude3_xmargin
         s% pg% Color_Magnitude3_ymargin = Color_Magnitude3_ymargin
         s% pg% Color_Magnitude3_other_ymargin = Color_Magnitude3_other_ymargin
         s% pg% Color_Magnitude3_use_decorator = Color_Magnitude3_use_decorator

         s% pg% Color_Magnitude4_win_flag = Color_Magnitude4_win_flag
         s% pg% Color_Magnitude4_win_width = Color_Magnitude4_win_width
         s% pg% Color_Magnitude4_win_aspect_ratio = Color_Magnitude4_win_aspect_ratio
         s% pg% Color_Magnitude4_xleft = Color_Magnitude4_xleft
         s% pg% Color_Magnitude4_xright = Color_Magnitude4_xright
         s% pg% Color_Magnitude4_ybot = Color_Magnitude4_ybot
         s% pg% Color_Magnitude4_ytop = Color_Magnitude4_ytop
         s% pg% Color_Magnitude4_txt_scale = Color_Magnitude4_txt_scale
         s% pg% Color_Magnitude4_title = Color_Magnitude4_title
         s% pg% Color_Magnitude4_xmax = Color_Magnitude4_xmax
         s% pg% Color_Magnitude4_xmin = Color_Magnitude4_xmin
         s% pg% Color_Magnitude4_dxmin = Color_Magnitude4_dxmin
         s% pg% Color_Magnitude4_max_width = Color_Magnitude4_max_width
         s% pg% Color_Magnitude4_num_panels = Color_Magnitude4_num_panels
         s% pg% Color_Magnitude4_xaxis1_name = Color_Magnitude4_xaxis1_name
         s% pg% Color_Magnitude4_xaxis2_name = Color_Magnitude4_xaxis2_name
         s% pg% Color_Magnitude4_yaxis1_name = Color_Magnitude4_yaxis1_name
         s% pg% Color_Magnitude4_yaxis2_name = Color_Magnitude4_yaxis2_name
         s% pg% Color_Magnitude4_xaxis_reversed = Color_Magnitude4_xaxis_reversed
         s% pg% Color_Magnitude4_yaxis_reversed = Color_Magnitude4_yaxis_reversed
         s% pg% Color_Magnitude4_xaxis_log = Color_Magnitude4_xaxis_log
         s% pg% Color_Magnitude4_yaxis_log = Color_Magnitude4_yaxis_log
         s% pg% Color_Magnitude4_ymin = Color_Magnitude4_ymin
         s% pg% Color_Magnitude4_ymax = Color_Magnitude4_ymax
         s% pg% Color_Magnitude4_dymin = Color_Magnitude4_dymin
         s% pg% Color_Magnitude4_other_yaxis1_name = Color_Magnitude4_other_yaxis1_name
         s% pg% Color_Magnitude4_other_yaxis2_name = Color_Magnitude4_other_yaxis2_name
         s% pg% Color_Magnitude4_other_yaxis_reversed = Color_Magnitude4_other_yaxis_reversed
         s% pg% Color_Magnitude4_other_yaxis_log = Color_Magnitude4_other_yaxis_log
         s% pg% Color_Magnitude4_other_ymin = Color_Magnitude4_other_ymin
         s% pg% Color_Magnitude4_other_ymax = Color_Magnitude4_other_ymax
         s% pg% Color_Magnitude4_other_dymin = Color_Magnitude4_other_dymin
         s% pg% Color_Magnitude4_file_flag = Color_Magnitude4_file_flag
         s% pg% Color_Magnitude4_file_dir = Color_Magnitude4_file_dir
         s% pg% Color_Magnitude4_file_prefix = Color_Magnitude4_file_prefix
         s% pg% Color_Magnitude4_file_interval = Color_Magnitude4_file_interval
         s% pg% Color_Magnitude4_file_width = Color_Magnitude4_file_width
         s% pg% Color_Magnitude4_file_aspect_ratio = Color_Magnitude4_file_aspect_ratio
         s% pg% Color_Magnitude4_xmargin = Color_Magnitude4_xmargin
         s% pg% Color_Magnitude4_ymargin = Color_Magnitude4_ymargin
         s% pg% Color_Magnitude4_other_ymargin = Color_Magnitude4_other_ymargin
         s% pg% Color_Magnitude4_use_decorator = Color_Magnitude4_use_decorator

         s% pg% Color_Magnitude5_win_flag = Color_Magnitude5_win_flag
         s% pg% Color_Magnitude5_win_width = Color_Magnitude5_win_width
         s% pg% Color_Magnitude5_win_aspect_ratio = Color_Magnitude5_win_aspect_ratio
         s% pg% Color_Magnitude5_xleft = Color_Magnitude5_xleft
         s% pg% Color_Magnitude5_xright = Color_Magnitude5_xright
         s% pg% Color_Magnitude5_ybot = Color_Magnitude5_ybot
         s% pg% Color_Magnitude5_ytop = Color_Magnitude5_ytop
         s% pg% Color_Magnitude5_txt_scale = Color_Magnitude5_txt_scale
         s% pg% Color_Magnitude5_title = Color_Magnitude5_title
         s% pg% Color_Magnitude5_xmax = Color_Magnitude5_xmax
         s% pg% Color_Magnitude5_xmin = Color_Magnitude5_xmin
         s% pg% Color_Magnitude5_dxmin = Color_Magnitude5_dxmin
         s% pg% Color_Magnitude5_max_width = Color_Magnitude5_max_width
         s% pg% Color_Magnitude5_num_panels = Color_Magnitude5_num_panels
         s% pg% Color_Magnitude5_xaxis1_name = Color_Magnitude5_xaxis1_name
         s% pg% Color_Magnitude5_xaxis2_name = Color_Magnitude5_xaxis2_name
         s% pg% Color_Magnitude5_yaxis1_name = Color_Magnitude5_yaxis1_name
         s% pg% Color_Magnitude5_yaxis2_name = Color_Magnitude5_yaxis2_name
         s% pg% Color_Magnitude5_xaxis_reversed = Color_Magnitude5_xaxis_reversed
         s% pg% Color_Magnitude5_yaxis_reversed = Color_Magnitude5_yaxis_reversed
         s% pg% Color_Magnitude5_xaxis_log = Color_Magnitude5_xaxis_log
         s% pg% Color_Magnitude5_yaxis_log = Color_Magnitude5_yaxis_log
         s% pg% Color_Magnitude5_ymin = Color_Magnitude5_ymin
         s% pg% Color_Magnitude5_ymax = Color_Magnitude5_ymax
         s% pg% Color_Magnitude5_dymin = Color_Magnitude5_dymin
         s% pg% Color_Magnitude5_other_yaxis1_name = Color_Magnitude5_other_yaxis1_name
         s% pg% Color_Magnitude5_other_yaxis2_name = Color_Magnitude5_other_yaxis2_name
         s% pg% Color_Magnitude5_other_yaxis_reversed = Color_Magnitude5_other_yaxis_reversed
         s% pg% Color_Magnitude5_other_yaxis_log = Color_Magnitude5_other_yaxis_log
         s% pg% Color_Magnitude5_other_ymin = Color_Magnitude5_other_ymin
         s% pg% Color_Magnitude5_other_ymax = Color_Magnitude5_other_ymax
         s% pg% Color_Magnitude5_other_dymin = Color_Magnitude5_other_dymin
         s% pg% Color_Magnitude5_file_flag = Color_Magnitude5_file_flag
         s% pg% Color_Magnitude5_file_dir = Color_Magnitude5_file_dir
         s% pg% Color_Magnitude5_file_prefix = Color_Magnitude5_file_prefix
         s% pg% Color_Magnitude5_file_interval = Color_Magnitude5_file_interval
         s% pg% Color_Magnitude5_file_width = Color_Magnitude5_file_width
         s% pg% Color_Magnitude5_file_aspect_ratio = Color_Magnitude5_file_aspect_ratio
         s% pg% Color_Magnitude5_xmargin = Color_Magnitude5_xmargin
         s% pg% Color_Magnitude5_ymargin = Color_Magnitude5_ymargin
         s% pg% Color_Magnitude5_other_ymargin = Color_Magnitude5_other_ymargin
         s% pg% Color_Magnitude5_use_decorator = Color_Magnitude5_use_decorator

         s% pg% Color_Magnitude6_win_flag = Color_Magnitude6_win_flag
         s% pg% Color_Magnitude6_win_width = Color_Magnitude6_win_width
         s% pg% Color_Magnitude6_win_aspect_ratio = Color_Magnitude6_win_aspect_ratio
         s% pg% Color_Magnitude6_xleft = Color_Magnitude6_xleft
         s% pg% Color_Magnitude6_xright = Color_Magnitude6_xright
         s% pg% Color_Magnitude6_ybot = Color_Magnitude6_ybot
         s% pg% Color_Magnitude6_ytop = Color_Magnitude6_ytop
         s% pg% Color_Magnitude6_txt_scale = Color_Magnitude6_txt_scale
         s% pg% Color_Magnitude6_title = Color_Magnitude6_title
         s% pg% Color_Magnitude6_xmax = Color_Magnitude6_xmax
         s% pg% Color_Magnitude6_xmin = Color_Magnitude6_xmin
         s% pg% Color_Magnitude6_dxmin = Color_Magnitude6_dxmin
         s% pg% Color_Magnitude6_max_width = Color_Magnitude6_max_width
         s% pg% Color_Magnitude6_num_panels = Color_Magnitude6_num_panels
         s% pg% Color_Magnitude6_xaxis1_name = Color_Magnitude6_xaxis1_name
         s% pg% Color_Magnitude6_xaxis2_name = Color_Magnitude6_xaxis2_name
         s% pg% Color_Magnitude6_yaxis1_name = Color_Magnitude6_yaxis1_name
         s% pg% Color_Magnitude6_yaxis2_name = Color_Magnitude6_yaxis2_name
         s% pg% Color_Magnitude6_xaxis_reversed = Color_Magnitude6_xaxis_reversed
         s% pg% Color_Magnitude6_yaxis_reversed = Color_Magnitude6_yaxis_reversed
         s% pg% Color_Magnitude6_xaxis_log = Color_Magnitude6_xaxis_log
         s% pg% Color_Magnitude6_yaxis_log = Color_Magnitude6_yaxis_log
         s% pg% Color_Magnitude6_ymin = Color_Magnitude6_ymin
         s% pg% Color_Magnitude6_ymax = Color_Magnitude6_ymax
         s% pg% Color_Magnitude6_dymin = Color_Magnitude6_dymin
         s% pg% Color_Magnitude6_other_yaxis1_name = Color_Magnitude6_other_yaxis1_name
         s% pg% Color_Magnitude6_other_yaxis2_name = Color_Magnitude6_other_yaxis2_name
         s% pg% Color_Magnitude6_other_yaxis_reversed = Color_Magnitude6_other_yaxis_reversed
         s% pg% Color_Magnitude6_other_yaxis_log = Color_Magnitude6_other_yaxis_log
         s% pg% Color_Magnitude6_other_ymin = Color_Magnitude6_other_ymin
         s% pg% Color_Magnitude6_other_ymax = Color_Magnitude6_other_ymax
         s% pg% Color_Magnitude6_other_dymin = Color_Magnitude6_other_dymin
         s% pg% Color_Magnitude6_file_flag = Color_Magnitude6_file_flag
         s% pg% Color_Magnitude6_file_dir = Color_Magnitude6_file_dir
         s% pg% Color_Magnitude6_file_prefix = Color_Magnitude6_file_prefix
         s% pg% Color_Magnitude6_file_interval = Color_Magnitude6_file_interval
         s% pg% Color_Magnitude6_file_width = Color_Magnitude6_file_width
         s% pg% Color_Magnitude6_file_aspect_ratio = Color_Magnitude6_file_aspect_ratio
         s% pg% Color_Magnitude6_xmargin = Color_Magnitude6_xmargin
         s% pg% Color_Magnitude6_ymargin = Color_Magnitude6_ymargin
         s% pg% Color_Magnitude6_other_ymargin = Color_Magnitude6_other_ymargin
         s% pg% Color_Magnitude6_use_decorator = Color_Magnitude6_use_decorator

         s% pg% Color_Magnitude7_win_flag = Color_Magnitude7_win_flag
         s% pg% Color_Magnitude7_win_width = Color_Magnitude7_win_width
         s% pg% Color_Magnitude7_win_aspect_ratio = Color_Magnitude7_win_aspect_ratio
         s% pg% Color_Magnitude7_xleft = Color_Magnitude7_xleft
         s% pg% Color_Magnitude7_xright = Color_Magnitude7_xright
         s% pg% Color_Magnitude7_ybot = Color_Magnitude7_ybot
         s% pg% Color_Magnitude7_ytop = Color_Magnitude7_ytop
         s% pg% Color_Magnitude7_txt_scale = Color_Magnitude7_txt_scale
         s% pg% Color_Magnitude7_title = Color_Magnitude7_title
         s% pg% Color_Magnitude7_xmax = Color_Magnitude7_xmax
         s% pg% Color_Magnitude7_xmin = Color_Magnitude7_xmin
         s% pg% Color_Magnitude7_dxmin = Color_Magnitude7_dxmin
         s% pg% Color_Magnitude7_max_width = Color_Magnitude7_max_width
         s% pg% Color_Magnitude7_num_panels = Color_Magnitude7_num_panels
         s% pg% Color_Magnitude7_xaxis1_name = Color_Magnitude7_xaxis1_name
         s% pg% Color_Magnitude7_xaxis2_name = Color_Magnitude7_xaxis2_name
         s% pg% Color_Magnitude7_yaxis1_name = Color_Magnitude7_yaxis1_name
         s% pg% Color_Magnitude7_yaxis2_name = Color_Magnitude7_yaxis2_name
         s% pg% Color_Magnitude7_xaxis_reversed = Color_Magnitude7_xaxis_reversed
         s% pg% Color_Magnitude7_yaxis_reversed = Color_Magnitude7_yaxis_reversed
         s% pg% Color_Magnitude7_xaxis_log = Color_Magnitude7_xaxis_log
         s% pg% Color_Magnitude7_yaxis_log = Color_Magnitude7_yaxis_log
         s% pg% Color_Magnitude7_ymin = Color_Magnitude7_ymin
         s% pg% Color_Magnitude7_ymax = Color_Magnitude7_ymax
         s% pg% Color_Magnitude7_dymin = Color_Magnitude7_dymin
         s% pg% Color_Magnitude7_other_yaxis1_name = Color_Magnitude7_other_yaxis1_name
         s% pg% Color_Magnitude7_other_yaxis2_name = Color_Magnitude7_other_yaxis2_name
         s% pg% Color_Magnitude7_other_yaxis_reversed = Color_Magnitude7_other_yaxis_reversed
         s% pg% Color_Magnitude7_other_yaxis_log = Color_Magnitude7_other_yaxis_log
         s% pg% Color_Magnitude7_other_ymin = Color_Magnitude7_other_ymin
         s% pg% Color_Magnitude7_other_ymax = Color_Magnitude7_other_ymax
         s% pg% Color_Magnitude7_other_dymin = Color_Magnitude7_other_dymin
         s% pg% Color_Magnitude7_file_flag = Color_Magnitude7_file_flag
         s% pg% Color_Magnitude7_file_dir = Color_Magnitude7_file_dir
         s% pg% Color_Magnitude7_file_prefix = Color_Magnitude7_file_prefix
         s% pg% Color_Magnitude7_file_interval = Color_Magnitude7_file_interval
         s% pg% Color_Magnitude7_file_width = Color_Magnitude7_file_width
         s% pg% Color_Magnitude7_file_aspect_ratio = Color_Magnitude7_file_aspect_ratio
         s% pg% Color_Magnitude7_xmargin = Color_Magnitude7_xmargin
         s% pg% Color_Magnitude7_ymargin = Color_Magnitude7_ymargin
         s% pg% Color_Magnitude7_other_ymargin = Color_Magnitude7_other_ymargin
         s% pg% Color_Magnitude7_use_decorator = Color_Magnitude7_use_decorator

         s% pg% Color_Magnitude8_win_flag = Color_Magnitude8_win_flag
         s% pg% Color_Magnitude8_win_width = Color_Magnitude8_win_width
         s% pg% Color_Magnitude8_win_aspect_ratio = Color_Magnitude8_win_aspect_ratio
         s% pg% Color_Magnitude8_xleft = Color_Magnitude8_xleft
         s% pg% Color_Magnitude8_xright = Color_Magnitude8_xright
         s% pg% Color_Magnitude8_ybot = Color_Magnitude8_ybot
         s% pg% Color_Magnitude8_ytop = Color_Magnitude8_ytop
         s% pg% Color_Magnitude8_txt_scale = Color_Magnitude8_txt_scale
         s% pg% Color_Magnitude8_title = Color_Magnitude8_title
         s% pg% Color_Magnitude8_xmax = Color_Magnitude8_xmax
         s% pg% Color_Magnitude8_xmin = Color_Magnitude8_xmin
         s% pg% Color_Magnitude8_dxmin = Color_Magnitude8_dxmin
         s% pg% Color_Magnitude8_max_width = Color_Magnitude8_max_width
         s% pg% Color_Magnitude8_num_panels = Color_Magnitude8_num_panels
         s% pg% Color_Magnitude8_xaxis1_name = Color_Magnitude8_xaxis1_name
         s% pg% Color_Magnitude8_xaxis2_name = Color_Magnitude8_xaxis2_name
         s% pg% Color_Magnitude8_yaxis1_name = Color_Magnitude8_yaxis1_name
         s% pg% Color_Magnitude8_yaxis2_name = Color_Magnitude8_yaxis2_name
         s% pg% Color_Magnitude8_xaxis_reversed = Color_Magnitude8_xaxis_reversed
         s% pg% Color_Magnitude8_yaxis_reversed = Color_Magnitude8_yaxis_reversed
         s% pg% Color_Magnitude8_xaxis_log = Color_Magnitude8_xaxis_log
         s% pg% Color_Magnitude8_yaxis_log = Color_Magnitude8_yaxis_log
         s% pg% Color_Magnitude8_ymin = Color_Magnitude8_ymin
         s% pg% Color_Magnitude8_ymax = Color_Magnitude8_ymax
         s% pg% Color_Magnitude8_dymin = Color_Magnitude8_dymin
         s% pg% Color_Magnitude8_other_yaxis1_name = Color_Magnitude8_other_yaxis1_name
         s% pg% Color_Magnitude8_other_yaxis2_name = Color_Magnitude8_other_yaxis2_name
         s% pg% Color_Magnitude8_other_yaxis_reversed = Color_Magnitude8_other_yaxis_reversed
         s% pg% Color_Magnitude8_other_yaxis_log = Color_Magnitude8_other_yaxis_log
         s% pg% Color_Magnitude8_other_ymin = Color_Magnitude8_other_ymin
         s% pg% Color_Magnitude8_other_ymax = Color_Magnitude8_other_ymax
         s% pg% Color_Magnitude8_other_dymin = Color_Magnitude8_other_dymin
         s% pg% Color_Magnitude8_file_flag = Color_Magnitude8_file_flag
         s% pg% Color_Magnitude8_file_dir = Color_Magnitude8_file_dir
         s% pg% Color_Magnitude8_file_prefix = Color_Magnitude8_file_prefix
         s% pg% Color_Magnitude8_file_interval = Color_Magnitude8_file_interval
         s% pg% Color_Magnitude8_file_width = Color_Magnitude8_file_width
         s% pg% Color_Magnitude8_file_aspect_ratio = Color_Magnitude8_file_aspect_ratio
         s% pg% Color_Magnitude8_xmargin = Color_Magnitude8_xmargin
         s% pg% Color_Magnitude8_ymargin = Color_Magnitude8_ymargin
         s% pg% Color_Magnitude8_other_ymargin = Color_Magnitude8_other_ymargin
         s% pg% Color_Magnitude8_use_decorator = Color_Magnitude8_use_decorator

         s% pg% Color_Magnitude9_win_flag = Color_Magnitude9_win_flag
         s% pg% Color_Magnitude9_win_width = Color_Magnitude9_win_width
         s% pg% Color_Magnitude9_win_aspect_ratio = Color_Magnitude9_win_aspect_ratio
         s% pg% Color_Magnitude9_xleft = Color_Magnitude9_xleft
         s% pg% Color_Magnitude9_xright = Color_Magnitude9_xright
         s% pg% Color_Magnitude9_ybot = Color_Magnitude9_ybot
         s% pg% Color_Magnitude9_ytop = Color_Magnitude9_ytop
         s% pg% Color_Magnitude9_txt_scale = Color_Magnitude9_txt_scale
         s% pg% Color_Magnitude9_title = Color_Magnitude9_title
         s% pg% Color_Magnitude9_xmax = Color_Magnitude9_xmax
         s% pg% Color_Magnitude9_xmin = Color_Magnitude9_xmin
         s% pg% Color_Magnitude9_dxmin = Color_Magnitude9_dxmin
         s% pg% Color_Magnitude9_max_width = Color_Magnitude9_max_width
         s% pg% Color_Magnitude9_num_panels = Color_Magnitude9_num_panels
         s% pg% Color_Magnitude9_xaxis1_name = Color_Magnitude9_xaxis1_name
         s% pg% Color_Magnitude9_xaxis2_name = Color_Magnitude9_xaxis2_name
         s% pg% Color_Magnitude9_yaxis1_name = Color_Magnitude9_yaxis1_name
         s% pg% Color_Magnitude9_yaxis2_name = Color_Magnitude9_yaxis2_name
         s% pg% Color_Magnitude9_xaxis_reversed = Color_Magnitude9_xaxis_reversed
         s% pg% Color_Magnitude9_yaxis_reversed = Color_Magnitude9_yaxis_reversed
         s% pg% Color_Magnitude9_xaxis_log = Color_Magnitude9_xaxis_log
         s% pg% Color_Magnitude9_yaxis_log = Color_Magnitude9_yaxis_log
         s% pg% Color_Magnitude9_ymin = Color_Magnitude9_ymin
         s% pg% Color_Magnitude9_ymax = Color_Magnitude9_ymax
         s% pg% Color_Magnitude9_dymin = Color_Magnitude9_dymin
         s% pg% Color_Magnitude9_other_yaxis1_name = Color_Magnitude9_other_yaxis1_name
         s% pg% Color_Magnitude9_other_yaxis2_name = Color_Magnitude9_other_yaxis2_name
         s% pg% Color_Magnitude9_other_yaxis_reversed = Color_Magnitude9_other_yaxis_reversed
         s% pg% Color_Magnitude9_other_yaxis_log = Color_Magnitude9_other_yaxis_log
         s% pg% Color_Magnitude9_other_ymin = Color_Magnitude9_other_ymin
         s% pg% Color_Magnitude9_other_ymax = Color_Magnitude9_other_ymax
         s% pg% Color_Magnitude9_other_dymin = Color_Magnitude9_other_dymin
         s% pg% Color_Magnitude9_file_flag = Color_Magnitude9_file_flag
         s% pg% Color_Magnitude9_file_dir = Color_Magnitude9_file_dir
         s% pg% Color_Magnitude9_file_prefix = Color_Magnitude9_file_prefix
         s% pg% Color_Magnitude9_file_interval = Color_Magnitude9_file_interval
         s% pg% Color_Magnitude9_file_width = Color_Magnitude9_file_width
         s% pg% Color_Magnitude9_file_aspect_ratio = Color_Magnitude9_file_aspect_ratio
         s% pg% Color_Magnitude9_xmargin = Color_Magnitude9_xmargin
         s% pg% Color_Magnitude9_ymargin = Color_Magnitude9_ymargin
         s% pg% Color_Magnitude9_other_ymargin = Color_Magnitude9_other_ymargin
         s% pg% Color_Magnitude9_use_decorator = Color_Magnitude9_use_decorator


         s% pg% Mode_Prop_win_flag = Mode_Prop_win_flag
         s% pg% Mode_Prop_file_flag = Mode_Prop_file_flag
         s% pg% Mode_Prop_file_interval = Mode_Prop_file_interval
         s% pg% Mode_Prop_file_dir = Mode_Prop_file_dir
         s% pg% Mode_Prop_file_prefix = Mode_Prop_file_prefix
         s% pg% Mode_Prop_xaxis_name = Mode_Prop_xaxis_name
         s% pg% Mode_Prop_xaxis_reversed = Mode_Prop_xaxis_reversed
         s% pg% Mode_Prop_nu_max_obs = Mode_Prop_nu_max_obs
         s% pg% Mode_Prop_xmin = Mode_Prop_xmin
         s% pg% Mode_Prop_xmax = Mode_Prop_xmax
         s% pg% Mode_Prop_ymin = Mode_Prop_ymin
         s% pg% Mode_Prop_ymax = Mode_Prop_ymax
         s% pg% Mode_Prop_win_width = Mode_Prop_win_width
         s% pg% Mode_Prop_win_aspect_ratio = Mode_Prop_win_aspect_ratio
         s% pg% Mode_Prop_file_width = Mode_Prop_file_width
         s% pg% Mode_Prop_file_aspect_ratio = Mode_Prop_file_aspect_ratio
         s% pg% Mode_Prop_xleft = Mode_Prop_xleft
         s% pg% Mode_Prop_xright = Mode_Prop_xright
         s% pg% Mode_Prop_ybot = Mode_Prop_ybot
         s% pg% Mode_Prop_ytop = Mode_Prop_ytop
         s% pg% Mode_Prop_txt_scale = Mode_Prop_txt_scale
         s% pg% Mode_Prop_title = Mode_Prop_title
         s% pg% Mode_Prop_use_decorator = Mode_Prop_use_decorator

         s% pg% Summary_Burn_win_flag = Summary_Burn_win_flag
         s% pg% Summary_Burn_file_flag = Summary_Burn_file_flag
         s% pg% Summary_Burn_file_interval = Summary_Burn_file_interval
         s% pg% Summary_Burn_file_dir = Summary_Burn_file_dir
         s% pg% Summary_Burn_file_prefix = Summary_Burn_file_prefix
         s% pg% Summary_Burn_xaxis_name = Summary_Burn_xaxis_name
         s% pg% Summary_Burn_xaxis_reversed = Summary_Burn_xaxis_reversed
         s% pg% Summary_Burn_xmin = Summary_Burn_xmin
         s% pg% Summary_Burn_xmax = Summary_Burn_xmax
         s% pg% Summary_Burn_win_width = Summary_Burn_win_width
         s% pg% Summary_Burn_win_aspect_ratio = Summary_Burn_win_aspect_ratio
         s% pg% Summary_Burn_file_width = Summary_Burn_file_width
         s% pg% Summary_Burn_file_aspect_ratio = Summary_Burn_file_aspect_ratio
         s% pg% Summary_Burn_xleft = Summary_Burn_xleft
         s% pg% Summary_Burn_xright = Summary_Burn_xright
         s% pg% Summary_Burn_ybot = Summary_Burn_ybot
         s% pg% Summary_Burn_ytop = Summary_Burn_ytop
         s% pg% Summary_Burn_txt_scale = Summary_Burn_txt_scale
         s% pg% Summary_Burn_title = Summary_Burn_title
         s% pg% Summary_Burn_title_shift = Summary_Burn_title_shift
         s% pg% Summary_Burn_use_decorator = Summary_Burn_use_decorator

         s% pg% Summary_Profile_win_flag = Summary_Profile_win_flag
         s% pg% Summary_Profile_file_flag = Summary_Profile_file_flag
         s% pg% Summary_Profile_file_interval = Summary_Profile_file_interval
         s% pg% Summary_Profile_file_dir = Summary_Profile_file_dir
         s% pg% Summary_Profile_file_prefix = Summary_Profile_file_prefix
         s% pg% Summary_Profile_xaxis_name = Summary_Profile_xaxis_name
         s% pg% Summary_Profile_xaxis_reversed = Summary_Profile_xaxis_reversed
         s% pg% Summary_Profile_scaled_value = Summary_Profile_scaled_value
         s% pg% Summary_Profile_xmin = Summary_Profile_xmin
         s% pg% Summary_Profile_xmax = Summary_Profile_xmax
         s% pg% Summary_Profile_win_width = Summary_Profile_win_width
         s% pg% Summary_Profile_win_aspect_ratio = Summary_Profile_win_aspect_ratio
         s% pg% Summary_Profile_file_width = Summary_Profile_file_width
         s% pg% Summary_Profile_file_aspect_ratio = Summary_Profile_file_aspect_ratio
         s% pg% Summary_Profile_xleft = Summary_Profile_xleft
         s% pg% Summary_Profile_xright = Summary_Profile_xright
         s% pg% Summary_Profile_ybot = Summary_Profile_ybot
         s% pg% Summary_Profile_ytop = Summary_Profile_ytop
         s% pg% Summary_Profile_txt_scale = Summary_Profile_txt_scale
         s% pg% Summary_Profile_title = Summary_Profile_title
         s% pg% Summary_Profile_name = Summary_Profile_name
         s% pg% Summary_Profile_legend = Summary_Profile_legend
         s% pg% Summary_Profile_num_lines = Summary_Profile_num_lines
         s% pg% Summary_Profile_use_decorator = Summary_Profile_use_decorator

         s% pg% Summary_History_win_flag = Summary_History_win_flag
         s% pg% Summary_History_file_flag = Summary_History_file_flag
         s% pg% Summary_History_file_interval = Summary_History_file_interval
         s% pg% Summary_History_file_dir = Summary_History_file_dir
         s% pg% Summary_History_file_prefix = Summary_History_file_prefix
         s% pg% Summary_History_scaled_value = Summary_History_scaled_value
         s% pg% Summary_History_xmin = Summary_History_xmin
         s% pg% Summary_History_xmax = Summary_History_xmax
         s% pg% Summary_History_max_width = Summary_History_max_width
         s% pg% Summary_History_win_width = Summary_History_win_width
         s% pg% Summary_History_win_aspect_ratio = Summary_History_win_aspect_ratio
         s% pg% Summary_History_file_width = Summary_History_file_width
         s% pg% Summary_History_file_aspect_ratio = Summary_History_file_aspect_ratio
         s% pg% Summary_History_xleft = Summary_History_xleft
         s% pg% Summary_History_xright = Summary_History_xright
         s% pg% Summary_History_ybot = Summary_History_ybot
         s% pg% Summary_History_ytop = Summary_History_ytop
         s% pg% Summary_History_txt_scale = Summary_History_txt_scale
         s% pg% Summary_History_title = Summary_History_title
         s% pg% Summary_History_name = Summary_History_name
         s% pg% Summary_History_legend = Summary_History_legend
         s% pg% Summary_History_num_lines = Summary_History_num_lines
         s% pg% Summary_History_use_decorator = Summary_History_use_decorator

         s% pg% Power_win_flag = Power_win_flag
         s% pg% Power_file_flag = Power_file_flag
         s% pg% Power_file_interval = Power_file_interval
         s% pg% Power_file_dir = Power_file_dir
         s% pg% Power_file_prefix = Power_file_prefix
         s% pg% Power_xaxis_name = Power_xaxis_name
         s% pg% Power_xaxis_reversed = Power_xaxis_reversed
         s% pg% Power_legend_max_cnt = Power_legend_max_cnt
         s% pg% Power_legend_txt_scale_factor = Power_legend_txt_scale_factor
         s% pg% Power_xmin = Power_xmin
         s% pg% Power_xmax = Power_xmax
         s% pg% Power_ymin = Power_ymin
         s% pg% Power_ymax = Power_ymax
         s% pg% Power_win_width = Power_win_width
         s% pg% Power_win_aspect_ratio = Power_win_aspect_ratio
         s% pg% Power_file_width = Power_file_width
         s% pg% Power_file_aspect_ratio = Power_file_aspect_ratio
         s% pg% Power_xleft = Power_xleft
         s% pg% Power_xright = Power_xright
         s% pg% Power_ybot = Power_ybot
         s% pg% Power_ytop = Power_ytop
         s% pg% Power_txt_scale = Power_txt_scale
         s% pg% Power_title = Power_title
         s% pg% Power_use_decorator = Power_use_decorator

         s% pg% Abundance_win_flag = Abundance_win_flag
         s% pg% Abundance_file_flag = Abundance_file_flag
         s% pg% Abundance_file_interval = Abundance_file_interval
         s% pg% Abundance_file_dir = Abundance_file_dir
         s% pg% Abundance_file_prefix = Abundance_file_prefix
         s% pg% Abundance_num_isos_to_show = Abundance_num_isos_to_show
         s% pg% num_abundance_line_labels = num_abundance_line_labels
         s% pg% Abundance_legend_txt_scale_factor = Abundance_legend_txt_scale_factor
         s% pg% Abundance_line_txt_scale_factor = Abundance_line_txt_scale_factor
         s% pg% Abundance_line_txt_scale_factor = Abundance_line_txt_scale_factor
         s% pg% Abundance_legend_max_cnt = Abundance_legend_max_cnt
         s% pg% Abundance_which_isos_to_show = Abundance_which_isos_to_show
         s% pg% Abundance_xaxis_name = Abundance_xaxis_name
         s% pg% Abundance_xaxis_reversed = Abundance_xaxis_reversed
         s% pg% Abundance_show_photosphere_location = Abundance_show_photosphere_location
         s% pg% Abundance_xmin = Abundance_xmin
         s% pg% Abundance_xmax = Abundance_xmax
         s% pg% Abundance_log_mass_frac_min = Abundance_log_mass_frac_min
         s% pg% Abundance_log_mass_frac_max = Abundance_log_mass_frac_max
         s% pg% Abundance_win_width = Abundance_win_width
         s% pg% Abundance_win_aspect_ratio = Abundance_win_aspect_ratio
         s% pg% Abundance_file_width = Abundance_file_width
         s% pg% Abundance_file_aspect_ratio = Abundance_file_aspect_ratio
         s% pg% Abundance_xleft = Abundance_xleft
         s% pg% Abundance_xright = Abundance_xright
         s% pg% Abundance_ybot = Abundance_ybot
         s% pg% Abundance_ytop = Abundance_ytop
         s% pg% Abundance_txt_scale = Abundance_txt_scale
         s% pg% Abundance_title = Abundance_title
         s% pg% Abundance_use_decorator = Abundance_use_decorator

         s% pg% dPg_dnu_win_flag = dPg_dnu_win_flag
         s% pg% dPg_dnu_file_flag = dPg_dnu_file_flag
         s% pg% dPg_dnu_xleft = dPg_dnu_xleft
         s% pg% dPg_dnu_xright = dPg_dnu_xright
         s% pg% dPg_dnu_ybot = dPg_dnu_ybot
         s% pg% dPg_dnu_ytop = dPg_dnu_ytop
         s% pg% dPg_dnu_txt_scale = dPg_dnu_txt_scale
         s% pg% dPg_dnu_title = dPg_dnu_title
         s% pg% dPg_dnu_file_interval = dPg_dnu_file_interval
         s% pg% dPg_dnu_step_min = dPg_dnu_step_min
         s% pg% dPg_dnu_step_max = dPg_dnu_step_max
         s% pg% dPg_dnu_file_dir = dPg_dnu_file_dir
         s% pg% dPg_dnu_file_prefix = dPg_dnu_file_prefix
         s% pg% show_dPg_dnu_annotation1 = show_dPg_dnu_annotation1
         s% pg% show_dPg_dnu_annotation2 = show_dPg_dnu_annotation2
         s% pg% show_dPg_dnu_annotation3 = show_dPg_dnu_annotation3
         s% pg% dPg_dnu_fname = dPg_dnu_fname
         s% pg% dPg_dnu_delta_nu_min = dPg_dnu_delta_nu_min
         s% pg% dPg_dnu_delta_nu_max = dPg_dnu_delta_nu_max
         s% pg% dPg_dnu_delta_Pg_min = dPg_dnu_delta_Pg_min
         s% pg% dPg_dnu_delta_Pg_max = dPg_dnu_delta_Pg_max
         s% pg% dPg_dnu_delta_nu_margin = dPg_dnu_delta_nu_margin
         s% pg% dPg_dnu_delta_Pg_margin = dPg_dnu_delta_Pg_margin
         s% pg% dPg_dnu_d_delta_nu_min = dPg_dnu_d_delta_nu_min
         s% pg% dPg_dnu_d_delta_Pg_min = dPg_dnu_d_delta_Pg_min
         s% pg% dPg_dnu_win_width = dPg_dnu_win_width
         s% pg% dPg_dnu_win_aspect_ratio = dPg_dnu_win_aspect_ratio
         s% pg% dPg_dnu_file_width = dPg_dnu_file_width
         s% pg% dPg_dnu_file_aspect_ratio = dPg_dnu_file_aspect_ratio
         s% pg% dPg_dnu_use_decorator = dPg_dnu_use_decorator

         s% pg% Grid1_win_flag = Grid1_win_flag
         s% pg% Grid1_win_width = Grid1_win_width
         s% pg% Grid1_win_aspect_ratio = Grid1_win_aspect_ratio
         s% pg% Grid1_xleft = Grid1_xleft
         s% pg% Grid1_xright = Grid1_xright
         s% pg% Grid1_ybot = Grid1_ybot
         s% pg% Grid1_ytop = Grid1_ytop
         s% pg% Grid1_title = Grid1_title
         s% pg% Grid1_txt_scale_factor = Grid1_txt_scale_factor
         s% pg% Grid1_num_cols = Grid1_num_cols
         s% pg% Grid1_num_rows = Grid1_num_rows
         s% pg% Grid1_num_plots = Grid1_num_plots
         s% pg% Grid1_plot_name = Grid1_plot_name
         s% pg% Grid1_plot_row = Grid1_plot_row
         s% pg% Grid1_plot_rowspan = Grid1_plot_rowspan
         s% pg% Grid1_plot_col = Grid1_plot_col
         s% pg% Grid1_plot_colspan = Grid1_plot_colspan
         s% pg% Grid1_plot_pad_left = Grid1_plot_pad_left
         s% pg% Grid1_plot_pad_right = Grid1_plot_pad_right
         s% pg% Grid1_plot_pad_top = Grid1_plot_pad_top
         s% pg% Grid1_plot_pad_bot = Grid1_plot_pad_bot
         s% pg% Grid1_file_flag = Grid1_file_flag
         s% pg% Grid1_file_dir = Grid1_file_dir
         s% pg% Grid1_file_prefix = Grid1_file_prefix
         s% pg% Grid1_file_interval = Grid1_file_interval
         s% pg% Grid1_file_width = Grid1_file_width
         s% pg% Grid1_file_aspect_ratio = Grid1_file_aspect_ratio

         s% pg% Grid2_win_flag = Grid2_win_flag
         s% pg% Grid2_win_width = Grid2_win_width
         s% pg% Grid2_win_aspect_ratio = Grid2_win_aspect_ratio
         s% pg% Grid2_xleft = Grid2_xleft
         s% pg% Grid2_xright = Grid2_xright
         s% pg% Grid2_ybot = Grid2_ybot
         s% pg% Grid2_ytop = Grid2_ytop
         s% pg% Grid2_title = Grid2_title
         s% pg% Grid2_txt_scale_factor = Grid2_txt_scale_factor
         s% pg% Grid2_num_cols = Grid2_num_cols
         s% pg% Grid2_num_rows = Grid2_num_rows
         s% pg% Grid2_num_plots = Grid2_num_plots
         s% pg% Grid2_plot_name = Grid2_plot_name
         s% pg% Grid2_plot_row = Grid2_plot_row
         s% pg% Grid2_plot_rowspan = Grid2_plot_rowspan
         s% pg% Grid2_plot_col = Grid2_plot_col
         s% pg% Grid2_plot_colspan = Grid2_plot_colspan
         s% pg% Grid2_plot_pad_left = Grid2_plot_pad_left
         s% pg% Grid2_plot_pad_right = Grid2_plot_pad_right
         s% pg% Grid2_plot_pad_top = Grid2_plot_pad_top
         s% pg% Grid2_plot_pad_bot = Grid2_plot_pad_bot
         s% pg% Grid2_file_flag = Grid2_file_flag
         s% pg% Grid2_file_dir = Grid2_file_dir
         s% pg% Grid2_file_prefix = Grid2_file_prefix
         s% pg% Grid2_file_interval = Grid2_file_interval
         s% pg% Grid2_file_width = Grid2_file_width
         s% pg% Grid2_file_aspect_ratio = Grid2_file_aspect_ratio

         s% pg% Grid3_win_flag = Grid3_win_flag
         s% pg% Grid3_win_width = Grid3_win_width
         s% pg% Grid3_win_aspect_ratio = Grid3_win_aspect_ratio
         s% pg% Grid3_xleft = Grid3_xleft
         s% pg% Grid3_xright = Grid3_xright
         s% pg% Grid3_ybot = Grid3_ybot
         s% pg% Grid3_ytop = Grid3_ytop
         s% pg% Grid3_title = Grid3_title
         s% pg% Grid3_txt_scale_factor = Grid3_txt_scale_factor
         s% pg% Grid3_num_cols = Grid3_num_cols
         s% pg% Grid3_num_rows = Grid3_num_rows
         s% pg% Grid3_num_plots = Grid3_num_plots
         s% pg% Grid3_plot_name = Grid3_plot_name
         s% pg% Grid3_plot_row = Grid3_plot_row
         s% pg% Grid3_plot_rowspan = Grid3_plot_rowspan
         s% pg% Grid3_plot_col = Grid3_plot_col
         s% pg% Grid3_plot_colspan = Grid3_plot_colspan
         s% pg% Grid3_plot_pad_left = Grid3_plot_pad_left
         s% pg% Grid3_plot_pad_right = Grid3_plot_pad_right
         s% pg% Grid3_plot_pad_top = Grid3_plot_pad_top
         s% pg% Grid3_plot_pad_bot = Grid3_plot_pad_bot
         s% pg% Grid3_file_flag = Grid3_file_flag
         s% pg% Grid3_file_dir = Grid3_file_dir
         s% pg% Grid3_file_prefix = Grid3_file_prefix
         s% pg% Grid3_file_interval = Grid3_file_interval
         s% pg% Grid3_file_width = Grid3_file_width
         s% pg% Grid3_file_aspect_ratio = Grid3_file_aspect_ratio

         s% pg% Grid4_win_flag = Grid4_win_flag
         s% pg% Grid4_win_width = Grid4_win_width
         s% pg% Grid4_win_aspect_ratio = Grid4_win_aspect_ratio
         s% pg% Grid4_xleft = Grid4_xleft
         s% pg% Grid4_xright = Grid4_xright
         s% pg% Grid4_ybot = Grid4_ybot
         s% pg% Grid4_ytop = Grid4_ytop
         s% pg% Grid4_title = Grid4_title
         s% pg% Grid4_txt_scale_factor = Grid4_txt_scale_factor
         s% pg% Grid4_num_cols = Grid4_num_cols
         s% pg% Grid4_num_rows = Grid4_num_rows
         s% pg% Grid4_num_plots = Grid4_num_plots
         s% pg% Grid4_plot_name = Grid4_plot_name
         s% pg% Grid4_plot_row = Grid4_plot_row
         s% pg% Grid4_plot_rowspan = Grid4_plot_rowspan
         s% pg% Grid4_plot_col = Grid4_plot_col
         s% pg% Grid4_plot_colspan = Grid4_plot_colspan
         s% pg% Grid4_plot_pad_left = Grid4_plot_pad_left
         s% pg% Grid4_plot_pad_right = Grid4_plot_pad_right
         s% pg% Grid4_plot_pad_top = Grid4_plot_pad_top
         s% pg% Grid4_plot_pad_bot = Grid4_plot_pad_bot
         s% pg% Grid4_file_flag = Grid4_file_flag
         s% pg% Grid4_file_dir = Grid4_file_dir
         s% pg% Grid4_file_prefix = Grid4_file_prefix
         s% pg% Grid4_file_interval = Grid4_file_interval
         s% pg% Grid4_file_width = Grid4_file_width
         s% pg% Grid4_file_aspect_ratio = Grid4_file_aspect_ratio

         s% pg% Grid5_win_flag = Grid5_win_flag
         s% pg% Grid5_win_width = Grid5_win_width
         s% pg% Grid5_win_aspect_ratio = Grid5_win_aspect_ratio
         s% pg% Grid5_xleft = Grid5_xleft
         s% pg% Grid5_xright = Grid5_xright
         s% pg% Grid5_ybot = Grid5_ybot
         s% pg% Grid5_ytop = Grid5_ytop
         s% pg% Grid5_title = Grid5_title
         s% pg% Grid5_txt_scale_factor = Grid5_txt_scale_factor
         s% pg% Grid5_num_cols = Grid5_num_cols
         s% pg% Grid5_num_rows = Grid5_num_rows
         s% pg% Grid5_num_plots = Grid5_num_plots
         s% pg% Grid5_plot_name = Grid5_plot_name
         s% pg% Grid5_plot_row = Grid5_plot_row
         s% pg% Grid5_plot_rowspan = Grid5_plot_rowspan
         s% pg% Grid5_plot_col = Grid5_plot_col
         s% pg% Grid5_plot_colspan = Grid5_plot_colspan
         s% pg% Grid5_plot_pad_left = Grid5_plot_pad_left
         s% pg% Grid5_plot_pad_right = Grid5_plot_pad_right
         s% pg% Grid5_plot_pad_top = Grid5_plot_pad_top
         s% pg% Grid5_plot_pad_bot = Grid5_plot_pad_bot
         s% pg% Grid5_file_flag = Grid5_file_flag
         s% pg% Grid5_file_dir = Grid5_file_dir
         s% pg% Grid5_file_prefix = Grid5_file_prefix
         s% pg% Grid5_file_interval = Grid5_file_interval
         s% pg% Grid5_file_width = Grid5_file_width
         s% pg% Grid5_file_aspect_ratio = Grid5_file_aspect_ratio

         s% pg% Grid6_win_flag = Grid6_win_flag
         s% pg% Grid6_win_width = Grid6_win_width
         s% pg% Grid6_win_aspect_ratio = Grid6_win_aspect_ratio
         s% pg% Grid6_xleft = Grid6_xleft
         s% pg% Grid6_xright = Grid6_xright
         s% pg% Grid6_ybot = Grid6_ybot
         s% pg% Grid6_ytop = Grid6_ytop
         s% pg% Grid6_title = Grid6_title
         s% pg% Grid6_txt_scale_factor = Grid6_txt_scale_factor
         s% pg% Grid6_num_cols = Grid6_num_cols
         s% pg% Grid6_num_rows = Grid6_num_rows
         s% pg% Grid6_num_plots = Grid6_num_plots
         s% pg% Grid6_plot_name = Grid6_plot_name
         s% pg% Grid6_plot_row = Grid6_plot_row
         s% pg% Grid6_plot_rowspan = Grid6_plot_rowspan
         s% pg% Grid6_plot_col = Grid6_plot_col
         s% pg% Grid6_plot_colspan = Grid6_plot_colspan
         s% pg% Grid6_plot_pad_left = Grid6_plot_pad_left
         s% pg% Grid6_plot_pad_right = Grid6_plot_pad_right
         s% pg% Grid6_plot_pad_top = Grid6_plot_pad_top
         s% pg% Grid6_plot_pad_bot = Grid6_plot_pad_bot
         s% pg% Grid6_file_flag = Grid6_file_flag
         s% pg% Grid6_file_dir = Grid6_file_dir
         s% pg% Grid6_file_prefix = Grid6_file_prefix
         s% pg% Grid6_file_interval = Grid6_file_interval
         s% pg% Grid6_file_width = Grid6_file_width
         s% pg% Grid6_file_aspect_ratio = Grid6_file_aspect_ratio

         s% pg% Grid7_win_flag = Grid7_win_flag
         s% pg% Grid7_win_width = Grid7_win_width
         s% pg% Grid7_win_aspect_ratio = Grid7_win_aspect_ratio
         s% pg% Grid7_xleft = Grid7_xleft
         s% pg% Grid7_xright = Grid7_xright
         s% pg% Grid7_ybot = Grid7_ybot
         s% pg% Grid7_ytop = Grid7_ytop
         s% pg% Grid7_title = Grid7_title
         s% pg% Grid7_txt_scale_factor = Grid7_txt_scale_factor
         s% pg% Grid7_num_cols = Grid7_num_cols
         s% pg% Grid7_num_rows = Grid7_num_rows
         s% pg% Grid7_num_plots = Grid7_num_plots
         s% pg% Grid7_plot_name = Grid7_plot_name
         s% pg% Grid7_plot_row = Grid7_plot_row
         s% pg% Grid7_plot_rowspan = Grid7_plot_rowspan
         s% pg% Grid7_plot_col = Grid7_plot_col
         s% pg% Grid7_plot_colspan = Grid7_plot_colspan
         s% pg% Grid7_plot_pad_left = Grid7_plot_pad_left
         s% pg% Grid7_plot_pad_right = Grid7_plot_pad_right
         s% pg% Grid7_plot_pad_top = Grid7_plot_pad_top
         s% pg% Grid7_plot_pad_bot = Grid7_plot_pad_bot
         s% pg% Grid7_file_flag = Grid7_file_flag
         s% pg% Grid7_file_dir = Grid7_file_dir
         s% pg% Grid7_file_prefix = Grid7_file_prefix
         s% pg% Grid7_file_interval = Grid7_file_interval
         s% pg% Grid7_file_width = Grid7_file_width
         s% pg% Grid7_file_aspect_ratio = Grid7_file_aspect_ratio

         s% pg% Grid8_win_flag = Grid8_win_flag
         s% pg% Grid8_win_width = Grid8_win_width
         s% pg% Grid8_win_aspect_ratio = Grid8_win_aspect_ratio
         s% pg% Grid8_xleft = Grid8_xleft
         s% pg% Grid8_xright = Grid8_xright
         s% pg% Grid8_ybot = Grid8_ybot
         s% pg% Grid8_ytop = Grid8_ytop
         s% pg% Grid8_title = Grid8_title
         s% pg% Grid8_txt_scale_factor = Grid8_txt_scale_factor
         s% pg% Grid8_num_cols = Grid8_num_cols
         s% pg% Grid8_num_rows = Grid8_num_rows
         s% pg% Grid8_num_plots = Grid8_num_plots
         s% pg% Grid8_plot_name = Grid8_plot_name
         s% pg% Grid8_plot_row = Grid8_plot_row
         s% pg% Grid8_plot_rowspan = Grid8_plot_rowspan
         s% pg% Grid8_plot_col = Grid8_plot_col
         s% pg% Grid8_plot_colspan = Grid8_plot_colspan
         s% pg% Grid8_plot_pad_left = Grid8_plot_pad_left
         s% pg% Grid8_plot_pad_right = Grid8_plot_pad_right
         s% pg% Grid8_plot_pad_top = Grid8_plot_pad_top
         s% pg% Grid8_plot_pad_bot = Grid8_plot_pad_bot
         s% pg% Grid8_file_flag = Grid8_file_flag
         s% pg% Grid8_file_dir = Grid8_file_dir
         s% pg% Grid8_file_prefix = Grid8_file_prefix
         s% pg% Grid8_file_interval = Grid8_file_interval
         s% pg% Grid8_file_width = Grid8_file_width
         s% pg% Grid8_file_aspect_ratio = Grid8_file_aspect_ratio

         s% pg% Grid9_win_flag = Grid9_win_flag
         s% pg% Grid9_win_width = Grid9_win_width
         s% pg% Grid9_win_aspect_ratio = Grid9_win_aspect_ratio
         s% pg% Grid9_xleft = Grid9_xleft
         s% pg% Grid9_xright = Grid9_xright
         s% pg% Grid9_ybot = Grid9_ybot
         s% pg% Grid9_ytop = Grid9_ytop
         s% pg% Grid9_title = Grid9_title
         s% pg% Grid9_txt_scale_factor = Grid9_txt_scale_factor
         s% pg% Grid9_num_cols = Grid9_num_cols
         s% pg% Grid9_num_rows = Grid9_num_rows
         s% pg% Grid9_num_plots = Grid9_num_plots
         s% pg% Grid9_plot_name = Grid9_plot_name
         s% pg% Grid9_plot_row = Grid9_plot_row
         s% pg% Grid9_plot_rowspan = Grid9_plot_rowspan
         s% pg% Grid9_plot_col = Grid9_plot_col
         s% pg% Grid9_plot_colspan = Grid9_plot_colspan
         s% pg% Grid9_plot_pad_left = Grid9_plot_pad_left
         s% pg% Grid9_plot_pad_right = Grid9_plot_pad_right
         s% pg% Grid9_plot_pad_top = Grid9_plot_pad_top
         s% pg% Grid9_plot_pad_bot = Grid9_plot_pad_bot
         s% pg% Grid9_file_flag = Grid9_file_flag
         s% pg% Grid9_file_dir = Grid9_file_dir
         s% pg% Grid9_file_prefix = Grid9_file_prefix
         s% pg% Grid9_file_interval = Grid9_file_interval
         s% pg% Grid9_file_width = Grid9_file_width
         s% pg% Grid9_file_aspect_ratio = Grid9_file_aspect_ratio


         s% pg% annotation1_ci = annotation1_ci
         s% pg% annotation1_ch = annotation1_ch
         s% pg% annotation1_lw = annotation1_lw
         s% pg% annotation1_cf = annotation1_cf
         s% pg% annotation1_text = annotation1_text
         s% pg% annotation1_side = annotation1_side
         s% pg% annotation1_disp = annotation1_disp
         s% pg% annotation1_coord = annotation1_coord
         s% pg% annotation1_fjust = annotation1_fjust

         s% pg% annotation2_ci = annotation2_ci
         s% pg% annotation2_ch = annotation2_ch
         s% pg% annotation2_lw = annotation2_lw
         s% pg% annotation2_cf = annotation2_cf
         s% pg% annotation2_text = annotation2_text
         s% pg% annotation2_side = annotation2_side
         s% pg% annotation2_disp = annotation2_disp
         s% pg% annotation2_coord = annotation2_coord
         s% pg% annotation2_fjust = annotation2_fjust

         s% pg% annotation3_ci = annotation3_ci
         s% pg% annotation3_ch = annotation3_ch
         s% pg% annotation3_lw = annotation3_lw
         s% pg% annotation3_cf = annotation3_cf
         s% pg% annotation3_text = annotation3_text
         s% pg% annotation3_side = annotation3_side
         s% pg% annotation3_disp = annotation3_disp
         s% pg% annotation3_coord = annotation3_coord
         s% pg% annotation3_fjust = annotation3_fjust

         s% pg% read_extra_pgstar_inlist = read_extra_pgstar_inlist
         s% pg% extra_pgstar_inlist_name = extra_pgstar_inlist_name

      end subroutine store_pgstar_controls


      subroutine set_default_pgstar_controls

         Text_Summary1_name = ''
         Text_Summary2_name = ''
         Text_Summary3_name = ''
         Text_Summary4_name = ''
         Text_Summary5_name = ''
         Text_Summary6_name = ''
         Text_Summary7_name = ''
         Text_Summary8_name = ''
         Text_Summary9_name = ''

         profile_mass_point_q(:) = 0
         profile_mass_point_color_index(:) = 0
         profile_mass_point_symbol(:) = 0
         profile_mass_point_symbol_scale(:) = 0
         profile_mass_point_str(:) = ''
         profile_mass_point_str_clr(:) = 0
         profile_mass_point_str_scale(:) = 0

         Profile_Panels1_yaxis_name(:) = ''
         Profile_Panels1_other_yaxis_name(:) = ''
         Profile_Panels2_yaxis_name(:) = ''
         Profile_Panels2_other_yaxis_name(:) = ''
         Profile_Panels3_yaxis_name(:) = ''
         Profile_Panels3_other_yaxis_name(:) = ''
         Profile_Panels4_yaxis_name(:) = ''
         Profile_Panels4_other_yaxis_name(:) = ''
         Profile_Panels5_yaxis_name(:) = ''
         Profile_Panels5_other_yaxis_name(:) = ''
         Profile_Panels6_yaxis_name(:) = ''
         Profile_Panels6_other_yaxis_name(:) = ''
         Profile_Panels7_yaxis_name(:) = ''
         Profile_Panels7_other_yaxis_name(:) = ''
         Profile_Panels8_yaxis_name(:) = ''
         Profile_Panels8_other_yaxis_name(:) = ''
         Profile_Panels9_yaxis_name(:) = ''
         Profile_Panels9_other_yaxis_name(:) = ''

         History_Panels1_yaxis_name(:) = ''
         History_Panels1_other_yaxis_name(:) = ''
         History_Panels1_yaxis_reversed(:) = .false.
         History_Panels1_other_yaxis_reversed(:) = .false.
         History_Panels1_yaxis_log(:) = .false.
         History_Panels1_other_yaxis_log(:) = .false.
         History_Panels1_same_yaxis_range(:) = .false.
         History_Panels1_ymin(:) = 0
         History_Panels1_other_ymin(:) = 0
         History_Panels1_ymax(:) = 0
         History_Panels1_other_ymax(:) = 0
         History_Panels1_ymargin(:) = 0
         History_Panels1_other_ymargin(:) = 0
         History_Panels1_dymin(:) = 0
         History_Panels1_other_dymin(:) = 0
         History_Panels1_points_name(:) = ''

         History_Panels2_yaxis_name(:) = ''
         History_Panels2_other_yaxis_name(:) = ''
         History_Panels2_yaxis_reversed(:) = .false.
         History_Panels2_other_yaxis_reversed(:) = .false.
         History_Panels2_yaxis_log(:) = .false.
         History_Panels2_other_yaxis_log(:) = .false.
         History_Panels2_same_yaxis_range(:) = .false.
         History_Panels2_ymin(:) = 0
         History_Panels2_other_ymin(:) = 0
         History_Panels2_ymax(:) = 0
         History_Panels2_other_ymax(:) = 0
         History_Panels2_ymargin(:) = 0
         History_Panels2_other_ymargin(:) = 0
         History_Panels2_dymin(:) = 0
         History_Panels2_other_dymin(:) = 0
         History_Panels2_points_name(:) = ''

         History_Panels3_yaxis_name(:) = ''
         History_Panels3_other_yaxis_name(:) = ''
         History_Panels3_yaxis_reversed(:) = .false.
         History_Panels3_other_yaxis_reversed(:) = .false.
         History_Panels3_yaxis_log(:) = .false.
         History_Panels3_other_yaxis_log(:) = .false.
         History_Panels3_same_yaxis_range(:) = .false.
         History_Panels3_ymin(:) = 0
         History_Panels3_other_ymin(:) = 0
         History_Panels3_ymax(:) = 0
         History_Panels3_other_ymax(:) = 0
         History_Panels3_ymargin(:) = 0
         History_Panels3_other_ymargin(:) = 0
         History_Panels3_dymin(:) = 0
         History_Panels3_other_dymin(:) = 0
         History_Panels3_points_name(:) = ''

         History_Panels4_yaxis_name(:) = ''
         History_Panels4_other_yaxis_name(:) = ''
         History_Panels4_yaxis_reversed(:) = .false.
         History_Panels4_other_yaxis_reversed(:) = .false.
         History_Panels4_yaxis_log(:) = .false.
         History_Panels4_other_yaxis_log(:) = .false.
         History_Panels4_same_yaxis_range(:) = .false.
         History_Panels4_ymin(:) = 0
         History_Panels4_other_ymin(:) = 0
         History_Panels4_ymax(:) = 0
         History_Panels4_other_ymax(:) = 0
         History_Panels4_ymargin(:) = 0
         History_Panels4_other_ymargin(:) = 0
         History_Panels4_dymin(:) = 0
         History_Panels4_other_dymin(:) = 0
         History_Panels4_points_name(:) = ''

         History_Panels5_yaxis_name(:) = ''
         History_Panels5_other_yaxis_name(:) = ''
         History_Panels5_yaxis_reversed(:) = .false.
         History_Panels5_other_yaxis_reversed(:) = .false.
         History_Panels5_yaxis_log(:) = .false.
         History_Panels5_other_yaxis_log(:) = .false.
         History_Panels5_same_yaxis_range(:) = .false.
         History_Panels5_ymin(:) = 0
         History_Panels5_other_ymin(:) = 0
         History_Panels5_ymax(:) = 0
         History_Panels5_other_ymax(:) = 0
         History_Panels5_ymargin(:) = 0
         History_Panels5_other_ymargin(:) = 0
         History_Panels5_dymin(:) = 0
         History_Panels5_other_dymin(:) = 0
         History_Panels5_points_name(:) = ''

         History_Panels6_yaxis_name(:) = ''
         History_Panels6_other_yaxis_name(:) = ''
         History_Panels6_yaxis_reversed(:) = .false.
         History_Panels6_other_yaxis_reversed(:) = .false.
         History_Panels6_yaxis_log(:) = .false.
         History_Panels6_other_yaxis_log(:) = .false.
         History_Panels6_same_yaxis_range(:) = .false.
         History_Panels6_ymin(:) = 0
         History_Panels6_other_ymin(:) = 0
         History_Panels6_ymax(:) = 0
         History_Panels6_other_ymax(:) = 0
         History_Panels6_ymargin(:) = 0
         History_Panels6_other_ymargin(:) = 0
         History_Panels6_dymin(:) = 0
         History_Panels6_other_dymin(:) = 0
         History_Panels6_points_name(:) = ''

         History_Panels7_yaxis_name(:) = ''
         History_Panels7_other_yaxis_name(:) = ''
         History_Panels7_yaxis_reversed(:) = .false.
         History_Panels7_other_yaxis_reversed(:) = .false.
         History_Panels7_yaxis_log(:) = .false.
         History_Panels7_other_yaxis_log(:) = .false.
         History_Panels7_same_yaxis_range(:) = .false.
         History_Panels7_ymin(:) = 0
         History_Panels7_other_ymin(:) = 0
         History_Panels7_ymax(:) = 0
         History_Panels7_other_ymax(:) = 0
         History_Panels7_ymargin(:) = 0
         History_Panels7_other_ymargin(:) = 0
         History_Panels7_dymin(:) = 0
         History_Panels7_other_dymin(:) = 0
         History_Panels7_points_name(:) = ''

         History_Panels8_yaxis_name(:) = ''
         History_Panels8_other_yaxis_name(:) = ''
         History_Panels8_yaxis_reversed(:) = .false.
         History_Panels8_other_yaxis_reversed(:) = .false.
         History_Panels8_yaxis_log(:) = .false.
         History_Panels8_other_yaxis_log(:) = .false.
         History_Panels8_same_yaxis_range(:) = .false.
         History_Panels8_ymin(:) = 0
         History_Panels8_other_ymin(:) = 0
         History_Panels8_ymax(:) = 0
         History_Panels8_other_ymax(:) = 0
         History_Panels8_ymargin(:) = 0
         History_Panels8_other_ymargin(:) = 0
         History_Panels8_dymin(:) = 0
         History_Panels8_other_dymin(:) = 0
         History_Panels8_points_name(:) = ''

         History_Panels9_yaxis_name(:) = ''
         History_Panels9_other_yaxis_name(:) = ''
         History_Panels9_yaxis_reversed(:) = .false.
         History_Panels9_other_yaxis_reversed(:) = .false.
         History_Panels9_yaxis_log(:) = .false.
         History_Panels9_other_yaxis_log(:) = .false.
         History_Panels9_same_yaxis_range(:) = .false.
         History_Panels9_ymin(:) = 0
         History_Panels9_other_ymin(:) = 0
         History_Panels9_ymax(:) = 0
         History_Panels9_other_ymax(:) = 0
         History_Panels9_ymargin(:) = 0
         History_Panels9_other_ymargin(:) = 0
         History_Panels9_dymin(:) = 0
         History_Panels9_other_dymin(:) = 0
         History_Panels9_points_name(:) = ''

         Color_Magnitude1_yaxis1_name(:) = ''
         Color_Magnitude1_other_yaxis1_name(:) = ''
         Color_Magnitude1_yaxis2_name(:) = ''
         Color_Magnitude1_other_yaxis2_name(:) = ''
         Color_Magnitude1_yaxis_reversed(:) = .false.
         Color_Magnitude1_other_yaxis_reversed(:) = .false.
         Color_Magnitude1_yaxis_log(:) = .false.
         Color_Magnitude1_other_yaxis_log(:) = .false.
         Color_Magnitude1_ymin(:) = 0
         Color_Magnitude1_other_ymin(:) = 0
         Color_Magnitude1_ymax(:) = 0
         Color_Magnitude1_other_ymax(:) = 0
         Color_Magnitude1_ymargin(:) = 0
         Color_Magnitude1_other_ymargin(:) = 0
         Color_Magnitude1_dymin(:) = 0
         Color_Magnitude1_other_dymin(:) = 0

         Color_Magnitude2_yaxis1_name(:) = ''
         Color_Magnitude2_other_yaxis1_name(:) = ''
         Color_Magnitude2_yaxis2_name(:) = ''
         Color_Magnitude2_other_yaxis2_name(:) = ''
         Color_Magnitude2_yaxis_reversed(:) = .false.
         Color_Magnitude2_other_yaxis_reversed(:) = .false.
         Color_Magnitude2_yaxis_log(:) = .false.
         Color_Magnitude2_other_yaxis_log(:) = .false.
         Color_Magnitude2_ymin(:) = 0
         Color_Magnitude2_other_ymin(:) = 0
         Color_Magnitude2_ymax(:) = 0
         Color_Magnitude2_other_ymax(:) = 0
         Color_Magnitude2_ymargin(:) = 0
         Color_Magnitude2_other_ymargin(:) = 0
         Color_Magnitude2_dymin(:) = 0
         Color_Magnitude2_other_dymin(:) = 0

         Color_Magnitude3_yaxis1_name(:) = ''
         Color_Magnitude3_other_yaxis1_name(:) = ''
         Color_Magnitude3_yaxis2_name(:) = ''
         Color_Magnitude3_other_yaxis2_name(:) = ''
         Color_Magnitude3_yaxis_reversed(:) = .false.
         Color_Magnitude3_other_yaxis_reversed(:) = .false.
         Color_Magnitude3_yaxis_log(:) = .false.
         Color_Magnitude3_other_yaxis_log(:) = .false.
         Color_Magnitude3_ymin(:) = 0
         Color_Magnitude3_other_ymin(:) = 0
         Color_Magnitude3_ymax(:) = 0
         Color_Magnitude3_other_ymax(:) = 0
         Color_Magnitude3_ymargin(:) = 0
         Color_Magnitude3_other_ymargin(:) = 0
         Color_Magnitude3_dymin(:) = 0
         Color_Magnitude3_other_dymin(:) = 0

         Color_Magnitude4_yaxis1_name(:) = ''
         Color_Magnitude4_other_yaxis1_name(:) = ''
         Color_Magnitude4_yaxis2_name(:) = ''
         Color_Magnitude4_other_yaxis2_name(:) = ''
         Color_Magnitude4_yaxis_reversed(:) = .false.
         Color_Magnitude4_other_yaxis_reversed(:) = .false.
         Color_Magnitude4_yaxis_log(:) = .false.
         Color_Magnitude4_other_yaxis_log(:) = .false.
         Color_Magnitude4_ymin(:) = 0
         Color_Magnitude4_other_ymin(:) = 0
         Color_Magnitude4_ymax(:) = 0
         Color_Magnitude4_other_ymax(:) = 0
         Color_Magnitude4_ymargin(:) = 0
         Color_Magnitude4_other_ymargin(:) = 0
         Color_Magnitude4_dymin(:) = 0
         Color_Magnitude4_other_dymin(:) = 0

         Color_Magnitude5_yaxis1_name(:) = ''
         Color_Magnitude5_other_yaxis1_name(:) = ''
         Color_Magnitude5_yaxis2_name(:) = ''
         Color_Magnitude5_other_yaxis2_name(:) = ''
         Color_Magnitude5_yaxis_reversed(:) = .false.
         Color_Magnitude5_other_yaxis_reversed(:) = .false.
         Color_Magnitude5_yaxis_log(:) = .false.
         Color_Magnitude5_other_yaxis_log(:) = .false.
         Color_Magnitude5_ymin(:) = 0
         Color_Magnitude5_other_ymin(:) = 0
         Color_Magnitude5_ymax(:) = 0
         Color_Magnitude5_other_ymax(:) = 0
         Color_Magnitude5_ymargin(:) = 0
         Color_Magnitude5_other_ymargin(:) = 0
         Color_Magnitude5_dymin(:) = 0
         Color_Magnitude5_other_dymin(:) = 0

         Color_Magnitude6_yaxis1_name(:) = ''
         Color_Magnitude6_other_yaxis1_name(:) = ''
         Color_Magnitude6_yaxis2_name(:) = ''
         Color_Magnitude6_other_yaxis2_name(:) = ''
         Color_Magnitude6_yaxis_reversed(:) = .false.
         Color_Magnitude6_other_yaxis_reversed(:) = .false.
         Color_Magnitude6_yaxis_log(:) = .false.
         Color_Magnitude6_other_yaxis_log(:) = .false.
         Color_Magnitude6_ymin(:) = 0
         Color_Magnitude6_other_ymin(:) = 0
         Color_Magnitude6_ymax(:) = 0
         Color_Magnitude6_other_ymax(:) = 0
         Color_Magnitude6_ymargin(:) = 0
         Color_Magnitude6_other_ymargin(:) = 0
         Color_Magnitude6_dymin(:) = 0
         Color_Magnitude6_other_dymin(:) = 0

         Color_Magnitude7_yaxis1_name(:) = ''
         Color_Magnitude7_other_yaxis1_name(:) = ''
         Color_Magnitude7_yaxis2_name(:) = ''
         Color_Magnitude7_other_yaxis2_name(:) = ''
         Color_Magnitude7_yaxis_reversed(:) = .false.
         Color_Magnitude7_other_yaxis_reversed(:) = .false.
         Color_Magnitude7_yaxis_log(:) = .false.
         Color_Magnitude7_other_yaxis_log(:) = .false.
         Color_Magnitude7_ymin(:) = 0
         Color_Magnitude7_other_ymin(:) = 0
         Color_Magnitude7_ymax(:) = 0
         Color_Magnitude7_other_ymax(:) = 0
         Color_Magnitude7_ymargin(:) = 0
         Color_Magnitude7_other_ymargin(:) = 0
         Color_Magnitude7_dymin(:) = 0
         Color_Magnitude7_other_dymin(:) = 0

         Color_Magnitude8_yaxis1_name(:) = ''
         Color_Magnitude8_other_yaxis1_name(:) = ''
         Color_Magnitude8_yaxis2_name(:) = ''
         Color_Magnitude8_other_yaxis2_name(:) = ''
         Color_Magnitude8_yaxis_reversed(:) = .false.
         Color_Magnitude8_other_yaxis_reversed(:) = .false.
         Color_Magnitude8_yaxis_log(:) = .false.
         Color_Magnitude8_other_yaxis_log(:) = .false.
         Color_Magnitude8_ymin(:) = 0
         Color_Magnitude8_other_ymin(:) = 0
         Color_Magnitude8_ymax(:) = 0
         Color_Magnitude8_other_ymax(:) = 0
         Color_Magnitude8_ymargin(:) = 0
         Color_Magnitude8_other_ymargin(:) = 0
         Color_Magnitude8_dymin(:) = 0
         Color_Magnitude8_other_dymin(:) = 0

         Color_Magnitude9_yaxis1_name(:) = ''
         Color_Magnitude9_other_yaxis1_name(:) = ''
         Color_Magnitude9_yaxis2_name(:) = ''
         Color_Magnitude9_other_yaxis2_name(:) = ''
         Color_Magnitude9_yaxis_reversed(:) = .false.
         Color_Magnitude9_other_yaxis_reversed(:) = .false.
         Color_Magnitude9_yaxis_log(:) = .false.
         Color_Magnitude9_other_yaxis_log(:) = .false.
         Color_Magnitude9_ymin(:) = 0
         Color_Magnitude9_other_ymin(:) = 0
         Color_Magnitude9_ymax(:) = 0
         Color_Magnitude9_other_ymax(:) = 0
         Color_Magnitude9_ymargin(:) = 0
         Color_Magnitude9_other_ymargin(:) = 0
         Color_Magnitude9_dymin(:) = 0
         Color_Magnitude9_other_dymin(:) = 0

         Summary_History_name(:) = ''
         Summary_History_legend(:) = ''

         Grid1_plot_name(:) = ''
         Grid1_txt_scale_factor(:) = 1
         Grid1_plot_pad_left(:) = 0
         Grid1_plot_pad_right(:) = 0
         Grid1_plot_pad_top(:) = 0
         Grid1_plot_pad_bot(:) = 0
         Grid1_plot_row(:) = 0
         Grid1_plot_rowspan(:) = 0
         Grid1_plot_col(:) = 0
         Grid1_plot_colspan(:) = 0

         Grid2_plot_name(:) = ''
         Grid2_txt_scale_factor(:) = 1
         Grid2_plot_pad_left(:) = 0
         Grid2_plot_pad_right(:) = 0
         Grid2_plot_pad_top(:) = 0
         Grid2_plot_pad_bot(:) = 0
         Grid2_plot_row(:) = 0
         Grid2_plot_rowspan(:) = 0
         Grid2_plot_col(:) = 0
         Grid2_plot_colspan(:) = 0

         Grid3_plot_name(:) = ''
         Grid3_txt_scale_factor(:) = 1
         Grid3_plot_pad_left(:) = 0
         Grid3_plot_pad_right(:) = 0
         Grid3_plot_pad_top(:) = 0
         Grid3_plot_pad_bot(:) = 0
         Grid3_plot_row(:) = 0
         Grid3_plot_rowspan(:) = 0
         Grid3_plot_col(:) = 0
         Grid3_plot_colspan(:) = 0

         Grid4_plot_name(:) = ''
         Grid4_txt_scale_factor(:) = 1
         Grid4_plot_pad_left(:) = 0
         Grid4_plot_pad_right(:) = 0
         Grid4_plot_pad_top(:) = 0
         Grid4_plot_pad_bot(:) = 0
         Grid4_plot_row(:) = 0
         Grid4_plot_rowspan(:) = 0
         Grid4_plot_col(:) = 0
         Grid4_plot_colspan(:) = 0

         Grid5_plot_name(:) = ''
         Grid5_txt_scale_factor(:) = 1
         Grid5_plot_pad_left(:) = 0
         Grid5_plot_pad_right(:) = 0
         Grid5_plot_pad_top(:) = 0
         Grid5_plot_pad_bot(:) = 0
         Grid5_plot_row(:) = 0
         Grid5_plot_rowspan(:) = 0
         Grid5_plot_col(:) = 0
         Grid5_plot_colspan(:) = 0

         Grid6_plot_name(:) = ''
         Grid6_txt_scale_factor(:) = 1
         Grid6_plot_pad_left(:) = 0
         Grid6_plot_pad_right(:) = 0
         Grid6_plot_pad_top(:) = 0
         Grid6_plot_pad_bot(:) = 0
         Grid6_plot_row(:) = 0
         Grid6_plot_rowspan(:) = 0
         Grid6_plot_col(:) = 0
         Grid6_plot_colspan(:) = 0

         Grid7_plot_name(:) = ''
         Grid7_txt_scale_factor(:) = 1
         Grid7_plot_pad_left(:) = 0
         Grid7_plot_pad_right(:) = 0
         Grid7_plot_pad_top(:) = 0
         Grid7_plot_pad_bot(:) = 0
         Grid7_plot_row(:) = 0
         Grid7_plot_rowspan(:) = 0
         Grid7_plot_col(:) = 0
         Grid7_plot_colspan(:) = 0

         Grid8_plot_name(:) = ''
         Grid8_txt_scale_factor(:) = 1
         Grid8_plot_pad_left(:) = 0
         Grid8_plot_pad_right(:) = 0
         Grid8_plot_pad_top(:) = 0
         Grid8_plot_pad_bot(:) = 0
         Grid8_plot_row(:) = 0
         Grid8_plot_rowspan(:) = 0
         Grid8_plot_col(:) = 0
         Grid8_plot_colspan(:) = 0

         Grid9_plot_name(:) = ''
         Grid9_txt_scale_factor(:) = 1
         Grid9_plot_pad_left(:) = 0
         Grid9_plot_pad_right(:) = 0
         Grid9_plot_pad_top(:) = 0
         Grid9_plot_pad_bot(:) = 0
         Grid9_plot_row(:) = 0
         Grid9_plot_rowspan(:) = 0
         Grid9_plot_col(:) = 0
         Grid9_plot_colspan(:) = 0

         include 'pgstar.defaults'

      end subroutine set_default_pgstar_controls

      end module pgstar_ctrls_io
