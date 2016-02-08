/* Blox is an Opensource Session Border Controller
#  * Copyright (c) 2015-2018 "Blox" [http://www.blox.org]
#  *
#  * This file is part of Blox.
#  *
#  * Blox is free software: you can redistribute it and/or modify
#  * it under the terms of the GNU General Public License as published by
#  * the Free Software Foundation, either version 3 of the License, or
#  * (at your option) any later version.
#  *
#  * This program is distributed in the hope that it will be useful,
#  * but WITHOUT ANY WARRANTY; without even the implied warranty of
#  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  * GNU General Public License for more details.
#  *
#  * You should have received a copy of the GNU General Public License
#  * along with this program. If not, see <http://www.gnu.org/licenses/>
#  */

route[READ_HEADER] {
    $var(match) = $param(1);
    $var(HEADER) = null ;

    switch($var(match)) {
        case "$rU":    
            $var(HEADER) = $rU;
            break;
        case "$tU":    
            $var(HEADER) = $tU;
            break;
        case "$fU":    
            $var(HEADER) = $fU;
            break;
        default :
            xlog(" Requested Condition did not matched  \n");   
    }   
}
