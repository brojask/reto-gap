<!DOCTYPE html>
<!--[if lt IE 7]>
    <html class="no-js lt-ie9 lt-ie8 lt-ie7">
    <![endif]-->
    <!--[if IE 7]>
        <html class="no-js lt-ie9 lt-ie8">
        <![endif]-->
        <!--[if IE 8]>
            <html class="no-js lt-ie9">
            <![endif]-->
            <!--[if gt IE 8]>
                <!
            -->
            <html class="no-js">
                <!--
                <![endif]-->
                <head>
                    <meta charset="utf-8"/>
                    <title>
                        Super Zapatos App
                    </title>
                    <meta name="viewport" content="width=device-width, initial-scale=1"/>
                    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet"/>
                </head>
                <body>
                <nav class="navbar navbar-default">
                            <div class="container-fluid">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                        <span class="sr-only">
                                            Toggle navigation
                                        </span>
                                        <span class="icon-bar">
                                        </span>
                                        <span class="icon-bar">
                                        </span>
                                        <span class="icon-bar">
                                        </span>
                                    </button>
                                    <a class="navbar-brand" href="/">
                                        Super Zapatos App
                                    </a>
                                </div>
                                <div id="navbar" class="navbar-collapse collapse">
                                    <ul class="nav navbar-nav navbar-right">
                                          <li>
                                            <a href="/">
                                                Articles
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="/list-stores">
                                                Stores
                                                <span class="sr-only">
                                                    (current)
                                                </span>
                                            </a>
                                        </li>
                                  
                                    </ul>
                                </div>
                                <!-- /.nav-collapse -->
                            </div>
                            <!-- /.container-fluid -->
                        </nav>
                    <div class="container">
                        <div class="col-md-6 col-md-offset-3">
                            @yield('content')
                        </div>
                    </div>
                </body>
            </html>
