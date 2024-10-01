local icons = {
    kind = {
        Text = "󰦨 ",
        Method = " ",
        Function = " ",
        Constructor = " ",
        Field = " ",
        Variable = " ",
        Class = " ",
        Interface = " ",
        Module = " "
        Property = " ",
        Unit = " ",
        Value = "󰾡 ",
        Enum = " ",
        Keyword = " ",
        Snippet = " ",
        Color = " ",
        File = " ",
        Reference = " ",
        Folder = " ",
        EnumMember = " ",
        Constant = " ",
        Struct = " ",
        Event = " ",
        Operator = " ",
        TypeParameter = " ",
        Specifier = " ",
        Statement = "",
        Recovery = " ",
        TranslationUnit = " ",
        PackExpansion = " "
    },
    type = {
        Array = " ",
        Number = " ",
        String = " ",
        Boolean = " ",
        Object = " ",
        Template = " "
    },
    documents = {
        File = "",
        Files = "",
        Folder = "",
        OpenFolder = "",
        EmptyFolder = "",
        EmptyOpenFolder = "",
        Unknown = "",
        Symlink = "",
        FolderSymlink = ""
    },
    git = {
        Add = " ",
        Mod = " ",
        Remove = " ",
        Untrack = " ",
        Rename = " ",
        Diff = " ",
        Repo = " ",
        Branch = " ",
        Unmerged = " "
    },
    ui = {
        Lock              = "",
        TinyCircle        = "",
        Circle            = "",
        BigCircle         = "",
        BigUnfilledCircle = "",
        CircleWithGap     = "",
        LogPoint          = "",
        Close             = "",
        NewFile           = "",
        Search            = "",
        Lightbulb         = "",
        Project           = "",
        Dashboard         = "",
        History           = "",
        Comment           = "",
        Bug               = "",
        Code              = "",
        Telescope         = " ",
        Gear              = "",
        Package           = "",
        List              = "",
        SignIn            = "",
        Check             = "",
        Fire              = "",
        Note              = "",
        BookMark          = "",
        Pencil            = "",
        ChevronRight      = "",
        Table             = "",
        Calendar          = "",
        Line              = "▊",
        Evil              = "",
        Debug             = "",
        Run               = "",
        VirtualPrefix     = "",
        Next              = "",
        Previous          = "",
    },
    diagnostics = {
        Error = " ",
        Warning = " ",
        Information = " ",
        Question = " ",
        Hint = " ",
    },
    misc = {
        Robot = "󰚩 ",
        Squirrel = "  ",
        Tag = " ",
        Arch = "󰣇 ",
    },
    cmake = {
        CMake = "",
        Build = "",
        Run = "",
        Debug = "",
    },
}

if not os.getenv("NERD_FONTS") then
    for key, value in pairs(icons) do
        for k, v in pairs(value) do
            icons[key][k] = k
        end
    end
end

return icons

