<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .text-rainbow-animation {
            font-family: arial black;
            font-size: 27px;
            background-image:
                linear-gradient(to right, red, orange, yellow, green, blue, indigo, violet, red);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            animation: rainbow-animation 35s linear infinite;
        }

        @keyframes rainbow-animation {
            to {
                background-position: 4500vh;
            }
        }
    </style>

    <title>Eloquent</title>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h2 class="text-center my-3">Eloquent Relationship</h2>
                <p class="text-center">All outputs in <code>welcome.blade.php</code></p>

                <h4 class="text-center my-3 text-rainbow-animation">One To One</h4>
                <p class="text-center">Model used: <code>User.php</code> and <code>Phone.php</code></p>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Phone</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($users as $data)
                        <tr>
                            <td>{{$data->name}}</td>
                            <td>{{$data->phone->name}}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>

                <h4 class="text-center my-3 text-rainbow-animation">One To Many</h4>
                <p class="text-center">Model used: <code>Post.php</code> and <code>Comment.php</code></p>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Comments</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($posts as $data)
                        <tr>
                            <td>{{$data->title}}</td>
                            <td>
                                @foreach ($data->comments as $comment)
                                <li>{{$comment->message}}</li>
                                @endforeach
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>

                <h4 class="text-center my-3 text-rainbow-animation">Many To Many</h4>
                <p class="text-center">Model used: <code>Post.php</code> and <code>Category.php</code></p>
                <p class="text-center">Alphabetically naming convention with <code>category_post</code> table.</p>

                <h5>Categories belongs to post</h5>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Categories</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($mtm_posts as $data)
                        <tr>
                            <td>{{$data->title}}</td>
                            <td>
                                @foreach ($data->categories as $cat)
                                <li>{{$cat->name}}</li>
                                @endforeach
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>

                <h5>Posts belongs to category</h5>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Category</th>
                            <th>Titles</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($categories as $data)
                        <tr>
                            <td>{{$data->name}}</td>
                            <td>
                                @foreach ($data->posts as $post)
                                <li>{{$post->title}}</li>
                                @endforeach
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>


                <h4 class="text-center my-3 text-rainbow-animation">Has One Through</h4>
                <p class="text-center">Model used: <code>Car.php</code>, <code>Mechanic.php</code> and <code>Owner.php</code></p>
                <p class="text-center">Here <code>mechanics</code> and <code>owners</code> table has no relation. But we
                    can get data from <code>mechanics</code> table through <code>hasOneThrough</code> relation.</p>

                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Mechanic</th>
                            <th>Car Model</th>
                            <th>Car Owner</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($mechanics as $data)
                        <tr>
                            <td>{{$data->name}}</td>
                            <td>{{ $data->car->model }}</td>
                            <td>{{$data->carOwner->name}}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>


                <h4 class="text-center my-3 text-rainbow-animation">Has Many Through</h4>
                <p class="text-center">Model used: <code>Country.php</code>, <code>User.php</code> and <code>Post.php</code></p>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Country</th>
                            <th>Total Posts</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($countries as $data)
                        <tr>
                            <td>{{$data->name}}</td>
                            <td>{{ $data->posts->count() }}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>

            </div>
        </div>
    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>

</html>