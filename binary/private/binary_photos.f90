! ***********************************************************************
!
!   Copyright (C) 2010-2022  Pablo Marchant, Matthias Fabry & The MESA Team
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


module binary_photos

   use const_def, only: dp
   use math_lib
   use star_lib
   use star_def
   use binary_def
   use utils_lib

   implicit none

contains

   subroutine do_saves_for_binary(b, ierr)
      type(binary_info), pointer :: b
      integer, intent(out) :: ierr
      integer :: iounit
      character (len = strlen) :: str_photo, filename, iomsg, report_str

      call string_for_model_number('x', b% model_number, b% photo_digits, str_photo)

      filename = trim(trim(b% photo_directory) // '/b_' // str_photo)
      report_str = trim('save ' // filename)
      open(newunit = iounit, file = trim(filename), action = 'write', &
         status = 'replace', iostat = ierr, iomsg = iomsg, form = 'unformatted')
      if (ierr /= 0) then
         write(*, *) 'failed in do_saves_for_binary', trim(filename)
         return
      end if
      call binary_photo_write(b% binary_id, iounit)
      close(iounit)

      if (b% have_star_1) then
         filename = trim(trim(b% s1% photo_directory) // '/1_' // str_photo)
         call star_save_for_restart(b% s1% id, filename, ierr)
         report_str = trim(trim(report_str) // ', ' // filename)
      end if
      if (b% have_star_2) then
         filename = trim(trim(b% s2% photo_directory) // '/2_' // str_photo)
         call star_save_for_restart(b% s2% id, filename, ierr)
         report_str = trim(trim(report_str) // ', ' // filename)
      end if
      if (ierr /= 0) then
         write(*, *) 'failed in do_saves_for_binary'
         return
      end if

      write(*, *) trim(trim(report_str) // ' for model'), b% model_number

   end subroutine do_saves_for_binary

   subroutine binary_photo_write(binary_id, iounit)
      integer, intent(in) :: binary_id, iounit
      type(binary_info), pointer :: b

      integer :: ierr, k, len_history_col_spec

      ierr = 0
      call binary_ptr(binary_id, b, ierr)
      if (ierr /= 0) then
         write(*, *) 'failed in binary_ptr'
         return
      end if

      write(iounit) star_def_version

      write(iounit, iostat = ierr) &
         b% binary_age, b% binary_age_old, &
         b% model_number, b% model_number_old, &
         b% mtransfer_rate, b% mtransfer_rate_old, &
         b% angular_momentum_j, b% angular_momentum_j_old, &
         b% separation, b% separation_old, &
         b% eccentricity, b% eccentricity_old, &
         b% rl_relative_gap(1), b% rl_relative_gap_old(1), &
         b% rl_relative_gap(2), b% rl_relative_gap_old(2), &
         b% r(1), b% r_old(1), &
         b% r(2), b% r_old(2), &
         b% rl(1), b% rl_old(1), &
         b% rl(2), b% rl_old(2), &
         b% m(1), b% m_old(1), &
         b% m(2), b% m_old(2), &
         b% dt, b% dt_old, &
         b% env(1), b% env_old(1), &
         b% env(2), b% env_old(2), &
         b% eq_initial_bh_mass, &
         b% period, b% period_old, &
         b% max_timestep, b% max_timestep_old, &
         b% change_factor, b% change_factor_old, &
         b% min_binary_separation, &
         b% using_jdot_mb(1), b% using_jdot_mb_old(1), &
         b% using_jdot_mb(2), b% using_jdot_mb_old(2), &
         b% d_i, b% d_i_old, b% a_i, b% a_i_old, &
         b% point_mass_i, b% point_mass_i_old, &
         b% ignore_rlof_flag, b% ignore_rlof_flag_old, &
         b% model_twins_flag, b% model_twins_flag_old, &
         b% dt_why_reason, b% dt_why_reason_old, &
         b% have_star_1, b% have_star_2, &
         b% CE_flag, b% CE_flag_old, &
         b% CE_init, b% CE_init_old, &
         b% CE_nz, b% CE_initial_radius, b% CE_initial_separation, b% CE_initial_Mdonor, &
         b% CE_initial_Maccretor, b% CE_initial_age, b% CE_initial_model_number, &
         b% CE_b_initial_age, b% CE_b_initial_model_number, &
         b% CE_num1, b% CE_num1_old, &
         b% CE_num2, b% CE_num2_old, &
         b% CE_lambda1, b% CE_lambda1_old, &
         b% CE_lambda2, b% CE_lambda2_old, &
         b% CE_Ebind1, b% CE_Ebind1_old, &
         b% CE_Ebind2, b% CE_Ebind2_old, &
         b% CE_years_detached, b% CE_years_detached_old, &
         b% generations, &
         b% ixtra(:), b% ixtra_old(:), &
         b% xtra(:), b% xtra_old(:), &
         b% lxtra(:), b% lxtra_old(:)

      if (associated(b% binary_history_column_spec)) then
         len_history_col_spec = size(b% binary_history_column_spec)
         write(iounit) len_history_col_spec
         write(iounit) b% binary_history_column_spec(1:len_history_col_spec)
      else
         write(iounit) 0  ! len_log_col_spec
      end if
      write(iounit)  &
         b% number_of_binary_history_columns, b% model_number_of_binary_history_values, &
         b% need_to_set_binary_history_names_etc
      if (b% number_of_binary_history_columns > 0) then
         write(iounit) b% binary_history_value_is_integer(1:b% number_of_binary_history_columns)
         do k = 1, b% number_of_binary_history_columns
            write(iounit) b% binary_history_names(k)
         end do
      end if

      if (b% CE_init) then
         write(iounit, iostat = ierr) &
            b% CE_m(:), b% CE_entropy(:), b% CE_U_in(:), b% CE_U_out(:), b% CE_Omega_in(:), b% CE_Omega_out(:)
      end if

      call b% other_binary_photo_write(binary_id, iounit)

      if (ierr /= 0) stop "error in binary_photo_write"

   end subroutine binary_photo_write

   subroutine binary_load_photo(b, photo_filename, ierr)
      type(binary_info), pointer :: b
      character (len = strlen) :: photo_filename
      integer, intent(out) :: ierr
      integer :: iounit, version

      open(newunit = iounit, file = trim(photo_filename), action = 'read', &
         status = 'old', iostat = ierr, form = 'unformatted')
      if (ierr /= 0) then
         write(*, *) 'failed to open ' // trim(photo_filename)
         return
      end if

      read(iounit, iostat = ierr) version
      if (ierr /= 0) then
         write(*, *) 'failed to read version number'
         return
      end if
      if (version /= star_def_version) then
         write(*, '(/,a,/)') ' FAILURE: the restart data' // &
            ' is from a previous version of the code and is no longer usable.'
         ierr = -1
         return
      end if

      call binary_photo_read(b% binary_id, iounit, ierr)
      if (ierr /= 0) then
         write(*, *) 'failed in binary_photo_read'
         return
      end if

      close(iounit)

   end subroutine binary_load_photo

   subroutine binary_photo_read(binary_id, iounit, ierr)
      integer, intent(in) :: binary_id, iounit
      integer, intent(out) :: ierr
      type(binary_info), pointer :: b
      integer :: nz, k, len_history_col_spec

      ierr = 0
      call binary_ptr(binary_id, b, ierr)
      if (ierr /= 0) then
         write(*, *) 'failed in binary_ptr'
         return
      end if
      read(iounit, iostat = ierr) &
         b% binary_age, b% binary_age_old, &
         b% model_number, b% model_number_old, &
         b% mtransfer_rate, b% mtransfer_rate_old, &
         b% angular_momentum_j, b% angular_momentum_j_old, &
         b% separation, b% separation_old, &
         b% eccentricity, b% eccentricity_old, &
         b% rl_relative_gap(1), b% rl_relative_gap_old(1), &
         b% rl_relative_gap(2), b% rl_relative_gap_old(2), &
         b% r(1), b% r_old(1), &
         b% r(2), b% r_old(2), &
         b% rl(1), b% rl_old(1), &
         b% rl(2), b% rl_old(2), &
         b% m(1), b% m_old(1), &
         b% m(2), b% m_old(2), &
         b% dt, b% dt_old, &
         b% env(1), b% env_old(1), &
         b% env(2), b% env_old(2), &
         b% eq_initial_bh_mass, &
         b% period, b% period_old, &
         b% max_timestep, b% max_timestep_old, &
         b% change_factor, b% change_factor_old, &
         b% min_binary_separation, &
         b% using_jdot_mb(1), b% using_jdot_mb_old(1), &
         b% using_jdot_mb(2), b% using_jdot_mb_old(2), &
         b% d_i, b% d_i_old, b% a_i, b% a_i_old, &
         b% point_mass_i, b% point_mass_i_old, &
         b% ignore_rlof_flag, b% ignore_rlof_flag_old, &
         b% model_twins_flag, b% model_twins_flag_old, &
         b% dt_why_reason, b% dt_why_reason_old, &
         b% have_star_1, b% have_star_2, &
         b% CE_flag, b% CE_flag_old, &
         b% CE_init, b% CE_init_old, &
         b% CE_nz, b% CE_initial_radius, b% CE_initial_separation, b% CE_initial_Mdonor, &
         b% CE_initial_Maccretor, b% CE_initial_age, b% CE_initial_model_number, &
         b% CE_b_initial_age, b% CE_b_initial_model_number, &
         b% CE_num1, b% CE_num1_old, &
         b% CE_num2, b% CE_num2_old, &
         b% CE_lambda1, b% CE_lambda1_old, &
         b% CE_lambda2, b% CE_lambda2_old, &
         b% CE_Ebind1, b% CE_Ebind1_old, &
         b% CE_Ebind2, b% CE_Ebind2_old, &
         b% CE_years_detached, b% CE_years_detached_old, &
         b% generations, &
         b% ixtra(:), b% ixtra_old(:), &
         b% xtra(:), b% xtra_old(:), &
         b% lxtra(:), b% lxtra_old(:)

      read(iounit, iostat = ierr) len_history_col_spec
      if (failed('len_history_col_spec')) return
      if (len_history_col_spec > 0) then
         allocate(b% binary_history_column_spec(len_history_col_spec), stat = ierr)
         if (failed('alloc binary_history_column_spec')) return
         read(iounit, iostat = ierr) b% binary_history_column_spec(1:len_history_col_spec)
         if (failed('read binary_history_column_spec')) return
      end if

      read(iounit, iostat = ierr) &
         b% number_of_binary_history_columns, b% model_number_of_binary_history_values, &
         b% need_to_set_binary_history_names_etc
      if (failed('number_of_binary_history_columns')) return

      if (b% number_of_binary_history_columns > 0) then

         allocate(b% binary_history_value_is_integer(b% number_of_binary_history_columns), stat = ierr)
         if (failed('alloc history_value_is_integer')) return
         read(iounit, iostat = ierr) b% binary_history_value_is_integer(1:b% number_of_binary_history_columns)
         if (failed('read history_value_is_integer')) return

         allocate(b% binary_history_names(b% number_of_binary_history_columns), stat = ierr)
         if (failed('alloc history_names')) return
         do k = 1, b% number_of_binary_history_columns
            read(iounit, iostat = ierr) b% binary_history_names(k)
            if (failed('read history_names')) return
         end do

         ! rebuild the history_names_dict
         do k = 1, b% number_of_binary_history_columns
            call integer_dict_define(b% binary_history_names_dict, b% binary_history_names(k), k, ierr)
            if (failed('integer_dict_define history_names_dict')) return
         end do
         call integer_dict_create_hash(b% binary_history_names_dict, ierr)
         if (failed('integer_dict_create_hash history_names_dict')) return

      end if

      if (b% CE_flag .and. b% CE_init) then
         nz = b% CE_nz
         allocate(b% CE_m(nz), b% CE_entropy(4 * nz), &
            b% CE_U_in(4 * nz), b% CE_U_out(4 * nz), b% CE_Omega_in(4 * nz), b% CE_Omega_out(4 * nz), stat = ierr)
         if (ierr /= 0) stop "error during allocation in binary_photo_read"
         read(iounit, iostat = ierr) &
            b% CE_m(:), b% CE_entropy(:), b% CE_U_in(:), b% CE_U_out(:), b% CE_Omega_in(:), b% CE_Omega_out(:)
      end if

      call b% other_binary_photo_read(binary_id, iounit, ierr)

      if (ierr /= 0) stop "error in binary_photo_read"

   contains

      logical function failed(str)
         character (len = *), intent(in) :: str
         if (ierr /= 0) then
            write(*, *) 'read_binary_photo failed for ' // trim(str)
            failed = .true.
            return
         end if
         failed = .false.
      end function failed

   end subroutine binary_photo_read

end module binary_photos

