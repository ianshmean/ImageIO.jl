using Test
using TestImages
using Glob
using ImageIO.ModPNG: __prepare_buffer, _prepare_buffer, readimage, writeimage

PNG_TEST_PATH = joinpath(@__DIR__, "png_temp")
isdir(PNG_TEST_PATH) && rm(PNG_TEST_PATH, recursive = true)
mkdir(PNG_TEST_PATH)

PNG_SUITE_DIR = "PngSuite"
PNG_SUITE_PATH = joinpath(PNG_TEST_PATH, PNG_SUITE_DIR)
PNG_SUITE_FILE = joinpath(PNG_TEST_PATH, "PngSuite.tgz")

try
    if !isdir(PNG_SUITE_PATH)
        mkdir(PNG_SUITE_PATH)
        download("http://www.schaik.com/pngsuite/PngSuite-2017jul19.tgz", PNG_SUITE_FILE)
        run(`tar xzf $(PNG_SUITE_FILE) -C $(PNG_SUITE_PATH)`)
        rm(PNG_SUITE_FILE)
    end
catch
    rm(PNG_SUITE_PATH, recursive=true)
end


_convert(C, T, xs::AbstractArray) =
    collect(colorview(C, map(i -> collect(reinterpret(T, collect(xs)[:, :, i])), 1:size(xs, 3))...))
_convert(C, T, xs::AbstractMatrix) = collect(colorview(C, collect(reinterpret(T, collect(xs)))))


real_imgs = [
    splitext(img_name)[1] => testimage(img_name)
    for img_name
    in TestImages.remotefiles
    if endswith(img_name, ".png")
]

synth_imgs = [
    "Float64_0" => rand(127, 257),
    "Float64_1" => rand(127, 257, 1),
    "Float64_2" => rand(127, 257, 2),
    "Float64_3" => rand(127, 257, 3),
    "Float64_4" => rand(127, 257, 4),
    "Bool_0" => rand(Bool, 127, 257),
    "Bool_1" => rand(Bool, 127, 257, 1),
    "Bool_2" => rand(Bool, 127, 257, 2),
    "Bool_3" => rand(Bool, 127, 257, 3),
    "Bool_4" => rand(Bool, 127, 257, 4),
    "UInt8_0" => rand(UInt8, 127, 257),
    "UInt8_1" => rand(UInt8, 127, 257, 1),
    "UInt8_2" => rand(UInt8, 127, 257, 2),
    "UInt8_3" => rand(UInt8, 127, 257, 3),
    "UInt8_4" => rand(UInt8, 127, 257, 4),
    "UInt16_0" => rand(UInt16, 127, 257),
    "UInt16_1" => rand(UInt16, 127, 257, 1),
    "UInt16_2" => rand(UInt16, 127, 257, 2),
    "UInt16_3" => rand(UInt16, 127, 257, 3),
    "UInt16_4" => rand(UInt16, 127, 257, 4),
    "N0f8_0" => rand(N0f8, 127, 257),
    "N0f8_1" => rand(N0f8, 127, 257, 1),
    "N0f8_2" => rand(N0f8, 127, 257, 2),
    "N0f8_3" => rand(N0f8, 127, 257, 3),
    "N0f8_4" => rand(N0f8, 127, 257, 4),
    "N0f16_0" => rand(N0f16, 127, 257),
    "N0f16_1" => rand(N0f16, 127, 257, 1),
    "N0f16_2" => rand(N0f16, 127, 257, 2),
    "N0f16_3" => rand(N0f16, 127, 257, 3),
    "N0f16_4" => rand(N0f16, 127, 257, 4),
    "Gray" => rand(Gray, 127, 257),
    "GrayA" => rand(GrayA, 127, 257),
    "RGB" => rand(RGB, 127, 257),
    "RGBA" => rand(RGBA, 127, 257),
    "GrayN0f8" => rand(Gray{N0f8}, 127, 257),
    "GrayAN0f8" => rand(GrayA{N0f8}, 127, 257),
    "RGBN0f8" => rand(RGB{N0f8}, 127, 257),
    "RGBAN0f8" => rand(RGBA{N0f8}, 127, 257),
    "GrayN0f16" => rand(Gray{N0f16}, 127, 257),
    "GrayAN0f16" => rand(GrayA{N0f16}, 127, 257),
    "RGBN0f16" => rand(RGB{N0f16}, 127, 257),
    "RGBAN0f16" => rand(RGBA{N0f16}, 127, 257),
]

invalid_imgs = [
    ("too_few_dimensions", MethodError, rand(127)),
    ("too_many_channels", AssertionError, rand(127, 257, 5)),
    ("too_many_dimensions", MethodError, rand(127, 257, 3, 1)),
]

edge_case_imgs = [
    ("BitArray_0", x->_convert(Gray, N7f1, x), randn(127, 257) .> 0),
    ("BitArray_1", x->_convert(Gray, N7f1, x), randn(127, 257, 1) .> 0),
    ("BitArray_2", x->_convert(GrayA, N7f1, x), randn(127, 257, 2) .> 0),
    ("BitArray_3", x->_convert(RGB, N7f1, x), randn(127, 257, 3) .> 0),
    ("BitArray_4", x->_convert(RGBA, N7f1, x), randn(127, 257, 4) .> 0),
    ("N4f12_0", x->_convert(Gray, N0f16, x), rand(N4f12,127, 257)),
    ("N4f12_1", x->_convert(Gray, N0f16, x), rand(N4f12,127, 257, 1)),
    ("N4f12_2", x->_convert(GrayA, N0f16, x), rand(N4f12,127, 257, 2)),
    ("N4f12_3", x->_convert(RGB, N0f16, x), rand(N4f12,127, 257, 3)),
    ("N4f12_4", x->_convert(RGBA, N0f16, x), rand(N4f12,127, 257, 4)),
    ("BGRN0f8", identity, rand(BGR{N0f8}, 127, 257)),
    ("BGRAN0f8", identity, rand(BGRA{N0f8}, 127, 257)),
    ("BGRN0f16", identity, rand(BGR{N0f16}, 127, 257)),
    ("BGRAN0f16", identity, rand(BGRA{N0f16}, 127, 257)),
    ("ABGRN0f8", identity, rand(ABGR{N0f8}, 127, 257)),
    ("ABGRN0f16", identity, rand(ABGR{N0f16}, 127, 257)),
    ("ARGBN0f8", identity, rand(ARGB{N0f8}, 127, 257)),
    ("ARGBN0f16", identity, rand(ARGB{N0f16}, 127, 257)),
]

@testset "libpng" begin
    for (case, image) in vcat(synth_imgs, real_imgs)
        @debug case
        @testset "$(case)" begin
            expected = collect(_prepare_buffer(image))
            filename = joinpath(PNG_TEST_PATH, "test_img_$(case).png")
            @testset "write" begin
                @test writeimage(filename, image) == 0
            end
            @testset "read" begin
                global read_in = readimage(filename)
                @test read_in isa Matrix
            end
            @testset "compare" begin
                @test all(expected .≈ read_in)
            end
        end
    end

    for (case, exception, image) in invalid_imgs
        @debug case
        @testset "$(case) throws" begin
            @test_throws exception writeimage(joinpath(PNG_TEST_PATH, "test_img_err_$(case).png"), image)
        end
    end

    for (case, func_in, image) in edge_case_imgs
        @debug case
        @testset "$(case)" begin
            filename = joinpath(PNG_TEST_PATH, "test_img_$(case).png")
            @testset "write" begin
                @test writeimage(filename, image) == 0
            end
            @testset "read" begin
                global read_in = readimage(filename)
                @test read_in isa Matrix
            end
            @testset "compare" begin
                @test all(read_in .== func_in(image))
            end
        end
    end

    if isdir(PNG_SUITE_PATH)
        @testset "PngSuite" begin
            for test_img_path in glob(joinpath("./**/$(PNG_SUITE_DIR)", "[!x]*[!_new].png"))
                case = splitpath(test_img_path)[end]
                @debug case
                @testset "$(case)" begin
                    global read_in = readimage(test_img_path)
                    @test read_in isa Matrix
                    path, ext = splitext(test_img_path)
                    @test writeimage(path * "_new" * ext, read_in) == 0
                end
            end


            ## TODO: Malformed pngs that should error. This throws `signal (6): Aborted` since we
            ## don't work with `png_jmpbuf` properly.
            # for test_img_path in glob(joinpath("./**/$(PNG_SUITE_DIR)", "[x]*.png"))
            #     case = splitpath(test_img_path)[end]
            #     @debug case
            #     @testset "$(case)" begin
            #         @test_throws ErrorException readimage(test_img_path)
            #     end
            # end
        end
    end
end


# Cleanup
isdir(PNG_TEST_PATH) && rm(PNG_TEST_PATH, recursive = true)
