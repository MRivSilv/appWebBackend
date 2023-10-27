<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use App\Models\imagenes;
use Faker\Factory as Faker;

class ImagenesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();
        $enlaces_mini = array(
            "https://upload.wikimedia.org/wikipedia/hr/7/77/Cannibal_Skeletal.jpg",
            "https://i.discogs.com/lei8Uhf40ZPB8hFAhCH-k1tf4tLB8ebldpGwjLifv2U/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQxODg1/NzAtMTQ2MjUzMDMy/NC0zOTk2LnBuZw.jpeg",
            "https://i.discogs.com/Qs4nND7y3hT4os_LKDrdKfzuJ0iwWRnVbV5JTnCPsJM/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNDA1/NDY5LTE1NTM1NzY4/NDAtNjIwNC5qcGVn.jpeg",
            "https://i.discogs.com/Ji9pV592dUGgHZJOi1hAnklTxbqWY_o1SSolNo_bKUk/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM3MjQw/Mi0xMzkxNTI0NzY0/LTY5NzQuanBlZw.jpeg",
            "https://i.discogs.com/pScJK4k8kKM_nwYFm9Bj-a9IBJE2WmRKaKQ8gNCZ08c/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0NjYx/NDQ0LTE1NzkxMjEz/MjAtNzI0MS5qcGVn.jpeg",
            "https://musicland.cl/wp-content/uploads/2016/09/DARKTHRONEPANZERFAUSTLP.jpg",
            "https://i.discogs.com/o8eAqZdCKcm8RqhiPJndNiR8KCj6hHgr9_YWpSCDYm0/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI1Njcz/NTctMTI5MDgyOTM0/Ni5qcGVn.jpeg",
            "https://suiciderecordschile.com/wp-content/uploads/2021/01/Leprosy_Album.jpg"
        );
        $enlaces_gran = array(
            "https://i.pinimg.com/originals/38/0e/d5/380ed5c65d5a75f2a0bbfa3d7dc545a8.jpg",
            "https://i.discogs.com/yO56YAyZc0wBN1dAHVYgj3mjRYjXG9tpFWnHhdYlSMk/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQxODg1/NzAtMTQ2MjUzMDMy/NC0zOTk2LnBuZw.jpeg",
            "https://th.bing.com/th/id/OIP.U2HUsJsMjB5LWJNZ9E40YwHaHa?pid=ImgDet&rs=1",
            "https://i.discogs.com/F-0xh117aiN4ShA0_kXDMAYOURHm4UrCBJSOzNoOEs8/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTYxNDM4/MjctMTUwNzE1MjM2/My0zNDIxLmpwZWc.jpeg",
            "https://th.bing.com/th/id/OIP.HRrKBpZb1I4yuU6r57-gGgHaHa?pid=ImgDet&rs=1",
            "https://m.media-amazon.com/images/I/51iCsSUoTdL._UXNaN_FMjpg_QL85_.jpg",
            "https://lastfm.freetls.fastly.net/i/u/500x500/5ad20942346f48d6b4e7f18d107c4a3b.jpg",
            "https://th.bing.com/th/id/R.28ea938cbcb12d9550cff04a14deefda?rik=p5ydAeB2BfH3nw&pid=ImgRaw&r=0"
        );
        $i = 0;

        foreach($enlaces_mini as $enlace){
            imagenes::create([
                'nombre' => $faker->text(80),
                'descripcion' => $content = $faker->paragraph(18),
                'enlace_miniatura' => $enlace,
                'enlace_grande' =>$enlaces_gran[$i],
                'user_id' => $faker->numberBetween($min=1, $max=100),
            ]);
            $i = $i + 1;
        }
    }
}
