# the global config
import "config/global.pp"
import "config/hosts.pp"
import "config/yum.pp"
include config::yum
include config::global

# all role
import "role/*.pp"

# all node define
import "node/*.pp"
