import Welcome   from './components/Welcome'
import Help      from './components/Help'
import Acronyms  from './components/Acronyms'
import Assists   from './components/Assists'
import Champions from './components/Champions'
import Fanbase   from './components/Fanbase'
import Most      from './components/Most'
import MVP       from './components/MVP'
import Player    from './components/Player'
import Players   from './components/Players'
import Points    from './components/Points'
import Rebounds  from './components/Rebounds'
import Steals    from './components/Steals'
import Team      from './components/Team'
import Teams     from './components/Teams'

export const ROUTES = [
  { path: '/'              , component: Welcome   },
  { path: '/help'          , component: Help      },
  { path: '/stats'         , component: Acronyms  },
  { path: '/acronyms'      , component: Acronyms  },
  { path: '/assists'       , component: Assists   },
  { path: '/champions'     , component: Champions },
  { path: '/fanbase'       , component: Fanbase   },
  { path: '/most'          , component: Most      },
  { path: '/most championships', component: Most  },
  { path: '/mvp'           , component: MVP       },
  { path: '/players/:id'   , component: Player    },
  { path: '/players'       , component: Players   },
  { path: '/points'        , component: Points    },
  { path: '/rebounds'      , component: Rebounds  },
  { path: '/steals'        , component: Steals    },
  { path: '/teams/:id'     , component: Team      },
  { path: '/teams'         , component: Teams     }
]