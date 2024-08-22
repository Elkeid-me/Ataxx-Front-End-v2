-- Copyright (C) 2021-2024 Elkeid-me
--
-- This file is part of Ataxx Frontend.
--
-- Ataxx Frontend is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- Ataxx Frontend is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with Ataxx Frontend.  If not, see <http://www.gnu.org/licenses/>.

target("Ataxx_Front_End")
    set_languages("cxx20")
    add_rules("qt.quickapp")
    add_files("src/*.h")
    add_files("src/*.cpp")
    add_files("src/rcs.qrc")
