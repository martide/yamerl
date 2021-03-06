-module('ex_6.16_tag_directive').

-include_lib("eunit/include/eunit.hrl").

-define(FILENAME, "test/parsing/" ?MODULE_STRING ".yaml").

single_test_() ->
    ?_assertMatch(
      {yamerl_parser,
        {file,?FILENAME},
        [],
        <<>>,
        51,
        true,
        [],
        0,
        52,
        4,
        1,
        false,
        3,
        16,
        utf8,
        false,
        undefined,
        _,
        _,
        [],
        {bcoll,root,0,-1,1,1,-1,1,1},
        false,
        false,
        false,
        [{impl_key,false,false,undefined,undefined,1,1}],
        false,
        false,
        _,
        [],
        0,
        8,
        6,
        undefined,
        undefined,
        _,
        false,
        [],
        [
          {yamerl_stream_end,3,16},
          {yamerl_doc_end,3,16},
          {yamerl_scalar,3,11,
            {yamerl_tag,3,1,"tag:yaml.org,2002:str"},
            flow,double_quoted,"foo"},
          {yamerl_doc_start,2,1,{1,2},_},
          {yamerl_tag_directive,1,1,"!yaml!","tag:yaml.org,2002:"},
          {yamerl_stream_start,1,1,utf8}
        ]
      },
      yamerl_parser:file(?FILENAME)
    ).
