require_relative './config/environment'

use UsersController
use StatsController
use GoalsController
use AssistsController
use SessionsController

use Rack::MethodOverride

run ApplicationController