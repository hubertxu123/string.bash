# @depends string_separator_camelcase
string_underscore_camelcase()
{
    local string="${1}"

    if [[ -z "${string}" ]] && [ ! -t 0 ]; then
        string=$(cat <&0)
    fi

    string_separator_camelcase "_" "${string}"
}
