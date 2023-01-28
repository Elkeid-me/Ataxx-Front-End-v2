#include <array>
#include <concepts>
#include <cstddef>
#include <iostream>
#include <ranges>

template <std::integral T>
static constexpr T consteval_abs(T val) { return val > 0 ? val : -val; }
static constexpr int Chebyshev_distance(std::pair<int, int> point_1, std::pair<int, int> point_2)
{
    int distance_row{consteval_abs(point_1.first - point_2.first)}, distance_col{consteval_abs(point_1.second - point_2.second)};
    return std::max(distance_row, distance_col);
}

static constexpr bool is_point_legal(std::pair<int, int> point)
{
    return point.first >= 0 && point.first <= 6 &&
           point.second >= 0 && point.second <= 6;
}

using array_type = std::array<unsigned long long, 64>;
static consteval auto get_mask()
    -> std::pair<array_type, array_type>
{
    array_type return_val_1{}, return_val_2{};

    for (std::size_t i : std::views::iota(0, 64))
    {
        auto row{i / 8}, col{i % 8};
        if (is_point_legal({row, col}))
        {
            for (std::size_t j : std::views::iota(row - 2, row + 3))
            {
                for (std::size_t k : std::views::iota(col - 2, col + 3))
                {
                    if (is_point_legal({j, k}))
                    {
                        switch (Chebyshev_distance({row, col}, {j, k}))
                        {
                        case 1:
                            return_val_1[i] += 1ull << (row * 8 + col);
                            break;
                        case 2:
                            return_val_2[i] += 1ull << (row * 8 + col);
                            break;
                        }
                    }
                }
            }
        }
    }
    return {return_val_1, return_val_2};
}

constexpr auto D_1{get_mask().first}, D2{get_mask().second};

int main()
{
}
