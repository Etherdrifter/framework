package RPG::DB::Result::AccountAuth;

# RPGWNN - Perl Browser-Based MMORPG Framework
# Copyright (C) 2011-2012 Reanimated Projects and Games Ltd

# This file is part of RPGWNN
#
# RPGWNN is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# RPGWNN is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with RPGWNN.  If not, see <http://www.gnu.org/licenses/>.
#
# Contact information for Reanimated Projects and Games Ltd
# can be found at http://rpgwnn.com/

use base qw/DBIx::Class::Core/;

use strict;
use warnings;

__PACKAGE__->table('account_auths');
__PACKAGE__->add_columns(
    account_auth_id => {
        data_type         => 'integer',
        size              => 11,
        is_nullable       => 0,
        is_auto_increment => 1,
#        default_value     => 0,
        extra             => { unsigned => 1 },
    },
    account_id => {
        data_type       => "integer",
        size            => 11,
        is_nullable     => 0,
        is_foreign_key  => 1,
        extra           => { unsigned => 1 },
    },
    auth_type => {
        data_type       => "char",
        size            => 10,
        is_nullable     => 0,
    },
);
__PACKAGE__->set_primary_key('account_auth_id');
__PACKAGE__->belongs_to(
    account => 'RPG::DB::Result::Account',
    'account_id'
);

1;

=head1 AUTHOR

Simon Amor E<lt>simon@rpgwnn.comE<gt>

=head1 COPYRIGHT

Copyright (C) 2011-2012 Reanimated Projects and Games Ltd
