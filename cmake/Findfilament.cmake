include(FetchContent)

FetchContent_Declare(
  filament
  GIT_REPOSITORY https://github.com/google/filament.git
  GIT_TAG release
)

FetchContent_MakeAvailable(filament)

