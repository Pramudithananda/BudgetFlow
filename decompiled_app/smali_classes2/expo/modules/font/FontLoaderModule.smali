.class public Lexpo/modules/font/FontLoaderModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "FontLoaderModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontLoaderModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontLoaderModule.kt\nexpo/modules/font/FontLoaderModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 7 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeKt\n+ 8 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeProvider\n+ 9 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 10 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 11 AsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/AsyncFunctionComponentKt\n+ 12 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 13 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 14 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 15 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n58#2:73\n14#3:74\n25#3:75\n27#4,3:76\n31#4:145\n102#5:79\n103#5,2:85\n252#5:87\n255#5,3:142\n26#6:80\n20#7:81\n13#8,3:82\n170#9,6:88\n157#9:94\n148#9,7:97\n176#9:104\n157#9:105\n148#9,7:106\n143#10,2:95\n13#11,6:113\n19#11,19:123\n8#12,4:119\n11383#13,9:146\n13309#13:155\n13310#13:157\n11392#13:158\n1#14:156\n766#15:159\n857#15,2:160\n*S KotlinDebug\n*F\n+ 1 FontLoaderModule.kt\nexpo/modules/font/FontLoaderModule\n*L\n24#1:73\n24#1:74\n24#1:75\n24#1:76,3\n24#1:145\n30#1:79\n30#1:85,2\n34#1:87\n34#1:142,3\n30#1:80\n30#1:81\n30#1:82,3\n34#1:88,6\n34#1:94\n34#1:97,7\n34#1:104\n34#1:105\n34#1:106,7\n34#1:95,2\n34#1:113,6\n34#1:123,19\n34#1:119,4\n65#1:146,9\n65#1:155\n65#1:157\n65#1:158\n65#1:156\n68#1:159\n68#1:160,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/font/FontLoaderModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "queryCustomNativeFonts",
        "",
        "",
        "expo-font_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$queryCustomNativeFonts(Lexpo/modules/font/FontLoaderModule;)Ljava/util/List;
    .locals 0

    .line 20
    invoke-direct {p0}, Lexpo/modules/font/FontLoaderModule;->queryCustomNativeFonts()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lexpo/modules/font/FontLoaderModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    throw v0
.end method

.method private final queryCustomNativeFonts()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lexpo/modules/font/FontLoaderModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 62
    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "^(.+?)(_bold|_italic|_bold_italic)?\\.(ttf|otf)$"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 64
    const-string v2, "fonts/"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 146
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 155
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v0, v6

    .line 66
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x2

    invoke-static {v1, v7, v5, v8, v2}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_1

    :cond_0
    move-object v7, v2

    :goto_1
    if-eqz v7, :cond_1

    .line 154
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 158
    :cond_2
    check-cast v3, Ljava/util/List;

    .line 65
    check-cast v3, Ljava/lang/Iterable;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 160
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 68
    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 160
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 161
    :cond_4
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    :cond_5
    if-nez v2, :cond_6

    .line 69
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_6
    return-object v2
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 10

    .line 24
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ModuleDefinition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 73
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 26
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {p0}, Lexpo/modules/font/FontLoaderModule;->access$queryCustomNativeFonts(Lexpo/modules/font/FontLoaderModule;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 28
    const-string v2, "ExpoFontLoader"

    invoke-virtual {v1, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 30
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "getLoadedFonts"

    .line 79
    new-instance v4, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    const/4 v5, 0x0

    .line 80
    new-array v6, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 81
    sget-object v7, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .line 82
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v7

    const-class v8, Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v7, :cond_0

    new-instance v7, Lexpo/modules/kotlin/types/ReturnType;

    const-class v8, Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    .line 83
    sget-object v8, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    invoke-virtual {v8}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v8

    const-class v9, Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    new-instance v8, Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$FunctionWithoutArgs$1;

    invoke-direct {v8, v0}, Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$FunctionWithoutArgs$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-direct {v4, v3, v6, v7, v8}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    .line 85
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getSyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "loadAsync"

    .line 89
    const-class v4, Ljava/lang/String;

    .line 90
    const-class v4, Ljava/lang/String;

    const/4 v4, 0x2

    .line 93
    new-array v4, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 94
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 95
    new-instance v7, Lkotlin/Pair;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    if-nez v6, :cond_1

    .line 94
    sget-object v6, Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$AsyncFunction$1;->INSTANCE:Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$AsyncFunction$1;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 97
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 98
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9, v5, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 97
    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v6, v7

    .line 94
    :cond_1
    aput-object v6, v4, v5

    .line 105
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 95
    new-instance v7, Lkotlin/Pair;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    if-nez v6, :cond_2

    .line 105
    sget-object v6, Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$AsyncFunction$2;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 106
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 107
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9, v5, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 106
    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v6, v7

    :cond_2
    const/4 v5, 0x1

    .line 105
    aput-object v6, v4, v5

    .line 87
    new-instance v5, Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$AsyncFunction$3;

    invoke-direct {v5, p0, v0}, Lexpo/modules/font/FontLoaderModule$definition$lambda$4$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/font/FontLoaderModule;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 113
    const-class v0, Lkotlin/Unit;

    .line 117
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 123
    new-instance v0, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v0, v3, v4, v5}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 125
    :cond_3
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 127
    new-instance v0, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v0, v3, v4, v5}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 129
    :cond_4
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 131
    new-instance v0, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v0, v3, v4, v5}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 133
    :cond_5
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 135
    new-instance v0, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v0, v3, v4, v5}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 137
    :cond_6
    const-class v6, Ljava/lang/String;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 139
    new-instance v0, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v0, v3, v4, v5}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 141
    :cond_7
    new-instance v0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v0, v3, v4, v5}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 143
    :goto_0
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
