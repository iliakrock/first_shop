<?php



$cache = [
    'email' => 'asdada@aasad.aaa',

];

function getData(string $key, $default = [])
{
    global $cache;

    return $cache[$key] ?? $default;
}


foreach (getData('orders') as $order)
{
    echo "I'm working";
}

echo getData('age',  0) +17;