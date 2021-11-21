#ifdef NO_SHM_ONLINE
#include <boost/interprocess/managed_mapped_file.hpp>
#else
#include <boost/interprocess/managed_shared_memory.hpp>
#endif
#include <boost/container/vector.hpp>
#include <boost/multi_array.hpp>
// debug, demo output:
#include <fmt/ranges.h>
#include <random>

static std::mt19937 prng { std::random_device{}() };
namespace bip = boost::interprocess;
namespace bma = boost::multi_array_types;

namespace {
    #ifdef NO_SHM_ONLINE
        using Segment = bip::managed_mapped_file;
    #else
        using Segment = bip::managed_shared_memory;
    #endif

    template <typename T>
    using Alloc = bip::allocator<T, Segment::segment_manager>;

    template <typename T>
    using Vector = boost::container::vector<T, Alloc<T> >;
}

int main() {
    Segment seg(bip::open_only, "my_shared_mem");
    
    auto rows = 3;
    auto cols = 3;

    auto& backing = *seg.find_or_construct<Vector<double> >("my_backing")
                        (rows*cols, seg.get_segment_manager());

    // ensure enough backing storage
    //backing.resize(rows*cols); // previous runs might have required less
    //backing.shrink_to_fit();   // optional: might not be optimal

    boost::multi_array_ref<double, 2> data(
            backing.data(),
            boost::extents[rows][cols]);

    fmt::print("shape: {} num_elements(): {} free in segment: {}\n",
            std::vector<int>(data.shape(), data.shape()+2),
            data.num_elements(),
            seg.get_free_memory()
        );

    //std::iota(data.origin(), data.origin() + data.num_elements(), 1);
    //data[0][0] = 37;

    fmt::print("{}\n", fmt::join(data, "\n"));
}